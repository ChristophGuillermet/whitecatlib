/*

  Copyright � Grame 2001
  Copyright � Mil Productions 2001

  This library is free software; you can redistribute it and modify it under 
  the terms of the GNU Library General Public License as published by the 
  Free Software Foundation version 2 of the License, or any later version.

  This library is distributed in the hope that it will be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
  or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Library General Public License 
  for more details.

  You should have received a copy of the GNU Library General Public License
  along with this library; if not, write to the Free Software
  Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

  Grame Research Laboratory, 9, rue du Garet 69001 Lyon - France
  grame@grame.fr

*/

#include <Dialogs.h>
#include <DiskInit.h>
#include <Events.h>
#include <Files.h>
#include <Fonts.h>
#include <Memory.h>
#include <Menus.h>
#include <OSUtils.h>
#include <Packages.h>
#include <QuickDraw.h>
#include <Resources.h>
#include <SegLoad.h>
#include <TextEdit.h>
#include <ToolUtils.h>
#include <Traps.h>
#include <Types.h>
#include <Windows.h>

#include "MidiShare.h"
#include "msInetDriverAppl.h"
#include "StrConstants.h"

/* Constants definition */
#define osEvent 				app4Evt
#define	resumeMask				1
#define	suspendResumeMessage	1
#define kStateResType	'Stat'
#define kBaseRsrcId		128

/* rsrc constants */
enum { AppleMenu, FileMenu, EditMenu, SetupMenu, RemoteMenu };
enum { AppleID = 128, FileID, EditID, SetupID, RemoteID };
enum { DrvModeI = 1, ShowHideI, QuitSetupI, PreferenceI=5 };
enum { kOK = 1, kCancel, kDefault, kUDPPort, kMaxLatency, kGroupTime };

/* dialog & alerts */
enum { dialogID = 128, UDPPrefsID, AlertID = 500 };

#ifdef __WANInet__
#include "msWANAppl.h"
#include "MacFeedback.h"

extern MacFeedback * gFeedback;

#define mBarSize	5
enum { OpenI = 1, CloseI, QuitI=4 };
enum { kDisconnectItem = 1 };
#define strApplName strWANName

#else

#define strApplName strLANName
#define mBarSize	4
enum { QuitI = 1 };
#endif

/* global variables	*/
WindowPtr	myWindow;
Boolean		doneFlag;
State 		gState;
short 		gResFile;

SysEnvRec	gMac;
Boolean		hasWNE;
Boolean		foreGround;

EventRecord	myEvent;
Rect		dragRect;
MenuHandle	myMenus[mBarSize];
ModalFilterUPP dlogFilterProcPtr;

unsigned char *Hide= "\pHide window";
unsigned char *Show= "\pShow window";

void AlertUser (unsigned char * s, unsigned char *msg );
static void DoMouseDown (EventRecord *event, WindowPtr win);


/********************************************************************************/
/* 								Macintosh	 utilities							*/
/* 																				*/
/********************************************************************************/
void AlertUser (unsigned char * s, unsigned char *msg )
{
	ResetAlertStage ();
	ParamText(s, strApplName, msg, "\p");
	Alert (AlertID,nil);
}

static void FatalError( unsigned char *msg )
{
	AlertUser ("\pCannot launch", msg);
	ExitToShell();								
}

static Boolean TrapAvailable(short	trapNum, short tType)
{
	if ( (tType == ToolTrap)  &&						/* Toolbox trap		*/
		 (gMac.machineType > envMachUnknown)  &&		/* �512KE, Plus, or	*/
		 (gMac.machineType < envMacII) ) {				/* �SE				*/
		 
		trapNum &= 0x3FF;				/* Traps numbers are 10 bits long	*/
		
		if (trapNum > 0x1FF) {			/* Traps only go up to 0x1FF on		*/
			return(false);				/*   these machines					*/
		}
	}
	return NGetTrapAddress(trapNum, tType) != NGetTrapAddress(_Unimplemented, tType);
}

static Boolean IsAppWindow (WindowPtr wind)
{
	return  wind ? ((WindowPeek)wind)->windowKind >= 0 : false ;
}

static Boolean IsDAWindow (WindowPtr wind)
{
	return  wind ? ((WindowPeek)wind)->windowKind < 0 : false ;
}

static void CloseWind (WindowPtr wind)
{
	if ( IsDAWindow(wind) )
		CloseDeskAcc( ((WindowPeek)wind)->windowKind );
	else if ( IsAppWindow(wind) )
		DisposeWindow(wind);
}

static void CloseAllWinds (WindowPtr wind)
{
	if (wind) {
		CloseAllWinds( (WindowPtr) (((WindowPeek)wind)->nextWindow) );
		CloseWind(wind);
	}
}

//_________________________________________________________________________________
static void AdjustLocation (DialogPtr dlog)
{
	Point p;
	
	p.h = dlog->portRect.left + 6;	// 6 is enough to grab
	p.v = dlog->portRect.top + 6;	// 6 is enough to grab
	LocalToGlobal(&p);
	
	if (!PtInRgn (p, GetGrayRgn())) {
		MoveWindow ((WindowPtr) dlog, qd.screenBits.bounds.left + 50,			
									  qd.screenBits.bounds.top  + 50, false);
	}
}

/* -----------------------------------------------------------------------------*/
static void SetUpWindows()
{
	SetRect (&dragRect, qd.screenBits.bounds.left, qd.screenBits.bounds.top, 
						qd.screenBits.bounds.right,qd.screenBits.bounds.bottom);
	InsetRect (&dragRect, 4, 4);
 	myWindow = GetNewDialog (dialogID, nil, (WindowPtr) -1);
 	SetPort(myWindow);
 	TextFont(kFontIDGeneva); TextSize(9);
	AdjustLocation (myWindow);
	ShowWindow(myWindow);
}
		
/* -----------------------------------------------------------------------------*/
static void SetUpMenus()
{
	short	i;
		
	myMenus[AppleMenu] = GetMenu(AppleID);
	AppendResMenu(myMenus[AppleMenu],'DRVR');
	myMenus[FileMenu] = GetMenu(FileID);
	myMenus[EditMenu] = GetMenu(EditID);
	myMenus[SetupMenu] = GetMenu(SetupID);
#ifdef __WANInet__
	myMenus[RemoteMenu] = GetMenu(RemoteID);
#endif
	for (i = AppleMenu; i < mBarSize; i++)
		InsertMenu(myMenus[i], 0);
	DrawMenuBar();
}			

/* -----------------------------------------------------------------------------*/
static void ShowAbout()
{										
}
			
//_________________________________________________________________________________
static void SaveLocation (DialogPtr dlog)
{
	Handle	h1;
	Rect	WhereItIs;
	
	h1 = GetResource( 'DLOG', dialogID);
	if( dlog) {
		WhereItIs = dlog->portRect;
		LocalToGlobal( (Point *) &(WhereItIs.top) );
		LocalToGlobal( (Point *) &(WhereItIs.bottom) );
		SetPort( dlog);

		if( h1) {
			HNoPurge( h1);
			( *((DialogTHndl)h1))->boundsRect = WhereItIs;
			ChangedResource( h1);
			WriteResource( h1);
			HPurge( h1);
		}
	}
}
		
/* -----------------------------------------------------------------------------*/
static void WShowHide ()
{
	if( myWindow) {
		SaveLocation (myWindow);
		CloseWind( myWindow);
		myWindow= 0;
		gState.showWindow= false;
	}
	else {
		SetUpWindows();
		gState.showWindow= true;
	}
}
		
/* -----------------------------------------------------------------------------*/
static long GetItemValue (DialogPtr dialog, short item)
{
	short iType; Handle iHandle; Rect r; Str255 text;
	long value;
	
	GetDialogItem (dialog, item, &iType, &iHandle, &r);
	GetDialogItemText (iHandle, text);
	StringToNum (text, &value);
	return value;
}
		
/* -----------------------------------------------------------------------------*/
static void SetItemValue (DialogPtr dialog, short item, long value)
{
	short iType; Handle iHandle; Rect r; Str255 text;
	
	GetDialogItem (dialog, item, &iType, &iHandle, &r);
	NumToString (value, text);
	SetDialogItemText (iHandle, text);
}

//_________________________________________________________________________________
static pascal Boolean DlogFilterProc( DialogPtr dlog, EventRecord *event, short *item)
{
	char c;

	switch( event->what) {
		case nullEvent:
			DoIdle();
			break;
		case keyDown:
		case autoKey:
			c= (event->message & charCodeMask);
			switch(c) {
				case kEnterCharCode:
				case kReturnCharCode: 	*item= kOK;
					return true;
				case kEscapeCharCode: 	*item= kCancel;
					return true;
				default: 				DialogSelect( event, &dlog, item);
			} 
			event->what= nullEvent;
			break;
		case mouseDown:
			if( IsDialogEvent( event)) {
				if( DialogSelect( event, &dlog, item)) {
					switch( *item) {
						case kOK:
						case kCancel:
							return true;
						case kDefault:
#ifdef __WANInet__
							SetItemValue (dlog, kUDPPort, kDefaultWANPort);
							SetItemValue (dlog, kMaxLatency, kDefaultWANLatency);
							SetItemValue (dlog, kGroupTime, kDefaultWANGroupTime);
#else
							SetItemValue (dlog, kUDPPort, kDefaultLANPort);
							SetItemValue (dlog, kMaxLatency, kDefaultLANLatency);
							SetItemValue (dlog, kGroupTime, kDefaultLANGroupTime);
#endif
						default:
							event->what= nullEvent;
					}
				}
				else DragWindow(dlog, event->where, &dragRect);
			}
			break;
	}	
	return false;
}

/* -----------------------------------------------------------------------------*/
static void DoPrefer ()
{
	DialogPtr dialog; short item; 
	unsigned char *msg  = "\pchanges won't take effect until next restart";
#ifndef __WANInet__
	unsigned char *str;
#endif

 	dialog = GetNewDialog (UDPPrefsID, nil, (WindowPtr) -1);
 	if (dialog) {
		while (true) {
			SetItemValue (dialog, kUDPPort, gState.net.port);
			SetItemValue (dialog, kMaxLatency, gState.net.maxlat);
			SetItemValue (dialog, kGroupTime, gState.net.groupTime);
			ModalDialog (dlogFilterProcPtr, &item);
			if (item == kOK) {
				long port = GetItemValue (dialog, kUDPPort);
				long maxLat = GetItemValue (dialog, kMaxLatency);
				long gt = GetItemValue (dialog, kGroupTime);
				if ((port != gState.net.port) || 
					(maxLat != gState.net.maxlat) || 
					(gt !=  gState.net.groupTime)) {
					gState.net.port = port;
					gState.net.maxlat = maxLat;
					gState.net.groupTime = gt;
#ifdef __WANInet__
					AlertUser ("\p", msg);
#else
					str = ReStart (&gState);
					if (str) {
						ResetAlertStage ();
						ParamText(str, "\p", msg, "\p");
						Alert (AlertID,nil);
					}
#endif
				}
			}
			break;
		}
		DisposeDialog(dialog);
	}
}
		
/* -----------------------------------------------------------------------------*/
static void DoCommand(long mResult)
{
	short	theItem, theMenu;
	Str255	name;

	theItem = LoWord(mResult);
	theMenu = HiWord(mResult);
	
	switch ( theMenu ) {
	
		case AppleID:
			if (theItem != 1) {
				GetMenuItemText(myMenus[AppleMenu], theItem, name);
				theItem = OpenDeskAcc(name);
			} else {
				ShowAbout();
			}
			break;

		case FileID: 
			switch (theItem) {
#ifdef __WANInet__
				case OpenI: 	OpenRemote (dlogFilterProcPtr);
					break;
				case CloseI: {	
					WindowPtr win = FrontWindow();
					gFeedback->CloseInfos (GetWRefCon (win));
					}
					break;
#endif
				case QuitI: 	doneFlag = true;
					break;
			} 
			break;

		case SetupID:
			switch (theItem) {
				case DrvModeI:
					if (SetDriverMode (!gState.driverMode)) {
						gState.driverMode = !gState.driverMode;
						SetItemMark(myMenus[SetupMenu], DrvModeI, 
										gState.driverMode ? checkMark : noMark);
					}
					break;
				case ShowHideI:
					WShowHide ();
					break;
				case QuitSetupI:
					gState.autoQuit = !gState.autoQuit;
					SetItemMark(myMenus[SetupMenu], QuitSetupI, 
									gState.autoQuit ? checkMark : noMark);
					break;
				case PreferenceI:
					DoPrefer ();
					break;
			} 
			break;
#ifdef __WANInet__
		case RemoteID:	gFeedback->Infos (theItem-1);
			break;
#endif
	}
	HiliteMenu(0);  
}
		
/* -----------------------------------------------------------------------------*/
static void AdjustMenus() 
{
#ifdef __WANInet__
	WindowPtr win = FrontWindow();
	if (win == myWindow)
		DisableItem( myMenus[FileMenu], CloseI );
	else
		EnableItem( myMenus[FileMenu], CloseI );
#endif
}			

/* -----------------------------------------------------------------------------*/
static void DoMouseDown (EventRecord *event, WindowPtr win) 
{
	WindowPtr whichWindow; 
	
	switch ( FindWindow( event->where, &whichWindow ) )
	{ 
		case inMenuBar:
			AdjustMenus();
			SetMenuItemText( myMenus[SetupMenu], ShowHideI, myWindow ? Hide : Show);
			DoCommand(MenuSelect(event->where));
			break;
		case inSysWindow: 
			SystemClick(event, whichWindow);
			break;
		case inGoAway: 	 
#ifdef __WANInet__
			if (TrackGoAway(whichWindow, myEvent.where))
				gFeedback->CloseInfos (GetWRefCon (whichWindow));
#endif
			break;
		case inDrag: 	 
			DragWindow(whichWindow, event->where, &dragRect);
			break;
		case inContent: 	 
			if (whichWindow != FrontWindow())
				SelectWindow(whichWindow);
			else if (whichWindow == win)
				DragWindow(whichWindow, event->where, &dragRect);
#ifdef __WANInet__
			else {
				short item;
				if (DialogSelect (&myEvent, &whichWindow, &item))
					if (item == kDisconnectItem) CloseRemote (whichWindow);
			}
#endif
			break;
	}
}

/* -----------------------------------------------------------------------------*/
static void AdjustCursor() 
{
	if (foreGround && IsAppWindow(FrontWindow())) 
		SetCursor(&qd.arrow);
}

//_________________________________________________________________________________
static void SetState (StatePtr state)
{
	if (state->showWindow) {
		SetUpWindows();
	}
	SetItemMark (myMenus[SetupMenu], QuitSetupI, 
									state->autoQuit ? checkMark : noMark);
	SetItemMark (myMenus[SetupMenu], DrvModeI, 
									state->driverMode ? checkMark : noMark);
}

//_________________________________________________________________________________
static void InitState (StatePtr g)
{
	Handle h;
	StatePtr state;

	g->driverMode= false;
	g->showWindow= true;
	g->autoQuit= false;
#ifdef __WANInet__
	g->net.port = kDefaultWANPort;
	g->net.maxlat = kDefaultWANLatency;
	g->net.groupTime = kDefaultWANGroupTime;
#else
	g->net.port = kDefaultLANPort;
	g->net.maxlat = kDefaultLANLatency;
	g->net.groupTime = kDefaultLANGroupTime;
#endif
	h= GetResource( kStateResType, kBaseRsrcId);
	if( h) {
		state= (StatePtr)*h;
		*g = *state;
	}
}

//_________________________________________________________________________________
static void SaveState ()
{
	Handle h;
	StatePtr *state;

	h= GetResource( kStateResType, kBaseRsrcId);
	if( !h) {
		state= (StatePtr *)NewHandle( sizeof( State));
		if( state){
			HLock( (Handle)state);
			**state= gState;
			AddResource( (Handle)state, kStateResType, kBaseRsrcId, "\pState");
			UpdateResFile( gResFile);
			HUnlock( (Handle)state);
			DisposeHandle( (Handle)state);
		}
	}
	else {
		state= (StatePtr *)h;
		**state= gState;
		HLock( h);
		ChangedResource( h);
		UpdateResFile( gResFile);
		HUnlock( h);
	}
	if( myWindow)
		SaveLocation( myWindow);
}

/* -----------------------------------------------------------------------------*/
static OSErr AEQuitHandler (const AppleEvent *aevt, AppleEvent *reply, UInt32 refcon)
{
	doneFlag = true;
	return noErr;
}

/* -----------------------------------------------------------------------------*/
static void Initialize()
{
	OSErr	err; unsigned char *msg;

	err = SysEnvirons(1, &gMac);
	if (gMac.machineType < 0) FatalError( "\pneed at least 128K ROMs" );
	hasWNE = TrapAvailable(_WaitNextEvent, ToolTrap);
		
	InitGraf(&qd.thePort); 
	InitFonts();
	InitWindows();
	InitDialogs(nil);
	InitMenus();
	TEInit();
	InitCursor(); 

	FlushEvents(everyEvent, 0);
	AEInstallEventHandler ( kCoreEventClass, kAEQuitApplication, 
							NewAEEventHandlerProc(AEQuitHandler), 0, false);

	gResFile = CurResFile();
	InitState (&gState);
	if (!CheckOT()) 			FatalError ("\pOpen Transport TCP 1.1 is required");
	if (!MidiShare()) 			FatalError ("\pMidiShare is required");
	if (MidiGetVersion() < 182) FatalError ("\prequire MidiShare version 1.82 or later");
	dlogFilterProcPtr = NewModalFilterProc (DlogFilterProc);
	SetUpMenus();
#ifdef __WANInet__
	gFeedback = new MacFeedback (&myWindow, myMenus[RemoteMenu]);
	if (!gFeedback) FatalError ("\pMemory allocation failed");
	msg = SetUpDriver(&gState, gFeedback);
#else
	msg = SetUpDriver(&gState);
#endif
	if (msg) FatalError (msg);
	foreGround = true;
	SetState (&gState);
}

/*======================================== main loop =======================================*/
void main()
{
	Boolean b; char c;
	
	MaxApplZone();
	Initialize();
	
	doneFlag = false;											
	while (!doneFlag) {											/* Main Loop				*/
		if (hasWNE) 
			b = WaitNextEvent(everyEvent, &myEvent, 0, nil);	/* no sleep, no mouseRgn	*/
		else {
			SystemTask();
	 		b = GetNextEvent(everyEvent, &myEvent);
		}
		AdjustCursor();											
		switch( myEvent.what ) {
			case nullEvent:
					DoIdle();
					break;
			case osEvent:
					switch (myEvent.message >> 24) {
						case suspendResumeMessage:
							foreGround = myEvent.message & resumeMask;
							break;
					}
					break;
			case keyDown:
			case autoKey:
					c = myEvent.message & charCodeMask;
					if (myEvent.modifiers & cmdKey ) {
						DoCommand(MenuKey(c));
					}
					break;
			case mouseDown:
					DoMouseDown(&myEvent, myWindow);
					break;
			case updateEvt:
					if ( IsAppWindow( (WindowPtr)myEvent.message ) ) {
						BeginUpdate( (WindowPtr)myEvent.message );
						if ( !EmptyRgn( ((WindowPtr)myEvent.message)->visRgn ) ) {
							SetPort( (WindowPtr)myEvent.message );
							DrawDialog( (WindowPtr)myEvent.message );
						}
						EndUpdate( (WindowPtr)myEvent.message );
					}
					break;
			case kHighLevelEvent:
				AEProcessAppleEvent (&myEvent);
				break;
		}
	}
#ifdef __WANInet__
	gFeedback->Clear();
#endif
	SaveState ();
	CloseInetDriver ();
	CloseAllWinds( FrontWindow() );
}






	

