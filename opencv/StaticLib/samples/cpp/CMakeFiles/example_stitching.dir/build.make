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
include samples/cpp/CMakeFiles/example_stitching.dir/depend.make

# Include the progress variables for this target.
include samples/cpp/CMakeFiles/example_stitching.dir/progress.make

# Include the compile flags for this target's objects.
include samples/cpp/CMakeFiles/example_stitching.dir/flags.make

samples/cpp/CMakeFiles/example_stitching.dir/stitching.cpp.o: samples/cpp/CMakeFiles/example_stitching.dir/flags.make
samples/cpp/CMakeFiles/example_stitching.dir/stitching.cpp.o: ../samples/cpp/stitching.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object samples/cpp/CMakeFiles/example_stitching.dir/stitching.cpp.o"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/samples/cpp && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example_stitching.dir/stitching.cpp.o -c /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/samples/cpp/stitching.cpp

samples/cpp/CMakeFiles/example_stitching.dir/stitching.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_stitching.dir/stitching.cpp.i"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/samples/cpp && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/samples/cpp/stitching.cpp > CMakeFiles/example_stitching.dir/stitching.cpp.i

samples/cpp/CMakeFiles/example_stitching.dir/stitching.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_stitching.dir/stitching.cpp.s"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/samples/cpp && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/samples/cpp/stitching.cpp -o CMakeFiles/example_stitching.dir/stitching.cpp.s

samples/cpp/CMakeFiles/example_stitching.dir/stitching.cpp.o.requires:

.PHONY : samples/cpp/CMakeFiles/example_stitching.dir/stitching.cpp.o.requires

samples/cpp/CMakeFiles/example_stitching.dir/stitching.cpp.o.provides: samples/cpp/CMakeFiles/example_stitching.dir/stitching.cpp.o.requires
	$(MAKE) -f samples/cpp/CMakeFiles/example_stitching.dir/build.make samples/cpp/CMakeFiles/example_stitching.dir/stitching.cpp.o.provides.build
.PHONY : samples/cpp/CMakeFiles/example_stitching.dir/stitching.cpp.o.provides

samples/cpp/CMakeFiles/example_stitching.dir/stitching.cpp.o.provides.build: samples/cpp/CMakeFiles/example_stitching.dir/stitching.cpp.o


# Object files for target example_stitching
example_stitching_OBJECTS = \
"CMakeFiles/example_stitching.dir/stitching.cpp.o"

# External object files for target example_stitching
example_stitching_EXTERNAL_OBJECTS =

bin/cpp-example-stitching: samples/cpp/CMakeFiles/example_stitching.dir/stitching.cpp.o
bin/cpp-example-stitching: samples/cpp/CMakeFiles/example_stitching.dir/build.make
bin/cpp-example-stitching: ../3rdparty/ippicv/unpack/ippicv_osx/lib/libippicv.a
bin/cpp-example-stitching: lib/libopencv_core.a
bin/cpp-example-stitching: lib/libopencv_imgproc.a
bin/cpp-example-stitching: lib/libopencv_flann.a
bin/cpp-example-stitching: lib/libopencv_imgcodecs.a
bin/cpp-example-stitching: lib/libopencv_videoio.a
bin/cpp-example-stitching: lib/libopencv_highgui.a
bin/cpp-example-stitching: lib/libopencv_ml.a
bin/cpp-example-stitching: lib/libopencv_video.a
bin/cpp-example-stitching: lib/libopencv_objdetect.a
bin/cpp-example-stitching: lib/libopencv_photo.a
bin/cpp-example-stitching: lib/libopencv_features2d.a
bin/cpp-example-stitching: lib/libopencv_calib3d.a
bin/cpp-example-stitching: lib/libopencv_stitching.a
bin/cpp-example-stitching: lib/libopencv_videostab.a
bin/cpp-example-stitching: lib/libopencv_shape.a
bin/cpp-example-stitching: lib/libopencv_objdetect.a
bin/cpp-example-stitching: lib/libopencv_photo.a
bin/cpp-example-stitching: lib/libopencv_calib3d.a
bin/cpp-example-stitching: lib/libopencv_features2d.a
bin/cpp-example-stitching: lib/libopencv_flann.a
bin/cpp-example-stitching: lib/libopencv_highgui.a
bin/cpp-example-stitching: lib/libopencv_videoio.a
bin/cpp-example-stitching: lib/libopencv_imgcodecs.a
bin/cpp-example-stitching: 3rdparty/lib/liblibjpeg.a
bin/cpp-example-stitching: 3rdparty/lib/liblibwebp.a
bin/cpp-example-stitching: 3rdparty/lib/liblibpng.a
bin/cpp-example-stitching: 3rdparty/lib/liblibtiff.a
bin/cpp-example-stitching: 3rdparty/lib/liblibjasper.a
bin/cpp-example-stitching: 3rdparty/lib/libIlmImf.a
bin/cpp-example-stitching: lib/libopencv_ml.a
bin/cpp-example-stitching: lib/libopencv_video.a
bin/cpp-example-stitching: lib/libopencv_imgproc.a
bin/cpp-example-stitching: lib/libopencv_core.a
bin/cpp-example-stitching: 3rdparty/lib/libzlib.a
bin/cpp-example-stitching: lib/libopencv_hal.a
bin/cpp-example-stitching: ../3rdparty/ippicv/unpack/ippicv_osx/lib/libippicv.a
bin/cpp-example-stitching: samples/cpp/CMakeFiles/example_stitching.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/cpp-example-stitching"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/samples/cpp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_stitching.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/cpp/CMakeFiles/example_stitching.dir/build: bin/cpp-example-stitching

.PHONY : samples/cpp/CMakeFiles/example_stitching.dir/build

samples/cpp/CMakeFiles/example_stitching.dir/requires: samples/cpp/CMakeFiles/example_stitching.dir/stitching.cpp.o.requires

.PHONY : samples/cpp/CMakeFiles/example_stitching.dir/requires

samples/cpp/CMakeFiles/example_stitching.dir/clean:
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/samples/cpp && $(CMAKE_COMMAND) -P CMakeFiles/example_stitching.dir/cmake_clean.cmake
.PHONY : samples/cpp/CMakeFiles/example_stitching.dir/clean

samples/cpp/CMakeFiles/example_stitching.dir/depend:
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/samples/cpp /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/samples/cpp /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/samples/cpp/CMakeFiles/example_stitching.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/cpp/CMakeFiles/example_stitching.dir/depend

