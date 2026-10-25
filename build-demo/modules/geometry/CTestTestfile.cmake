# CMake generated Testfile for 
# Source directory: /Users/jan-philipp.breithaupt/Documents/GitHub/opencv/modules/geometry
# Build directory: /Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/geometry
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_geometry "/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/bin/opencv_test_geometry" "--gtest_output=xml:opencv_test_geometry.xml")
set_tests_properties(opencv_test_geometry PROPERTIES  LABELS "Main;opencv_geometry;Accuracy" WORKING_DIRECTORY "/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/test-reports/accuracy" _BACKTRACE_TRIPLES "/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/cmake/OpenCVUtils.cmake;1765;add_test;/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/cmake/OpenCVModule.cmake;1370;ocv_add_test_from_target;/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/cmake/OpenCVModule.cmake;1128;ocv_add_accuracy_tests;/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/modules/geometry/CMakeLists.txt;7;ocv_define_module;/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/modules/geometry/CMakeLists.txt;0;")
