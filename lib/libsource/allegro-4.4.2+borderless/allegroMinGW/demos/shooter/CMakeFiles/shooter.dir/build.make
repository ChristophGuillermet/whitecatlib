# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files (x86)\CMake 2.8\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files (x86)\CMake 2.8\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = "C:\Program Files (x86)\CMake 2.8\bin\cmake-gui.exe"

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW

# Include any dependencies generated for this target.
include demos/shooter/CMakeFiles/shooter.dir/depend.make

# Include the progress variables for this target.
include demos/shooter/CMakeFiles/shooter.dir/progress.make

# Include the compile flags for this target's objects.
include demos/shooter/CMakeFiles/shooter.dir/flags.make

demos/shooter/CMakeFiles/shooter.dir/animsel.c.obj: demos/shooter/CMakeFiles/shooter.dir/flags.make
demos/shooter/CMakeFiles/shooter.dir/animsel.c.obj: demos/shooter/CMakeFiles/shooter.dir/includes_C.rsp
demos/shooter/CMakeFiles/shooter.dir/animsel.c.obj: C:/whitecat_crossplateform/lib/libsource/allegro-4.4.2+borderless/allegro/demos/shooter/animsel.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object demos/shooter/CMakeFiles/shooter.dir/animsel.c.obj"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\shooter.dir\animsel.c.obj   -c C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\animsel.c

demos/shooter/CMakeFiles/shooter.dir/animsel.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shooter.dir/animsel.c.i"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\animsel.c > CMakeFiles\shooter.dir\animsel.c.i

demos/shooter/CMakeFiles/shooter.dir/animsel.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shooter.dir/animsel.c.s"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\animsel.c -o CMakeFiles\shooter.dir\animsel.c.s

demos/shooter/CMakeFiles/shooter.dir/animsel.c.obj.requires:
.PHONY : demos/shooter/CMakeFiles/shooter.dir/animsel.c.obj.requires

demos/shooter/CMakeFiles/shooter.dir/animsel.c.obj.provides: demos/shooter/CMakeFiles/shooter.dir/animsel.c.obj.requires
	$(MAKE) -f demos\shooter\CMakeFiles\shooter.dir\build.make demos/shooter/CMakeFiles/shooter.dir/animsel.c.obj.provides.build
.PHONY : demos/shooter/CMakeFiles/shooter.dir/animsel.c.obj.provides

demos/shooter/CMakeFiles/shooter.dir/animsel.c.obj.provides.build: demos/shooter/CMakeFiles/shooter.dir/animsel.c.obj

demos/shooter/CMakeFiles/shooter.dir/bullet.c.obj: demos/shooter/CMakeFiles/shooter.dir/flags.make
demos/shooter/CMakeFiles/shooter.dir/bullet.c.obj: demos/shooter/CMakeFiles/shooter.dir/includes_C.rsp
demos/shooter/CMakeFiles/shooter.dir/bullet.c.obj: C:/whitecat_crossplateform/lib/libsource/allegro-4.4.2+borderless/allegro/demos/shooter/bullet.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object demos/shooter/CMakeFiles/shooter.dir/bullet.c.obj"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\shooter.dir\bullet.c.obj   -c C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\bullet.c

demos/shooter/CMakeFiles/shooter.dir/bullet.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shooter.dir/bullet.c.i"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\bullet.c > CMakeFiles\shooter.dir\bullet.c.i

demos/shooter/CMakeFiles/shooter.dir/bullet.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shooter.dir/bullet.c.s"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\bullet.c -o CMakeFiles\shooter.dir\bullet.c.s

demos/shooter/CMakeFiles/shooter.dir/bullet.c.obj.requires:
.PHONY : demos/shooter/CMakeFiles/shooter.dir/bullet.c.obj.requires

demos/shooter/CMakeFiles/shooter.dir/bullet.c.obj.provides: demos/shooter/CMakeFiles/shooter.dir/bullet.c.obj.requires
	$(MAKE) -f demos\shooter\CMakeFiles\shooter.dir\build.make demos/shooter/CMakeFiles/shooter.dir/bullet.c.obj.provides.build
.PHONY : demos/shooter/CMakeFiles/shooter.dir/bullet.c.obj.provides

demos/shooter/CMakeFiles/shooter.dir/bullet.c.obj.provides.build: demos/shooter/CMakeFiles/shooter.dir/bullet.c.obj

demos/shooter/CMakeFiles/shooter.dir/dirty.c.obj: demos/shooter/CMakeFiles/shooter.dir/flags.make
demos/shooter/CMakeFiles/shooter.dir/dirty.c.obj: demos/shooter/CMakeFiles/shooter.dir/includes_C.rsp
demos/shooter/CMakeFiles/shooter.dir/dirty.c.obj: C:/whitecat_crossplateform/lib/libsource/allegro-4.4.2+borderless/allegro/demos/shooter/dirty.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object demos/shooter/CMakeFiles/shooter.dir/dirty.c.obj"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\shooter.dir\dirty.c.obj   -c C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\dirty.c

demos/shooter/CMakeFiles/shooter.dir/dirty.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shooter.dir/dirty.c.i"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\dirty.c > CMakeFiles\shooter.dir\dirty.c.i

demos/shooter/CMakeFiles/shooter.dir/dirty.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shooter.dir/dirty.c.s"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\dirty.c -o CMakeFiles\shooter.dir\dirty.c.s

demos/shooter/CMakeFiles/shooter.dir/dirty.c.obj.requires:
.PHONY : demos/shooter/CMakeFiles/shooter.dir/dirty.c.obj.requires

demos/shooter/CMakeFiles/shooter.dir/dirty.c.obj.provides: demos/shooter/CMakeFiles/shooter.dir/dirty.c.obj.requires
	$(MAKE) -f demos\shooter\CMakeFiles\shooter.dir\build.make demos/shooter/CMakeFiles/shooter.dir/dirty.c.obj.provides.build
.PHONY : demos/shooter/CMakeFiles/shooter.dir/dirty.c.obj.provides

demos/shooter/CMakeFiles/shooter.dir/dirty.c.obj.provides.build: demos/shooter/CMakeFiles/shooter.dir/dirty.c.obj

demos/shooter/CMakeFiles/shooter.dir/expl.c.obj: demos/shooter/CMakeFiles/shooter.dir/flags.make
demos/shooter/CMakeFiles/shooter.dir/expl.c.obj: demos/shooter/CMakeFiles/shooter.dir/includes_C.rsp
demos/shooter/CMakeFiles/shooter.dir/expl.c.obj: C:/whitecat_crossplateform/lib/libsource/allegro-4.4.2+borderless/allegro/demos/shooter/expl.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object demos/shooter/CMakeFiles/shooter.dir/expl.c.obj"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\shooter.dir\expl.c.obj   -c C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\expl.c

demos/shooter/CMakeFiles/shooter.dir/expl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shooter.dir/expl.c.i"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\expl.c > CMakeFiles\shooter.dir\expl.c.i

demos/shooter/CMakeFiles/shooter.dir/expl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shooter.dir/expl.c.s"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\expl.c -o CMakeFiles\shooter.dir\expl.c.s

demos/shooter/CMakeFiles/shooter.dir/expl.c.obj.requires:
.PHONY : demos/shooter/CMakeFiles/shooter.dir/expl.c.obj.requires

demos/shooter/CMakeFiles/shooter.dir/expl.c.obj.provides: demos/shooter/CMakeFiles/shooter.dir/expl.c.obj.requires
	$(MAKE) -f demos\shooter\CMakeFiles\shooter.dir\build.make demos/shooter/CMakeFiles/shooter.dir/expl.c.obj.provides.build
.PHONY : demos/shooter/CMakeFiles/shooter.dir/expl.c.obj.provides

demos/shooter/CMakeFiles/shooter.dir/expl.c.obj.provides.build: demos/shooter/CMakeFiles/shooter.dir/expl.c.obj

demos/shooter/CMakeFiles/shooter.dir/star.c.obj: demos/shooter/CMakeFiles/shooter.dir/flags.make
demos/shooter/CMakeFiles/shooter.dir/star.c.obj: demos/shooter/CMakeFiles/shooter.dir/includes_C.rsp
demos/shooter/CMakeFiles/shooter.dir/star.c.obj: C:/whitecat_crossplateform/lib/libsource/allegro-4.4.2+borderless/allegro/demos/shooter/star.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object demos/shooter/CMakeFiles/shooter.dir/star.c.obj"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\shooter.dir\star.c.obj   -c C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\star.c

demos/shooter/CMakeFiles/shooter.dir/star.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shooter.dir/star.c.i"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\star.c > CMakeFiles\shooter.dir\star.c.i

demos/shooter/CMakeFiles/shooter.dir/star.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shooter.dir/star.c.s"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\star.c -o CMakeFiles\shooter.dir\star.c.s

demos/shooter/CMakeFiles/shooter.dir/star.c.obj.requires:
.PHONY : demos/shooter/CMakeFiles/shooter.dir/star.c.obj.requires

demos/shooter/CMakeFiles/shooter.dir/star.c.obj.provides: demos/shooter/CMakeFiles/shooter.dir/star.c.obj.requires
	$(MAKE) -f demos\shooter\CMakeFiles\shooter.dir\build.make demos/shooter/CMakeFiles/shooter.dir/star.c.obj.provides.build
.PHONY : demos/shooter/CMakeFiles/shooter.dir/star.c.obj.provides

demos/shooter/CMakeFiles/shooter.dir/star.c.obj.provides.build: demos/shooter/CMakeFiles/shooter.dir/star.c.obj

demos/shooter/CMakeFiles/shooter.dir/aster.c.obj: demos/shooter/CMakeFiles/shooter.dir/flags.make
demos/shooter/CMakeFiles/shooter.dir/aster.c.obj: demos/shooter/CMakeFiles/shooter.dir/includes_C.rsp
demos/shooter/CMakeFiles/shooter.dir/aster.c.obj: C:/whitecat_crossplateform/lib/libsource/allegro-4.4.2+borderless/allegro/demos/shooter/aster.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object demos/shooter/CMakeFiles/shooter.dir/aster.c.obj"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\shooter.dir\aster.c.obj   -c C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\aster.c

demos/shooter/CMakeFiles/shooter.dir/aster.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shooter.dir/aster.c.i"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\aster.c > CMakeFiles\shooter.dir\aster.c.i

demos/shooter/CMakeFiles/shooter.dir/aster.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shooter.dir/aster.c.s"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\aster.c -o CMakeFiles\shooter.dir\aster.c.s

demos/shooter/CMakeFiles/shooter.dir/aster.c.obj.requires:
.PHONY : demos/shooter/CMakeFiles/shooter.dir/aster.c.obj.requires

demos/shooter/CMakeFiles/shooter.dir/aster.c.obj.provides: demos/shooter/CMakeFiles/shooter.dir/aster.c.obj.requires
	$(MAKE) -f demos\shooter\CMakeFiles\shooter.dir\build.make demos/shooter/CMakeFiles/shooter.dir/aster.c.obj.provides.build
.PHONY : demos/shooter/CMakeFiles/shooter.dir/aster.c.obj.provides

demos/shooter/CMakeFiles/shooter.dir/aster.c.obj.provides.build: demos/shooter/CMakeFiles/shooter.dir/aster.c.obj

demos/shooter/CMakeFiles/shooter.dir/demo.c.obj: demos/shooter/CMakeFiles/shooter.dir/flags.make
demos/shooter/CMakeFiles/shooter.dir/demo.c.obj: demos/shooter/CMakeFiles/shooter.dir/includes_C.rsp
demos/shooter/CMakeFiles/shooter.dir/demo.c.obj: C:/whitecat_crossplateform/lib/libsource/allegro-4.4.2+borderless/allegro/demos/shooter/demo.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object demos/shooter/CMakeFiles/shooter.dir/demo.c.obj"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\shooter.dir\demo.c.obj   -c C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\demo.c

demos/shooter/CMakeFiles/shooter.dir/demo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shooter.dir/demo.c.i"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\demo.c > CMakeFiles\shooter.dir\demo.c.i

demos/shooter/CMakeFiles/shooter.dir/demo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shooter.dir/demo.c.s"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\demo.c -o CMakeFiles\shooter.dir\demo.c.s

demos/shooter/CMakeFiles/shooter.dir/demo.c.obj.requires:
.PHONY : demos/shooter/CMakeFiles/shooter.dir/demo.c.obj.requires

demos/shooter/CMakeFiles/shooter.dir/demo.c.obj.provides: demos/shooter/CMakeFiles/shooter.dir/demo.c.obj.requires
	$(MAKE) -f demos\shooter\CMakeFiles\shooter.dir\build.make demos/shooter/CMakeFiles/shooter.dir/demo.c.obj.provides.build
.PHONY : demos/shooter/CMakeFiles/shooter.dir/demo.c.obj.provides

demos/shooter/CMakeFiles/shooter.dir/demo.c.obj.provides.build: demos/shooter/CMakeFiles/shooter.dir/demo.c.obj

demos/shooter/CMakeFiles/shooter.dir/display.c.obj: demos/shooter/CMakeFiles/shooter.dir/flags.make
demos/shooter/CMakeFiles/shooter.dir/display.c.obj: demos/shooter/CMakeFiles/shooter.dir/includes_C.rsp
demos/shooter/CMakeFiles/shooter.dir/display.c.obj: C:/whitecat_crossplateform/lib/libsource/allegro-4.4.2+borderless/allegro/demos/shooter/display.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object demos/shooter/CMakeFiles/shooter.dir/display.c.obj"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\shooter.dir\display.c.obj   -c C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\display.c

demos/shooter/CMakeFiles/shooter.dir/display.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shooter.dir/display.c.i"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\display.c > CMakeFiles\shooter.dir\display.c.i

demos/shooter/CMakeFiles/shooter.dir/display.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shooter.dir/display.c.s"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\display.c -o CMakeFiles\shooter.dir\display.c.s

demos/shooter/CMakeFiles/shooter.dir/display.c.obj.requires:
.PHONY : demos/shooter/CMakeFiles/shooter.dir/display.c.obj.requires

demos/shooter/CMakeFiles/shooter.dir/display.c.obj.provides: demos/shooter/CMakeFiles/shooter.dir/display.c.obj.requires
	$(MAKE) -f demos\shooter\CMakeFiles\shooter.dir\build.make demos/shooter/CMakeFiles/shooter.dir/display.c.obj.provides.build
.PHONY : demos/shooter/CMakeFiles/shooter.dir/display.c.obj.provides

demos/shooter/CMakeFiles/shooter.dir/display.c.obj.provides.build: demos/shooter/CMakeFiles/shooter.dir/display.c.obj

demos/shooter/CMakeFiles/shooter.dir/game.c.obj: demos/shooter/CMakeFiles/shooter.dir/flags.make
demos/shooter/CMakeFiles/shooter.dir/game.c.obj: demos/shooter/CMakeFiles/shooter.dir/includes_C.rsp
demos/shooter/CMakeFiles/shooter.dir/game.c.obj: C:/whitecat_crossplateform/lib/libsource/allegro-4.4.2+borderless/allegro/demos/shooter/game.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object demos/shooter/CMakeFiles/shooter.dir/game.c.obj"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\shooter.dir\game.c.obj   -c C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\game.c

demos/shooter/CMakeFiles/shooter.dir/game.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shooter.dir/game.c.i"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\game.c > CMakeFiles\shooter.dir\game.c.i

demos/shooter/CMakeFiles/shooter.dir/game.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shooter.dir/game.c.s"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\game.c -o CMakeFiles\shooter.dir\game.c.s

demos/shooter/CMakeFiles/shooter.dir/game.c.obj.requires:
.PHONY : demos/shooter/CMakeFiles/shooter.dir/game.c.obj.requires

demos/shooter/CMakeFiles/shooter.dir/game.c.obj.provides: demos/shooter/CMakeFiles/shooter.dir/game.c.obj.requires
	$(MAKE) -f demos\shooter\CMakeFiles\shooter.dir\build.make demos/shooter/CMakeFiles/shooter.dir/game.c.obj.provides.build
.PHONY : demos/shooter/CMakeFiles/shooter.dir/game.c.obj.provides

demos/shooter/CMakeFiles/shooter.dir/game.c.obj.provides.build: demos/shooter/CMakeFiles/shooter.dir/game.c.obj

demos/shooter/CMakeFiles/shooter.dir/title.c.obj: demos/shooter/CMakeFiles/shooter.dir/flags.make
demos/shooter/CMakeFiles/shooter.dir/title.c.obj: demos/shooter/CMakeFiles/shooter.dir/includes_C.rsp
demos/shooter/CMakeFiles/shooter.dir/title.c.obj: C:/whitecat_crossplateform/lib/libsource/allegro-4.4.2+borderless/allegro/demos/shooter/title.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object demos/shooter/CMakeFiles/shooter.dir/title.c.obj"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\shooter.dir\title.c.obj   -c C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\title.c

demos/shooter/CMakeFiles/shooter.dir/title.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/shooter.dir/title.c.i"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\title.c > CMakeFiles\shooter.dir\title.c.i

demos/shooter/CMakeFiles/shooter.dir/title.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/shooter.dir/title.c.s"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\title.c -o CMakeFiles\shooter.dir\title.c.s

demos/shooter/CMakeFiles/shooter.dir/title.c.obj.requires:
.PHONY : demos/shooter/CMakeFiles/shooter.dir/title.c.obj.requires

demos/shooter/CMakeFiles/shooter.dir/title.c.obj.provides: demos/shooter/CMakeFiles/shooter.dir/title.c.obj.requires
	$(MAKE) -f demos\shooter\CMakeFiles\shooter.dir\build.make demos/shooter/CMakeFiles/shooter.dir/title.c.obj.provides.build
.PHONY : demos/shooter/CMakeFiles/shooter.dir/title.c.obj.provides

demos/shooter/CMakeFiles/shooter.dir/title.c.obj.provides.build: demos/shooter/CMakeFiles/shooter.dir/title.c.obj

demos/shooter/CMakeFiles/shooter.dir/shooter.rc.obj: demos/shooter/CMakeFiles/shooter.dir/flags.make
demos/shooter/CMakeFiles/shooter.dir/shooter.rc.obj: C:/whitecat_crossplateform/lib/libsource/allegro-4.4.2+borderless/allegro/demos/shooter/shooter.rc
	$(CMAKE_COMMAND) -E cmake_progress_report C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building RC object demos/shooter/CMakeFiles/shooter.dir/shooter.rc.obj"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && C:\MinGW\bin\windres.exe  $(RC_FLAGS) -O coff -o CMakeFiles\shooter.dir\shooter.rc.obj -i C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter\shooter.rc

demos/shooter/CMakeFiles/shooter.dir/shooter.rc.obj.requires:
.PHONY : demos/shooter/CMakeFiles/shooter.dir/shooter.rc.obj.requires

demos/shooter/CMakeFiles/shooter.dir/shooter.rc.obj.provides: demos/shooter/CMakeFiles/shooter.dir/shooter.rc.obj.requires
	$(MAKE) -f demos\shooter\CMakeFiles\shooter.dir\build.make demos/shooter/CMakeFiles/shooter.dir/shooter.rc.obj.provides.build
.PHONY : demos/shooter/CMakeFiles/shooter.dir/shooter.rc.obj.provides

demos/shooter/CMakeFiles/shooter.dir/shooter.rc.obj.provides.build: demos/shooter/CMakeFiles/shooter.dir/shooter.rc.obj

# Object files for target shooter
shooter_OBJECTS = \
"CMakeFiles/shooter.dir/animsel.c.obj" \
"CMakeFiles/shooter.dir/bullet.c.obj" \
"CMakeFiles/shooter.dir/dirty.c.obj" \
"CMakeFiles/shooter.dir/expl.c.obj" \
"CMakeFiles/shooter.dir/star.c.obj" \
"CMakeFiles/shooter.dir/aster.c.obj" \
"CMakeFiles/shooter.dir/demo.c.obj" \
"CMakeFiles/shooter.dir/display.c.obj" \
"CMakeFiles/shooter.dir/game.c.obj" \
"CMakeFiles/shooter.dir/title.c.obj" \
"CMakeFiles/shooter.dir/shooter.rc.obj"

# External object files for target shooter
shooter_EXTERNAL_OBJECTS =

demos/shooter/shooter.exe: demos/shooter/CMakeFiles/shooter.dir/animsel.c.obj
demos/shooter/shooter.exe: demos/shooter/CMakeFiles/shooter.dir/bullet.c.obj
demos/shooter/shooter.exe: demos/shooter/CMakeFiles/shooter.dir/dirty.c.obj
demos/shooter/shooter.exe: demos/shooter/CMakeFiles/shooter.dir/expl.c.obj
demos/shooter/shooter.exe: demos/shooter/CMakeFiles/shooter.dir/star.c.obj
demos/shooter/shooter.exe: demos/shooter/CMakeFiles/shooter.dir/aster.c.obj
demos/shooter/shooter.exe: demos/shooter/CMakeFiles/shooter.dir/demo.c.obj
demos/shooter/shooter.exe: demos/shooter/CMakeFiles/shooter.dir/display.c.obj
demos/shooter/shooter.exe: demos/shooter/CMakeFiles/shooter.dir/game.c.obj
demos/shooter/shooter.exe: demos/shooter/CMakeFiles/shooter.dir/title.c.obj
demos/shooter/shooter.exe: demos/shooter/CMakeFiles/shooter.dir/shooter.rc.obj
demos/shooter/shooter.exe: demos/shooter/CMakeFiles/shooter.dir/build.make
demos/shooter/shooter.exe: lib/liballeg44.dll.a
demos/shooter/shooter.exe: C:/MinGW/lib/libdinput.a
demos/shooter/shooter.exe: C:/MinGW/lib/libddraw.a
demos/shooter/shooter.exe: C:/MinGW/lib/libdxguid.a
demos/shooter/shooter.exe: C:/MinGW/lib/libdsound.a
demos/shooter/shooter.exe: demos/shooter/CMakeFiles/shooter.dir/objects1.rsp
demos/shooter/shooter.exe: demos/shooter/CMakeFiles/shooter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable shooter.exe"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\shooter.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
demos/shooter/CMakeFiles/shooter.dir/build: demos/shooter/shooter.exe
.PHONY : demos/shooter/CMakeFiles/shooter.dir/build

demos/shooter/CMakeFiles/shooter.dir/requires: demos/shooter/CMakeFiles/shooter.dir/animsel.c.obj.requires
demos/shooter/CMakeFiles/shooter.dir/requires: demos/shooter/CMakeFiles/shooter.dir/bullet.c.obj.requires
demos/shooter/CMakeFiles/shooter.dir/requires: demos/shooter/CMakeFiles/shooter.dir/dirty.c.obj.requires
demos/shooter/CMakeFiles/shooter.dir/requires: demos/shooter/CMakeFiles/shooter.dir/expl.c.obj.requires
demos/shooter/CMakeFiles/shooter.dir/requires: demos/shooter/CMakeFiles/shooter.dir/star.c.obj.requires
demos/shooter/CMakeFiles/shooter.dir/requires: demos/shooter/CMakeFiles/shooter.dir/aster.c.obj.requires
demos/shooter/CMakeFiles/shooter.dir/requires: demos/shooter/CMakeFiles/shooter.dir/demo.c.obj.requires
demos/shooter/CMakeFiles/shooter.dir/requires: demos/shooter/CMakeFiles/shooter.dir/display.c.obj.requires
demos/shooter/CMakeFiles/shooter.dir/requires: demos/shooter/CMakeFiles/shooter.dir/game.c.obj.requires
demos/shooter/CMakeFiles/shooter.dir/requires: demos/shooter/CMakeFiles/shooter.dir/title.c.obj.requires
demos/shooter/CMakeFiles/shooter.dir/requires: demos/shooter/CMakeFiles/shooter.dir/shooter.rc.obj.requires
.PHONY : demos/shooter/CMakeFiles/shooter.dir/requires

demos/shooter/CMakeFiles/shooter.dir/clean:
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter && $(CMAKE_COMMAND) -P CMakeFiles\shooter.dir\cmake_clean.cmake
.PHONY : demos/shooter/CMakeFiles/shooter.dir/clean

demos/shooter/CMakeFiles/shooter.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\demos\shooter C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\demos\shooter\CMakeFiles\shooter.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : demos/shooter/CMakeFiles/shooter.dir/depend
