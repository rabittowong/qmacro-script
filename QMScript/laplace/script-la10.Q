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
MacroID=46fa4e1c-f150-48bf-ad5f-68b03225c618
Description=�۰ʹ�M
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
������� �۰ʹ�M�{��

����: 1.0
�@��: Rabitto
================================
*/

Call Lib.Util.program_init("laplace")
Do While 1
	//�}�l�ǰt
	Call Lib.Util.click_if(993, 659, "E8B392")
	//�۰�
	Call Lib.Util.click_if(665, 599, "B0E0F2")
	//�_��
	Call Lib.Util.click_if(669, 482, "E39D6F")
Loop