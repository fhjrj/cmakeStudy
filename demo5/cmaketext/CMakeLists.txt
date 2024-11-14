#嵌套CMAKE
#源文件 执行文件 头文件分开
#一般的嵌套CMAKE，还是制作为库文件给执行文件使用
#一般来讲 源文件比较少 制作静态库 比较多 制作为动态库
#头文件不需要CMAKE
#动态库有且仅有一份
#嵌套CMAKE，相当于父子结点 父CMAKE中的变量可以给儿子用，反过来不行
cmake_minimum_required(VERSION 3.10.1)
project(textfather)

#定义变量
set(LIBPATH ${PROJECT_SOURCE_DIR}/lib) #生成静态库地址变量
set(EXECPATH ${PROJECT_SOURCE_DIR}/bin)#可执行文件地址变量
set(HEADPATH ${PROJECT_SOURCE_DIR}/header)#头文件变量
set(CALCLIB "cala")#静态库名是cala 储存在变量CALCLIB。这里名字直接是变量
set(APPNAME "appe")

message(${CALCLIB})
message(${APPNAME})
#添加子目录名字
add_subdirectory(cppsore)
add_subdirectory(sore)

#是根节点定义变量 子节点使用



#Cmake中进行连接多线程库使用
#find_package(Threads)和target_link_libraries(可执行文件的名字 ${CMAKE_THREAD_LIBS_INIT})，多线程库是动态库
