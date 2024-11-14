cmake_minimum_required(VERSION 3.3.0)
project(oob)

set(hhh ./main.cpp)
#file(GLOB SMS ${CMAKE_CURRENT_SOURCE_DIR}/cppsore/*.cpp)#储存在变量中
include_directories(${PROJECT_SOURCE_DIR}/header)#生成库时，必须要指定头文件位置
#add_library(cct SHARED ${SMS})# 动态库制作
#set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib1)#指定生成的库的路径

#set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib2)#指定生成的库的路径
#add_library(cmm STATIC ${SMS})#静态库 第一个参数是库名字

#静态库 .so 动态库.a
#执行文件 动态库/静态库+头文件


link_libraries(cmm)#指定静态库名字 只能连接静态路 
link_directories(${CMAKE_CURRENT_SOURCE_DIR}/lib2)#指定库的目录
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR})#指定生成文件的地方
add_executable(app ${hhh})

#上述可知 不论是生成相应的库文件还是生成可执行文件 都要指定头文件

#[[

#静态库只能连接最终可执行文件/动态库，静态库不能连接静态库
#target_link_libraries()静态动态库都可以连接
#静态库需要将库导入生成可执行文件，动态库则不用，先成生可执行文件，代码执行时会进入动态库执行，连接动态库时要保证连接目标存在
message("xxxxxxxxxxxxxxxxxxx")#message是cmake的日志
link_directories(${PROJECT_SOURCE_DIR}/lib1)#指定动态库路径，必须在add_executable前面
add_executable(app ${hhh}) 
message(STATUS "122222xxxxxxxxxxx")
target_link_libraries(app cct)#此命令必须在add_executable后面,动态库名字连接在可执行文件的名字上
#message(FATAL_ERROR "6666666")#FATAL_ERROR 直接中断
message(STATUS "pppppppppppp") 

]]



#字符串的拼接,用set进行拼接，如果是变量，则需要${}展开
#字符串的追加，使用list  模式为APPEND，删除，模式为REMOVE_INEM