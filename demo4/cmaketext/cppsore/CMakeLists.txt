cmake_minimum_required(VERSION 3.10.0)
project(state1)

set(LIBRARY_OUTPUT_PATH ${s1})
aux_source_directory(${PROJECT_SOURCE_DIR} he)
include_directories(${hep})
add_library(one STATIC ${he})