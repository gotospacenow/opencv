# CMake generated Testfile for 
# Source directory: /Users/jan-philipp.breithaupt/Documents/GitHub/opencv/modules/imgproc
# Build directory: /Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/imgproc
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_imgproc "/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/bin/opencv_test_imgproc" "--gtest_output=xml:opencv_test_imgproc.xml")
set_tests_properties(opencv_test_imgproc PROPERTIES  LABELS "Main;opencv_imgproc;Accuracy" WORKING_DIRECTORY "/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/test-reports/accuracy" _BACKTRACE_TRIPLES "/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/cmake/OpenCVUtils.cmake;1765;add_test;/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/cmake/OpenCVModule.cmake;1370;ocv_add_test_from_target;/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/cmake/OpenCVModule.cmake;1128;ocv_add_accuracy_tests;/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/modules/imgproc/CMakeLists.txt;18;ocv_define_module;/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/modules/imgproc/CMakeLists.txt;0;")
