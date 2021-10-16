[General]
SyntaxVersion=2
BeginHotkey=99
BeginHotkeyMod=2
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=1ae0a1c1-54ae-4c8c-96ce-f8b475f00514
Description=��x�굧
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
diff = 2

//��AP�֩�10%�ɨϥΦ����
ap = 0.3

//�g�絧�ƶq
expPen = 450

/*=================================================
���V���x
��x�굧�{��

�̫��s: 04/05/2016 17:20
�����s����: Firefox 45.0
=================================================*/

//�D�{�Ǥ��e
Call back_initial
Call check_value
Do
	Rem eventStart
	
	//�ˬd�d��/���/AP
	If color_match(295, 546, "0021FF") Then
		Call check_coin
		Call check_ap(ap)
		//�Q��
		Call wait_click(295, 546, "0021FF")
	End If
	Delay 300
	
	//��ܦa��
	If color_match(593, 493, "424ED8") Then
		Delay 300
		//��ܰQ��a
		Call click_point(252, 533)
		Call click_point(78, 500)
		//�������
		Call click_point(650, 87 + 89 * diff)
		//�ˬdHP
		Call check_hp
		//�e���Q��
		Call wait_click(509, 363, "3699F9")
	End If
	Delay 300
	
	//�԰�/��^/�n�J���y
	Call click_point(334, 296)
	
	//����Q����y
	If color_match(524, 468, "262C13") Then
		Call check_pen(int(expPen))
		Call click_point(524, 468)
		Delay 300
		If color_match(194, 107, "177CDA") Then
			//�U�@�h
			Call click_point(194, 107)
		Else 
			//�A�D��
			Call wait_click(469, 261, "1E96E4")
			Delay 1500
			If color_match(390, 342, "333333") Then
				//�A�D�ԩһ�AP����
				Call click_point(390, 342)
				Call wait_click(283, 256, "4EB4F5")
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
	expPen = int(expPen)

	//�ˬd�{�ǳ]�w
	If ap < 0 Or ap > 0.6 Then
		MsgBox "Error: AP�ƭȳ]�w���~"
		EndScript
	ElseIf expPen < 0 Then
		MsgBox "Error: �g�絧�ƭȳ]�w���~"
		EndScript
	End If
	Delay 300
End Sub

Sub check_coin
	//��Ʀh��100�U
	If color_match(65, 45, "000000") Then
		//���f��
		Call wait_click(626, 527, "82D4F9")
		Call wait_until(126, 83, "E5E5E8")
		Call if_click(184, 128, "40491F")
		If color_match(645, 358, "566F68") Then
			//�R�򥻺زů�
			Call click_point(645, 358)
			Call wait_until(189, 153, "FFFFFF")
		Else 
			For 20
				Call wait_click(728, 449, "FFFFFF")
				If color_match(645, 391, "566F68") Then
					Call click_point(645, 391)
					Call wait_until(189, 153, "FFFFFF")
					Exit For
				End If
			Next
			If color_match(126, 83, "E5E5E8") Then
				Call if_click(732, 87, "6868FC")
				Goto eventStart
			End If
		End If
		If color_match(333, 339, "E9F4F8") Then
			Call click_point(302, 343)
			Call wait_click(376, 404, "002CA4")
			Call wait_click(320, 327, "071572")
			Call wait_click(389, 342, "343434")
		Else
			MsgBox "Warning: �򥻺زůȤw��"
			EndScript
		End If
		Call wait_click(732, 87, "6868FC")
		Goto eventStart
	End If
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
		//���~
		Call wait_click(661, 518, "656EF9")
		Call wait_click(31, 178, "B4B8BF")
		Call wait_until(37, 84, "FFFFFF")
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

Sub check_pen(intX)
	//�g�絧�ƥ�P�w
	If intX = 0 Then 
	Else
		If currentPen < intX Then 
			For i = 354 To 636 Step 94
				For j = 255 To 437 Step 182
					If color_match(i, j, "AADDF1") Then
						currentPen = currentPen + 1
					End If
				Next
			Next
		Else 
			MsgBox "EndScript: �g�絧�w�F����w�ƥ�"
			EndScript
		End If
	End If
End Sub