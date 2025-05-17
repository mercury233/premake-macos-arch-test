print("Host Arch: " .. os.hostarch())
print("Target OS: " .. os.target())
print("Target Arch: " .. (os.targetarch() or "nil"))
print("_TARGET_ARCH: " .. (_TARGET_ARCH or "nil"))
print("---")

workspace "testWorkspace"
    configurations { "release" }

    project "test_x64"
        kind "ConsoleApp"
        language "C++"
        files { "test.cpp" }

        system "macosx"
        architecture "x86_64"

        print("test_x64:")
        print("  Target OS: " .. os.target())
        print("  Target arch: " .. (os.targetarch() or "nil"))
        print("  _TARGET_ARCH: " .. (_TARGET_ARCH or "nil"))
        filter "architecture:arm*"
            print("  ARM architecture detected by architecture:arm*")
        filter "not architecture:arm*"
            print("  NON-ARM architecture detected by not architecture:arm*")
        filter {}
        print("---")

    project "test_arm64"
        kind "ConsoleApp"
        language "C++"
        files { "test.cpp" }

        system "macosx"
        architecture "ARM64"

        print("test_arm64:")
        print("  Target OS: " .. os.target())
        print("  Target arch: " .. (os.targetarch() or "nil"))
        print("  _TARGET_ARCH: " .. (_TARGET_ARCH or "nil"))
        filter "architecture:arm*"
            print("  ARM architecture detected by architecture:arm*")
        filter "not architecture:arm*"
            print("  NON-ARM architecture detected by not architecture:arm*")
        filter {}
        print("---")

    project "test_universal"
        kind "ConsoleApp"
        language "C++"
        files { "test.cpp" }

        system "macosx"
        architecture "universal"

        print("test_universal:")
        print("  Target OS: " .. os.target())
        print("  Target arch: " .. (os.targetarch() or "nil"))
        print("  _TARGET_ARCH: " .. (_TARGET_ARCH or "nil"))
        filter "architecture:arm*"
            print("  ARM architecture detected by architecture:arm*")
        filter "not architecture:arm*"
            print("  NON-ARM architecture detected by not architecture:arm*")
        filter {}
        print("---")
    
    project "test_universal_with_buildoptions"
        kind "ConsoleApp"
        language "C++"
        files { "test.cpp" }
    
        system "macosx"
        architecture "universal"
        buildoptions { "-arch arm64", "-arch x86_64" }
        linkoptions { "-arch arm64", "-arch x86_64" }

        print("test_universal_with_buildoptions:")
        print("  Target OS: " .. os.target())
        print("  Target arch: " .. (os.targetarch() or "nil"))
        print("  _TARGET_ARCH: " .. (_TARGET_ARCH or "nil"))
        filter "architecture:arm*"
            print("  ARM architecture detected by architecture:arm*")
        filter "not architecture:arm*"
            print("  NON-ARM architecture detected by not architecture:arm*")
        filter {}
        print("---")

    project "test_buildoptions"
        kind "ConsoleApp"
        language "C++"
        files { "test.cpp" }
    
        system "macosx"
        buildoptions { "-arch arm64", "-arch x86_64" }
        linkoptions { "-arch arm64", "-arch x86_64" }

        print("test_buildoptions:")
        print("  Target OS: " .. os.target())
        print("  Target arch: " .. (os.targetarch() or "nil"))
        print("  _TARGET_ARCH: " .. (_TARGET_ARCH or "nil"))
        filter "architecture:arm*"
            print("  ARM architecture detected by architecture:arm*")
        filter "not architecture:arm*"
            print("  NON-ARM architecture detected by not architecture:arm*")
        filter {}
        print("---")
