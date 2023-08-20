//
// Created by George on 08/20/2023
//

#ifndef TEXTURE_H
#define TEXTURE_H

#include <cstdint>

namespace OpenGLStuffs 
{
    class Texture 
    {
    public:
        Texture(const char* texturePath);
        ~Texture();

        void Bind(uint32_t textureSlot = 0);

    private:
        void CreateTexture();
        void LoadTexture(const char* texturePath);
        void DestroyTexture();
        uint32_t m_TextureID;
        int m_Width, m_Height, m_Channels;
    };
}

#endif // TEXTURE_H
