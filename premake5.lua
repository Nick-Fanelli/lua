project "lua"
    kind "StaticLib"
    language "C"
    architecture "x86_64"

    targetdir ( "%{wks.location}/build/" .. outputdir .. "/%{prj.name}")
    objdir ( "%{wks.location}/build-int/" .. outputdir .. "/%{prj.name}")

    files {
        "*.h",
        "*.c"
    }

    filter "system:linux"
        pic "On"

        systemversion "latest"
        staticruntime "On"

    filter "system:windows"
        systemversion "latest"
        staticruntime "On"
         
    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        runtime "Release"
        optimize "On"
