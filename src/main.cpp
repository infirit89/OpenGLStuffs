#include "Basic/GLFWWindow.h"
#include "Renderer/Shader.h"
#include "Renderer/Texture.h"

#include "glad/glad.h"
#include "GLFW/glfw3.h"

#include <stb_image.h>

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

#include <iostream>
#include <fstream>
#include <assert.h>

using namespace OpenGLStuffs;

void OnFrameBufferResize(uint32_t width, uint32_t height) 
{
    glViewport(0, 0, width, height);
}

struct Vertex 
{
    glm::vec3 Position;
    glm::vec3 Color;
    glm::vec2 TextureCoordinates;
};

float vertices[] = 
{
    // positions        // tex coords
     0.5f,  0.5f, -0.5f, 1.0f, 1.0f, // 0
     0.5f, -0.5f, -0.5f, 1.0f, 0.0f, // 1
    -0.5f, -0.5f, -0.5f, 0.0f, 0.0f, // 2
    -0.5f,  0.5f, -0.5f, 0.0f, 1.0f, // 3

     0.5f,  0.5f, 0.5f, 1.0f, 1.0f, // 4
     0.5f, -0.5f, 0.5f, 1.0f, 0.0f, // 5
    -0.5f, -0.5f, 0.5f, 0.0f, 0.0f, // 6
    -0.5f,  0.5f, 0.5f, 0.0f, 1.0f, // 7

    -0.5f,  0.5f, -0.5f, 1.0f, 1.0f, // 8
    -0.5f, -0.5f, -0.5f, 1.0f, 0.0f, // 9
    -0.5f, -0.5f,  0.5f, 0.0f, 0.0f, // 10
    -0.5f,  0.5f,  0.5f, 0.0f, 1.0f, // 11

     0.5f,  0.5f, -0.5f, 1.0f, 1.0f, // 12
     0.5f, -0.5f, -0.5f, 1.0f, 0.0f, // 13
     0.5f, -0.5f,  0.5f, 0.0f, 0.0f, // 14
     0.5f,  0.5f,  0.5f, 0.0f, 1.0f, // 15

     0.5f, -0.5f, -0.5f, 1.0f, 1.0f, // 16
     0.5f, -0.5f,  0.5f, 1.0f, 0.0f, // 17
    -0.5f, -0.5f,  0.5f, 0.0f, 0.0f, // 18
    -0.5f,  0.5f, -0.5f, 0.0f, 1.0f, // 19

     0.5f,  0.5f, -0.5f, 1.0f, 1.0f, // 20
     0.5f,  0.5f,  0.5f, 1.0f, 0.0f, // 21
    -0.5f,  0.5f,  0.5f, 0.0f, 0.0f, // 22
    -0.5f,  0.5f, -0.5f, 0.0f, 1.0f  // 23
};

unsigned int indices[] = 
{
    // first side
    0, 1, 2,
    2, 3, 0,

    // second side
    4, 5, 6,
    6, 7, 4,

    // third side
    8, 9, 10,
    10, 11, 8,

    // fourth side
    12, 13, 14,
    14, 15, 12,

    // fifth side
    16, 17, 18,
    18, 19, 16,

    // sixth side
    20, 21, 22,
    22, 23, 20
};

bool polygonMode = true;
float angle = 0.0f;

void OnKeyPress(int key, int action) 
{
    if(key == GLFW_KEY_F && action == GLFW_PRESS)
        polygonMode = !polygonMode;

    if(action == GLFW_REPEAT) 
    {
        if(key == GLFW_KEY_D)
            angle += 1.0f;
        else if(key == GLFW_KEY_A)
            angle -= 1.0f;
    }
}

void glDebugOutput(GLenum source, 
                    GLenum type, 
                    unsigned int id, 
                    GLenum severity, 
                    GLsizei length, 
                    const char *message, 
                    const void *userParam) 
{
    // ignore non-significant error/warning codes
    if(id == 131169 || id == 131185 || id == 131218 || id == 131204) return; 

    std::cout << "---------------" << std::endl;
    std::cout << "Debug message (" << id << "): " <<  message << std::endl;

    switch (source)
    {
        case GL_DEBUG_SOURCE_API:             std::cout << "Source: API"; break;
        case GL_DEBUG_SOURCE_WINDOW_SYSTEM:   std::cout << "Source: Window System"; break;
        case GL_DEBUG_SOURCE_SHADER_COMPILER: std::cout << "Source: Shader Compiler"; break;
        case GL_DEBUG_SOURCE_THIRD_PARTY:     std::cout << "Source: Third Party"; break;
        case GL_DEBUG_SOURCE_APPLICATION:     std::cout << "Source: Application"; break;
        case GL_DEBUG_SOURCE_OTHER:           std::cout << "Source: Other"; break;
    } std::cout << std::endl;

    switch (type)
    {
        case GL_DEBUG_TYPE_ERROR:               std::cout << "Type: Error"; break;
        case GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR: std::cout << "Type: Deprecated Behaviour"; break;
        case GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR:  std::cout << "Type: Undefined Behaviour"; break; 
        case GL_DEBUG_TYPE_PORTABILITY:         std::cout << "Type: Portability"; break;
        case GL_DEBUG_TYPE_PERFORMANCE:         std::cout << "Type: Performance"; break;
        case GL_DEBUG_TYPE_MARKER:              std::cout << "Type: Marker"; break;
        case GL_DEBUG_TYPE_PUSH_GROUP:          std::cout << "Type: Push Group"; break;
        case GL_DEBUG_TYPE_POP_GROUP:           std::cout << "Type: Pop Group"; break;
        case GL_DEBUG_TYPE_OTHER:               std::cout << "Type: Other"; break;
    } std::cout << std::endl;
    
    switch (severity)
    {
        case GL_DEBUG_SEVERITY_HIGH:         std::cout << "Severity: high"; break;
        case GL_DEBUG_SEVERITY_MEDIUM:       std::cout << "Severity: medium"; break;
        case GL_DEBUG_SEVERITY_LOW:          std::cout << "Severity: low"; break;
        case GL_DEBUG_SEVERITY_NOTIFICATION: std::cout << "Severity: notification"; break;
    } std::cout << std::endl;
    std::cout << std::endl;
}

const uint32_t WIDTH = 800, HEIGHT = 700;

int main() 
{
    Window window(WIDTH, HEIGHT, "Test");
    window.SetFrameBufferResizeCallback(&OnFrameBufferResize);
    window.SetKeyPressCallback(&OnKeyPress);

    int flags;
    glGetIntegerv(GL_CONTEXT_FLAGS, &flags);

    if(flags & GL_CONTEXT_FLAG_DEBUG_BIT) 
    {
        glEnable(GL_DEBUG_OUTPUT);
        glEnable(GL_DEBUG_OUTPUT_SYNCHRONOUS);
        glDebugMessageCallback(glDebugOutput, nullptr);
        glDebugMessageControl(GL_DONT_CARE, GL_DONT_CARE, GL_DONT_CARE, 0, nullptr, GL_TRUE);
    }

    glEnable(GL_DEPTH_TEST);

    std::cout << "Graphics card: " << glGetString(GL_RENDERER) << '\n';
    std::cout << "OpenGL version: " << glGetString(GL_VERSION) << '\n';

    uint32_t vertexBuffer;
    glGenBuffers(1, &vertexBuffer);

    glBindBuffer(GL_ARRAY_BUFFER, vertexBuffer);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    Shader shader("assets/VertexShader.glsl", "assets/FragmentShader.glsl");

    Texture texture("assets/0x0.jpg");

    uint32_t vertexArray;
    glGenVertexArrays(1, &vertexArray);
    glBindVertexArray(vertexArray);

    uint32_t indexBuffer;
    glGenBuffers(1, &indexBuffer);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, indexBuffer);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);

    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(float), nullptr);
    glEnableVertexAttribArray(0);

    glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void*)(3 * sizeof(float)));
    glEnableVertexAttribArray(1);

    shader.Bind();
    // texture.Bind();

    glClearColor(1.0f, 0.1f, 0.1f, 1.0f);
    float xoffset = 0.0f;
    float direction = 0.01f;


    while(window.IsOpen()) 
    {

        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

        glm::mat4 view = glm::mat4(1.0f);
        view = glm::translate(view, glm::vec3(0.0f, 0.0f, -90.0f));

        glm::mat4 projection = glm::mat4(1.0f);
        projection = glm::perspective(
                                glm::radians(45.0f),
                                (float)WIDTH / (float)HEIGHT,
                                0.1f,
                                100.0f);
        glm::mat4 model = glm::mat4(1.0f);
        // model = glm::rotate(model, -30.0f, glm::vec3(0.0f, 1.0f, 0.0f)); 

        // shader.SetUniformMat4("model", model);
        shader.SetUniformMat4("view", view);
        shader.SetUniformMat4("projection", projection);

        model = 
                glm::rotate(
                        model,
                        angle,
                        glm::vec3(0.5f, 1.0f, 0.0f));
        
        std::cout << glfwGetTime() << "\n";

        shader.SetUniformMat4("model", model);

        if(polygonMode)
            glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
        else
            glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);

        glBindVertexArray(vertexArray);
        glDrawElements(GL_TRIANGLES, 36, GL_UNSIGNED_INT, 0);

        window.Update();
    }

    glDeleteBuffers(1, &vertexBuffer);
    glDeleteBuffers(1, &indexBuffer);
    glDeleteVertexArrays(1, &vertexArray);

    return 0;
}
