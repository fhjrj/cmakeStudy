cmake_minimum_required(VERSION 3.10.0)
project(demotwo)

set(CMAKE_CXX_STANDARD 14)
message("=====================")
file(GLOB SRC ${PROJECT_SOURCE_DIR}/cppsore/*.cpp)#日志打印可得 存在SRC中的都是搜索目标文件的绝对路径
message(${SRC})
list(REMOVE_ITEM SRC ${PROJECT_SOURCE_DIR}/cppsore/main.cpp)#注意 储存的是绝对路径 所以删除的时候也是绝对路径,移除main.cpp
message("======================")

file(GLOB SRR ${PROJECT_SOURCE_DIR}/cppsore/main.cpp)
include_directories(${PROJECT_SOURCE_DIR}/header)

set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib1)
add_library(claa SHARED ${SRC})#制作动态库  库名是字符串

set(tmp hello world)#字符串常量拼接 储存在变量tmp中
set(tmp1 ${tmp} ${SRC})
message(${tmp})
message(${tmp1})#日志系统将变量展开进行打印
list(APPEND tmp "xxxxx" "yyyy" "zzzz" ${tmp})# tmp中追加字符串,一定是常量 是CMAKE中的变量就要进行展开
message(${tmp})

include_directories(${PROJECT_SOURCE_DIR}/header)
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR})
link_directories(${PROJECT_SOURCE_DIR}/lib1)
add_executable(aut ${SRR})
target_link_libraries(aut claa)
#set设置变量是从右往左设置，储存字符串的类型

