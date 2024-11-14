cmake_minimum_required(VERSION 3.10.1)
project(text2)

aux_source_directory(./ SEM)
#将静态库的文件进行连接 然后生成可执行文件
include_directories(${HEADPATH})#只要包含头文件，就要指定头文件所在路径
set(EXECUTABLE_OUTPUT_PATH ${EXECPATH})
link_directories(${LIBPATH})#目录
link_libraries(${CALCLIB})#名字
add_executable(${APPNAME} ${SEM})