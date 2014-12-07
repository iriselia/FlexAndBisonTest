cmake_minimum_required( VERSION 2.8 )
parse_directory_name(PROJECT_NAME)
# Define build behavior -- DO NOT EDIT ANYTHING ABOVE THIS LINE --

# Can include project name and directory
SET( INCLUDE
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
 
# Create custom command for flex/lex (note the outputs)
#[[
 ADD_CUSTOM_COMMAND(
   SOURCE ${fbtest_SOURCE_DIR}/src/lexer.l
   COMMAND ${FLEX_EXECUTABLE} 
   ARGS -o${fbtest_BINARY_DIR}/src/lexer.c
        ${fbtest_SOURCE_DIR}/src/lexer.l
   TARGET FooParser
   OUTPUTS ${fbtest_BINARY_DIR}/src/lexer.c)


# Create custom command for bison/yacc (note the DEPENDS)
 ADD_CUSTOM_COMMAND(
   SOURCE ${fbtest_SOURCE_DIR}/src/parser.y
   COMMAND ${BISON_EXECUTABLE} 
   ARGS -y ${fbtest_SOURCE_DIR}/src/parser.y
        -o ${fbtest_BINARY_DIR}/src/parser.c
   TARGET FooParser
   DEPENDS ${fbtest_BINARY_DIR}/src/lexer.c
   OUTPUTS ${fbtest_BINARY_DIR}/src/parser.c)
]]#
		

		

   
   
# Add parser.c to the list of sources
# SET(fbtest_SRCS ${fbtest_SRCS} ${fbtest_BINARY_DIR}/src/parser.c)

# Since parser.c does not exists yet when cmake is run, mark
# it as generated
# SET_SOURCE_FILES_PROPERTIES(${Foo_BINARY_DIR}/src/parser.c GENERATED)

# Include binary directory to include lexer.c in parser.c
# INCLUDE_DIRECTORIES(${Foo_BINARY_DIR}/src)