project "ImGuiNodeEditor"
	kind "StaticLib"
	language "C++"
	staticruntime "off"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Examples/Common/BlueprintUtilities/Include/ax/**.h",
		-- "Examples/Common/BlueprintUtilities/Include/ax/**.ini",
		"Examples/Common/BlueprintUtilities/Source/ax/**.cpp",
		"Examples/Common/BlueprintUtilities/Source/**.h",
		"Examples/Common/NodeEditor/Include/**.h",
		"Examples/Common/NodeEditor/Source/**.h",
		"Examples/Common/NodeEditor/Source/**.cpp",
		-- "Examples/Common/NodeEditor/Source/**.ini",
		-- "Examples/Common/NodeEditor/Support/imgui_node_editor.natvis",
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"

	filter "configurations:Debug"
		defines "PY_DEBUG"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		defines "PY_RELEASE"
		runtime "Release"
		optimize "On"

	filter "configurations:Dist"
		defines "PY_DIST"
		runtime "Release"
		optimize "On"
