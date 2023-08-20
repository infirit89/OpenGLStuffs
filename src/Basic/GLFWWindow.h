//
// Created by George on 08/19/2023
//

#ifndef GLFWWINDOW_H
#define GLFWWINDOW_H

#include <stdint.h>
#include <functional>

namespace OpenGLStuffs 
{
    class Window
    {
    public:
        using FrameBufferResizeCallback = std::function<void(uint32_t, uint32_t)>;
        using KeyPressCallback = std::function<void(int key, int action)>;

        Window(uint32_t width, uint32_t height, const char* title);
        ~Window();

        void Update();
        bool IsOpen();

        void SetFrameBufferResizeCallback(FrameBufferResizeCallback&& callback) 
        { m_Callbacks.OnResize = callback; }

        void SetKeyPressCallback(KeyPressCallback&& callback)
        { m_Callbacks.OnKeyPress = callback; }

        void* GetNativeWindow() const { return m_Window; }

    private:
        void CreateWindow(uint32_t width, uint32_t height, const char* title);
        
        void* m_Window;
        uint32_t m_Width, m_Height;
        const char* m_Title;

        struct Callbacks
        {
            FrameBufferResizeCallback OnResize;
            KeyPressCallback OnKeyPress;
        };
        Callbacks m_Callbacks;
    };
}

#endif // GLFWWINDOW_H