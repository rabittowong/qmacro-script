[General]
SyntaxVersion=2
BeginHotkey=99
BeginHotkeyMod=2
PauseHotkey=99
PauseHotkeyMod=2
StopHotkey=96
StopHotkeyMod=2
RunOnce=1
EnableWindow=
MacroID=8ea6b405-f511-4d85-8051-ce75e2a44e1e
Description=�۰ʳ���
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
������� �۰ʳ����{��

����: 1.0
�@��: Rabitto
================================
*/

Call Lib.Util.program_init("laplace")
For 1
	Call action_fish(40)
	Call action_chop(40)
	Call action_mine(40)
Next

Sub travel(strId)
	//�}�Ҧa��
	Call Lib.Util.click(1200, 116)
	Call Lib.Util.wait_until(344, 109, "D7FFFF")
	//��ܥت��a
	Select Case strId
		Case "fish"
			//��ܳ����I
			Call Lib.Util.wait_click(640, 418, "7FA5C5")
			Call Lib.Util.wait_static(451, 185)
		Case "chop"
			//��ܬ���I
			Call Lib.Util.wait_click(699, 352, "7FA7CB")
			Call Lib.Util.wait_static(451, 185)
			Call Lib.Util.click(1200, 116)
			Call Lib.Util.wait_click(649, 243, "7FADDA")
			Call Lib.Util.wait_static(451, 185)
		Case "mine"
			//��ܫ��q�I
			Call Lib.Util.wait_click(704, 159, "7FB1E3")
			Call Lib.Util.wait_static(451, 185)
	End Select
End Sub

Sub action_fish(intT)
	Call travel("fish")
	For intT
		//����
		Call LIb.Util.wait_click(862, 500, "0296F4")
	Next
	Delay 1000 * 5
End Sub

Sub action_chop(intT)
	Call travel("chop")
	For intT
		//���
		Call LIb.Util.wait_click(862, 500, "0296F4")
	Next
	Delay 1000 * 5
End Sub

Sub action_mine(intT)
	Call travel("mine")
	For intT
		//���q
		Call LIb.Util.wait_click(862, 500, "0296F4")
	Next
	Delay 1000 * 5
End Sub