[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=96
StopHotkeyMod=2
RunOnce=1
EnableWindow=
MacroID=83daa63a-f5b0-4062-915f-30f4ebd85497
Description=�۰ʳJ�|
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
������� �۰ʳJ�|�{��

����: 1.0
�@��: Rabitto
================================
*/

Call Lib.Util.program_init("laplace")
Do While 1
	//��6��
	For i = 581 To 1001 Step 84
		//��6��
		For j = 201 To 621 Step 84
			//��m����H
			MoveTo i + ancX, j + ancY
			LeftClick 1
		Next
	Next
Loop