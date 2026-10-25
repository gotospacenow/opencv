# CMake generated Testfile for 
# Source directory: /Users/jan-philipp.breithaupt/Documents/GitHub/opencv/modules/core
# Build directory: /Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/core
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_core "/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/bin/opencv_test_core" "--gtest_output=xml:opencv_test_core.xml")
set_tests_properties(opencv_test_core PROPERTIES  LABELS "Main;opencv_core;Accuracy" WORKING_DIRECTORY "/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/test-reports/accuracy" _BACKTRACE_TRIPLES "/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/cmake/OpenCVUtils.cmake;1765;add_test;/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/cmake/OpenCVModule.cmake;1370;ocv_add_test_from_target;/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/modules/core/CMakeLists.txt;218;ocv_add_accuracy_tests;/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/modules/core/CMakeLists.txt;0;")
