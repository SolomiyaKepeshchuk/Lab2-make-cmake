cmake_minimum_required(VERSION 3.10)

project(lab2 CXX)

add_library(calculator STATIC calculator.cpp)

add_executable(calculator_app main.cpp)

target_link_libraries(calculator_app calculator)

target_include_directories(calculator PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
