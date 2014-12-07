cmake_minimum_required( VERSION 2.8 )
parse_directory_name(PROJECT_NAME)
# Define build behavior -- DO NOT EDIT ANYTHING ABOVE THIS LINE --

SET( INCLUDE
)
SET( LINK_DIRS
)
SET( LINK_LIBS
)

# Create project -- DO NOT EDIT ANYTHING BELOW THIS LINE --
project( ${PROJECT_NAME} )
# function create_project(mode includes linkDirs linkLibs)
# mode can be set to DYNAMIC, STATIC, CONSOLE, or WIN32
create_project(CONSOLE "${INCLUDE}" "${LINK_DIRS}" "${LINK_LIBS}")