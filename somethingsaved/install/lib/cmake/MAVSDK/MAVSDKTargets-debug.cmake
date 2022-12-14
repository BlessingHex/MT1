#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "MAVSDK::mavsdk" for configuration "Debug"
set_property(TARGET MAVSDK::mavsdk APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(MAVSDK::mavsdk PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/mavsdk.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/mavsdk.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS MAVSDK::mavsdk )
list(APPEND _IMPORT_CHECK_FILES_FOR_MAVSDK::mavsdk "${_IMPORT_PREFIX}/lib/mavsdk.lib" "${_IMPORT_PREFIX}/bin/mavsdk.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
