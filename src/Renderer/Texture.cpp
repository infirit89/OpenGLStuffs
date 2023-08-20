#include "Texture.h"

#include <glad/glad.h>
#include <stb_image.h>

#include <assert.h>

namespace OpenGLStuffs 
{
    #define INVALID_TEXTURE 0

    Texture::Texture(const char* texturePath) 
    {
        CreateTexture();
        LoadTexture(texturePath);
    }

    Texture::~Texture() 
    {
        DestroyTexture();
    }

    void Texture::Bind(uint32_t textureSlot) 
    {
        glActiveTexture(GL_TEXTURE0 + textureSlot);
        glBindTexture(GL_TEXTURE_2D, m_TextureID);
    }

    void Texture::CreateTexture() 
    {
        glGenTextures(1, &m_TextureID);
        assert(m_TextureID);
        glBindTexture(GL_TEXTURE_2D, m_TextureID);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    }

    void Texture::LoadTexture(const char* texturePath) 
    {
        stbi_set_flip_vertically_on_load(true);

        uint8_t* data = stbi_load(texturePath, &m_Width, &m_Height, &m_Channels, 0);
        assert(data);

        glTexImage2D(
                    GL_TEXTURE_2D,
                    0,
                    GL_RGB,
                    m_Width, m_Height,
                    0,
                    GL_RGB,
                    GL_UNSIGNED_BYTE,
                    data);

        stbi_image_free(data);
    }

    void Texture::DestroyTexture() 
    {
        if(m_TextureID)
            glDeleteTextures(1, &m_TextureID);
    }
}