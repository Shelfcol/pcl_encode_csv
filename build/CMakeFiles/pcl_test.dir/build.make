# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/gxf/pcl_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gxf/pcl_test/build

# Include any dependencies generated for this target.
include CMakeFiles/pcl_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pcl_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pcl_test.dir/flags.make

CMakeFiles/pcl_test.dir/src/pcl_test.cpp.o: CMakeFiles/pcl_test.dir/flags.make
CMakeFiles/pcl_test.dir/src/pcl_test.cpp.o: ../src/pcl_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gxf/pcl_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pcl_test.dir/src/pcl_test.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pcl_test.dir/src/pcl_test.cpp.o -c /home/gxf/pcl_test/src/pcl_test.cpp

CMakeFiles/pcl_test.dir/src/pcl_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pcl_test.dir/src/pcl_test.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gxf/pcl_test/src/pcl_test.cpp > CMakeFiles/pcl_test.dir/src/pcl_test.cpp.i

CMakeFiles/pcl_test.dir/src/pcl_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pcl_test.dir/src/pcl_test.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gxf/pcl_test/src/pcl_test.cpp -o CMakeFiles/pcl_test.dir/src/pcl_test.cpp.s

CMakeFiles/pcl_test.dir/src/pcl_test.cpp.o.requires:

.PHONY : CMakeFiles/pcl_test.dir/src/pcl_test.cpp.o.requires

CMakeFiles/pcl_test.dir/src/pcl_test.cpp.o.provides: CMakeFiles/pcl_test.dir/src/pcl_test.cpp.o.requires
	$(MAKE) -f CMakeFiles/pcl_test.dir/build.make CMakeFiles/pcl_test.dir/src/pcl_test.cpp.o.provides.build
.PHONY : CMakeFiles/pcl_test.dir/src/pcl_test.cpp.o.provides

CMakeFiles/pcl_test.dir/src/pcl_test.cpp.o.provides.build: CMakeFiles/pcl_test.dir/src/pcl_test.cpp.o


# Object files for target pcl_test
pcl_test_OBJECTS = \
"CMakeFiles/pcl_test.dir/src/pcl_test.cpp.o"

# External object files for target pcl_test
pcl_test_EXTERNAL_OBJECTS =

pcl_test: CMakeFiles/pcl_test.dir/src/pcl_test.cpp.o
pcl_test: CMakeFiles/pcl_test.dir/build.make
pcl_test: /usr/local/lib/libpcl_recognition.so
pcl_test: /usr/local/lib/libpcl_people.so
pcl_test: /usr/local/lib/libpcl_surface.so
pcl_test: /usr/local/lib/libpcl_keypoints.so
pcl_test: /usr/local/lib/libpcl_tracking.so
pcl_test: /usr/local/lib/libpcl_stereo.so
pcl_test: /usr/local/lib/libpcl_outofcore.so
pcl_test: /usr/lib/x86_64-linux-gnu/libboost_system.so
pcl_test: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
pcl_test: /usr/lib/x86_64-linux-gnu/libboost_thread.so
pcl_test: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
pcl_test: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
pcl_test: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
pcl_test: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
pcl_test: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
pcl_test: /usr/lib/x86_64-linux-gnu/libboost_regex.so
pcl_test: /usr/lib/x86_64-linux-gnu/libpthread.so
pcl_test: /usr/lib/x86_64-linux-gnu/libqhull.so
pcl_test: /usr/local/lib/libpcl_registration.so
pcl_test: /usr/local/lib/libpcl_segmentation.so
pcl_test: /usr/local/lib/libpcl_ml.so
pcl_test: /usr/local/lib/libpcl_features.so
pcl_test: /usr/local/lib/libvtkDomainsChemistryOpenGL2-8.2.so.1
pcl_test: /usr/local/lib/libvtkDomainsChemistry-8.2.so.1
pcl_test: /usr/local/lib/libvtkFiltersFlowPaths-8.2.so.1
pcl_test: /usr/local/lib/libvtkFiltersGeneric-8.2.so.1
pcl_test: /usr/local/lib/libvtkFiltersHyperTree-8.2.so.1
pcl_test: /usr/local/lib/libvtkFiltersParallelImaging-8.2.so.1
pcl_test: /usr/local/lib/libvtkFiltersPoints-8.2.so.1
pcl_test: /usr/local/lib/libvtkFiltersProgrammable-8.2.so.1
pcl_test: /usr/local/lib/libvtkFiltersSMP-8.2.so.1
pcl_test: /usr/local/lib/libvtkFiltersSelection-8.2.so.1
pcl_test: /usr/local/lib/libvtkFiltersTexture-8.2.so.1
pcl_test: /usr/local/lib/libvtkFiltersTopology-8.2.so.1
pcl_test: /usr/local/lib/libvtkFiltersVerdict-8.2.so.1
pcl_test: /usr/local/lib/libvtkverdict-8.2.so.1
pcl_test: /usr/local/lib/libvtkGeovisCore-8.2.so.1
pcl_test: /usr/local/lib/libvtkproj-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOAMR-8.2.so.1
pcl_test: /usr/local/lib/libvtkFiltersAMR-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOAsynchronous-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOCityGML-8.2.so.1
pcl_test: /usr/local/lib/libvtkpugixml-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOEnSight-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOExodus-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOExportOpenGL2-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOExportPDF-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOExport-8.2.so.1
pcl_test: /usr/local/lib/libvtkRenderingGL2PSOpenGL2-8.2.so.1
pcl_test: /usr/local/lib/libvtkgl2ps-8.2.so.1
pcl_test: /usr/local/lib/libvtklibharu-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOImport-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOInfovis-8.2.so.1
pcl_test: /usr/local/lib/libvtklibxml2-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOLSDyna-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOMINC-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOMovie-8.2.so.1
pcl_test: /usr/local/lib/libvtktheora-8.2.so.1
pcl_test: /usr/local/lib/libvtkogg-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOPLY-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOParallel-8.2.so.1
pcl_test: /usr/local/lib/libvtkFiltersParallel-8.2.so.1
pcl_test: /usr/local/lib/libvtkexodusII-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOGeometry-8.2.so.1
pcl_test: /usr/local/lib/libvtkIONetCDF-8.2.so.1
pcl_test: /usr/local/lib/libvtkNetCDF-8.2.so.1
pcl_test: /usr/local/lib/libvtkjsoncpp-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOParallelXML-8.2.so.1
pcl_test: /usr/local/lib/libvtkParallelCore-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOLegacy-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOSQL-8.2.so.1
pcl_test: /usr/local/lib/libvtksqlite-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOSegY-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOTecplotTable-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOVeraOut-8.2.so.1
pcl_test: /usr/local/lib/libvtkhdf5-8.2.so.1
pcl_test: /usr/local/lib/libvtkhdf5_hl-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOVideo-8.2.so.1
pcl_test: /usr/local/lib/libvtkImagingMorphological-8.2.so.1
pcl_test: /usr/local/lib/libvtkImagingStatistics-8.2.so.1
pcl_test: /usr/local/lib/libvtkImagingStencil-8.2.so.1
pcl_test: /usr/local/lib/libvtkInteractionImage-8.2.so.1
pcl_test: /usr/local/lib/libvtkRenderingContextOpenGL2-8.2.so.1
pcl_test: /usr/local/lib/libvtkRenderingImage-8.2.so.1
pcl_test: /usr/local/lib/libvtkRenderingLOD-8.2.so.1
pcl_test: /usr/local/lib/libvtkRenderingVolumeOpenGL2-8.2.so.1
pcl_test: /usr/local/lib/libvtkRenderingOpenGL2-8.2.so.1
pcl_test: /usr/local/lib/libvtkglew-8.2.so.1
pcl_test: /usr/lib/x86_64-linux-gnu/libSM.so
pcl_test: /usr/lib/x86_64-linux-gnu/libICE.so
pcl_test: /usr/lib/x86_64-linux-gnu/libX11.so
pcl_test: /usr/lib/x86_64-linux-gnu/libXext.so
pcl_test: /usr/lib/x86_64-linux-gnu/libXt.so
pcl_test: /usr/local/lib/libvtkImagingMath-8.2.so.1
pcl_test: /usr/local/lib/libvtkViewsContext2D-8.2.so.1
pcl_test: /usr/local/lib/libvtkViewsInfovis-8.2.so.1
pcl_test: /usr/local/lib/libvtkChartsCore-8.2.so.1
pcl_test: /usr/local/lib/libvtkRenderingContext2D-8.2.so.1
pcl_test: /usr/local/lib/libvtkFiltersImaging-8.2.so.1
pcl_test: /usr/local/lib/libvtkInfovisLayout-8.2.so.1
pcl_test: /usr/local/lib/libvtkInfovisCore-8.2.so.1
pcl_test: /usr/local/lib/libvtkViewsCore-8.2.so.1
pcl_test: /usr/local/lib/libvtkInteractionWidgets-8.2.so.1
pcl_test: /usr/local/lib/libvtkFiltersHybrid-8.2.so.1
pcl_test: /usr/local/lib/libvtkImagingGeneral-8.2.so.1
pcl_test: /usr/local/lib/libvtkImagingSources-8.2.so.1
pcl_test: /usr/local/lib/libvtkFiltersModeling-8.2.so.1
pcl_test: /usr/local/lib/libvtkImagingHybrid-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOImage-8.2.so.1
pcl_test: /usr/local/lib/libvtkDICOMParser-8.2.so.1
pcl_test: /usr/local/lib/libvtkmetaio-8.2.so.1
pcl_test: /usr/local/lib/libvtkjpeg-8.2.so.1
pcl_test: /usr/local/lib/libvtkpng-8.2.so.1
pcl_test: /usr/local/lib/libvtktiff-8.2.so.1
pcl_test: /usr/local/lib/libvtkInteractionStyle-8.2.so.1
pcl_test: /usr/local/lib/libvtkFiltersExtraction-8.2.so.1
pcl_test: /usr/local/lib/libvtkFiltersStatistics-8.2.so.1
pcl_test: /usr/local/lib/libvtkImagingFourier-8.2.so.1
pcl_test: /usr/local/lib/libvtkRenderingAnnotation-8.2.so.1
pcl_test: /usr/local/lib/libvtkImagingColor-8.2.so.1
pcl_test: /usr/local/lib/libvtkRenderingVolume-8.2.so.1
pcl_test: /usr/local/lib/libvtkImagingCore-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOXML-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOXMLParser-8.2.so.1
pcl_test: /usr/local/lib/libvtkIOCore-8.2.so.1
pcl_test: /usr/local/lib/libvtkdoubleconversion-8.2.so.1
pcl_test: /usr/local/lib/libvtklz4-8.2.so.1
pcl_test: /usr/local/lib/libvtklzma-8.2.so.1
pcl_test: /usr/local/lib/libvtkexpat-8.2.so.1
pcl_test: /usr/local/lib/libvtkRenderingLabel-8.2.so.1
pcl_test: /usr/local/lib/libvtkRenderingFreeType-8.2.so.1
pcl_test: /usr/local/lib/libvtkRenderingCore-8.2.so.1
pcl_test: /usr/local/lib/libvtkCommonColor-8.2.so.1
pcl_test: /usr/local/lib/libvtkFiltersGeometry-8.2.so.1
pcl_test: /usr/local/lib/libvtkFiltersSources-8.2.so.1
pcl_test: /usr/local/lib/libvtkFiltersGeneral-8.2.so.1
pcl_test: /usr/local/lib/libvtkCommonComputationalGeometry-8.2.so.1
pcl_test: /usr/local/lib/libvtkFiltersCore-8.2.so.1
pcl_test: /usr/local/lib/libvtkCommonExecutionModel-8.2.so.1
pcl_test: /usr/local/lib/libvtkCommonDataModel-8.2.so.1
pcl_test: /usr/local/lib/libvtkCommonMisc-8.2.so.1
pcl_test: /usr/local/lib/libvtkCommonSystem-8.2.so.1
pcl_test: /usr/local/lib/libvtksys-8.2.so.1
pcl_test: /usr/local/lib/libvtkCommonTransforms-8.2.so.1
pcl_test: /usr/local/lib/libvtkCommonMath-8.2.so.1
pcl_test: /usr/local/lib/libvtkCommonCore-8.2.so.1
pcl_test: /usr/local/lib/libvtkfreetype-8.2.so.1
pcl_test: /usr/local/lib/libvtkzlib-8.2.so.1
pcl_test: /usr/local/lib/libpcl_filters.so
pcl_test: /usr/local/lib/libpcl_sample_consensus.so
pcl_test: /usr/local/lib/libpcl_visualization.so
pcl_test: /usr/local/lib/libpcl_search.so
pcl_test: /usr/local/lib/libpcl_kdtree.so
pcl_test: /usr/local/lib/libpcl_io.so
pcl_test: /usr/local/lib/libpcl_octree.so
pcl_test: /usr/local/lib/libpcl_common.so
pcl_test: CMakeFiles/pcl_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gxf/pcl_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pcl_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pcl_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pcl_test.dir/build: pcl_test

.PHONY : CMakeFiles/pcl_test.dir/build

CMakeFiles/pcl_test.dir/requires: CMakeFiles/pcl_test.dir/src/pcl_test.cpp.o.requires

.PHONY : CMakeFiles/pcl_test.dir/requires

CMakeFiles/pcl_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pcl_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pcl_test.dir/clean

CMakeFiles/pcl_test.dir/depend:
	cd /home/gxf/pcl_test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gxf/pcl_test /home/gxf/pcl_test /home/gxf/pcl_test/build /home/gxf/pcl_test/build /home/gxf/pcl_test/build/CMakeFiles/pcl_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pcl_test.dir/depend

