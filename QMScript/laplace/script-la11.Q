[General]
SyntaxVersion=2
BeginHotkey=101
BeginHotkeyMod=2
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=96
StopHotkeyMod=2
RunOnce=1
EnableWindow=
MacroID=c0ce5948-b971-44d0-aaae-74b9571f803d
Description=�۰ʨ��
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
������� �۰ʨ��{��

����: 1.0
�@��: Rabitto
================================
*/

Call Lib.Util.program_init("laplace")
Do While 1
//	Call update_order("1")
	Call update_order("2")
//	Call update_order("3")
//	Call update_order("4")
//	Call update_order("5")
//	Call update_order("6")
Loop

Sub update_order(strP)
	//�ڵ�
	Call reject(strP)
	//�T�{
	Call Lib.Util.wait_click(749, 498, "059AF4")
	//�ߧY��s
	Call refresh(strP)
	//�T�{
	Call Lib.Util.wait_click(749, 498, "059AF4")
End Sub

Sub reject(strP)
	Select Case strP
		Case "1"
			Call Lib.Util.move_to(177, 610)
		Case "2"
			Call Lib.Util.move_to(539, 610)
		Case "3"
			Call Lib.Util.move_to(900, 610)
		Case "4"
			Call Lib.Util.move_to(260, 610)
		Case "5"
			Call Lib.Util.move_to(621, 610)
		Case "6"
			Call Lib.Util.move_to(983, 610)
	End Select
End Sub

Sub refresh(strP)
	Select Case strP
		Case "1"
			Call Lib.Util.wait_click(224, 508, "E19B6E")
		Case "2"
			Call Lib.Util.wait_click(586, 508, "E19B6E")
		Case "3"
			Call Lib.Util.wait_click(947, 508, "E19B6E")
		Case "4"
			Call Lib.Util.wait_click(307, 508, "E19B6E")
		Case "5"
			Call Lib.Util.wait_click(668, 508, "E19B6E")
		Case "6"
			Call Lib.Util.wait_click(1030, 508, "E19B6E")
	End Select
End Sub