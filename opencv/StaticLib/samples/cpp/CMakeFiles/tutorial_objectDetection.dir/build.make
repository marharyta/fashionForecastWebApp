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
include samples/cpp/CMakeFiles/tutorial_objectDetection.dir/depend.make

# Include the progress variables for this target.
include samples/cpp/CMakeFiles/tutorial_objectDetection.dir/progress.make

# Include the compile flags for this target's objects.
include samples/cpp/CMakeFiles/tutorial_objectDetection.dir/flags.make

samples/cpp/CMakeFiles/tutorial_objectDetection.dir/tutorial_code/objectDetection/objectDetection.cpp.o: samples/cpp/CMakeFiles/tutorial_objectDetection.dir/flags.make
samples/cpp/CMakeFiles/tutorial_objectDetection.dir/tutorial_code/objectDetection/objectDetection.cpp.o: ../samples/cpp/tutorial_code/objectDetection/objectDetection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object samples/cpp/CMakeFiles/tutorial_objectDetection.dir/tutorial_code/objectDetection/objectDetection.cpp.o"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/samples/cpp && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tutorial_objectDetection.dir/tutorial_code/objectDetection/objectDetection.cpp.o -c /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/samples/cpp/tutorial_code/objectDetection/objectDetection.cpp

samples/cpp/CMakeFiles/tutorial_objectDetection.dir/tutorial_code/objectDetection/objectDetection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial_objectDetection.dir/tutorial_code/objectDetection/objectDetection.cpp.i"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/samples/cpp && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/samples/cpp/tutorial_code/objectDetection/objectDetection.cpp > CMakeFiles/tutorial_objectDetection.dir/tutorial_code/objectDetection/objectDetection.cpp.i

samples/cpp/CMakeFiles/tutorial_objectDetection.dir/tutorial_code/objectDetection/objectDetection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial_objectDetection.dir/tutorial_code/objectDetection/objectDetection.cpp.s"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/samples/cpp && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/samples/cpp/tutorial_code/objectDetection/objectDetection.cpp -o CMakeFiles/tutorial_objectDetection.dir/tutorial_code/objectDetection/objectDetection.cpp.s

samples/cpp/CMakeFiles/tutorial_objectDetection.dir/tutorial_code/objectDetection/objectDetection.cpp.o.requires:

.PHONY : samples/cpp/CMakeFiles/tutorial_objectDetection.dir/tutorial_code/objectDetection/objectDetection.cpp.o.requires

samples/cpp/CMakeFiles/tutorial_objectDetection.dir/tutorial_code/objectDetection/objectDetection.cpp.o.provides: samples/cpp/CMakeFiles/tutorial_objectDetection.dir/tutorial_code/objectDetection/objectDetection.cpp.o.requires
	$(MAKE) -f samples/cpp/CMakeFiles/tutorial_objectDetection.dir/build.make samples/cpp/CMakeFiles/tutorial_objectDetection.dir/tutorial_code/objectDetection/objectDetection.cpp.o.provides.build
.PHONY : samples/cpp/CMakeFiles/tutorial_objectDetection.dir/tutorial_code/objectDetection/objectDetection.cpp.o.provides

samples/cpp/CMakeFiles/tutorial_objectDetection.dir/tutorial_code/objectDetection/objectDetection.cpp.o.provides.build: samples/cpp/CMakeFiles/tutorial_objectDetection.dir/tutorial_code/objectDetection/objectDetection.cpp.o


# Object files for target tutorial_objectDetection
tutorial_objectDetection_OBJECTS = \
"CMakeFiles/tutorial_objectDetection.dir/tutorial_code/objectDetection/objectDetection.cpp.o"

# External object files for target tutorial_objectDetection
tutorial_objectDetection_EXTERNAL_OBJECTS =

bin/cpp-tutorial-objectDetection: samples/cpp/CMakeFiles/tutorial_objectDetection.dir/tutorial_code/objectDetection/objectDetection.cpp.o
bin/cpp-tutorial-objectDetection: samples/cpp/CMakeFiles/tutorial_objectDetection.dir/build.make
bin/cpp-tutorial-objectDetection: ../3rdparty/ippicv/unpack/ippicv_osx/lib/libippicv.a
bin/cpp-tutorial-objectDetection: lib/libopencv_core.a
bin/cpp-tutorial-objectDetection: lib/libopencv_imgproc.a
bin/cpp-tutorial-objectDetection: lib/libopencv_flann.a
bin/cpp-tutorial-objectDetection: lib/libopencv_imgcodecs.a
bin/cpp-tutorial-objectDetection: lib/libopencv_videoio.a
bin/cpp-tutorial-objectDetection: lib/libopencv_highgui.a
bin/cpp-tutorial-objectDetection: lib/libopencv_ml.a
bin/cpp-tutorial-objectDetection: lib/libopencv_video.a
bin/cpp-tutorial-objectDetection: lib/libopencv_objdetect.a
bin/cpp-tutorial-objectDetection: lib/libopencv_photo.a
bin/cpp-tutorial-objectDetection: lib/libopencv_features2d.a
bin/cpp-tutorial-objectDetection: lib/libopencv_calib3d.a
bin/cpp-tutorial-objectDetection: lib/libopencv_stitching.a
bin/cpp-tutorial-objectDetection: lib/libopencv_videostab.a
bin/cpp-tutorial-objectDetection: lib/libopencv_shape.a
bin/cpp-tutorial-objectDetection: lib/libopencv_objdetect.a
bin/cpp-tutorial-objectDetection: lib/libopencv_photo.a
bin/cpp-tutorial-objectDetection: lib/libopencv_calib3d.a
bin/cpp-tutorial-objectDetection: lib/libopencv_features2d.a
bin/cpp-tutorial-objectDetection: lib/libopencv_flann.a
bin/cpp-tutorial-objectDetection: lib/libopencv_highgui.a
bin/cpp-tutorial-objectDetection: lib/libopencv_videoio.a
bin/cpp-tutorial-objectDetection: lib/libopencv_imgcodecs.a
bin/cpp-tutorial-objectDetection: 3rdparty/lib/liblibjpeg.a
bin/cpp-tutorial-objectDetection: 3rdparty/lib/liblibwebp.a
bin/cpp-tutorial-objectDetection: 3rdparty/lib/liblibpng.a
bin/cpp-tutorial-objectDetection: 3rdparty/lib/liblibtiff.a
bin/cpp-tutorial-objectDetection: 3rdparty/lib/liblibjasper.a
bin/cpp-tutorial-objectDetection: 3rdparty/lib/libIlmImf.a
bin/cpp-tutorial-objectDetection: lib/libopencv_ml.a
bin/cpp-tutorial-objectDetection: lib/libopencv_video.a
bin/cpp-tutorial-objectDetection: lib/libopencv_imgproc.a
bin/cpp-tutorial-objectDetection: lib/libopencv_core.a
bin/cpp-tutorial-objectDetection: 3rdparty/lib/libzlib.a
bin/cpp-tutorial-objectDetection: lib/libopencv_hal.a
bin/cpp-tutorial-objectDetection: ../3rdparty/ippicv/unpack/ippicv_osx/lib/libippicv.a
bin/cpp-tutorial-objectDetection: samples/cpp/CMakeFiles/tutorial_objectDetection.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/cpp-tutorial-objectDetection"
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/samples/cpp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tutorial_objectDetection.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/cpp/CMakeFiles/tutorial_objectDetection.dir/build: bin/cpp-tutorial-objectDetection

.PHONY : samples/cpp/CMakeFiles/tutorial_objectDetection.dir/build

samples/cpp/CMakeFiles/tutorial_objectDetection.dir/requires: samples/cpp/CMakeFiles/tutorial_objectDetection.dir/tutorial_code/objectDetection/objectDetection.cpp.o.requires

.PHONY : samples/cpp/CMakeFiles/tutorial_objectDetection.dir/requires

samples/cpp/CMakeFiles/tutorial_objectDetection.dir/clean:
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/samples/cpp && $(CMAKE_COMMAND) -P CMakeFiles/tutorial_objectDetection.dir/cmake_clean.cmake
.PHONY : samples/cpp/CMakeFiles/tutorial_objectDetection.dir/clean

samples/cpp/CMakeFiles/tutorial_objectDetection.dir/depend:
	cd /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/samples/cpp /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/samples/cpp /Users/marharyta/Desktop/myProjRepo/fashionForecastWebApp/opencv/StaticLib/samples/cpp/CMakeFiles/tutorial_objectDetection.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/cpp/CMakeFiles/tutorial_objectDetection.dir/depend
