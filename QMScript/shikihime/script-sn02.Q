[General]
SyntaxVersion=2
BeginHotkey=98
BeginHotkeyMod=2
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=04c02239-76b4-4635-b656-64c0e5bb5284
Description=��x�Q��
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
//�a��(�i�]�w0-5�����/0�����u)
map = 3

//�Q��a
Sub set_dungeon
//	Call click_point(354, 261)	//�j��
//	Call click_point(691, 255)	//��o�p��(�s��)
//	Call click_point(564, 146)	//�q�L�s�����۹D(����)
//	Call click_point(581, 74)	//�s�������۳�(�]��)
//	Call click_point(147, 250)	//�����쪺�˪L(��)
//	Call click_point(339, 124)	//�R�����𪺯���(�פ�)
//	Call click_point(74, 105)	//�����s������(�T����)
//
//	Call click_point(518, 94)	//�ӳ�����(�]�M��)
//	Call click_point(497, 240)	//�Z�إ��쪺�a��
//	Call click_point(380, 496)	//�G�k�����q
//	Call click_point(642, 278)	//�T�t���W������
//
//	Call click_point(173, 288)	//�I�R���o��(��Z)
	Call click_point(173, 413)	//�·��j��������
//	Call click_point(353, 233)	//�ʦL���s������(������)
//	Call click_point(488, 468)	//�򤧫�
//	Call click_point(468, 108)	//�a��������(�p��)
//
//	Call click_point(148, 508)	//�h�j�����s��(����)
//	Call click_point(608, 463)	//�g�b�H������(�ƥͤ��e)
//	Call click_point(691, 153)	//���Ķ��]���ռ�(��ѧq)
//	Call click_point(608, 143)	//�s�~������
//
//	Call click_point(268, 193)	//�ۭ�����D(�Q��)
//	Call click_point(308, 128)	//�B�����骺����
//	Call click_point(408, 373)	//꺤�����
End Sub

//���u�a��(�i�]�w1-20�����)
acheron = 6

//�a������(�i�]�w1-3�����/1��/2��/3��)
diff = 1

//�C�Q��5����d(�i�]�w������/0������d)
turn = 0

//��AP�֩�10%�ɨϥΦ����(�i�]�w0-0.6�H���p��)
ap = 0.4

//�g�絧�ƶq(�i�]�w���󥿾��/0�����굧)
expPen = 0

//���ʪ��~����(�i�]�w1-11�H�����/0��������)
item = 0

/*=================================================
���V���x
�۰ʰQ��{��(ASP) v3.20

�̫��s: 11/08/2016 05:00
�����s����: Firefox 47.0
=================================================*/

//�D�{�Ǥ��e
Call back_initial
Call check_value
Do
	Rem eventStart
	
	//�ˬd�d��/���/AP
	If color_match(295, 546, "0021FF") Then
		Call check_coin
		Call check_card(turn)
		Call check_ap(ap)
		Call barter_item(item)
		//�Q��
		Call wait_click(295, 546, "0021FF")
	End If
	Delay 300
	
	//��ܦa��
	If color_match(593, 493, "424ED8") Then
		//��ܰQ��a
		If map = 0 Then
			Call click_point(593, 493)
			Call set_acheron(acheron)
		Else
			Call click_point(216 + 36 * map, 533)
			Call set_dungeon
		End If
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
	Call if_click(544, 72, "6868FC")
	
	//����Q����y
	If color_match(524, 468, "262C13") Then 
		Call check_pen(expPen)
		Call click_point(524, 468)
		If color_match(194, 107, "177CDA") Then
			//�U�@�h
			Call click_point(194, 107)
		Else 
			currentTurn = currentTurn + 1
			//�A�D��
			If turn = 0 Then 
			ElseIf currentTurn >= turn Then
				//��^�x���d
				Call wait_click(283, 256, "4EB4F5")
				Goto eventStart
			End If
			Call wait_click(469, 261, "1E96E4")
			Delay 1500
			If color_match(390, 342, "333333") Then
				If color_match(303, 255, "000000") Then
					MsgBox "Warning: �Q��a�^�Ƥw�F�W��"
					EndScript
				End If
				//�A�D�ԩһ�AP����
				Call click_point(390, 342)
				Call wait_click(283, 256, "4EB4F5")
			End If
		End If
	End If
	Delay 300
	
	//���d�ˬd
	If stopTime > 180000 Then
		Call check_stop
	Else
		stopTime = stopTime + 1500
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
	corX = 148
	corY = 148
	Delay 300
	/*
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
	*/
End Sub

//�w�q�ƹ��l�{��
Sub click_point(intX, intY)
	//����
	Call Plugin.Bkgnd.LeftClick(CHwnd, intX + offsetX + 2, intY + offsetY + 2)
	Delay 300
End Sub

Sub press_point(intX, intY, timT)
	//���ʷƹ�
	Call Plugin.Bkgnd.LeftDown(CHwnd, intX + offsetX + 2, intY + offsetY + 2)
	Delay timT
	Call Plugin.Bkgnd.LeftUp(CHwnd, intX + offsetX + 2, intY + offsetY + 2)
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
	map = int(map)
	acheron = int(acheron)
	diff = int(diff)
	turn = int(turn)
	expPen = int(expPen)
	item = int(item)
	
	//�ˬd�{�ǳ]�w
	If map < 0 Or map > 5 Then
		MsgBox "Error: �a�ϼƭȳ]�w���~"
		EndScript
	ElseIf acheron < 1 Or acheron > 20 Then
		MsgBox "Error: ���u�a�ϼƭȳ]�w���~"
		EndScript
	ElseIf diff < 1 Or diff > 3 Then
		MsgBox "Error: �a�����׼ƭȳ]�w���~"
		EndScript
	ElseIf turn < 0 Then
		MsgBox "Error: ��d�ƭȳ]�w���~"
		EndScript
	ElseIf ap < 0 Or ap > 0.6 Then
		MsgBox "Error: AP�ƭȳ]�w���~"
		EndScript
	ElseIf expPen < 0 Then
		MsgBox "Error: �g�絧�ƭȳ]�w���~"
		EndScript
	ElseIf item < 0 Or item > 11 Then
		MsgBox "Error: ���ʪ��~����ƭȳ]�w���~"
		EndScript
	End If
	Delay 300
End Sub

Sub set_acheron(intX)
	//��ܶ��u�Q��a
	Select Case intX
	Case 1
		Call wait_click(54, 125, "B66B59")
	Case 2
		Call wait_click(150, 153, "B66B59")
	Case 3
		Call wait_click(227, 150, "B66B59")
	Case 4
		Call wait_click(318, 178, "B66B59")
	Case 5
		Call wait_click(393, 198, "B66B59")
	Case 6
		Call wait_click(474, 238, "B66B59")
	Case 7
		Call wait_click(408, 255, "B66B59")
	Case 8
		Call wait_click(328, 274, "B66B59")
	Case 9
		Call wait_click(254, 268, "B66B59")
	Case 10
		Call wait_click(158, 278, "B66B59")
	Case 11
		Call wait_click(76, 301, "B66B59")
	Case 12
		Call wait_click(74, 364, "B66B59")
	Case 13
		Call wait_click(155, 377, "B66B59")
	Case 14
		Call wait_click(243, 376, "B66B59")
	Case 15
		Call wait_click(318, 388, "B66B59")
	Case 16
		Call wait_click(388, 408, "B66B59")
	Case 17
		Call wait_click(458, 398, "B66B59")
	Case 18
		Call wait_click(538, 418, "B66B59")
	Case 19
		Call wait_click(608, 428, "B66B59")
	Case 20
		Call wait_click(708, 438, "B66B59")
	End Select
End Sub

Sub check_card(intX)
	If intX = 0 Then 
	ElseIf currentTurn >= intX Then
		If intX >= 0 Then 
			MsgBox "Warning: ���w���ưQ�粒��"
			EndScript
		End If
		//���P
		Call wait_click(28, 124, "A1A6AF")
		Call wait_until(52, 99, "FFFFFF")
		If color_match(131, 524, "566F68") Then
			//��Ǫ��d
			Call click_point(131, 524)
			Call wait_click(320, 327, "071572")
			Call wait_click(389, 342, "343434")
		End If
		Call wait_click(544, 72, "6868FC")
		currentTurn = 0
		Goto eventStart
	End If
End Sub

Sub check_coin
	//��Ʀh��100�U
	If color_match(65, 45, "000000") Then
		//���f��
		Call wait_click(626, 527, "82D4F9")
		Call wait_until(126, 83, "E5E5E8")
		Call if_click(184, 128, "40491F")
		//�R�򥻺زů�
		Call press_point(728, 449, 6000)
		Call wait_click(645, 303, "566F68")
		Call wait_until(189, 153, "FFFFFF")
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

Sub barter_item(intX)
	If intX = 0 Then
	ElseIf intX > 0 Then
		//���f��
		Call wait_click(203, 527, "A0B7C7")
		Call wait_until(102, 83, "3D461E")
		Call if_click(146, 126, "181D2F")
		Call if_click(255, 126, "181D2F")
		Call if_click(376, 126, "181D2F")
		Call if_click(510, 126, "555555")
		Call if_click(643, 126, "181D2F")
		Do While color_match(684, 143 + 27 * intX, "002FA5")
			//���⬡�ʪ��~
			Call click_point(684, 143 + 27 * intX)
			Call wait_click(513, 498, "262C13")
			Call wait_until(102, 83, "3D461E")
		Loop
		Call wait_click(732, 87, "6868FC")
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