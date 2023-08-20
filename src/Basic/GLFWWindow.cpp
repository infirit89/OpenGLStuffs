#include "GLFWWindow.h"

#define GLFW_INCLUDE_NONE
#include <GLFW/glfw3.h>
#include <glad/glad.h>

#include <iostream>
#include <assert.h>

namespace OpenGLStuffs 
{
    Window::Window(uint32_t width, uint32_t height, const char* title)
        : m_Width(width), m_Height(height), m_Title(title)   
    {
        CreateWindow(width, height, title);
    }

    Window::~Window() 
    {
        glfwTerminate();
    }

    void Window::Update() 
    {
        glfwSwapBuffers((GLFWwindow*)m_Window);
        glfwPollEvents();
    }

    bool Window::IsOpen() 
    {
        return !glfwWindowShouldClose((GLFWwindow*)m_Window);
    }

    void Window::CreateWindow(uint32_t width, uint32_t height, const char* title) 
    {
        int res = glfwInit();
        // glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
        // glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
        // glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
        glfwWindowHint(GLFW_OPENGL_DEBUG_CONTEXT, true);
        assert(res);

        m_Window = glfwCreateWindow(width, height, title, nullptr, nullptr);

        glfwSetWindowUserPointer((GLFWwindow*)m_Window, &m_Callbacks);

        glfwSetFramebufferSizeCallback((GLFWwindow*)m_Window, 
                                    [](GLFWwindow* window, int width, int height) 
        {
            Callbacks callbacks = *(static_cast<Callbacks*>(glfwGetWindowUserPointer(window)));
            callbacks.OnResize(width, height);
        });

        glfwSetWindowSizeCallback((GLFWwindow*)m_Window, 
                                    [](GLFWwindow* window, int width, int height) 
        {
            // TODO: implement
        });

        glfwSetKeyCallback((GLFWwindow*)m_Window,
                            [](GLFWwindow* window, int key, int scancode, int action, int mods) 
        {
            Callbacks callbacks = *(static_cast<Callbacks*>(glfwGetWindowUserPointer(window)));
            callbacks.OnKeyPress(key, action);
        });

        assert(m_Window);

        glfwMakeContextCurrent((GLFWwindow*)m_Window);
        if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
        {
            std::cout << "Failed to initialize GLAD" << std::endl;
        }
    }
}
