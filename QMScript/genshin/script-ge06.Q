[General]
SyntaxVersion=2
BeginHotkey=32
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=cee33f11-1267-467e-a99f-e7b1d7efe823
Description=�۰ʽT�w
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
�쯫 �۰���w�{��

����: 1.0
�@��: Rabitto
================================
*/

Call Lib.Util.program_init("genshin")
For 1
	//�O�s�ƹ�����
	GetCursorPos intX, intY
	//��w
	Call Lib.Util.click(1534, 498)
	//�^�_�ƹ�����
	MoveTo intX, intY
Next