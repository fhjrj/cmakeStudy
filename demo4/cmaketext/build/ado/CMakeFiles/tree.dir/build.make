# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/user/demotext/demo4/cmaketext

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user/demotext/demo4/cmaketext/build

# Include any dependencies generated for this target.
include ado/CMakeFiles/tree.dir/depend.make

# Include the progress variables for this target.
include ado/CMakeFiles/tree.dir/progress.make

# Include the compile flags for this target's objects.
include ado/CMakeFiles/tree.dir/flags.make

ado/CMakeFiles/tree.dir/1.cpp.o: ado/CMakeFiles/tree.dir/flags.make
ado/CMakeFiles/tree.dir/1.cpp.o: ../ado/1.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/demotext/demo4/cmaketext/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ado/CMakeFiles/tree.dir/1.cpp.o"
	cd /home/user/demotext/demo4/cmaketext/build/ado && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tree.dir/1.cpp.o -c /home/user/demotext/demo4/cmaketext/ado/1.cpp

ado/CMakeFiles/tree.dir/1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tree.dir/1.cpp.i"
	cd /home/user/demotext/demo4/cmaketext/build/ado && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/demotext/demo4/cmaketext/ado/1.cpp > CMakeFiles/tree.dir/1.cpp.i

ado/CMakeFiles/tree.dir/1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tree.dir/1.cpp.s"
	cd /home/user/demotext/demo4/cmaketext/build/ado && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/demotext/demo4/cmaketext/ado/1.cpp -o CMakeFiles/tree.dir/1.cpp.s

ado/CMakeFiles/tree.dir/1.cpp.o.requires:

.PHONY : ado/CMakeFiles/tree.dir/1.cpp.o.requires

ado/CMakeFiles/tree.dir/1.cpp.o.provides: ado/CMakeFiles/tree.dir/1.cpp.o.requires
	$(MAKE) -f ado/CMakeFiles/tree.dir/build.make ado/CMakeFiles/tree.dir/1.cpp.o.provides.build
.PHONY : ado/CMakeFiles/tree.dir/1.cpp.o.provides

ado/CMakeFiles/tree.dir/1.cpp.o.provides.build: ado/CMakeFiles/tree.dir/1.cpp.o


# Object files for target tree
tree_OBJECTS = \
"CMakeFiles/tree.dir/1.cpp.o"

# External object files for target tree
tree_EXTERNAL_OBJECTS =

../lib/libtree.a: ado/CMakeFiles/tree.dir/1.cpp.o
../lib/libtree.a: ado/CMakeFiles/tree.dir/build.make
../lib/libtree.a: ado/CMakeFiles/tree.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/user/demotext/demo4/cmaketext/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../lib/libtree.a"
	cd /home/user/demotext/demo4/cmaketext/build/ado && $(CMAKE_COMMAND) -P CMakeFiles/tree.dir/cmake_clean_target.cmake
	cd /home/user/demotext/demo4/cmaketext/build/ado && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tree.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ado/CMakeFiles/tree.dir/build: ../lib/libtree.a

.PHONY : ado/CMakeFiles/tree.dir/build

ado/CMakeFiles/tree.dir/requires: ado/CMakeFiles/tree.dir/1.cpp.o.requires

.PHONY : ado/CMakeFiles/tree.dir/requires

ado/CMakeFiles/tree.dir/clean:
	cd /home/user/demotext/demo4/cmaketext/build/ado && $(CMAKE_COMMAND) -P CMakeFiles/tree.dir/cmake_clean.cmake
.PHONY : ado/CMakeFiles/tree.dir/clean

ado/CMakeFiles/tree.dir/depend:
	cd /home/user/demotext/demo4/cmaketext/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/demotext/demo4/cmaketext /home/user/demotext/demo4/cmaketext/ado /home/user/demotext/demo4/cmaketext/build /home/user/demotext/demo4/cmaketext/build/ado /home/user/demotext/demo4/cmaketext/build/ado/CMakeFiles/tree.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ado/CMakeFiles/tree.dir/depend
