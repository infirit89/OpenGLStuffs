#version 330 core

in vec2 i_TexCoords;

out vec4 o_Color;

uniform sampler2D u_Texture;

void main() 
{
    o_Color = vec4(0.0, 1.0, 1.0, 1.0);
}
