[General]
SyntaxVersion=2
BeginHotkey=100
BeginHotkeyMod=2
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=d398c50b-19f6-4b25-b17f-4a86008fc8f4
Description=�۰ʽ�d
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
/*=================================================
���V���x
�۰ʽ�d�{��

�̫��s: 04/05/2016 17:20
�����s����: Firefox 45.0
=================================================*/

//�D�{�Ǥ��e
Call initial
For selY = 211 To 417 Step 103
	For selX = 53 To 525 Step 59
		Call click_point(selX, selY)
	Next
Next
Do
	For 3
		Call click_point(551, 495)
	Next
	For selY = 285 To 491 Step 103
		For selX = 53 To 525 Step 59
			Call click_point(selX, selY)
		Next
	Next
Loop
//�D�{�ǵ���

//�{�Ǫ�l��
Sub initial
	//��o�C���������W�����y��
	corX = 154
	corY = 148
	Delay 300
End Sub

//�w�q�ƹ��l�{��
Sub click_point(intX, intY)
	//����
	MoveTo intX + corX, intY + corY
	LeftClick 1
	Delay 100
End Sub