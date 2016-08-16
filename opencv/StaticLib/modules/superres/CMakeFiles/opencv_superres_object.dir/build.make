# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib

# Include any dependencies generated for this target.
include modules/superres/CMakeFiles/opencv_superres_object.dir/depend.make

# Include the progress variables for this target.
include modules/superres/CMakeFiles/opencv_superres_object.dir/progress.make

# Include the compile flags for this target's objects.
include modules/superres/CMakeFiles/opencv_superres_object.dir/flags.make

modules/superres/opencl_kernels_superres.cpp: ../modules/superres/src/opencl/superres_btvl1.cl
modules/superres/opencl_kernels_superres.cpp: ../cmake/cl2cpp.cmake
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating opencl_kernels_superres.cpp, opencl_kernels_superres.hpp"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres && /Applications/CMake.app/Contents/bin/cmake -DMODULE_NAME="superres" -DCL_DIR="/Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/modules/superres/src/opencl" -DOUTPUT="/Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres/opencl_kernels_superres.cpp" -P /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/cmake/cl2cpp.cmake

modules/superres/opencl_kernels_superres.hpp: modules/superres/opencl_kernels_superres.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate modules/superres/opencl_kernels_superres.hpp

modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1.cpp.o: modules/superres/CMakeFiles/opencv_superres_object.dir/flags.make
modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1.cpp.o: ../modules/superres/src/btv_l1.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1.cpp.o"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_superres_object.dir/src/btv_l1.cpp.o -c /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/modules/superres/src/btv_l1.cpp

modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_superres_object.dir/src/btv_l1.cpp.i"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/modules/superres/src/btv_l1.cpp > CMakeFiles/opencv_superres_object.dir/src/btv_l1.cpp.i

modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_superres_object.dir/src/btv_l1.cpp.s"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/modules/superres/src/btv_l1.cpp -o CMakeFiles/opencv_superres_object.dir/src/btv_l1.cpp.s

modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1.cpp.o.requires:

.PHONY : modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1.cpp.o.requires

modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1.cpp.o.provides: modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1.cpp.o.requires
	$(MAKE) -f modules/superres/CMakeFiles/opencv_superres_object.dir/build.make modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1.cpp.o.provides.build
.PHONY : modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1.cpp.o.provides

modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1.cpp.o.provides.build: modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1.cpp.o


modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1_cuda.cpp.o: modules/superres/CMakeFiles/opencv_superres_object.dir/flags.make
modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1_cuda.cpp.o: ../modules/superres/src/btv_l1_cuda.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1_cuda.cpp.o"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_superres_object.dir/src/btv_l1_cuda.cpp.o -c /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/modules/superres/src/btv_l1_cuda.cpp

modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1_cuda.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_superres_object.dir/src/btv_l1_cuda.cpp.i"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/modules/superres/src/btv_l1_cuda.cpp > CMakeFiles/opencv_superres_object.dir/src/btv_l1_cuda.cpp.i

modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1_cuda.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_superres_object.dir/src/btv_l1_cuda.cpp.s"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/modules/superres/src/btv_l1_cuda.cpp -o CMakeFiles/opencv_superres_object.dir/src/btv_l1_cuda.cpp.s

modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1_cuda.cpp.o.requires:

.PHONY : modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1_cuda.cpp.o.requires

modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1_cuda.cpp.o.provides: modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1_cuda.cpp.o.requires
	$(MAKE) -f modules/superres/CMakeFiles/opencv_superres_object.dir/build.make modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1_cuda.cpp.o.provides.build
.PHONY : modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1_cuda.cpp.o.provides

modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1_cuda.cpp.o.provides.build: modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1_cuda.cpp.o


modules/superres/CMakeFiles/opencv_superres_object.dir/src/frame_source.cpp.o: modules/superres/CMakeFiles/opencv_superres_object.dir/flags.make
modules/superres/CMakeFiles/opencv_superres_object.dir/src/frame_source.cpp.o: ../modules/superres/src/frame_source.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object modules/superres/CMakeFiles/opencv_superres_object.dir/src/frame_source.cpp.o"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_superres_object.dir/src/frame_source.cpp.o -c /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/modules/superres/src/frame_source.cpp

modules/superres/CMakeFiles/opencv_superres_object.dir/src/frame_source.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_superres_object.dir/src/frame_source.cpp.i"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/modules/superres/src/frame_source.cpp > CMakeFiles/opencv_superres_object.dir/src/frame_source.cpp.i

modules/superres/CMakeFiles/opencv_superres_object.dir/src/frame_source.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_superres_object.dir/src/frame_source.cpp.s"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/modules/superres/src/frame_source.cpp -o CMakeFiles/opencv_superres_object.dir/src/frame_source.cpp.s

modules/superres/CMakeFiles/opencv_superres_object.dir/src/frame_source.cpp.o.requires:

.PHONY : modules/superres/CMakeFiles/opencv_superres_object.dir/src/frame_source.cpp.o.requires

modules/superres/CMakeFiles/opencv_superres_object.dir/src/frame_source.cpp.o.provides: modules/superres/CMakeFiles/opencv_superres_object.dir/src/frame_source.cpp.o.requires
	$(MAKE) -f modules/superres/CMakeFiles/opencv_superres_object.dir/build.make modules/superres/CMakeFiles/opencv_superres_object.dir/src/frame_source.cpp.o.provides.build
.PHONY : modules/superres/CMakeFiles/opencv_superres_object.dir/src/frame_source.cpp.o.provides

modules/superres/CMakeFiles/opencv_superres_object.dir/src/frame_source.cpp.o.provides.build: modules/superres/CMakeFiles/opencv_superres_object.dir/src/frame_source.cpp.o


modules/superres/CMakeFiles/opencv_superres_object.dir/src/input_array_utility.cpp.o: modules/superres/CMakeFiles/opencv_superres_object.dir/flags.make
modules/superres/CMakeFiles/opencv_superres_object.dir/src/input_array_utility.cpp.o: ../modules/superres/src/input_array_utility.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object modules/superres/CMakeFiles/opencv_superres_object.dir/src/input_array_utility.cpp.o"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_superres_object.dir/src/input_array_utility.cpp.o -c /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/modules/superres/src/input_array_utility.cpp

modules/superres/CMakeFiles/opencv_superres_object.dir/src/input_array_utility.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_superres_object.dir/src/input_array_utility.cpp.i"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/modules/superres/src/input_array_utility.cpp > CMakeFiles/opencv_superres_object.dir/src/input_array_utility.cpp.i

modules/superres/CMakeFiles/opencv_superres_object.dir/src/input_array_utility.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_superres_object.dir/src/input_array_utility.cpp.s"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/modules/superres/src/input_array_utility.cpp -o CMakeFiles/opencv_superres_object.dir/src/input_array_utility.cpp.s

modules/superres/CMakeFiles/opencv_superres_object.dir/src/input_array_utility.cpp.o.requires:

.PHONY : modules/superres/CMakeFiles/opencv_superres_object.dir/src/input_array_utility.cpp.o.requires

modules/superres/CMakeFiles/opencv_superres_object.dir/src/input_array_utility.cpp.o.provides: modules/superres/CMakeFiles/opencv_superres_object.dir/src/input_array_utility.cpp.o.requires
	$(MAKE) -f modules/superres/CMakeFiles/opencv_superres_object.dir/build.make modules/superres/CMakeFiles/opencv_superres_object.dir/src/input_array_utility.cpp.o.provides.build
.PHONY : modules/superres/CMakeFiles/opencv_superres_object.dir/src/input_array_utility.cpp.o.provides

modules/superres/CMakeFiles/opencv_superres_object.dir/src/input_array_utility.cpp.o.provides.build: modules/superres/CMakeFiles/opencv_superres_object.dir/src/input_array_utility.cpp.o


modules/superres/CMakeFiles/opencv_superres_object.dir/src/optical_flow.cpp.o: modules/superres/CMakeFiles/opencv_superres_object.dir/flags.make
modules/superres/CMakeFiles/opencv_superres_object.dir/src/optical_flow.cpp.o: ../modules/superres/src/optical_flow.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object modules/superres/CMakeFiles/opencv_superres_object.dir/src/optical_flow.cpp.o"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_superres_object.dir/src/optical_flow.cpp.o -c /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/modules/superres/src/optical_flow.cpp

modules/superres/CMakeFiles/opencv_superres_object.dir/src/optical_flow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_superres_object.dir/src/optical_flow.cpp.i"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/modules/superres/src/optical_flow.cpp > CMakeFiles/opencv_superres_object.dir/src/optical_flow.cpp.i

modules/superres/CMakeFiles/opencv_superres_object.dir/src/optical_flow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_superres_object.dir/src/optical_flow.cpp.s"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/modules/superres/src/optical_flow.cpp -o CMakeFiles/opencv_superres_object.dir/src/optical_flow.cpp.s

modules/superres/CMakeFiles/opencv_superres_object.dir/src/optical_flow.cpp.o.requires:

.PHONY : modules/superres/CMakeFiles/opencv_superres_object.dir/src/optical_flow.cpp.o.requires

modules/superres/CMakeFiles/opencv_superres_object.dir/src/optical_flow.cpp.o.provides: modules/superres/CMakeFiles/opencv_superres_object.dir/src/optical_flow.cpp.o.requires
	$(MAKE) -f modules/superres/CMakeFiles/opencv_superres_object.dir/build.make modules/superres/CMakeFiles/opencv_superres_object.dir/src/optical_flow.cpp.o.provides.build
.PHONY : modules/superres/CMakeFiles/opencv_superres_object.dir/src/optical_flow.cpp.o.provides

modules/superres/CMakeFiles/opencv_superres_object.dir/src/optical_flow.cpp.o.provides.build: modules/superres/CMakeFiles/opencv_superres_object.dir/src/optical_flow.cpp.o


modules/superres/CMakeFiles/opencv_superres_object.dir/src/super_resolution.cpp.o: modules/superres/CMakeFiles/opencv_superres_object.dir/flags.make
modules/superres/CMakeFiles/opencv_superres_object.dir/src/super_resolution.cpp.o: ../modules/superres/src/super_resolution.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object modules/superres/CMakeFiles/opencv_superres_object.dir/src/super_resolution.cpp.o"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_superres_object.dir/src/super_resolution.cpp.o -c /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/modules/superres/src/super_resolution.cpp

modules/superres/CMakeFiles/opencv_superres_object.dir/src/super_resolution.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_superres_object.dir/src/super_resolution.cpp.i"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/modules/superres/src/super_resolution.cpp > CMakeFiles/opencv_superres_object.dir/src/super_resolution.cpp.i

modules/superres/CMakeFiles/opencv_superres_object.dir/src/super_resolution.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_superres_object.dir/src/super_resolution.cpp.s"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/modules/superres/src/super_resolution.cpp -o CMakeFiles/opencv_superres_object.dir/src/super_resolution.cpp.s

modules/superres/CMakeFiles/opencv_superres_object.dir/src/super_resolution.cpp.o.requires:

.PHONY : modules/superres/CMakeFiles/opencv_superres_object.dir/src/super_resolution.cpp.o.requires

modules/superres/CMakeFiles/opencv_superres_object.dir/src/super_resolution.cpp.o.provides: modules/superres/CMakeFiles/opencv_superres_object.dir/src/super_resolution.cpp.o.requires
	$(MAKE) -f modules/superres/CMakeFiles/opencv_superres_object.dir/build.make modules/superres/CMakeFiles/opencv_superres_object.dir/src/super_resolution.cpp.o.provides.build
.PHONY : modules/superres/CMakeFiles/opencv_superres_object.dir/src/super_resolution.cpp.o.provides

modules/superres/CMakeFiles/opencv_superres_object.dir/src/super_resolution.cpp.o.provides.build: modules/superres/CMakeFiles/opencv_superres_object.dir/src/super_resolution.cpp.o


modules/superres/CMakeFiles/opencv_superres_object.dir/opencl_kernels_superres.cpp.o: modules/superres/CMakeFiles/opencv_superres_object.dir/flags.make
modules/superres/CMakeFiles/opencv_superres_object.dir/opencl_kernels_superres.cpp.o: modules/superres/opencl_kernels_superres.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object modules/superres/CMakeFiles/opencv_superres_object.dir/opencl_kernels_superres.cpp.o"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_superres_object.dir/opencl_kernels_superres.cpp.o -c /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres/opencl_kernels_superres.cpp

modules/superres/CMakeFiles/opencv_superres_object.dir/opencl_kernels_superres.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_superres_object.dir/opencl_kernels_superres.cpp.i"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres/opencl_kernels_superres.cpp > CMakeFiles/opencv_superres_object.dir/opencl_kernels_superres.cpp.i

modules/superres/CMakeFiles/opencv_superres_object.dir/opencl_kernels_superres.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_superres_object.dir/opencl_kernels_superres.cpp.s"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres/opencl_kernels_superres.cpp -o CMakeFiles/opencv_superres_object.dir/opencl_kernels_superres.cpp.s

modules/superres/CMakeFiles/opencv_superres_object.dir/opencl_kernels_superres.cpp.o.requires:

.PHONY : modules/superres/CMakeFiles/opencv_superres_object.dir/opencl_kernels_superres.cpp.o.requires

modules/superres/CMakeFiles/opencv_superres_object.dir/opencl_kernels_superres.cpp.o.provides: modules/superres/CMakeFiles/opencv_superres_object.dir/opencl_kernels_superres.cpp.o.requires
	$(MAKE) -f modules/superres/CMakeFiles/opencv_superres_object.dir/build.make modules/superres/CMakeFiles/opencv_superres_object.dir/opencl_kernels_superres.cpp.o.provides.build
.PHONY : modules/superres/CMakeFiles/opencv_superres_object.dir/opencl_kernels_superres.cpp.o.provides

modules/superres/CMakeFiles/opencv_superres_object.dir/opencl_kernels_superres.cpp.o.provides.build: modules/superres/CMakeFiles/opencv_superres_object.dir/opencl_kernels_superres.cpp.o


opencv_superres_object: modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1.cpp.o
opencv_superres_object: modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1_cuda.cpp.o
opencv_superres_object: modules/superres/CMakeFiles/opencv_superres_object.dir/src/frame_source.cpp.o
opencv_superres_object: modules/superres/CMakeFiles/opencv_superres_object.dir/src/input_array_utility.cpp.o
opencv_superres_object: modules/superres/CMakeFiles/opencv_superres_object.dir/src/optical_flow.cpp.o
opencv_superres_object: modules/superres/CMakeFiles/opencv_superres_object.dir/src/super_resolution.cpp.o
opencv_superres_object: modules/superres/CMakeFiles/opencv_superres_object.dir/opencl_kernels_superres.cpp.o
opencv_superres_object: modules/superres/CMakeFiles/opencv_superres_object.dir/build.make

.PHONY : opencv_superres_object

# Rule to build all files generated by this target.
modules/superres/CMakeFiles/opencv_superres_object.dir/build: opencv_superres_object

.PHONY : modules/superres/CMakeFiles/opencv_superres_object.dir/build

modules/superres/CMakeFiles/opencv_superres_object.dir/requires: modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1.cpp.o.requires
modules/superres/CMakeFiles/opencv_superres_object.dir/requires: modules/superres/CMakeFiles/opencv_superres_object.dir/src/btv_l1_cuda.cpp.o.requires
modules/superres/CMakeFiles/opencv_superres_object.dir/requires: modules/superres/CMakeFiles/opencv_superres_object.dir/src/frame_source.cpp.o.requires
modules/superres/CMakeFiles/opencv_superres_object.dir/requires: modules/superres/CMakeFiles/opencv_superres_object.dir/src/input_array_utility.cpp.o.requires
modules/superres/CMakeFiles/opencv_superres_object.dir/requires: modules/superres/CMakeFiles/opencv_superres_object.dir/src/optical_flow.cpp.o.requires
modules/superres/CMakeFiles/opencv_superres_object.dir/requires: modules/superres/CMakeFiles/opencv_superres_object.dir/src/super_resolution.cpp.o.requires
modules/superres/CMakeFiles/opencv_superres_object.dir/requires: modules/superres/CMakeFiles/opencv_superres_object.dir/opencl_kernels_superres.cpp.o.requires

.PHONY : modules/superres/CMakeFiles/opencv_superres_object.dir/requires

modules/superres/CMakeFiles/opencv_superres_object.dir/clean:
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres && $(CMAKE_COMMAND) -P CMakeFiles/opencv_superres_object.dir/cmake_clean.cmake
.PHONY : modules/superres/CMakeFiles/opencv_superres_object.dir/clean

modules/superres/CMakeFiles/opencv_superres_object.dir/depend: modules/superres/opencl_kernels_superres.cpp
modules/superres/CMakeFiles/opencv_superres_object.dir/depend: modules/superres/opencl_kernels_superres.hpp
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/modules/superres /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/modules/superres/CMakeFiles/opencv_superres_object.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/superres/CMakeFiles/opencv_superres_object.dir/depend

