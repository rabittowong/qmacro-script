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
MacroID=371404e1-68a9-44b9-aebb-d47b7ec15f4e
Description=��x����(�¨�)
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
//�{�ǳ]�w
//��ܫ~��
ShikiType = 4

//�}�l��m
Offset = 59 * 1

/*=================================================
���V���x
��x����(�¨�)�{��

�̫��s: 14/05/2016 17:20
�����s����: Firefox 45.0
=================================================*/

//�D�{�Ǥ��e
Call back_initial
Call wait_click(28, 124, "A1A6AF")
For 5
	Call wait_click(542, 102, "009DE6")
Next
Do
	Call wait_until(52, 99, "FFFFFF")
	Select Case ShikiType
		Case 1
			Call wait_click(49 + Offset, 154, "C3E5FF")	
		Case 2
			Call wait_click(44 + Offset, 167, "C3DEFF")
		Case 3
			Call wait_click(49 + Offset, 154, "CFE8FF")
		Case 4
			Call wait_click(49 + Offset, 154, "C4DFFF")
		Case 5
			Call wait_click(167 + Offset, 154, "7B7F85")
		Case 6
			Call wait_click(49 + Offset, 154, "5B528E")
	End Select
	Call wait_click(511, 519, "603207")
	Call wait_click(463, 441, "171E8C")
	Call wait_click(278, 309, "823B09")
	Select Case ShikiType
		Case 1
			Call wait_click(73, 417, "C3E5FF")	
		Case 2
			Call wait_click(68, 430, "C3DEFF")
		Case 3
			Call wait_click(73, 417, "CFE8FF")
		Case 4
			Call wait_click(73, 417, "C4DFFF")
		Case 5
			Call wait_click(73, 417, "C3DEFF")
		Case 6
			Call wait_click(73, 417, "5B528E")
	End Select
	Call wait_click(682, 306, "181F8F")
	Call wait_click(318, 327, "07146A")
	Call wait_click(394, 436, "262C13")
Loop
//�D�{�ǵ���

//�{�Ǫ�l��
Sub back_initial
	PHwnd = Plugin.Window.Find("MozillaWindowClass", "S04 - �p�ˡm���V���x�n�n���M�� - Mozilla Firefox")
	CHwnd = Plugin.Window.FindEx(PHwnd, 0, "MozillaWindowClass", 0)
	CHwnd = Plugin.Window.FindEx(CHwnd, 0, "GeckoPluginWindow", 0)
	CHwnd = Plugin.Window.FindEx(CHwnd, 0, "GeckoFPSandboxChildWindow", 0)
	If PHwnd = 0 Or CHwnd = 0 Then 
		MsgBox "Error: �L�k��o�C�������y�`"
		EndScript
	End If
	Delay 300
	
	//��o�C���������W�����y��
	snWide = Plugin.Sys.GetScRX()
	snHeight = Plugin.Sys.GetScRY()
	FindColor 0, 0, snWide, snHeight, "3E7258", corX, corY
	Rect = Plugin.Window.GetClientRect(PHwnd)
	offsetArray = Split(Rect, "|")
	offsetX = clng(offsetArray(0))
	offsetY = clng(offsetArray(1))
	corX = corX - offsetX
	corY = corY - offsetY
	If corX < 0 And corY < 0 Then
		MsgBox "Error: �L�k��o�C���������W�����y��"
		EndScript
	End If
	Delay 300
End Sub

//�w�q�ƹ��l�{��
Sub click_point(intX, intY)
	//����
	Call Plugin.Bkgnd.LeftClick(CHwnd, intX + offsetX + 2, intY + offsetY + 2)
	Delay 300
End Sub

Sub if_click(intX, intY, clrC)
	//�C�ⵥ��clrC�ɥ���
	If color_match(intX, intY, clrC) Then
		Call click_point(intX, intY)
	End If
	Delay 300
End Sub

Sub wait_until(intX, intY, clrC)
	//���ݦ��C�ⵥ��clrC
	Do
		If color_match(intX, intY, clrC) Then
			Exit Do
		End If
		Delay 300
	Loop
	Delay 300
End Sub

Sub wait_click(intX, intY, clrC)
	//���ݦ��C�ⵥ��clrC�ɥ���
	Do
		If color_match(intX, intY, clrC) Then
			Call click_point(intX, intY)
			Exit Do
		End If
		Delay 300
	Loop
	Delay 300
End Sub

Function color_match(intX, intY, clrC)
	bkgC = hex(Plugin.BkgndColor.GetPixelColor(PHwnd, intX + corX, intY + corY))
	bkgC = string(6 - len(bkgC), "0") & bkgC
	If clrC = bkgC Then
		color_match = 1
	Else
		color_match = 0
	End If
End Function