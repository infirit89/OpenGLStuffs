#include "Shader.h"

#include <glad/glad.h>
#include <assert.h>
#include <fstream>
#include <iostream>

namespace OpenGLStuffs 
{
    #define INVALID_PROGRAM 0

    Shader::Shader(const char* vertexShaderPath, const char* fragmentShaderPath) 
    {
        std::string vertexShaderSource = ReadShaderFile(vertexShaderPath);
        std::string fragmentShaderSource = ReadShaderFile(fragmentShaderPath);

        CreateProgram(vertexShaderSource, fragmentShaderSource);
    }

    Shader::~Shader()
    {
        DeleteProgram();
    }

    void Shader::Bind() 
    {
        if(m_ShaderProgram != INVALID_PROGRAM)
            glUseProgram(m_ShaderProgram);
    }

    std::string Shader::ReadShaderFile(const char* filePath) 
    {
        std::string shaderSource;

        std::ifstream vertexShaderFile(filePath,
                                        std::ios::in | std::ios::binary);
        assert(vertexShaderFile);

        vertexShaderFile.seekg(0, std::ios::end);
        size_t fileSize = vertexShaderFile.tellg();
        vertexShaderFile.seekg(0, std::ios::beg);

        shaderSource.resize(fileSize);

        vertexShaderFile.read(&shaderSource[0], fileSize);

        assert(vertexShaderFile);

        return shaderSource;
    }

    uint32_t Shader::CreateShader(ShaderType type, const std::string& shaderSource) 
    {
        const char* shaderSourceCStr = shaderSource.c_str();
        
        uint32_t nativeShaderType = 0;

        switch(type) 
        {
        case ShaderType::Vertex:    nativeShaderType = GL_VERTEX_SHADER; break;
        case ShaderType::Fragment:  nativeShaderType = GL_FRAGMENT_SHADER; break;
        }

        assert(nativeShaderType);

        uint32_t shader = glCreateShader(nativeShaderType);
        glShaderSource(shader, 1, &shaderSourceCStr, nullptr);
        glCompileShader(shader);

        int compileStatus;
        glGetShaderiv(shader, GL_COMPILE_STATUS, &compileStatus);
        if(!compileStatus) 
        {
            constexpr int compileErrorInfoSize = 512;
            char compileErrorInfo[compileErrorInfoSize];
            glGetShaderInfoLog(shader, compileErrorInfoSize, nullptr, compileErrorInfo);
            std::cerr << compileErrorInfo << '\n';

            return 0;
        }

        return shader;
    }

    void Shader::CreateProgram(const std::string& vertexSource, const std::string& fragmentSource) 
    {
        uint32_t vertexShader = CreateShader(ShaderType::Vertex, vertexSource);
        if(vertexShader == 0)
            return;

        uint32_t fragmentShader = CreateShader(ShaderType::Fragment, fragmentSource);

        if(fragmentShader == 0)
            return;

        m_ShaderProgram = glCreateProgram();
        glAttachShader(m_ShaderProgram, vertexShader);
        glAttachShader(m_ShaderProgram, fragmentShader);

        glLinkProgram(m_ShaderProgram);

        glDeleteShader(vertexShader);
        glDeleteShader(fragmentShader);
    }
    
    void Shader::DeleteProgram() 
    {
        if(m_ShaderProgram != INVALID_PROGRAM)
            glDeleteProgram(m_ShaderProgram);
    }

    void Shader::SetUniformFloat(const char* uniformName, float value) 
    {
        int loc = glGetUniformLocation(m_ShaderProgram, uniformName);
        glUniform1f(loc, value);
    }

    void Shader::SetUniformInt(const char* uniformName, int value) 
    {
        int loc = glGetUniformLocation(m_ShaderProgram, uniformName);
        glUniform1i(loc, value);
    }
}
