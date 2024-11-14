cmake_minimum_required(VERSION 3.10.1)
project(cala)

aux_source_directory(${PROJECT_SOURCE_DIR} SRC)
include_directories(${HEADPATH})#因为已经父节点已经制定了
set(LIBRARY_OUTPUT_PATH ${LIBPATH})
add_library(${CALCLIB} STATIC ${SRC})#${CALCLIB}是静态库的名字
#link_library是连接库 不是创建库的
