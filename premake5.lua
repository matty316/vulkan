workspace "VulkanProj"
    configurations { "Debug", "Release" }
    platforms { "Win64" }

project "VulkanProj"
    kind "ConsoleApp"
    language "C++"
    targetdir "bin/%{cfg.buildcfg}"
    cppdialect "C++23"

    files { "include/**.h", "inlcude/**.hpp", "src/**.c", "src/**.cpp" }

    includedirs { "include" }
    includedirs { "src" }
    libdirs { "lib" }

    links { "glfw3" }
    links { "vulkan-1" }

    filter "configurations:Debug"
    defines { "DEBUG" }
    symbols "On"

    filter "configurations:Release"
    defines { "NDEBUG" }
    optimize "On"