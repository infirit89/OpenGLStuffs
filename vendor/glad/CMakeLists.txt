cmake_minimum_required(VERSION 3.25)

project(GLAD C)

add_library(GLAD
        src/glad.c
        include/glad/glad.h
        include/KHR/khrplatform.h)

target_include_directories(GLAD PRIVATE
        include)
