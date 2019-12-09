cmake_minimum_required(VERSION 2.6) 
project(pcl_encode_csv) 
find_package(PCL 1.2 REQUIRED) 
include_directories(${PCL_INCLUDE_DIRS}) 
link_directories(${PCL_LIBRARY_DIRS}) 
add_definitions(${PCL_DEFINITIONS}) 
add_executable(pcl_test src/pcl_test.cpp) 
add_executable(encode_decode src/encode_decode.cpp)
add_executable(csv_read src/csv_read.cpp)
 
#add_executable(pcl_test pcl_test.cpp) 
target_link_libraries (pcl_test ${PCL_LIBRARIES}) 
install(TARGETS pcl_test RUNTIME DESTINATION bin)

