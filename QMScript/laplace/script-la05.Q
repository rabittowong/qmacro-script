[General]
SyntaxVersion=2
BeginHotkey=101
BeginHotkeyMod=2
PauseHotkey=101
PauseHotkeyMod=2
StopHotkey=96
StopHotkeyMod=2
RunOnce=1
EnableWindow=
MacroID=50aa046e-9dc8-4c55-80ed-b838a34d0806
Description=�۰ʩ��
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
������� �۰ʩ�͵{��

����: 1.0
�@��: Rabitto
================================
*/

Call Lib.Util.program_init("laplace")
For 1
	//�쮷
	If Lib.Util.color_match(748, 648, "01BA62") Then 
		Call pet_catch
	End If
	//�ɬP
	If Lib.Util.color_match(369, 346, "D2EAF7") Then 
		Call pet_raise
	End If
	//���
	If Lib.Util.color_match(369, 346, "D2EAF7") Then 
		Call pet_release
	End If
Next

Sub pet_catch
	Do While 1
		//����
		Call Lib.Util.wait_click(748, 648, "01BA62")
		//��m11
		If Lib.Util.color_match(572, 268, "6ADAFF") Then 
			Call Lib.Util.click(654, 261)
		End If
		//��m12
		If Lib.Util.color_match(723, 268, "6ADAFF") Then 
			Call Lib.Util.click(804, 261)
		End If
		//��m13
		If Lib.Util.color_match(873, 268, "68DAFF") Then 
			Call Lib.Util.click(954, 261)
		End If
		//��m14
		If Lib.Util.color_match(1024, 268, "6ADAFF") Then 
			Call Lib.Util.click(1105, 261)
		End If
		//��m21
		If Lib.Util.color_match(572, 409, "6FDDFF") Then 
			Call Lib.Util.click(654, 402)
		End If
		//��m22
		If Lib.Util.color_match(723, 409, "71DDFF") Then 
			Call Lib.Util.click(804, 402)
		End If
		//��m23
		If Lib.Util.color_match(873, 409, "6EDDFF") Then 
			Call Lib.Util.click(954, 402)
		End If
		//��m24
		If Lib.Util.color_match(1024, 409, "6FDDFF") Then 
			Call Lib.Util.click(1105, 402)
		End If
		//ñ�q����
		Call Lib.Util.wait_click(881, 648, "059AF4")
		//���10��
		Call Lib.Util.wait_until(821, 650, "129EF5")
		Call Lib.Util.click_if(762, 535, "8CB5D3")
		//�e�U����
		Call Lib.Util.wait_click(821, 650, "129EF5")
	Loop
End Sub

Sub pet_raise
	Do While 1
		//��ܦu�@
		Call Lib.Util.wait_click(369, 346, "D2EAF7")
		//�[��
		Call Lib.Util.wait_click(870, 661, "D3F3FD")
		//�@��ɯ�
		Call Lib.Util.wait_click(909, 448, "23D2B8")
		//����
		Call Lib.Util.wait_click(895, 659, "099BF5")
		//�ɬP
		Call Lib.Util.wait_click(895, 659, "099BF5")
		//��ܦu�@1
		Call Lib.Util.wait_click(242, 213, "587691")
		//��ܦu�@2
//		Call Lib.Util.wait_click(364, 213, "587691")
		//�ɬP
		Call Lib.Util.wait_click(927, 653, "069AF5")
		//����
		Call Lib.Util.wait_click(927, 653, "B5D7E7")
		//�F�`�F
		Call Lib.Util.wait_click(637, 468, "FEFFFF")
	Loop
End Sub

Sub pet_release
	Do While 1
		//�d���d��
		Select Case Lib.Util.color_at(227, 250)
			//�ʻ\ۣ
			Case "7E9CCC"
				Call release(1, "blue")
			//���p�W
			Case "2D5D96"
				Call release(1, "blue")
			//����F
			Case "352669"
				Call release(1, "blue")
			//�_�c��
			Case "437CB1"
				Call release(1, "blue")
			//����
			Case "9F9476"
				Call release(1, "blue")
			//��i
			Case "4499C5"
				Call release(1, "blue")
			//�D��i
			Case "20919A"
				Call release(2, "blue")
			//�ߪk�v
			Case "679EBA"
				Call release(2, "blue")
			//�T�H�Ԥh
			Case "D0B65F"
				Call release(2, "blue")
			//�����~
			Case "8D634C"
				Call release(2, "blue")
			//�j��
			Case "1E2B3C"
				Call release(2, "blue")
			//�]�k���
			Case "B9B5B2"
				Call release(2, "blue")
			//�ȳ����Z
			Case "462325"
				Call release(2, "purple")
			//�O�L�a��
			Case "26497E"
				Call release(2, "purple")
			//�ۼv��
			Case ""
				Call release(2, "purple")
			//���w��
			Case "26497E"
				Call release(2, "purple")
			//���F��
			Case "4556BE"
				Call release(2, "purple")
			//�������~
			Case "2B6DB7"
				Call release(2, "purple")
			//���
			Case "96B5CF"
				Call release(2, "purple")
			//�����]
			Case "262B8C"
				Call release(2, "purple")
			//���F�S��
			Case "367DC4"
				Call release(2, "purple")
			//�Ȧ�Q��
			Case "7A9CC5"
				Call release(2, "purple")
			//����
			Case "26497E"
				Call release(2, "purple")
			//������
			Case ""
				Call release(2, "purple")
		End Select
	Loop
End Sub

Sub release(intSta, strC)
	//�p�G�O�T�P�H�W
	If Lib.Util.color_match(192, 252, "6DDDFF") Then 
		//����
		EndScript
	Else
		//���
		Call Lib.Util.wait_click(407, 195, "CFE7FF")
		//�T�{
		Call Lib.Util.wait_click(749, 499, "069AF5")
	End If
End Sub