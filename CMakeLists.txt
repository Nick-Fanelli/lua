cmake_minimum_required(VERSION 3.10)

project(lua)

file(GLOB_RECURSE LUA_SRC_FILES
    "*.h"
    "*.c"
)

add_library(lua ${LUA_SRC_FILES})

target_include_directories(lua PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})