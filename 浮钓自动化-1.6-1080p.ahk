﻿; This script was created using Pulover's Macro Creator
; www.macrocreator.com

#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1


F3::
Macro1:
CoordMode, Pixel, Screen
ImageSearch, FoundX, FoundY, 1228, 956, 1247, 968, *77 C:\cygwin64\home\lee\RF4BOT\mate\准备完毕.png
If (ErrorLevel = 0)
{
    scan4()
}
Sleep, 200
beep()
Loop
{
    scan1()
}
Return

F2::
Macro2:
Loop
{
    CoordMode, Pixel, Screen
    ImageSearch, FoundX, FoundY, 1245, 710, 1494, 784, *88 mate\自重漂z1.png
    CenterImgSrchCoords("*88 mate\自重漂z1.png", FoundX, FoundY)
    If (ErrorLevel)
    {
        SoundBeep, 120, 100
        CoordMode, Pixel, Screen
        ImageSearch, FoundX, FoundY, 1245, 710, 1494, 784, *88 mate\自重漂z1.png
        CenterImgSrchCoords("*88 mate\自重漂z1.png", FoundX, FoundY)
        CoordMode, Pixel, Screen
        ImageSearch, FoundX, FoundY, 1245, 710, 1494, 784, *88 mate\自重漂z1.png
        CenterImgSrchCoords("*88 mate\自重漂z1.png", FoundX, FoundY)
    }
    If (ErrorLevel = 0)
    {
    }
}
Return

scan1()
{
    CoordMode, Pixel, Screen
    PixelSearch, FoundX, FoundY, 1345, 710, 1494, 784, 0xFF0201, 88, Fast RGB
    If (ErrorLevel)
    {
        Sleep, 222
        CoordMode, Pixel, Screen
        ImageSearch, FoundX, FoundY, 1245, 710, 1494, 784, *88 mate\自重漂z1.png
        CenterImgSrchCoords("*88 mate\自重漂z1.png", FoundX, FoundY)
        Sleep, 666
        beep()
        Sleep, 500
        CoordMode, Pixel, Screen
        ImageSearch, FoundX, FoundY, 1245, 710, 1494, 784, *88 mate\自重漂z1.png
        CenterImgSrchCoords("*88 mate\自重漂z1.png", FoundX, FoundY)
        If (ErrorLevel)
        {
            beep()
            WinActivate, ahk_exe rf4_x64.exe
            Send, {Enter Up}
            scan2()
            CoordMode, Pixel, Screen
            ImageSearch, FoundX, FoundY, 626, 965, 759, 1005, *66 mate\T.png
        }
    }
    CoordMode, Pixel, Screen
    ImageSearch, FoundX, FoundY, 626, 965, 759, 1005, *77 mate\T.png
    If (ErrorLevel = 0)
    {
        godone := 0
    }
}

scan2()
{
    scan21()
    Sleep, 333
    scan4()
}

scan21()
{
    global go2, go1, godone
    a := 0
    ControlSend, , {Enter Down}, ahk_exe rf4_x64.exe
    ControlSend, , {Control Down}, ahk_exe rf4_x64.exe
    ControlSend, , {\ Down}, ahk_exe rf4_x64.exe
    ControlSend, , {RShift Down}, ahk_exe rf4_x64.exe
    ControlSend, , {Enter Down}, ahk_exe rf4_x64.exe
    Sleep, 500
    ControlSend, , {Control Up}, ahk_exe rf4_x64.exe
    ControlSend, , {\ Up}, ahk_exe rf4_x64.exe
    ControlSend, , {RShift Up}, ahk_exe rf4_x64.exe
    ControlSend, , {Enter Up}, ahk_exe rf4_x64.exe
    Sleep, 50
    Loop
    {
        ControlSend, , {\ Down}, ahk_exe rf4_x64.exe
        ControlSend, , {RShift Down}, ahk_exe rf4_x64.exe
        ControlSend, , {Enter Down}, ahk_exe rf4_x64.exe
        go1 += 1
        SoundBeep, 120, 100
        outloop()
        done()
        CoordMode, Pixel, Screen
        ImageSearch, FoundX, FoundY, 845, 780, 1094, 830, *1 mate\经验点数.png
        If (ErrorLevel = 0)
        {
            ControlSend, , {RShift Up}, ahk_exe rf4_x64.exe
            ControlSend, , {\ Up}, ahk_exe rf4_x64.exe
            ControlSend, , {Enter Up}, ahk_exe rf4_x64.exe
            godone := 1
            Sleep, 300
            scan3()
        }
    }
    Until, godone=1
    SoundPlay, E:\remind.wav
    ControlSend, , {RShift Up}, ahk_exe rf4_x64.exe
    ControlSend, , {\ Up}, ahk_exe rf4_x64.exe
    ControlSend, , {Enter Up}, ahk_exe rf4_x64.exe
    godone := 0
}

scan3()
{
    CoordMode, Pixel, Screen
    ImageSearch, FoundX, FoundY, 551, 79, 1323, 229, *5 mate\星1.png
    If (ErrorLevel)
    {
        CoordMode, Pixel, Screen
        ImageSearch, FoundX, FoundY, 612, 72, 1286, 236, *5 mate\标1.png
        If (ErrorLevel = 0)
        {
            SoundBeep, 140, 100
            ControlSend, , {Space}, ahk_exe rf4_x64.exe
            Sleep, 300
            ControlSend, , {Space}, ahk_exe rf4_x64.exe
        }
        If (ErrorLevel)
        {
            SoundBeep, 4444, 33
            SoundBeep, 4444, 33
            Sleep, 300
            CoordMode, Pixel, Screen
            ImageSearch, FoundX, FoundY, 612, 74, 1305, 227, *5 mate\标1.png
            If (ErrorLevel)
            {
                SoundBeep, 188, 100
                Sleep, 300
                ControlSend, , {Backspace}, ahk_exe rf4_x64.exe
            }
        }
    }
    If (ErrorLevel = 0)
    {
        SoundBeep, 140, 100
        ControlSend, , {Space}, ahk_exe rf4_x64.exe
        Sleep, 300
        ControlSend, , {Space}, ahk_exe rf4_x64.exe
    }
}

scan4()
{
    CoordMode, Pixel, Screen
    ImageSearch, FoundX, FoundY, 626, 965, 759, 1005, *88 mate\T.png
    If (ErrorLevel = 0)
    {
        ControlSend, , {Enter Down}, ahk_exe rf4_x64.exe
        Sleep, 666
        ControlSend, , {Enter Up}, ahk_exe rf4_x64.exe
    }
    Sleep, 4200
    SoundBeep, 7777, 33
    SoundBeep, 4444, 33
    SoundBeep, 7777, 33
    eat()
}

eat()
{
    CoordMode, Pixel, Screen
    ImageSearch, FoundX, FoundY, 188, 931, 220, 952, *22 mate\红条.png
    If (ErrorLevel = 0)
    {
        Sleep, 555
        SoundBeep, 7777, 33
        SoundBeep, 4444, 33
        Sleep, 999
        Sleep, 300
    }
    Sleep, 300
    CoordMode, Pixel, Screen
    ImageSearch, FoundX, FoundY, 189, 988, 228, 1017, *22 mate\红条.png
    If (ErrorLevel = 0)
    {
        Sleep, 100
        SoundBeep, 7777, 33
        SoundBeep, 4444, 33
        SoundBeep, 7777, 33
        ControlSend, , {5}, ahk_exe rf4_x64.exe
        Sleep, 222
    }
    Sleep, 500
}

done()
{
    global godone
    CoordMode, Pixel, Screen
    ImageSearch, FoundX, FoundY, 1229, 959, 1245, 966, *77 C:\cygwin64\home\lee\RF4BOT\mate\准备完毕.png
    If (ErrorLevel = 0)
    {
        Sleep, 300
        CoordMode, Pixel, Screen
        ImageSearch, FoundX, FoundY, 1229, 959, 1245, 966, *77 C:\cygwin64\home\lee\RF4BOT\mate\准备完毕.png
        If (ErrorLevel = 0)
        {
            Sleep, 300
            ControlSend, , {\ Up}, ahk_exe rf4_x64.exe
            ControlSend, , {RShift Up}, ahk_exe rf4_x64.exe
            ControlSend, , {Enter Up}, ahk_exe rf4_x64.exe
            godone := 1
        }
    }
}

allsave:
ControlFocus, , ahk_exe rf4_x64.exe
Loop
{
    eat()
}
Return

outloop()
{
    global godone, go1
    If (go1=9000)
    {
        Sleep, 333
        ControlSend, , {RShift Up}, ahk_exe rf4_x64.exe
        ControlSend, , {Enter Up}, ahk_exe rf4_x64.exe
        godone := 1
        go1 := 0
    }
}

beep()
{
    SoundBeep, 7777, 33
    SoundBeep, 4444, 33
    SoundBeep, 7777, 33
}


F8::ExitApp

F12::Pause

CenterImgSrchCoords(File, ByRef CoordX, ByRef CoordY)
{
	static LoadedPic
	LastEL := ErrorLevel

	Gui, Pict:Add, Pic, vLoadedPic, % RegExReplace(File, "^(\*\w+\s)+")
	GuiControlGet, LoadedPic, Pict:Pos
	Gui, Pict:Destroy
	CoordX += LoadedPicW // 2
	CoordY += LoadedPicH // 2
	ErrorLevel := LastEL
}

/*
PMC File Version 5.4.1
---[Do not edit anything in this section]---

[PMC Globals]|None|ahk_exe rf4_x64.exe|
[PMC Code v5.4.1]|F3||1|Window,2,Fast,0,1,Input,-1,-1,1|1|Macro1
Context=None|
Groups=开始:1
1|Continue, Continue, FoundX, FoundY, 0|1228, 956, 1247, 968, *77 C:\cygwin64\home\lee\RF4BOT\mate\准备完毕.png|1|0|ImageSearch||Screen|||1|
2|If Image/Pixel Found||1|0|If_Statement|||||3|
3|scan4|_null := |1|0|Function|||||5|
4|[End If]|EndIf|1|0|If_Statement|||||6|
5|[Pause]||1|200|Sleep|||||7|
6|beep|_null := |1|0|Function|||||8|
7|[LoopStart]|LoopStart|0|0|Loop|||||9|
8|scan1|_null := |1|0|Function|||||11|
9|[LoopEnd]|LoopEnd|1|0|Loop|||||12|

[PMC Code v5.4.1]|F2||1|Window,2,Fast,0,1,Input,-1,-1,1|1|Macro2
Context=None|
Groups=Start:1
1|[LoopStart]|LoopStart|0|0|Loop|||||1|
2|Continue, Continue, FoundX, FoundY, 1|1245, 710, 1494, 784, *88 mate\自重漂z1.png|1|0|ImageSearch||Screen|||3|
3|If Image/Pixel Not Found||1|0|If_Statement|||||6|
4|SoundBeep|120, 100|1|0|SoundBeep|||||8|
5|Continue, Continue, FoundX, FoundY, 1|1245, 710, 1494, 784, *88 mate\自重漂z1.png|1|0|ImageSearch||Screen|||9|
6|Continue, Continue, FoundX, FoundY, 1|1245, 710, 1494, 784, *88 mate\自重漂z1.png|1|0|ImageSearch||Screen|||12|
7|[End If]|EndIf|1|0|If_Statement|||||15|
8|If Image/Pixel Found||1|0|If_Statement|||||16|
9|[End If]|EndIf|1|0|If_Statement|||||18|
10|[LoopEnd]|LoopEnd|1|0|Loop|||||19|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|scan1()
Context=None|
Groups=Start:1
1|[FunctionStart]|scan1|1|0|UserFunction|Local| / |||1|
2|Continue, Continue, FoundX, FoundY|1345, 710, 1494, 784, 0xFF0201, 88, Fast RGB|1|0|PixelSearch||Screen|||3|
3|If Image/Pixel Not Found||1|0|If_Statement|||||5|
4|[Pause]|NoRandom|1|222|Sleep|||||7|
5|Continue, Continue, FoundX, FoundY, 1|1245, 710, 1494, 784, *88 mate\自重漂z1.png|1|0|ImageSearch||Screen|||8|
6|[Pause]|Random|1|666|Sleep|777||||11|
7|beep|_null := |1|0|Function|||||12|
8|[Pause]|NoRandom|1|500|Sleep|||||13|
9|Continue, Continue, FoundX, FoundY, 1|1245, 710, 1494, 784, *88 mate\自重漂z1.png|1|0|ImageSearch||Screen|||14|
10|If Image/Pixel Not Found||1|0|If_Statement|||||17|
11|beep|_null := |1|0|Function|||||19|
12|WinActivate||1|0|WinActivate||ahk_exe rf4_x64.exe|||20|
13|Enter|{Enter Up}|1|0|Send|||||21|
14|scan2|_null := |1|0|Function|||||22|
15|Continue, Continue, FoundX, FoundY, 0|626, 965, 759, 1005, *66 mate\T.png|1|0|ImageSearch||Screen|||23|
16|[End If]|EndIf|1|0|If_Statement|||||25|
17|[End If]|EndIf|1|0|If_Statement|||||26|
18|Continue, Continue, FoundX, FoundY, 0|626, 965, 759, 1005, *77 mate\T.png|1|0|ImageSearch||Screen|||27|
19|If Image/Pixel Found||1|0|If_Statement|||||29|
20|[Assign Variable]|godone := 0|1|0|Variable|Expression||||31|
21|[End If]|EndIf|1|0|If_Statement|||||32|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|scan2()
Context=None|
Groups=Start:1
1|[FunctionStart]|scan2|1|0|UserFunction|Local| / |||1|
02|beep|_null := |1|0|Function|||||3|
3|scan21|_null := |1|0|Function|||||3|
4|[Pause]|NoRandom|1|333|Sleep|||||4|
5|scan4|_null := |1|0|Function|||||5|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|scan21()
Context=None|
Groups=Start:1
1|[FunctionStart]|scan21|1|0|UserFunction|Local|go2, go1, godone / |||1|
2|[Assign Variable]|a := 0|1|0|Variable|Expression||||4|
3|[Assign Variable]|{Enter Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||5|
4|Control|{Control Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||6|
5|\|{\ Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||7|
6|RShift|{RShift Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||8|
7|Enter|{Enter Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||9|
8|[Pause]||1|500|Sleep|||||10|
9|Control|{Control Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||11|
10|\|{\ Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||12|
11|RShift|{RShift Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||13|
12|Enter|{Enter Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||14|
13|[Pause]||1|50|Sleep|||||15|
14|[LoopStart]|LoopStart|0|0|Loop|godone=1||||16|
15|\|{\ Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||18|
16|RShift|{RShift Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||19|
17|Enter|{Enter Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||20|
18|[Add Variable]|go1 += 1|1|250|Variable|Expression||||21|
19|SoundBeep|120, 100|1|0|SoundBeep|||||22|
20|outloop|_null := |1|0|Function|||||23|
21|done|_null := |1|0|Function|||||24|
22|Continue, Continue, FoundX, FoundY, 0|845, 780, 1094, 830, *1 mate\经验点数.png|1|0|ImageSearch||Screen|||25|
23|If Image/Pixel Found||1|0|If_Statement|||||27|
24|RShift|{RShift Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||29|
25|\|{\ Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||30|
26|Enter|{Enter Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||31|
27|[Assign Variable]|godone := 1|1|0|Variable|Expression||||32|
28|[Pause]||1|300|Sleep|||||33|
29|scan3|_null := |1|0|Function|||||34|
30|[End If]|EndIf|1|0|If_Statement|||||35|
31|[LoopEnd]|LoopEnd|1|0|Loop|||||36|
32|SoundPlay|E:\remind.wav|1|0|SoundPlay|||||38|
33|RShift|{RShift Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||39|
34|\|{\ Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||40|
35|Enter|{Enter Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||41|
36|[Assign Variable]|godone := 0|1|0|Variable|Expression||||42|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|scan3()
Context=None|
Groups=Start:1
1|[FunctionStart]|scan3|1|0|UserFunction|Local| / |||1|
02|beep|_null := |1|0|Function|||||3|
3|Continue, Continue, FoundX, FoundY, 0|551, 79, 1323, 229, *5 mate\星1.png|1|0|ImageSearch||Screen|||3|
4|If Image/Pixel Not Found||1|0|If_Statement|||||5|
5|Continue, Continue, FoundX, FoundY, 0|612, 72, 1286, 236, *5 mate\标1.png|1|0|ImageSearch||Screen|||7|
6|If Image/Pixel Found||1|0|If_Statement|||||9|
7|SoundBeep|140, 100|1|0|SoundBeep|||||11|
8|Space|{Space}|1|0|ControlSend||ahk_exe rf4_x64.exe|||12|
9|[Pause]||1|300|Sleep|||||13|
10|Space|{Space}|1|0|ControlSend||ahk_exe rf4_x64.exe|||14|
11|[End If]|EndIf|1|0|If_Statement|||||15|
12|If Image/Pixel Not Found||1|0|If_Statement|||||16|
13|SoundBeep|4444, 33|1|0|SoundBeep|||||18|
14|SoundBeep|4444, 33|1|0|SoundBeep|||||19|
15|[Pause]||1|300|Sleep|||||20|
16|Continue, Continue, FoundX, FoundY, 0|612, 74, 1305, 227, *5 mate\标1.png|1|0|ImageSearch||Screen|||21|
17|If Image/Pixel Not Found||1|0|If_Statement|||||23|
18|SoundBeep|188, 100|1|0|SoundBeep|||||25|
19|[Pause]||1|300|Sleep|||||26|
20|Backspace|{Backspace}|1|0|ControlSend||ahk_exe rf4_x64.exe|||27|
21|[End If]|EndIf|1|0|If_Statement|||||28|
22|[End If]|EndIf|1|0|If_Statement|||||29|
23|[End If]|EndIf|1|0|If_Statement|||||30|
24|If Image/Pixel Found||1|0|If_Statement|||||31|
25|SoundBeep|140, 100|1|0|SoundBeep|||||33|
26|Space|{Space}|1|0|ControlSend||ahk_exe rf4_x64.exe|||34|
27|[Pause]||1|300|Sleep|||||35|
28|Space|{Space}|1|0|ControlSend||ahk_exe rf4_x64.exe|||36|
29|[End If]|EndIf|1|0|If_Statement|||||37|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|scan4()
Context=None|
Groups=Start:1
1|[FunctionStart]|scan4|1|0|UserFunction|Local| / |||1|
02|beep|_null := |1|0|Function|||||3|
3|Continue, Continue, FoundX, FoundY, 0|626, 965, 759, 1005, *88 mate\T.png|1|0|ImageSearch||Screen|||3|
4|If Image/Pixel Found||1|0|If_Statement|||||5|
5|Enter|{Enter Down}|1|0|ControlSend||ahk_exe rf4_x64.exe|||7|
6|[Pause]|Random|1|666|Sleep|777||||8|
7|Enter|{Enter Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||9|
8|[End If]|EndIf|1|0|If_Statement|||||10|
9|[Pause]||1|4200|Sleep|||||11|
10|SoundBeep|7777, 33|1|0|SoundBeep|||||12|
11|SoundBeep|4444, 33|1|0|SoundBeep|||||13|
12|SoundBeep|7777, 33|1|0|SoundBeep|||||14|
13|eat|_null := |1|0|Function|||||15|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|eat()
Context=None|
Groups=Start:1
1|[FunctionStart]|eat|1|0|UserFunction|Local| / |||1|
2|Continue, Continue, FoundX, FoundY, 0|188, 931, 220, 952, *22 mate\红条.png|1|0|ImageSearch||Screen|||3|
3|If Image/Pixel Found||1|0|If_Statement|||||5|
4|[Pause]|Random|1|555|Sleep|666||||7|
5|SoundBeep|7777, 33|1|0|SoundBeep|||||8|
6|SoundBeep|4444, 33|1|0|SoundBeep|||||9|
7|[Pause]|NoRandom|1|999|Sleep|||||10|
8|[Pause]||1|300|Sleep|||||11|
9|[End If]|EndIf|1|0|If_Statement|||||12|
10|[Pause]||1|300|Sleep|||||13|
11|Continue, Continue, FoundX, FoundY, 0|189, 988, 228, 1017, *22 mate\红条.png|1|0|ImageSearch||Screen|||14|
12|If Image/Pixel Found||1|0|If_Statement|||||16|
13|[Pause]||1|100|Sleep|||||18|
14|SoundBeep|7777, 33|1|0|SoundBeep|||||19|
15|SoundBeep|4444, 33|1|0|SoundBeep|||||20|
16|SoundBeep|7777, 33|1|0|SoundBeep|||||21|
17|5|{5}|1|222|ControlSend||ahk_exe rf4_x64.exe|||22|
18|[End If]|EndIf|1|0|If_Statement|||||24|
19|[Pause]||1|500|Sleep|||||25|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|done()
Context=None|
Groups=Start:1
1|[FunctionStart]|done|1|0|UserFunction|Local|godone / |||1|
2|Continue, Continue, FoundX, FoundY, 0|1229, 959, 1245, 966, *77 C:\cygwin64\home\lee\RF4BOT\mate\准备完毕.png|1|0|ImageSearch||Screen|||4|
3|If Image/Pixel Found||1|0|If_Statement|||||6|
4|[Pause]||1|300|Sleep|||||8|
5|Continue, Continue, FoundX, FoundY, 0|1229, 959, 1245, 966, *77 C:\cygwin64\home\lee\RF4BOT\mate\准备完毕.png|1|0|ImageSearch||Screen|||9|
6|If Image/Pixel Found||1|0|If_Statement|||||11|
7|[Pause]||1|300|Sleep|||||13|
8|\|{\ Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||14|
9|RShift|{RShift Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||15|
10|Enter|{Enter Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||16|
11|[Assign Variable]|godone := 1|1|0|Variable|Expression||||17|
012|SoundPlay|C:\cygwin64\home\lee\RF4BOT\mate\1.wav|1|250|SoundPlay|||||18|
13|[End If]|EndIf|1|0|If_Statement|||||20|
14|[End If]|EndIf|1|0|If_Statement|||||21|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|allsave
Context=None|
Groups=Start:1
1|[Control]||1|0|ControlFocus||ahk_exe rf4_x64.exe|||1|
2|[LoopStart]|LoopStart|0|0|Loop|||||2|
3|eat|_null := |1|0|Function|||||4|
4|[LoopEnd]|LoopEnd|1|0|Loop|||||5|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|outloop()
Context=None|
Groups=Start:1
1|[FunctionStart]|outloop|1|0|UserFunction|Local|godone, go1 / |||1|
2|Evaluate Expression|go1=9000|1|0|If_Statement|||||4|
3|[Pause]|Random|1|333|Sleep|444||||6|
4|RShift|{RShift Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||7|
5|Enter|{Enter Up}|1|0|ControlSend||ahk_exe rf4_x64.exe|||8|
6|[Assign Variable]|godone := 1|1|0|Variable|Expression||||9|
7|[Assign Variable]|go1 := 0|1|0|Variable|Expression||||10|
8|[End If]|EndIf|1|0|If_Statement|||||11|

[PMC Code v5.4.1]|||1|Window,2,Fast,0,1,Input,-1,-1,1|1|beep()
Context=None|
Groups=Start:1
1|[FunctionStart]|beep|1|0|UserFunction|Local| / |||1|
2|SoundBeep|7777, 33|1|0|SoundBeep|||||3|
3|SoundBeep|4444, 33|1|0|SoundBeep|||||4|
4|SoundBeep|7777, 33|1|0|SoundBeep|||||5|

*/
