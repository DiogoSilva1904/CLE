# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/diogo/Documentos/CLE/AULA2/word-count/word-count

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/diogo/Documentos/CLE/AULA2/word-count/word-count/build

# Include any dependencies generated for this target.
include CMakeFiles/cle-wc.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/cle-wc.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cle-wc.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cle-wc.dir/flags.make

CMakeFiles/cle-wc.dir/src/main.cpp.o: CMakeFiles/cle-wc.dir/flags.make
CMakeFiles/cle-wc.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/cle-wc.dir/src/main.cpp.o: CMakeFiles/cle-wc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/diogo/Documentos/CLE/AULA2/word-count/word-count/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cle-wc.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cle-wc.dir/src/main.cpp.o -MF CMakeFiles/cle-wc.dir/src/main.cpp.o.d -o CMakeFiles/cle-wc.dir/src/main.cpp.o -c /home/diogo/Documentos/CLE/AULA2/word-count/word-count/src/main.cpp

CMakeFiles/cle-wc.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cle-wc.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/diogo/Documentos/CLE/AULA2/word-count/word-count/src/main.cpp > CMakeFiles/cle-wc.dir/src/main.cpp.i

CMakeFiles/cle-wc.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cle-wc.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/diogo/Documentos/CLE/AULA2/word-count/word-count/src/main.cpp -o CMakeFiles/cle-wc.dir/src/main.cpp.s

CMakeFiles/cle-wc.dir/src/utf-8.cpp.o: CMakeFiles/cle-wc.dir/flags.make
CMakeFiles/cle-wc.dir/src/utf-8.cpp.o: ../src/utf-8.cpp
CMakeFiles/cle-wc.dir/src/utf-8.cpp.o: CMakeFiles/cle-wc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/diogo/Documentos/CLE/AULA2/word-count/word-count/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/cle-wc.dir/src/utf-8.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cle-wc.dir/src/utf-8.cpp.o -MF CMakeFiles/cle-wc.dir/src/utf-8.cpp.o.d -o CMakeFiles/cle-wc.dir/src/utf-8.cpp.o -c /home/diogo/Documentos/CLE/AULA2/word-count/word-count/src/utf-8.cpp

CMakeFiles/cle-wc.dir/src/utf-8.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cle-wc.dir/src/utf-8.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/diogo/Documentos/CLE/AULA2/word-count/word-count/src/utf-8.cpp > CMakeFiles/cle-wc.dir/src/utf-8.cpp.i

CMakeFiles/cle-wc.dir/src/utf-8.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cle-wc.dir/src/utf-8.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/diogo/Documentos/CLE/AULA2/word-count/word-count/src/utf-8.cpp -o CMakeFiles/cle-wc.dir/src/utf-8.cpp.s

CMakeFiles/cle-wc.dir/src/word_count.cpp.o: CMakeFiles/cle-wc.dir/flags.make
CMakeFiles/cle-wc.dir/src/word_count.cpp.o: ../src/word_count.cpp
CMakeFiles/cle-wc.dir/src/word_count.cpp.o: CMakeFiles/cle-wc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/diogo/Documentos/CLE/AULA2/word-count/word-count/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/cle-wc.dir/src/word_count.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cle-wc.dir/src/word_count.cpp.o -MF CMakeFiles/cle-wc.dir/src/word_count.cpp.o.d -o CMakeFiles/cle-wc.dir/src/word_count.cpp.o -c /home/diogo/Documentos/CLE/AULA2/word-count/word-count/src/word_count.cpp

CMakeFiles/cle-wc.dir/src/word_count.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cle-wc.dir/src/word_count.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/diogo/Documentos/CLE/AULA2/word-count/word-count/src/word_count.cpp > CMakeFiles/cle-wc.dir/src/word_count.cpp.i

CMakeFiles/cle-wc.dir/src/word_count.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cle-wc.dir/src/word_count.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/diogo/Documentos/CLE/AULA2/word-count/word-count/src/word_count.cpp -o CMakeFiles/cle-wc.dir/src/word_count.cpp.s

# Object files for target cle-wc
cle__wc_OBJECTS = \
"CMakeFiles/cle-wc.dir/src/main.cpp.o" \
"CMakeFiles/cle-wc.dir/src/utf-8.cpp.o" \
"CMakeFiles/cle-wc.dir/src/word_count.cpp.o"

# External object files for target cle-wc
cle__wc_EXTERNAL_OBJECTS =

cle-wc: CMakeFiles/cle-wc.dir/src/main.cpp.o
cle-wc: CMakeFiles/cle-wc.dir/src/utf-8.cpp.o
cle-wc: CMakeFiles/cle-wc.dir/src/word_count.cpp.o
cle-wc: CMakeFiles/cle-wc.dir/build.make
cle-wc: CMakeFiles/cle-wc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/diogo/Documentos/CLE/AULA2/word-count/word-count/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable cle-wc"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cle-wc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cle-wc.dir/build: cle-wc
.PHONY : CMakeFiles/cle-wc.dir/build

CMakeFiles/cle-wc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cle-wc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cle-wc.dir/clean

CMakeFiles/cle-wc.dir/depend:
	cd /home/diogo/Documentos/CLE/AULA2/word-count/word-count/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/diogo/Documentos/CLE/AULA2/word-count/word-count /home/diogo/Documentos/CLE/AULA2/word-count/word-count /home/diogo/Documentos/CLE/AULA2/word-count/word-count/build /home/diogo/Documentos/CLE/AULA2/word-count/word-count/build /home/diogo/Documentos/CLE/AULA2/word-count/word-count/build/CMakeFiles/cle-wc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cle-wc.dir/depend

