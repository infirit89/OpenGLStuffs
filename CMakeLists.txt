cmake_minimum_required(VERSION 3.25)
set( CMAKE_EXPORT_COMPILE_COMMANDS ON )

project(OpenGLStuffs CXX)

set(CMAKE_CXX_STANDARD 17)

add_executable(OpenGLStuffs
    src/main.cpp
    src/Basic/GLFWWindow.h
    src/Basic/GLFWWindow.cpp
    src/Renderer/Shader.h
    src/Renderer/Shader.cpp
    src/Renderer/Texture.h
    src/Renderer/Texture.cpp
    vendor/stb_image/stb_image.h
    vendor/stb_image/stb_image.cpp
    )

target_include_directories(OpenGLStuffs PRIVATE
    src
    vendor/glfw/include
    vendor/glad/include
    vendor/stb_image
    vendor/glm)

add_subdirectory(vendor/glfw)
add_subdirectory(vendor/glad)

add_dependencies(OpenGLStuffs glfw)

target_link_libraries(OpenGLStuffs glfw opengl32 GLAD)

target_compile_options(OpenGLStuffs PRIVATE
    $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:C>>:-m64>
    $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:C>>:-g>
    $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:CXX>>:-m64>
    $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:CXX>>:-g>
    $<$<AND:$<CONFIG:Debug>,$<COMPILE_LANGUAGE:CXX>>:-std=c++17>

    $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:C>>:-m64>
    $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:C>>:-O2>
    $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:CXX>>:-m64>
    $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:CXX>>:-O2>
    $<$<AND:$<CONFIG:Release>,$<COMPILE_LANGUAGE:CXX>>:-std=c++17>)