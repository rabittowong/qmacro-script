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
Description=�۰ʱj��
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
�쯫 �۰ʱj�Ƶ{��

����: 1.0
�@��: Rabitto
================================
*/

Call Lib.Util.program_init("genshin")
Do While 1
	//���ݱj�Ƨ���
	Call Lib.Util.wait_until(1002, 158, "FFA4E9")
	//�ֱ���J
	Call Lib.Util.click(1461, 660)
	//�j��
	Call Lib.Util.click(1440, 872)
	//�Ա�
	Call Lib.Util.click(102, 146)
	//�j��
	Call Lib.Util.click(102, 206)
Loop