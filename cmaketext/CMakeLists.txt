#注释一行
#[[ 66666
66668888]]
cmake_minimum_required(VERSION 3.10.1) #指定cmake版本最低

project(cmaketext)#指定项目名字

#[[

 #add_executable(cctext add.cpp div.cpp main.cpp sss.cpp sub.cpp)#执行生成可执行程序,第一次参数是生成可执行文件的名字

#cmake中 可以设置变量，变量值是一个字符串类型，用set命令



set(CMAKE_CXX_STANDARD 14)#设置CPP14标准 宏指定为CMAKE_CXX_STANDARD
set(SEST_LIST add.cpp div.cpp main.cpp sss.cpp sub.cpp)#设置变量，将可执行文件进行变量设置为SEST_LIST
set(EXECUTABLE_OUTPUT_PATH /home/user/cmaketext/build/)#指定生成可执行文件的位置，不是指定cmake生成一些文件的位置，比如cmakecache.txt那些
# 这些到单独管理
add_executable(app ${SEST_LIST})#生成可执行文件时，展开需要${}


#set 一个文件文件的写太麻烦了，直接编译一个目录下的文件更快 用命令aux_source_directory()或者file命令


#第一个参数指定搜索的路径 第二个参数是指定生成的变量名
aux_source_directory(${PROJECT_SOURCE_DIR} SMS) #宏PROJECT_SOURCE_DIR是CMakeLists.txt.即项目的根目录 ${}将宏展开,其不支持递归
 ${PROJECT_SOURCE_DIR} 可代替为. 
 aux_source_directory(. SMS)
  ]]

  #上面源文件和头文件都在一个目录下，在同一个目录下，不用指定头文件的位置

file(GLOB SMS ${CMAKE_CURRENT_SOURCE_DIR}/cppsore/*.cpp) #非嵌套情况下 CMAKE_CURRENT_SOURCE_DIR和宏PROJECT_SOURCE_DIR一样
#/后面指定的是搜索文件的类型
include_directories(${PROJECT_SOURCE_DIR}/header)#指定头文件的路径
set(EXECUTABLE_OUTPUT_PATH /home/user/cmaketext/build/pp)
add_executable(app ${SMS})



