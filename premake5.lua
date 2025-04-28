workspace "testWorkspace"
    configurations { "release" }

    project "test_x64"
        kind "ConsoleApp"
        language "C++"
        files { "test.cpp" }

        system "macosx"
        architecture "x86_64"

    project "test_arm64"
        kind "ConsoleApp"
        language "C++"
        files { "test.cpp" }

        system "macosx"
        architecture "ARM64"

    project "test_universal"
        kind "ConsoleApp"
        language "C++"
        files { "test.cpp" }

        system "macosx"
        architecture "universal"
    
    project "test_universal_with_buildoptions"
        kind "ConsoleApp"
        language "C++"
        files { "test.cpp" }
    
        system "macosx"
        architecture "universal"
        buildoptions { "-arch arm64", "-arch x86_64" }
        linkoptions { "-arch arm64", "-arch x86_64" }

    project "test_buildoptions"
        kind "ConsoleApp"
        language "C++"
        files { "test.cpp" }
    
        system "macosx"
        buildoptions { "-arch arm64", "-arch x86_64" }
        linkoptions { "-arch arm64", "-arch x86_64" }
