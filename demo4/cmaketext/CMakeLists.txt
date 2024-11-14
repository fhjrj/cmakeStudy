cmake_minimum_required(VERSION 3.10.0)
project(demo)

set(s1 ${PROJECT_SOURCE_DIR}/lib)
set(hep ${PROJECT_SOURCE_DIR}/header)
set(js "tree")

add_subdirectory(${PROJECT_SOURCE_DIR}/cppsore)
add_subdirectory(${PROJECT_SOURCE_DIR}/cppsore2)
set(hahah ./main.cpp)
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/output)
include_directories(${hep})

include_directories(${s1})
link_libraries(one)

include_directories(${s2})
link_libraries(two)
#link_directories()指定静态库路径
add_executable(app ${hahah})


#[[
cmake中 不能进行LINUX中的../ 想要回到上一级目录必须事先要进行指定才行 这要才能做
]]

#静态库连接静态库 比如 ABCD四个源文件 一个头文件  A,B涉及此头文件 C,D不涉及，A,B编写一个静态库M，C,D编写一个静态库N，如果C中想使用A中的函数，则要包含此头文件，而不是源文件A
#因为N涉及到了A，我们可以往里面加入静态库M，这时在制作静态库N时，就要指明M所在的路径（link_directories()新命令）和静态库M的名字(ink_libraries)

#动态库链接静态库也是指定静态库库名和静态库库路径
