# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Projects\github\OpenGLStuffs

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Projects\github\OpenGLStuffs\build

# Include any dependencies generated for this target.
include CMakeFiles/OpenGLStuffs.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/OpenGLStuffs.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/OpenGLStuffs.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OpenGLStuffs.dir/flags.make

CMakeFiles/OpenGLStuffs.dir/src/main.cpp.obj: CMakeFiles/OpenGLStuffs.dir/flags.make
CMakeFiles/OpenGLStuffs.dir/src/main.cpp.obj: CMakeFiles/OpenGLStuffs.dir/includes_CXX.rsp
CMakeFiles/OpenGLStuffs.dir/src/main.cpp.obj: D:/Projects/github/OpenGLStuffs/src/main.cpp
CMakeFiles/OpenGLStuffs.dir/src/main.cpp.obj: CMakeFiles/OpenGLStuffs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\Projects\github\OpenGLStuffs\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/OpenGLStuffs.dir/src/main.cpp.obj"
	C:\Users\georg\scoop\apps\mingw\current\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/OpenGLStuffs.dir/src/main.cpp.obj -MF CMakeFiles\OpenGLStuffs.dir\src\main.cpp.obj.d -o CMakeFiles\OpenGLStuffs.dir\src\main.cpp.obj -c D:\Projects\github\OpenGLStuffs\src\main.cpp

CMakeFiles/OpenGLStuffs.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/OpenGLStuffs.dir/src/main.cpp.i"
	C:\Users\georg\scoop\apps\mingw\current\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Projects\github\OpenGLStuffs\src\main.cpp > CMakeFiles\OpenGLStuffs.dir\src\main.cpp.i

CMakeFiles/OpenGLStuffs.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/OpenGLStuffs.dir/src/main.cpp.s"
	C:\Users\georg\scoop\apps\mingw\current\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Projects\github\OpenGLStuffs\src\main.cpp -o CMakeFiles\OpenGLStuffs.dir\src\main.cpp.s

CMakeFiles/OpenGLStuffs.dir/src/Basic/GLFWWindow.cpp.obj: CMakeFiles/OpenGLStuffs.dir/flags.make
CMakeFiles/OpenGLStuffs.dir/src/Basic/GLFWWindow.cpp.obj: CMakeFiles/OpenGLStuffs.dir/includes_CXX.rsp
CMakeFiles/OpenGLStuffs.dir/src/Basic/GLFWWindow.cpp.obj: D:/Projects/github/OpenGLStuffs/src/Basic/GLFWWindow.cpp
CMakeFiles/OpenGLStuffs.dir/src/Basic/GLFWWindow.cpp.obj: CMakeFiles/OpenGLStuffs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\Projects\github\OpenGLStuffs\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/OpenGLStuffs.dir/src/Basic/GLFWWindow.cpp.obj"
	C:\Users\georg\scoop\apps\mingw\current\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/OpenGLStuffs.dir/src/Basic/GLFWWindow.cpp.obj -MF CMakeFiles\OpenGLStuffs.dir\src\Basic\GLFWWindow.cpp.obj.d -o CMakeFiles\OpenGLStuffs.dir\src\Basic\GLFWWindow.cpp.obj -c D:\Projects\github\OpenGLStuffs\src\Basic\GLFWWindow.cpp

CMakeFiles/OpenGLStuffs.dir/src/Basic/GLFWWindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/OpenGLStuffs.dir/src/Basic/GLFWWindow.cpp.i"
	C:\Users\georg\scoop\apps\mingw\current\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Projects\github\OpenGLStuffs\src\Basic\GLFWWindow.cpp > CMakeFiles\OpenGLStuffs.dir\src\Basic\GLFWWindow.cpp.i

CMakeFiles/OpenGLStuffs.dir/src/Basic/GLFWWindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/OpenGLStuffs.dir/src/Basic/GLFWWindow.cpp.s"
	C:\Users\georg\scoop\apps\mingw\current\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Projects\github\OpenGLStuffs\src\Basic\GLFWWindow.cpp -o CMakeFiles\OpenGLStuffs.dir\src\Basic\GLFWWindow.cpp.s

CMakeFiles/OpenGLStuffs.dir/src/Renderer/Shader.cpp.obj: CMakeFiles/OpenGLStuffs.dir/flags.make
CMakeFiles/OpenGLStuffs.dir/src/Renderer/Shader.cpp.obj: CMakeFiles/OpenGLStuffs.dir/includes_CXX.rsp
CMakeFiles/OpenGLStuffs.dir/src/Renderer/Shader.cpp.obj: D:/Projects/github/OpenGLStuffs/src/Renderer/Shader.cpp
CMakeFiles/OpenGLStuffs.dir/src/Renderer/Shader.cpp.obj: CMakeFiles/OpenGLStuffs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\Projects\github\OpenGLStuffs\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/OpenGLStuffs.dir/src/Renderer/Shader.cpp.obj"
	C:\Users\georg\scoop\apps\mingw\current\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/OpenGLStuffs.dir/src/Renderer/Shader.cpp.obj -MF CMakeFiles\OpenGLStuffs.dir\src\Renderer\Shader.cpp.obj.d -o CMakeFiles\OpenGLStuffs.dir\src\Renderer\Shader.cpp.obj -c D:\Projects\github\OpenGLStuffs\src\Renderer\Shader.cpp

CMakeFiles/OpenGLStuffs.dir/src/Renderer/Shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/OpenGLStuffs.dir/src/Renderer/Shader.cpp.i"
	C:\Users\georg\scoop\apps\mingw\current\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Projects\github\OpenGLStuffs\src\Renderer\Shader.cpp > CMakeFiles\OpenGLStuffs.dir\src\Renderer\Shader.cpp.i

CMakeFiles/OpenGLStuffs.dir/src/Renderer/Shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/OpenGLStuffs.dir/src/Renderer/Shader.cpp.s"
	C:\Users\georg\scoop\apps\mingw\current\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Projects\github\OpenGLStuffs\src\Renderer\Shader.cpp -o CMakeFiles\OpenGLStuffs.dir\src\Renderer\Shader.cpp.s

CMakeFiles/OpenGLStuffs.dir/src/Renderer/Texture.cpp.obj: CMakeFiles/OpenGLStuffs.dir/flags.make
CMakeFiles/OpenGLStuffs.dir/src/Renderer/Texture.cpp.obj: CMakeFiles/OpenGLStuffs.dir/includes_CXX.rsp
CMakeFiles/OpenGLStuffs.dir/src/Renderer/Texture.cpp.obj: D:/Projects/github/OpenGLStuffs/src/Renderer/Texture.cpp
CMakeFiles/OpenGLStuffs.dir/src/Renderer/Texture.cpp.obj: CMakeFiles/OpenGLStuffs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\Projects\github\OpenGLStuffs\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/OpenGLStuffs.dir/src/Renderer/Texture.cpp.obj"
	C:\Users\georg\scoop\apps\mingw\current\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/OpenGLStuffs.dir/src/Renderer/Texture.cpp.obj -MF CMakeFiles\OpenGLStuffs.dir\src\Renderer\Texture.cpp.obj.d -o CMakeFiles\OpenGLStuffs.dir\src\Renderer\Texture.cpp.obj -c D:\Projects\github\OpenGLStuffs\src\Renderer\Texture.cpp

CMakeFiles/OpenGLStuffs.dir/src/Renderer/Texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/OpenGLStuffs.dir/src/Renderer/Texture.cpp.i"
	C:\Users\georg\scoop\apps\mingw\current\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Projects\github\OpenGLStuffs\src\Renderer\Texture.cpp > CMakeFiles\OpenGLStuffs.dir\src\Renderer\Texture.cpp.i

CMakeFiles/OpenGLStuffs.dir/src/Renderer/Texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/OpenGLStuffs.dir/src/Renderer/Texture.cpp.s"
	C:\Users\georg\scoop\apps\mingw\current\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Projects\github\OpenGLStuffs\src\Renderer\Texture.cpp -o CMakeFiles\OpenGLStuffs.dir\src\Renderer\Texture.cpp.s

CMakeFiles/OpenGLStuffs.dir/vendor/stb_image/stb_image.cpp.obj: CMakeFiles/OpenGLStuffs.dir/flags.make
CMakeFiles/OpenGLStuffs.dir/vendor/stb_image/stb_image.cpp.obj: CMakeFiles/OpenGLStuffs.dir/includes_CXX.rsp
CMakeFiles/OpenGLStuffs.dir/vendor/stb_image/stb_image.cpp.obj: D:/Projects/github/OpenGLStuffs/vendor/stb_image/stb_image.cpp
CMakeFiles/OpenGLStuffs.dir/vendor/stb_image/stb_image.cpp.obj: CMakeFiles/OpenGLStuffs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\Projects\github\OpenGLStuffs\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/OpenGLStuffs.dir/vendor/stb_image/stb_image.cpp.obj"
	C:\Users\georg\scoop\apps\mingw\current\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/OpenGLStuffs.dir/vendor/stb_image/stb_image.cpp.obj -MF CMakeFiles\OpenGLStuffs.dir\vendor\stb_image\stb_image.cpp.obj.d -o CMakeFiles\OpenGLStuffs.dir\vendor\stb_image\stb_image.cpp.obj -c D:\Projects\github\OpenGLStuffs\vendor\stb_image\stb_image.cpp

CMakeFiles/OpenGLStuffs.dir/vendor/stb_image/stb_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/OpenGLStuffs.dir/vendor/stb_image/stb_image.cpp.i"
	C:\Users\georg\scoop\apps\mingw\current\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Projects\github\OpenGLStuffs\vendor\stb_image\stb_image.cpp > CMakeFiles\OpenGLStuffs.dir\vendor\stb_image\stb_image.cpp.i

CMakeFiles/OpenGLStuffs.dir/vendor/stb_image/stb_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/OpenGLStuffs.dir/vendor/stb_image/stb_image.cpp.s"
	C:\Users\georg\scoop\apps\mingw\current\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Projects\github\OpenGLStuffs\vendor\stb_image\stb_image.cpp -o CMakeFiles\OpenGLStuffs.dir\vendor\stb_image\stb_image.cpp.s

# Object files for target OpenGLStuffs
OpenGLStuffs_OBJECTS = \
"CMakeFiles/OpenGLStuffs.dir/src/main.cpp.obj" \
"CMakeFiles/OpenGLStuffs.dir/src/Basic/GLFWWindow.cpp.obj" \
"CMakeFiles/OpenGLStuffs.dir/src/Renderer/Shader.cpp.obj" \
"CMakeFiles/OpenGLStuffs.dir/src/Renderer/Texture.cpp.obj" \
"CMakeFiles/OpenGLStuffs.dir/vendor/stb_image/stb_image.cpp.obj"

# External object files for target OpenGLStuffs
OpenGLStuffs_EXTERNAL_OBJECTS =

OpenGLStuffs.exe: CMakeFiles/OpenGLStuffs.dir/src/main.cpp.obj
OpenGLStuffs.exe: CMakeFiles/OpenGLStuffs.dir/src/Basic/GLFWWindow.cpp.obj
OpenGLStuffs.exe: CMakeFiles/OpenGLStuffs.dir/src/Renderer/Shader.cpp.obj
OpenGLStuffs.exe: CMakeFiles/OpenGLStuffs.dir/src/Renderer/Texture.cpp.obj
OpenGLStuffs.exe: CMakeFiles/OpenGLStuffs.dir/vendor/stb_image/stb_image.cpp.obj
OpenGLStuffs.exe: CMakeFiles/OpenGLStuffs.dir/build.make
OpenGLStuffs.exe: CMakeFiles/OpenGLStuffs.dir/compiler_depend.ts
OpenGLStuffs.exe: vendor/glfw/src/libglfw3.a
OpenGLStuffs.exe: vendor/glad/libGLAD.a
OpenGLStuffs.exe: CMakeFiles/OpenGLStuffs.dir/linkLibs.rsp
OpenGLStuffs.exe: CMakeFiles/OpenGLStuffs.dir/objects1.rsp
OpenGLStuffs.exe: CMakeFiles/OpenGLStuffs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=D:\Projects\github\OpenGLStuffs\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable OpenGLStuffs.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\OpenGLStuffs.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OpenGLStuffs.dir/build: OpenGLStuffs.exe
.PHONY : CMakeFiles/OpenGLStuffs.dir/build

CMakeFiles/OpenGLStuffs.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\OpenGLStuffs.dir\cmake_clean.cmake
.PHONY : CMakeFiles/OpenGLStuffs.dir/clean

CMakeFiles/OpenGLStuffs.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Projects\github\OpenGLStuffs D:\Projects\github\OpenGLStuffs D:\Projects\github\OpenGLStuffs\build D:\Projects\github\OpenGLStuffs\build D:\Projects\github\OpenGLStuffs\build\CMakeFiles\OpenGLStuffs.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/OpenGLStuffs.dir/depend

