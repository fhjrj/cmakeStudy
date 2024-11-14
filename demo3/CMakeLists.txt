cmake_minimum_required(VERSION 3.10.0)
project(text)
add_definitions(-DDEBUGG -DHAA)#CMAKE自定义宏 ,每个自定义宏都要-D+宏的名字
add_executable(out ./1.cpp)