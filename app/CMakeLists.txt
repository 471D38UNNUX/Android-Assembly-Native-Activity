cmake_minimum_required(VERSION 3.31.0)

project("AssemblyNativeActivity")

set(${CMAKE_ASM_FLAGS} "${CMAKE_C_FLAGS} -Wall -Werror -O3")

enable_language(ASM)

add_library(${CMAKE_PROJECT_NAME} SHARED main.c main-${ANDROID_ABI}.asm)

include_directories(${CMAKE_SOURCE_DIR})

target_link_libraries(${CMAKE_PROJECT_NAME} log)
