# - Find the native sqlite3 includes and library
#
# This module defines
#  Rsvg2_INCLUDE_DIR, where to find sqlite3.h, etc.
#  Rsvg2_LIBRARIES, the libraries to link against to use sqlite3.
#  Rsvg2_FOUND, If false, do not try to use sqlite3.
# also defined, but not for general use are
#  Rsvg2_LIBRARY, where to find the sqlite3 library.
    

#=============================================================================
# Copyright 2010 henrik andersson
#=============================================================================

find_package(PkgConfig REQUIRED)
pkg_check_modules(PC_RSVG QUIET librsvg-2.0)


find_path(Rsvg2_INCLUDE_DIR rsvg.h PATH_SUFFIXES librsvg-2.0 librsvg-2 )

find_library(Rsvg2_LIBRARY NAMES rsvg-2 librsvg-2
  HINTS ${PC_RSVG_LIB_DIR} ${PC_RSVG_LIBRARY_DIRS}
)

# handle the QUIETLY and REQUIRED arguments and set Rsvg2_FOUND to TRUE if
# all listed variables are TRUE
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Rsvg2 DEFAULT_MSG Rsvg2_LIBRARY Rsvg2_INCLUDE_DIR)

IF(Rsvg2_FOUND)
  SET(Rsvg2_LIBRARIES ${Rsvg2_LIBRARY})
  SET(Rsvg2_INCLUDE_DIRS ${Rsvg2_INCLUDE_DIR})
ENDIF()
