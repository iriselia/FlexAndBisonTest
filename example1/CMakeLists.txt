cmake_minimum_required( VERSION 2.8 )
parse_directory_name(PROJECT_NAME)
# Define build behavior -- DO NOT EDIT ANYTHING ABOVE THIS LINE --

SET( USE_FLEX_AND_BISON ON )

# Can include project name and directory
SET( INCLUDE
	FlexBison
)
# Most likely going to be empty
SET( LINK_DIRS
)
# Can include project name and absolute path to library
SET( LINK_LIBS
)

SET( PRECOMPILED_HEADER "")
SET( PRECOMPILED_SOURCE "")

# Create project -- DO NOT EDIT ANYTHING BELOW THIS LINE --
project( ${PROJECT_NAME} )
# function create_project(mode includes linkDirs linkLibs)
# mode can be set to DYNAMIC, STATIC, CONSOLE, or WIN32
create_project(CONSOLE "${INCLUDE}" "${LINK_DIRS}" "${LINK_LIBS}")
