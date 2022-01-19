workspace "Snake"
    architecture "x64"
    configurations {"Debug","Release"}


outputdir = "%{cfg.buildcfg}"
project "Sandbox"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++17"
    targetdir ("bin/"..outputdir)
    objdir ("bin-int/"..outputdir)

    files {"%{prj.name}/src/**.cpp","%{prj.name}/src/**.h"}

    filter "configurations:Debug"
        defines {"DEBUG","debug","Debug"}
        symbols "On"

    filter "configurations:Release"
        defines {"RELEASE","release","Release","NDEBUG"}
        optimize "On"
