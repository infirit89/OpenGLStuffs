#version 330 core

in vec4 i_Color;
in vec2 i_TexCoords;

out vec4 o_Color;

uniform sampler2D u_Texture;
uniform sampler2D u_Texture2;

void main() 
{
    o_Color = mix(
                texture2D(u_Texture, i_TexCoords), 
                texture2D(u_Texture2, i_TexCoords),
                0.2);
}
