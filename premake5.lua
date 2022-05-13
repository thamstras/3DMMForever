workspace "3dmm"
configurations {"Debug", "Shipping"}
platforms {"Windows"}
characterset "ASCII"
system "Windows" 
architecture "x32"
includedirs {"./INC", "./BREN/INC", "./kauai/SRC", "./SRC"}
defines {"WIN", "STRICT", "WIN32", "IN_80386"}
language "C++"
compileas "C++"
cppdialect "C++98"
exceptionhandling "off"
staticruntime "on"
ignoredefaultlibraries "libcmt"
flags {"Maps", "NoPCH", "NoRuntimeChecks", "NoIncrementalLink"}
callingconvention "StdCall"
editandcontinue "Off"

filter "configurations:Debug"
    defines {"DEBUG"}
    symbols "on"
    optimize "off"
    runtime "debug"
filter "configurations:Shipping"
    flags {"LinkTimeOptimization"}
    optimize "on"
    runtime "release"
    -- TODO

filter "kind:WindowedApp"
    links { "kernel32", "comdlg32", "user32",
        "gdi32", "winmm", "advapi32", "uuid" }
filter "kind:ConsoleApp"
    links { "kernel32", "comdlg32", "user32",
        "gdi32", "winmm"}
filter "kind:WindowedApp or ConsoleApp"
    linkoptions {"/SAFESEH:NO", "/OPT:REF"}

group "kauai/src"
    project "Base"
        kind "StaticLib"
        files {
            "./kauai/src/utilglob.cpp", "./kauai/src/utilglob.h",
            "./kauai/src/util.cpp", "./kauai/src/util.h",
            "./kauai/src/base.cpp", "./kauai/src/base.h", 
            "./kauai/src/utilcopy.cpp", "./kauai/src/utilcopy.h", 
            "./kauai/src/utilerro.cpp", "./kauai/src/utilerro.h", 
            "./kauai/src/utilint.cpp", "./kauai/src/utilint.h", 
            "./kauai/src/utilmem.cpp", "./kauai/src/utilmem.h", 
            "./kauai/src/utilrnd.cpp", "./kauai/src/utilrnd.h", 
            "./kauai/src/utilstr.cpp", "./kauai/src/utilstr.h", 
            "./kauai/src/memwin.cpp", 
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"
    
    project "Group"
        kind "StaticLib"
        files {
            "./kauai/src/groups.cpp", "./kauai/src/groups.h",
            "./kauai/src/groups2.cpp", "./kauai/src/groups2.h"
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"

    project "File"
        kind "StaticLib"
        files {
            "./kauai/src/chunk.cpp", "./kauai/src/chunk.h",
            "./kauai/src/codec.cpp", "./kauai/src/codec.h",
            "./kauai/src/codkauai.cpp", "./kauai/src/codkauai.h",
            "./kauai/src/crf.cpp", "./kauai/src/crf.h",
            "./kauai/src/file.cpp", "./kauai/src/file.h",
            "./kauai/src/filewin.cpp",
            "./kauai/src/fniwin.cpp",
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"

    project "Stream"
        kind "StaticLib"
        files {
            "./kauai/src/stream.cpp", "./kauai/src/stream.h",
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"

    project "Lexer"
        kind "StaticLib"
        files {
            "./kauai/src/lex.cpp", "./kauai/src/lex.h",
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"

    project "ScrCom"
        kind "StaticLib"
        files {
            "./kauai/src/scrcom.cpp", "./kauai/src/scrcom.h",
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"

    project "KidCom"
        kind "StaticLib"
        files {
            "./kauai/src/scrcomg.cpp", "./kauai/src/scrcomg.h",
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"

    project "ScrExe"
        kind "StaticLib"
        files {
            "./kauai/src/screxe.cpp", "./kauai/src/screxe.h",
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"

    project "MbmpIO"
        kind "StaticLib"
        files {
            "./kauai/src/mbmp.cpp", "./kauai/src/mbmp.h",
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"
    
    project "Chse"
        kind "StaticLib"
        files {
            "./kauai/src/chse.cpp", "./kauai/src/chse.h",
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"

    project "Sound"
        kind "StaticLib"
        files {
            "./kauai/src/sndm.cpp", "./kauai/src/sndm.h",
            "./kauai/src/sndam.cpp", "./kauai/src/sndam.h",
            "./kauai/src/mididev.cpp", "./kauai/src/mididev.h",
            "./kauai/src/mididev2.cpp", "./kauai/src/mididev2.h",
            "./kauai/src/midi.cpp", "./kauai/src/midi.h",
            "./kauai/src/Stubs.cpp"
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"

    project "Video"
        kind "StaticLib"
        files {
            "./kauai/src/video.cpp", "./kauai/src/video.h",
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"

    project "SpellChecker"
        kind "StaticLib"
        files {
            "./kauai/src/spell.cpp", "./kauai/src/spell.h",
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"

    project "Gui"
        kind "StaticLib"
        files {
            "./kauai/src/appb.cpp", "./kauai/src/appb.h",
            "./kauai/src/clok.cpp", "./kauai/src/clok.h",
            "./kauai/src/cmd.cpp", "./kauai/src/cmd.h",
            "./kauai/src/cursor.cpp", "./kauai/src/cursor.h",
            "./kauai/src/gfx.cpp", "./kauai/src/gfx.h",
            "./kauai/src/gob.cpp", "./kauai/src/gob.h",
            "./kauai/src/mbmpgui.cpp", "./kauai/src/mbmpgui.h",
            "./kauai/src/region.cpp", "./kauai/src/region.h",
            "./kauai/src/pic.cpp", "./kauai/src/pic.h",
            "./kauai/src/appbwin.cpp",
            "./kauai/src/gfxwin.cpp",
            "./kauai/src/gobwin.cpp",
            "./kauai/src/menuwin.cpp",
            "./kauai/src/picwin.cpp",
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"

    project "Dlg"
        kind "StaticLib"
        files {
            "./kauai/src/dlg.cpp", "./kauai/src/dlg.h",
            "./kauai/src/dlgwin.cpp",
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"

    project "Ctl"
        kind "StaticLib"
        files {
            "./kauai/src/ctl.cpp", "./kauai/src/ctl.h",
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"

    project "Doc"
        kind "StaticLib"
        files {
            "./kauai/src/docb.cpp", "./kauai/src/docb.h",
            "./kauai/src/clip.cpp", "./kauai/src/clip.h",
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"

    project "RichText"
        kind "StaticLib"
        files {
            "./kauai/src/rtxt.cpp", "./kauai/src/rtxt.h",
            "./kauai/src/rtxt2.cpp", "./kauai/src/rtxt2.h",
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"

    project "TextEdit"
        kind "StaticLib"
        files {
            "./kauai/src/text.cpp", "./kauai/src/text.h",
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"

    project "PlainText"
        kind "StaticLib"
        files {
            "./kauai/src/textdoc.cpp", "./kauai/src/textdoc.h",
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"

    project "Kid"
        kind "StaticLib"
        files {
            "./kauai/src/kidworld.cpp", "./kauai/src/kidworld.h",
            "./kauai/src/kidhelp.cpp", "./kauai/src/kidhelp.h",
            "./kauai/src/kidspace.cpp", "./kauai/src/kidspace.h",
            "./kauai/src/screxeg.cpp", "./kauai/src/screxeg.h",
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"

    -- TODO: This can probably be merged into FT.exe below
    --project "KauiaTest"
    --    kind "StaticLib"
    --    files {
    --        "./kauai/src/ft.cpp",
    --        "./kauai/src/test.cpp",
    --    }
    --    filter "configurations:Debug"
    --        objdir "./kauai/obj/wind"
    --        targetdir "./kauai/obj/wind"
    --    filter "configurations:Shipping"
    --        objdir "./kauai/obj/wins"
    --        targetdir "./kauai/obj/wins"

    project "Ched"
        kind "StaticLib"
        files {
            "./kauai/src/chdoc.cpp", "./kauai/src/chdoc.h",
            "./kauai/src/ched.cpp", "./kauai/src/ched.h",
            "./kauai/src/chgrp.cpp", "./kauai/src/chgrp.h",
            "./kauai/src/chhex.cpp", "./kauai/src/chhex.h",
            "./kauai/src/chmbmp.cpp", "./kauai/src/chmbmp.h",
            "./kauai/src/chpic.cpp", "./kauai/src/chpic.h",
            "./kauai/src/chtxt.cpp", "./kauai/src/chtxt.h",
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"

    project "Chelp"
        kind "StaticLib"
        files {
            "./kauai/src/chelp.cpp", "./kauai/src/chelp.h",
            "./kauai/src/chtop.cpp", "./kauai/src/chtop.h",
            "./kauai/src/chelpexp.cpp", "./kauai/src/chelpexp.h",
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"

    project "Chomp"
        kind "StaticLib"
        files {
            "./kauai/src/chomp.cpp", "./kauai/src/chomp.h",
            "./kauai/src/mssio.cpp", "./kauai/src/mssio.h",
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"

    project "UT"
        kind "ConsoleApp"
        links { "Base", "Group", "File" }
        files {
            "./kauai/src/ut.cpp", "./kauai/src/test.cpp"
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"

    project "FT"
        kind "WindowedApp"
        links { "Base", "Group", "File", "Gui",
            "Doc", "Stream", "Sound", "Dlg", "Ctl",
            "TextEdit", "RichText", "MbmpIO",
            "audiod", "vfw32"
        }
        libdirs { "./kauai/elib/wind/"}
        files {
            "./kauai/src/ft.rc",
            "./kauai/src/ft.cpp",
            "./kauai/src/test.cpp",
        }
        filter "configurations:Debug"
            objdir "./kauai/obj/wind"
            targetdir "./kauai/obj/wind"
        filter "configurations:Shipping"
            objdir "./kauai/obj/wins"
            targetdir "./kauai/obj/wins"

    