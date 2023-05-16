project "ImGuiNodeEditor"
	kind "StaticLib"
	language "C++"
    staticruntime "off"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
        "Examples/Common/BlueprintUtilities/Include/ax/**.h",
        "Examples/Common/BlueprintUtilities/Include/ax/**.ini",
        "Examples/Common/BlueprintUtilities/Source/ax/**.cpp",
        "Examples/Common/BlueprintUtilities/Source/**.h",
        "Examples/Common/NodeEditor/Include/**.h",
        "Examples/Common/NodeEditor/Source/**.h",
        "Examples/Common/NodeEditor/Source/**.cpp",
        "Examples/Common/NodeEditor/Source/**.ini",
        "Examples/Common/NodeEditor/Support/imgui_node_editor.natvis",
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"

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