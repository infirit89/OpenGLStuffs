#version 330 core

layout (location = 0) in vec3 a_Position;
layout (location = 1) in vec2 a_TexCoords;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

out vec2 i_TexCoords;

void main()
{
    gl_Position = projection * view * model * vec4(a_Position, 1.0);
    i_TexCoords = a_TexCoords;
}
