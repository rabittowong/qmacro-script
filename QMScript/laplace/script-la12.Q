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
MacroID=c0ce5948-b971-44d0-aaae-74b9571f803d
Description=�۰ʩ@��
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
������� �۰ʩ@�ص{��

����: 1.0
�@��: Rabitto
================================
*/

Call Lib.Util.program_init("laplace")
Do While 1
	//���ݫ���
	keyS = WaitKey
	//�Ů���
	Select Case keyS
		Case 32
			//����1
			Call instant_click(418, 455)
			Call instant_click(418, 455)
			//����2
			Call instant_click(396, 532)
			//����3
			Call instant_click(557, 451)
			//����4
			Call instant_click(553, 534)
			//�@��1
			Call instant_click(232, 518)
			//�@��2
			Call instant_click(260, 459)
			//�@��3
			Call instant_click(285, 398)
			//�׮ۨ�1
			Call instant_click(1000, 394)
			//�׮ۨ�2
			Call instant_click(1083, 410)
			//�׮ۨ�3
			Call instant_click(1030, 440)
			//�N�l1
			Call instant_click(727, 456)
			//�N�l2
			Call instant_click(744, 515)
			//�N�l3
			Call instant_click(835, 455)
			//�N�l4
			Call instant_click(858, 515)
			//�ѽk1
			Call instant_click(824, 629)
			//�ѽk2
			Call instant_click(824, 629)
			//�ѽk3
			Call instant_click(824, 629)
			//�ѽk4
			Call instant_click(824, 629)
		Case 97
			//�����
			Call instant_click(311, 630)
		Case 98
			//�����
			Call instant_click(311, 630)
			Call instant_click(311, 630)
			//���G
			Call instant_click(422, 624)
		Case 100
			//�Ų���
			Call instant_click(532, 624)
		Case 101
			//�Ų���
			Call instant_click(532, 624)
			Call instant_click(532, 624)
			//�Ų�
			Call instant_click(644, 625)
	End Select
Loop

//�����I��(�L���ݮɶ�)
Sub instant_click(intX, intY)
	MoveTo intX + ancX, intY + ancY
	LeftClick 1
End Sub
