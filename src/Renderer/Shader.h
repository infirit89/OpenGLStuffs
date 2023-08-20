//
// Created by George on 08/20/2023
//

#ifndef SHADER_H
#define SHADER_H

#include <cstdint>
#include <string>

namespace OpenGLStuffs 
{
    class Shader 
{
    public:
        Shader(const char* vertexShaderPath, const char* fragmentShaderPath);
        ~Shader();

        void Bind();

        void SetUniformFloat(const char* uniformName, float value);
        void SetUniformInt(const char* uniformName, int value);

    private:
        enum class ShaderType 
        {
            Vertex = 0,
            Fragment
        };

        std::string ReadShaderFile(const char* filePath);
        uint32_t CreateShader(ShaderType type, const std::string& shaderSource);
        void CreateProgram(const std::string& vertexSource, const std::string& fragmentSource);
        void DeleteProgram();

        uint32_t m_ShaderProgram;
    };
}

#endif // SHADER_H
