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
CMAKE_SOURCE_DIR = /home/diogo/Documentos/CLE/AULA1/weather-stations

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/diogo/Documentos/CLE/AULA1/weather-stations/build

# Include any dependencies generated for this target.
include CMakeFiles/cle-samples.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/cle-samples.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cle-samples.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cle-samples.dir/flags.make

CMakeFiles/cle-samples.dir/src/create-samples.cpp.o: CMakeFiles/cle-samples.dir/flags.make
CMakeFiles/cle-samples.dir/src/create-samples.cpp.o: ../src/create-samples.cpp
CMakeFiles/cle-samples.dir/src/create-samples.cpp.o: CMakeFiles/cle-samples.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/diogo/Documentos/CLE/AULA1/weather-stations/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cle-samples.dir/src/create-samples.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cle-samples.dir/src/create-samples.cpp.o -MF CMakeFiles/cle-samples.dir/src/create-samples.cpp.o.d -o CMakeFiles/cle-samples.dir/src/create-samples.cpp.o -c /home/diogo/Documentos/CLE/AULA1/weather-stations/src/create-samples.cpp

CMakeFiles/cle-samples.dir/src/create-samples.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cle-samples.dir/src/create-samples.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/diogo/Documentos/CLE/AULA1/weather-stations/src/create-samples.cpp > CMakeFiles/cle-samples.dir/src/create-samples.cpp.i

CMakeFiles/cle-samples.dir/src/create-samples.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cle-samples.dir/src/create-samples.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/diogo/Documentos/CLE/AULA1/weather-stations/src/create-samples.cpp -o CMakeFiles/cle-samples.dir/src/create-samples.cpp.s

# Object files for target cle-samples
cle__samples_OBJECTS = \
"CMakeFiles/cle-samples.dir/src/create-samples.cpp.o"

# External object files for target cle-samples
cle__samples_EXTERNAL_OBJECTS =

cle-samples: CMakeFiles/cle-samples.dir/src/create-samples.cpp.o
cle-samples: CMakeFiles/cle-samples.dir/build.make
cle-samples: CMakeFiles/cle-samples.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/diogo/Documentos/CLE/AULA1/weather-stations/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cle-samples"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cle-samples.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cle-samples.dir/build: cle-samples
.PHONY : CMakeFiles/cle-samples.dir/build

CMakeFiles/cle-samples.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cle-samples.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cle-samples.dir/clean

CMakeFiles/cle-samples.dir/depend:
	cd /home/diogo/Documentos/CLE/AULA1/weather-stations/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/diogo/Documentos/CLE/AULA1/weather-stations /home/diogo/Documentos/CLE/AULA1/weather-stations /home/diogo/Documentos/CLE/AULA1/weather-stations/build /home/diogo/Documentos/CLE/AULA1/weather-stations/build /home/diogo/Documentos/CLE/AULA1/weather-stations/build/CMakeFiles/cle-samples.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cle-samples.dir/depend

