# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/aaryan/SoCStuff

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/aaryan/SoCStuff/build

# Include any dependencies generated for this target.
include src/CMakeFiles/SoCStuff_run.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/SoCStuff_run.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/SoCStuff_run.dir/flags.make

src/CMakeFiles/SoCStuff_run.dir/main.cpp.o: src/CMakeFiles/SoCStuff_run.dir/flags.make
src/CMakeFiles/SoCStuff_run.dir/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aaryan/SoCStuff/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/SoCStuff_run.dir/main.cpp.o"
	cd /home/aaryan/SoCStuff/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SoCStuff_run.dir/main.cpp.o -c /home/aaryan/SoCStuff/src/main.cpp

src/CMakeFiles/SoCStuff_run.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SoCStuff_run.dir/main.cpp.i"
	cd /home/aaryan/SoCStuff/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/aaryan/SoCStuff/src/main.cpp > CMakeFiles/SoCStuff_run.dir/main.cpp.i

src/CMakeFiles/SoCStuff_run.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SoCStuff_run.dir/main.cpp.s"
	cd /home/aaryan/SoCStuff/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/aaryan/SoCStuff/src/main.cpp -o CMakeFiles/SoCStuff_run.dir/main.cpp.s

# Object files for target SoCStuff_run
SoCStuff_run_OBJECTS = \
"CMakeFiles/SoCStuff_run.dir/main.cpp.o"

# External object files for target SoCStuff_run
SoCStuff_run_EXTERNAL_OBJECTS =

src/SoCStuff_run: src/CMakeFiles/SoCStuff_run.dir/main.cpp.o
src/SoCStuff_run: src/CMakeFiles/SoCStuff_run.dir/build.make
src/SoCStuff_run: src/CMakeFiles/SoCStuff_run.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/aaryan/SoCStuff/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable SoCStuff_run"
	cd /home/aaryan/SoCStuff/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SoCStuff_run.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/SoCStuff_run.dir/build: src/SoCStuff_run

.PHONY : src/CMakeFiles/SoCStuff_run.dir/build

src/CMakeFiles/SoCStuff_run.dir/clean:
	cd /home/aaryan/SoCStuff/build/src && $(CMAKE_COMMAND) -P CMakeFiles/SoCStuff_run.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/SoCStuff_run.dir/clean

src/CMakeFiles/SoCStuff_run.dir/depend:
	cd /home/aaryan/SoCStuff/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aaryan/SoCStuff /home/aaryan/SoCStuff/src /home/aaryan/SoCStuff/build /home/aaryan/SoCStuff/build/src /home/aaryan/SoCStuff/build/src/CMakeFiles/SoCStuff_run.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/SoCStuff_run.dir/depend

