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
CMAKE_SOURCE_DIR = C:\whitecat_crossplateform\lib\libsource\allegro4.4.2_sources_dep\allegro4.4.2_sources_dep\libpng

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\whitecat_crossplateform\lib\libsource\allegro4.4.2_sources_dep\allegro4.4.2_sources_dep\libpng\build

# Utility rule file for libpng-config_COPY.

# Include the progress variables for this target.
include CMakeFiles/libpng-config_COPY.dir/progress.make

CMakeFiles/libpng-config_COPY: lib/libpng-config

lib/libpng-config: libpng16.dll
lib/libpng-config: libpng16.a
	$(CMAKE_COMMAND) -E cmake_progress_report C:\whitecat_crossplateform\lib\libsource\allegro4.4.2_sources_dep\allegro4.4.2_sources_dep\libpng\build\CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating lib/libpng-config, libpng-config"
	"C:\Program Files (x86)\CMake 2.8\bin\cmake.exe" -E copy_if_different libpng16-config lib/libpng-config
	"C:\Program Files (x86)\CMake 2.8\bin\cmake.exe" -E copy_if_different libpng16-config C:/whitecat_crossplateform/lib/libsource/allegro4.4.2_sources_dep/allegro4.4.2_sources_dep/libpng/build/libpng-config

libpng-config: lib/libpng-config

libpng-config_COPY: CMakeFiles/libpng-config_COPY
libpng-config_COPY: lib/libpng-config
libpng-config_COPY: libpng-config
libpng-config_COPY: CMakeFiles/libpng-config_COPY.dir/build.make
.PHONY : libpng-config_COPY

# Rule to build all files generated by this target.
CMakeFiles/libpng-config_COPY.dir/build: libpng-config_COPY
.PHONY : CMakeFiles/libpng-config_COPY.dir/build

CMakeFiles/libpng-config_COPY.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\libpng-config_COPY.dir\cmake_clean.cmake
.PHONY : CMakeFiles/libpng-config_COPY.dir/clean

CMakeFiles/libpng-config_COPY.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\whitecat_crossplateform\lib\libsource\allegro4.4.2_sources_dep\allegro4.4.2_sources_dep\libpng C:\whitecat_crossplateform\lib\libsource\allegro4.4.2_sources_dep\allegro4.4.2_sources_dep\libpng C:\whitecat_crossplateform\lib\libsource\allegro4.4.2_sources_dep\allegro4.4.2_sources_dep\libpng\build C:\whitecat_crossplateform\lib\libsource\allegro4.4.2_sources_dep\allegro4.4.2_sources_dep\libpng\build C:\whitecat_crossplateform\lib\libsource\allegro4.4.2_sources_dep\allegro4.4.2_sources_dep\libpng\build\CMakeFiles\libpng-config_COPY.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/libpng-config_COPY.dir/depend
