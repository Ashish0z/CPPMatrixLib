# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\parth\Desktop\Coding Material\C++\SoC - Matrix\CPPMatrixLib\tests"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\parth\Desktop\Coding Material\C++\SoC - Matrix\CPPMatrixLib\build"

# Include any dependencies generated for this target.
include test/CMakeFiles/MatrixTests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/MatrixTests.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/MatrixTests.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/MatrixTests.dir/flags.make

test/CMakeFiles/MatrixTests.dir/MatrixTests.cpp.obj: test/CMakeFiles/MatrixTests.dir/flags.make
test/CMakeFiles/MatrixTests.dir/MatrixTests.cpp.obj: test/CMakeFiles/MatrixTests.dir/includes_CXX.rsp
test/CMakeFiles/MatrixTests.dir/MatrixTests.cpp.obj: C:/Users/parth/Desktop/Coding\ Material/C++/SoC\ -\ Matrix/CPPMatrixLib/tests/test/MatrixTests.cpp
test/CMakeFiles/MatrixTests.dir/MatrixTests.cpp.obj: test/CMakeFiles/MatrixTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\parth\Desktop\Coding Material\C++\SoC - Matrix\CPPMatrixLib\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/MatrixTests.dir/MatrixTests.cpp.obj"
	cd /d C:\Users\parth\Desktop\CODING~1\C__~1\SOC-MA~1\CPPMAT~1\build\test && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\X86_64~2.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/MatrixTests.dir/MatrixTests.cpp.obj -MF CMakeFiles\MatrixTests.dir\MatrixTests.cpp.obj.d -o CMakeFiles\MatrixTests.dir\MatrixTests.cpp.obj -c "C:\Users\parth\Desktop\Coding Material\C++\SoC - Matrix\CPPMatrixLib\tests\test\MatrixTests.cpp"

test/CMakeFiles/MatrixTests.dir/MatrixTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MatrixTests.dir/MatrixTests.cpp.i"
	cd /d C:\Users\parth\Desktop\CODING~1\C__~1\SOC-MA~1\CPPMAT~1\build\test && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\X86_64~2.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\parth\Desktop\Coding Material\C++\SoC - Matrix\CPPMatrixLib\tests\test\MatrixTests.cpp" > CMakeFiles\MatrixTests.dir\MatrixTests.cpp.i

test/CMakeFiles/MatrixTests.dir/MatrixTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MatrixTests.dir/MatrixTests.cpp.s"
	cd /d C:\Users\parth\Desktop\CODING~1\C__~1\SOC-MA~1\CPPMAT~1\build\test && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\X86_64~2.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\parth\Desktop\Coding Material\C++\SoC - Matrix\CPPMatrixLib\tests\test\MatrixTests.cpp" -o CMakeFiles\MatrixTests.dir\MatrixTests.cpp.s

# Object files for target MatrixTests
MatrixTests_OBJECTS = \
"CMakeFiles/MatrixTests.dir/MatrixTests.cpp.obj"

# External object files for target MatrixTests
MatrixTests_EXTERNAL_OBJECTS =

test/MatrixTests.exe: test/CMakeFiles/MatrixTests.dir/MatrixTests.cpp.obj
test/MatrixTests.exe: test/CMakeFiles/MatrixTests.dir/build.make
test/MatrixTests.exe: lib/libgtest_maind.a
test/MatrixTests.exe: libMatrix.a
test/MatrixTests.exe: lib/libgtestd.a
test/MatrixTests.exe: test/CMakeFiles/MatrixTests.dir/linklibs.rsp
test/MatrixTests.exe: test/CMakeFiles/MatrixTests.dir/objects1.rsp
test/MatrixTests.exe: test/CMakeFiles/MatrixTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\parth\Desktop\Coding Material\C++\SoC - Matrix\CPPMatrixLib\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable MatrixTests.exe"
	cd /d C:\Users\parth\Desktop\CODING~1\C__~1\SOC-MA~1\CPPMAT~1\build\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\MatrixTests.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/MatrixTests.dir/build: test/MatrixTests.exe
.PHONY : test/CMakeFiles/MatrixTests.dir/build

test/CMakeFiles/MatrixTests.dir/clean:
	cd /d C:\Users\parth\Desktop\CODING~1\C__~1\SOC-MA~1\CPPMAT~1\build\test && $(CMAKE_COMMAND) -P CMakeFiles\MatrixTests.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/MatrixTests.dir/clean

test/CMakeFiles/MatrixTests.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\parth\Desktop\Coding Material\C++\SoC - Matrix\CPPMatrixLib\tests" "C:\Users\parth\Desktop\Coding Material\C++\SoC - Matrix\CPPMatrixLib\tests\test" "C:\Users\parth\Desktop\Coding Material\C++\SoC - Matrix\CPPMatrixLib\build" "C:\Users\parth\Desktop\Coding Material\C++\SoC - Matrix\CPPMatrixLib\build\test" "C:\Users\parth\Desktop\Coding Material\C++\SoC - Matrix\CPPMatrixLib\build\test\CMakeFiles\MatrixTests.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : test/CMakeFiles/MatrixTests.dir/depend

