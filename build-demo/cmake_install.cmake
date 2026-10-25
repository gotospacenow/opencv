# Install script for directory: /Users/jan-philipp.breithaupt/Documents/GitHub/opencv

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/opencv5" TYPE FILE RENAME "dlpack-LICENSE" FILES "/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/3rdparty/dlpack/LICENSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "licenses" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/opencv5" TYPE FILE RENAME "flatbuffers-LICENSE.txt" FILES "/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/3rdparty/flatbuffers/LICENSE.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv5/opencv2" TYPE FILE FILES "/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/cvconfig.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv5/opencv2" TYPE FILE FILES "/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/opencv2/opencv_modules.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv5/OpenCVModules.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv5/OpenCVModules.cmake"
         "/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/CMakeFiles/Export/c090bfb35398b9d2683ade08d20c938a/OpenCVModules.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv5/OpenCVModules-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv5/OpenCVModules.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv5" TYPE FILE FILES "/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/CMakeFiles/Export/c090bfb35398b9d2683ade08d20c938a/OpenCVModules.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv5" TYPE FILE FILES "/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/CMakeFiles/Export/c090bfb35398b9d2683ade08d20c938a/OpenCVModules-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/opencv5" TYPE FILE FILES
    "/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/unix-install/OpenCVConfig-version.cmake"
    "/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/unix-install/OpenCVConfig.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "scripts" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES "/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/CMakeFiles/install/setup_vars_opencv5.sh")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/opencv5" TYPE FILE FILES
    "/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/platforms/scripts/valgrind.supp"
    "/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/platforms/scripts/valgrind_3rdparty.supp"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/3rdparty/zlib/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/3rdparty/libjpeg-turbo/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/3rdparty/libwebp/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/3rdparty/libtiff/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/3rdparty/openjpeg/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/3rdparty/libpng/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/3rdparty/harfbuzz/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/3rdparty/protobuf/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/hal/carotene/hal/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/include/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/.firstpass/calib/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/.firstpass/core/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/.firstpass/dnn/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/.firstpass/features/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/.firstpass/flann/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/.firstpass/geometry/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/.firstpass/highgui/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/.firstpass/imgcodecs/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/.firstpass/imgproc/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/.firstpass/java/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/.firstpass/js/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/.firstpass/objc/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/.firstpass/objdetect/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/.firstpass/photo/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/.firstpass/ptcloud/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/.firstpass/python/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/.firstpass/stereo/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/.firstpass/stitching/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/.firstpass/ts/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/.firstpass/video/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/.firstpass/videoio/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/.firstpass/world/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/core/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/flann/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/geometry/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/imgproc/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/imgcodecs/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/videoio/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/highgui/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/modules/ts/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/doc/cmake_install.cmake")
  include("/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/docs_sphinx/cmake_install.cmake")

endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/jan-philipp.breithaupt/Documents/GitHub/opencv/build-demo/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
