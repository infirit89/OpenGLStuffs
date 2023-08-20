#version 330 core

layout (location = 0) in vec3 a_Position;
layout (location = 1) in vec3 a_Color;
layout (location = 2) in vec2 a_TexCoords;

out vec4 i_Color;
out vec2 i_TexCoords;

void main() 
{
    gl_Position = vec4(a_Position, 1.0);
    i_Color = vec4(a_Color, 1.0);
    i_TexCoords = a_TexCoords;
}
