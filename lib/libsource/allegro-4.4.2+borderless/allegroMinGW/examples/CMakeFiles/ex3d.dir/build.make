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
include examples/CMakeFiles/ex3d.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/ex3d.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/ex3d.dir/flags.make

examples/CMakeFiles/ex3d.dir/ex3d.c.obj: examples/CMakeFiles/ex3d.dir/flags.make
examples/CMakeFiles/ex3d.dir/ex3d.c.obj: examples/CMakeFiles/ex3d.dir/includes_C.rsp
examples/CMakeFiles/ex3d.dir/ex3d.c.obj: C:/whitecat_crossplateform/lib/libsource/allegro-4.4.2+borderless/allegro/examples/ex3d.c
	$(CMAKE_COMMAND) -E cmake_progress_report C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object examples/CMakeFiles/ex3d.dir/ex3d.c.obj"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\examples && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles\ex3d.dir\ex3d.c.obj   -c C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\examples\ex3d.c

examples/CMakeFiles/ex3d.dir/ex3d.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ex3d.dir/ex3d.c.i"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\examples && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -E C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\examples\ex3d.c > CMakeFiles\ex3d.dir\ex3d.c.i

examples/CMakeFiles/ex3d.dir/ex3d.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ex3d.dir/ex3d.c.s"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\examples && C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_FLAGS) -S C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\examples\ex3d.c -o CMakeFiles\ex3d.dir\ex3d.c.s

examples/CMakeFiles/ex3d.dir/ex3d.c.obj.requires:
.PHONY : examples/CMakeFiles/ex3d.dir/ex3d.c.obj.requires

examples/CMakeFiles/ex3d.dir/ex3d.c.obj.provides: examples/CMakeFiles/ex3d.dir/ex3d.c.obj.requires
	$(MAKE) -f examples\CMakeFiles\ex3d.dir\build.make examples/CMakeFiles/ex3d.dir/ex3d.c.obj.provides.build
.PHONY : examples/CMakeFiles/ex3d.dir/ex3d.c.obj.provides

examples/CMakeFiles/ex3d.dir/ex3d.c.obj.provides.build: examples/CMakeFiles/ex3d.dir/ex3d.c.obj

# Object files for target ex3d
ex3d_OBJECTS = \
"CMakeFiles/ex3d.dir/ex3d.c.obj"

# External object files for target ex3d
ex3d_EXTERNAL_OBJECTS =

examples/ex3d.exe: examples/CMakeFiles/ex3d.dir/ex3d.c.obj
examples/ex3d.exe: examples/CMakeFiles/ex3d.dir/build.make
examples/ex3d.exe: lib/liballeg44.dll.a
examples/ex3d.exe: C:/MinGW/lib/libdinput.a
examples/ex3d.exe: C:/MinGW/lib/libddraw.a
examples/ex3d.exe: C:/MinGW/lib/libdxguid.a
examples/ex3d.exe: C:/MinGW/lib/libdsound.a
examples/ex3d.exe: examples/CMakeFiles/ex3d.dir/objects1.rsp
examples/ex3d.exe: examples/CMakeFiles/ex3d.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ex3d.exe"
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\ex3d.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/ex3d.dir/build: examples/ex3d.exe
.PHONY : examples/CMakeFiles/ex3d.dir/build

examples/CMakeFiles/ex3d.dir/requires: examples/CMakeFiles/ex3d.dir/ex3d.c.obj.requires
.PHONY : examples/CMakeFiles/ex3d.dir/requires

examples/CMakeFiles/ex3d.dir/clean:
	cd /d C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\examples && $(CMAKE_COMMAND) -P CMakeFiles\ex3d.dir\cmake_clean.cmake
.PHONY : examples/CMakeFiles/ex3d.dir/clean

examples/CMakeFiles/ex3d.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegro\examples C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\examples C:\whitecat_crossplateform\lib\libsource\allegro-4.4.2+borderless\allegroMinGW\examples\CMakeFiles\ex3d.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/ex3d.dir/depend
