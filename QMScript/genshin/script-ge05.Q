[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=9fd45712-d7f9-4015-9ad9-9aec4f954678
Description=�۰ʬB��
Enable=0
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
/*
================================
�쯫 �۰ʬB���{��

����: 1.0
�@��: Rabitto
================================
*/

Call Lib.Util.program_init("genshin")
Do While 1
	//�B��1
	If Lib.Util.color_match(934, 469, "DCDCDC") Then 
		KeyPress "F", 1
	End If
	//�B��2
	If Lib.Util.color_match(934, 439, "DCDCDC") Then 
		KeyPress "F", 1
	End If
	//�B��3
	If Lib.Util.color_match(934, 409, "DCDCDC") Then 
		KeyPress "F", 1
	End If
Loop