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
MacroID=d7e82c87-b51c-47b6-a14e-af17a34e0818
Description=��x���
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
//�a������(�i�]�w1-3�����/1��/2��/3��)
diff = 1

//��AP�֩�10%�ɨϥΦ����(�i�]�w0-0.6�H���p��)
ap = 0.2

/*=================================================
���V���x
��x��ѵ{��

�̫��s: 20/07/2016 12:20
�����s����: Firefox 45.0
=================================================*/

//�D�{�Ǥ��e
Call back_initial
Call check_value
Do
	Rem eventStart
	
	//�ˬd�d��/���/AP
	If color_match(295, 546, "0021FF") Then
		Call check_ap(ap)
		//�Q��
		Call wait_click(295, 546, "0021FF")
	End If
	Delay 300
	
	//��ܦa��
	If color_match(593, 493, "424ED8") Then
		//��ܰQ��a
		Call click_point(360, 533)
		Call click_point(373, 108)
		//�������
		Call click_point(650, 87 + 89 * diff)
		//�ˬdHP
		Call check_hp
		//�e���Q��
		Call wait_click(509, 363, "3699F9")
		Delay 1500
		Call if_click(320, 327, "071572")
	End If
	Delay 300
	
	//�԰�/��^/�n�J���y
	Call click_point(334, 296)
	
	//����Q����y
	If color_match(524, 468, "262C13") Then 
		Call click_point(524, 468)
		currentFloor = currentFloor + 1
		If color_match(194, 107, "177CDA") Then 
			If currentFloor >= 4 Then
				//��^
				Call click_point(544, 87)
				currentFloor = 0
			Else
				//�U�@�h
				Call click_point(194, 107)
			End If
		End If
	End If
	Delay 300
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

//�w�q�ƥ�l�{��
Sub check_value
	//�{�ǳ]�w��Ƥ�
	diff = int(diff)
	card = int(card)
	
	//�ˬd�{�ǳ]�w
	If diff < 1 Or diff > 3 Then
		MsgBox "Error: �a�����׼ƭȳ]�w���~"
		EndScript
	ElseIf ap < 0 Or ap > 0.6 Then
		MsgBox "Error: AP�ƭȳ]�w���~"
		EndScript
	ElseIf card < 0 Then
		MsgBox "Error: �g�絧�ƭȳ]�w���~"
		EndScript
	End If
	Delay 300
End Sub

Sub check_ap(intX)
	apBar = int(231 + 110 * intX)
	If color_match(apBar, 18, "162622") Then
		//���~
		Call wait_click(31, 178, "B4B8BF")
		Call wait_until(37, 84, "FFFFFF")
		Call if_click(114, 118, "465022")
		If color_match(34, 188, "000000") Then
			//�ϥΦ����
			Call click_point(34, 188)
			Call wait_click(148, 460, "07056B")
			Call wait_click(320, 327, "071572")
			Call wait_click(389, 342, "343434")
		Else
			MsgBox "Warning: ����ļƶq����"
			EndScript
		End If
		Call wait_click(655, 85, "6868FC")
		Goto eventStart
	End If
End Sub

Sub check_hp
	If color_match(72, 492, "2000C0") Then
		//��^�x��
		Call wait_click(661, 518, "656EF9")
		//���~
		Call wait_click(31, 178, "B4B8BF")
		Call wait_until(37, 84, "FFFFFF")
		Call if_click(114, 118, "465022")
		If color_match(34, 157, "FFFFFF") Then
			//�ϥί��s�~
			Call click_point(34, 157)
			Call wait_click(148, 460, "07056B")
			Call wait_click(320, 327, "071572")
			Call wait_click(389, 342, "343434")
		Else
			MsgBox "Warning: ���s�~�ƶq����"
			EndScript
		End If
		Call wait_click(655, 85, "6868FC")
		Goto eventStart
	End If
End Sub

Sub check_stop
	//�O����
	If color_match(320, 327, "071572") Then
		Call click_point(320, 327)
		Call wait_click(389, 342, "343434")
	End If
	//��������
	Call if_click(389, 342, "343434")
	//���P
	Call if_click(544, 72, "6868FC")
	//���~
	Call if_click(655, 85, "6868FC")
	//���f��
	Call if_click(732, 87, "6868FC")
	//�U�@�h
	Call if_click(194, 107, "177CDA")
	//��^
	Call if_click(283, 256, "4EB4F5")
	//���}�a��
	Call if_click(661, 518, "656EF9")
	stopTime = 0
	Goto eventStart
End Sub