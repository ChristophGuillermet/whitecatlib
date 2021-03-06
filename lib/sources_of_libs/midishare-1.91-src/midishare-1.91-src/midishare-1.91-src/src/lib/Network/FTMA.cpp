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


#include "FTMA.h"

//__________________________________________________________________________
// AEFTMA implementation
//__________________________________________________________________________
AEFTMA::AEFTMA (short histSize, short retain, short threshold, short histLen)
	: FTMA (histSize, retain, threshold), fAverage (histLen)
{
}

//__________________________________________________________________________
Boolean AEFTMA::Put (long value, long *average)
{
	long m;
	if (FTMA::Put (value, &m)) {
		*average = fAverage.Average (m);
		return true;
	}
	return false;
}

//__________________________________________________________________________
// FTMA implementation
//__________________________________________________________________________
FTMA::FTMA (short histSize, short retain, short threshold)
{
	fIndex = 0;
	fSize  =  (histSize > kMaxSize) ? kMaxSize : histSize;
	fRetain = retain;
	fThreshold = threshold < 4 ? 4 : threshold;
	fEmpty = true;
}

//__________________________________________________________________________
Boolean FTMA::Put (long value, long *average)
{
	fValues[fIndex++] = value;
	if (fIndex == fSize) {
		fIndex = 0;
		fEmpty = false;
	}
	if (!Empty()) {
		*average = Average (fValues, fSize, fRetain);
		return true;
	}
	else if (fIndex > fThreshold) {
		short retain = (fRetain * fThreshold)/fIndex;
		if (retain < 1) retain = 1;
		*average = Average (fValues, fIndex-1, retain);
		return true;
	}
	return false;
}

//__________________________________________________________________________
double FTMA::Sum  (long * tbl, short size)
{
	double v = 0;
	for (short i = 0; i < size; i++)
		v += *tbl++;
	return v;
}

//__________________________________________________________________________
long FTMA::Average (long * tbl, short size, short retain)
{
	short offset = (size - retain)/2;
	long tmp[kMaxSize];
	Sort (tbl, tmp, size);
	double sum = Sum (&tmp[offset], retain);
	return (long)(sum / retain);
}

//__________________________________________________________________________
void FTMA::Sort (long * tbl, short size)
{
	short t;
	do {
		t = 0;
		for (short i = 1; i < size; i++) {
			if (tbl[i-1] > tbl[i]) {
				long tmp = tbl[i-1];
				tbl[i-1] = tbl[i];
				tbl[i] = tmp;
				t = i;
			}
		}
	} while (t);
}

//__________________________________________________________________________
void FTMA::Sort (long * tbl,  long *dst, short size)
{
	for (short i = 0; i < size; i++) {
		dst[i] = tbl[i];
	}
	Sort (dst, size);
}

//__________________________________________________________________________
// Exponential average class
//__________________________________________________________________________
EAverage::EAverage (short histlen)
{
	fHistoryLen = histlen;
	fAverage = 0;
	fCurrentHistLen = 0;
	fDivider = ((histlen / 10) + 1) * 10;
}

//__________________________________________________________________________
long EAverage::Average (long value)
{
	fAverage = ((fCurrentHistLen * fAverage) + ((fDivider - fCurrentHistLen) * value)) / fDivider;
	if (fCurrentHistLen < fHistoryLen) fCurrentHistLen += 1;
	return (long)fAverage;
}
