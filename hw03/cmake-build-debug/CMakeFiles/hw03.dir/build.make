# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.12

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.2.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.2.4\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\Devon\Dropbox\2018 SCHOOL\CS\u18\hw03"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Devon\Dropbox\2018 SCHOOL\CS\u18\hw03\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/hw03.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hw03.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hw03.dir/flags.make

CMakeFiles/hw03.dir/main.cpp.obj: CMakeFiles/hw03.dir/flags.make
CMakeFiles/hw03.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Devon\Dropbox\2018 SCHOOL\CS\u18\hw03\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hw03.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\hw03.dir\main.cpp.obj -c "C:\Users\Devon\Dropbox\2018 SCHOOL\CS\u18\hw03\main.cpp"

CMakeFiles/hw03.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hw03.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Devon\Dropbox\2018 SCHOOL\CS\u18\hw03\main.cpp" > CMakeFiles\hw03.dir\main.cpp.i

CMakeFiles/hw03.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hw03.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Devon\Dropbox\2018 SCHOOL\CS\u18\hw03\main.cpp" -o CMakeFiles\hw03.dir\main.cpp.s

# Object files for target hw03
hw03_OBJECTS = \
"CMakeFiles/hw03.dir/main.cpp.obj"

# External object files for target hw03
hw03_EXTERNAL_OBJECTS =

hw03.exe: CMakeFiles/hw03.dir/main.cpp.obj
hw03.exe: CMakeFiles/hw03.dir/build.make
hw03.exe: CMakeFiles/hw03.dir/linklibs.rsp
hw03.exe: CMakeFiles/hw03.dir/objects1.rsp
hw03.exe: CMakeFiles/hw03.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\Devon\Dropbox\2018 SCHOOL\CS\u18\hw03\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable hw03.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\hw03.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hw03.dir/build: hw03.exe

.PHONY : CMakeFiles/hw03.dir/build

CMakeFiles/hw03.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\hw03.dir\cmake_clean.cmake
.PHONY : CMakeFiles/hw03.dir/clean

CMakeFiles/hw03.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Devon\Dropbox\2018 SCHOOL\CS\u18\hw03" "C:\Users\Devon\Dropbox\2018 SCHOOL\CS\u18\hw03" "C:\Users\Devon\Dropbox\2018 SCHOOL\CS\u18\hw03\cmake-build-debug" "C:\Users\Devon\Dropbox\2018 SCHOOL\CS\u18\hw03\cmake-build-debug" "C:\Users\Devon\Dropbox\2018 SCHOOL\CS\u18\hw03\cmake-build-debug\CMakeFiles\hw03.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/hw03.dir/depend
