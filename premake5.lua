project "spdlog"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"
	
	targetdir ("bin/%{cfg.buildcfg}/")
	objdir ("bin-int/%{cfg.buildcfg}/")
	
	files
	{
		"include/spdlog/*.h",
		"include/spdlog/cfg/*.h",
		"include/spdlog/details/*.h",
		"include/spdlog/fmt/*.h",
		"include/spdlog/sinks/*.h",
		
		"src/*.cpp"
	}
	
	includedirs
	{
		"include/spdlog"
	}
	
	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"