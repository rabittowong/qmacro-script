[General]
SyntaxVersion=2
BeginHotkey=102
BeginHotkeyMod=2
PauseHotkey=102
PauseHotkeyMod=2
StopHotkey=96
StopHotkeyMod=2
RunOnce=1
EnableWindow=
MacroID=09a5d4f8-1cdb-428e-bb96-440eec8456f2
Description=�۰ʤɬP
Enable=1
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
������� �۰ʤɬP�{��

����: 1.0
�@��: Rabitto
================================
*/

Call Lib.Util.program_init("laplace")
Do While 1
	//�ԯ�
	LeftClick 1
	//�ɬP
	Call Lib.Util.wait_until(1029, 160, "0297F4")
	//�O�s�ƹ�����
	GetCursorPos intX, intY
	//�}�ҤɬP
	Call Lib.Util.click(1029, 160)
	//���L�ʵe
	Call Lib.Util.click_if(319, 551, "97BDD7")
	//�ɬP
	For 5
		Call Lib.Util.wait_click(364, 649, "E19D6E")
	Next
	//�����ɬP
	Call Lib.Util.wait_click(1234, 51, "A8CEF1")
	//�^�_�ƹ�����
	MoveTo intX, intY
Loop