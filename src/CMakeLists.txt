cmake_minimum_required(VERSION 3.6)

## Specify your project's name
project(HEXGCS VERSION 1.0)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Specify your app's executable name, and list of source files used to create it.
add_executable(HEXGCS HEXmain.cpp)

# Specify include directories
include_directories(
  ${CMAKE_SOURCE_DIR}/src/install/include
)

# Platform specific library linking
if (WIN32)
    # Specify your app's executable name and a list of linked libraries
    target_link_libraries(HEXGCS
      # ... any other linked libraries
      ${CMAKE_SOURCE_DIR}/install/lib/mavsdk.lib
    )

endif(WIN32)

if (UNIX)
    # Specify your app's executable name and a list of linked libraries
    target_link_libraries(HEXGCS
        # ... any other linked libraries
        ${CMAKE_SOURCE_DIR}/install/lib/libmavsdk.so
    )

endif(UNIX)
