[General]
SyntaxVersion=2
BeginHotkey=97
BeginHotkeyMod=2
PauseHotkey=97
PauseHotkeyMod=2
StopHotkey=96
StopHotkeyMod=2
RunOnce=1
EnableWindow=
MacroID=ac88e6f0-2767-4061-8bed-5728fc2247cc
Description=�۰ʤ@��
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
������� �۰ʤ@���{��

����: 1.0
�@��: Rabitto
================================
*/

Call Lib.Util.program_init("laplace")
For 1
	Call action_standard
//	Call action_custom
Next

Sub action_standard
//	Call setup_time(12, 35)
	Call setup_position
	
	Call travel("dungeon")
	Call raid_dungeon("100", 5, "")
	Call raid_dungeon("952", 3, "")
	Call raid_dungeon("902", 3, "")
	Call raid_dungeon("802", 3, "")
	Call raid_dungeon("702", 3, "")
	Call raid_dungeon("602", 3, "")
	Call raid_dungeon("502", 3, "")
	Call raid_dungeon("402", 3, "")
	Call raid_dungeon("302", 3, "")
	Call raid_dungeon("202", 3, "")
	Call raid_dungeon("102", 3, "")
	
	Call travel("card")
	Call raid_card("104", 3, "")
	
	Call travel("dragon")
	Call raid_dragon("101", 2, "")
	
	Call travel("escort")
	Call raid_escort("101", 5, "")
//	Call raid_escort("102", 5, "aid")
End Sub

Sub action_custom
//	Call setup_time(12, 35)
	Call setup_position
	
	Call travel("dungeon")
	Call raid_dungeon("100", 5, "")
	Call raid_dungeon("952", 3, "")
	Call raid_dungeon("902", 3, "")
	Call raid_dungeon("802", 3, "")
	Call raid_dungeon("702", 3, "")
	Call raid_dungeon("602", 3, "")
//	Call raid_dungeon("502", 3, "")
//	Call raid_dungeon("402", 3, "")
//	Call raid_dungeon("302", 3, "")
//	Call raid_dungeon("202", 3, "")
//	Call raid_dungeon("102", 3, "")
//	
//	Call travel("card")
//	Call raid_card("104", 3, "")
//	
//	Call travel("dragon")
//	Call raid_dragon("101", 2, "")
//	
//	Call travel("escort")
//	Call raid_escort("101", 5, "")
//	Call raid_escort("102", 5, "aid")
End Sub

Sub setup_time(set_hour, set_minute)
	//���ݦܫ��w�ɶ�
	Do Until hour(time) * 100 + minute(time) >= set_hour * 100 + set_minute
		Delay 1000 * 30
	Loop
	//�M������
	Do Until Lib.Util.color_match(665, 599, "B0E0F2")
		//��a�e�U
		If Lib.Util.color_match(638, 236, "1045BD") Then 
			Call Lib.Util.click(638, 236)
		End If
		//����ƥ�
		If Lib.Util.color_match(1193, 454, "D2E9F6") Then 
			Call Lib.Util.click(1193, 454)
		End If
		//������y
		If Lib.Util.color_match(633, 578, "0297F4") Then 
			Call Lib.Util.click(633, 578)
		End If
		//����P�¨�
		If Lib.Util.color_match(933, 141, "AED0EC") Then 
			Call Lib.Util.click(933, 141)
		End If
		Delay 1000 * 0.3
	Loop
End Sub

Sub setup_position
	//�p�G���O�a��
	If Not(Lib.Util.color_match(1160, 319, "164A9A")) Then 
		//�ﶵ
		Call Lib.Util.wait_click(1246, 232, "80D1FF")
	End If
	//�a��
	Call Lib.Util.wait_click(1160, 319, "164A9A")
	//�[��
	Call Lib.Util.wait_until(305, 661, "01BE71")
	//�[������
	Call Lib.Util.wait_until(557, 603, "A5D0E7")
	//�}�Ҧa��
	Call Lib.Util.click(1200, 116)
	Call Lib.Util.wait_until(344, 109, "D7FFFF")
	//���}�a��
	Call Lib.Util.wait_click(270, 309, "EAD64F")
	//���}�ǰe��
	Call Lib.Util.click_until(636, 415, "A5C8DC")
	//�T�w
	Call Lib.Util.wait_click(749, 498, "059AF4")
	//�[��
	Call Lib.Util.wait_until(305, 661, "01BE71")
	//�[������
	Call Lib.Util.wait_until(665, 599, "B0E0F2")
End Sub

Sub travel(strId)
	//�}�Ҧa��
	Call Lib.Util.click(1200, 116)
	Call Lib.Util.wait_until(344, 109, "D7FFFF")
	//�p�G�O�Դ��Դ���
	If Lib.Util.color_match(271, 245, "2188DC") Then 
		//��ܥت��a
		Call select_raid(strId, "")
	Else 
		//�@�ɦa��
		Call Lib.Util.wait_click(344, 109, "D7FFFF")
		//�Դ��Դ���
		Call Lib.Util.wait_click(495, 221, "A1BAC4")
		//��ܥت��a
		Call select_raid(strId, "map")
	End If
	
	//�}�Ҧa��
	Call Lib.Util.click(1200, 116)
	Call Lib.Util.wait_until(344, 109, "D7FFFF")
	//��ܥت��a
	Call select_raid(strId, "")
End Sub

Sub select_raid(strId, strMap)
	Select Case strId
		//�˳Ư���
		Case "dungeon"
			Call Lib.Util.wait_click(271, 434, "1894D2")
			If strMap = "map" Then 
				//�[��
				Call Lib.Util.wait_until(305, 661, "01BE71")
				//�[������
				Call Lib.Util.wait_until(665, 599, "B0E0F2")
			End If
			Call Lib.Util.wait_static(941, 701)
		//��d����
		Case "card"
			Call Lib.Util.wait_click(271, 245, "2188DC")
			If strMap = "map" Then 
				//�[��
				Call Lib.Util.wait_until(305, 661, "01BE71")
				//�[������
				Call Lib.Util.wait_until(665, 599, "B0E0F2")
			End If
			Call Lib.Util.wait_static(29, 417)
		//�s�����_
		Case "dragon"
			Call Lib.Util.wait_click(271, 564, "A5519D")
			If strMap = "map" Then 
				//�[��
				Call Lib.Util.wait_until(305, 661, "01BE71")
				//�[������
				Call Lib.Util.wait_until(665, 599, "B0E0F2")
			End If
			Call Lib.Util.wait_static(962, 238)
		//�@�e
		Case "escort"
			Call Lib.Util.wait_click(271, 308, "D68D31")
			If strMap = "map" Then 
				//�[��
				Call Lib.Util.wait_until(305, 661, "01BE71")
				//�[������
				Call Lib.Util.wait_until(665, 599, "B0E0F2")
			End If
			Call Lib.Util.wait_static(395, 293)
	End Select
End Sub

Sub raid_dungeon(strId, intT, strAid)
	For intT
		//�����b�u
		Call Lib.Util.wait_until(213, 400, "F7FFFF")
		//�ƥ��ǰe��
		Call Lib.Util.click_until(681, 190, "9EB5D0")
		//��ܰƥ�
		Call select_dungeon(strId)
		//�c��(�������H�W)
		Call Lib.Util.click_if(825, 402, "97B9D1")
		//�c��(�������H�U)
		Call Lib.Util.click_if(981, 402, "97B9D1")
		//�D��
		Call Lib.Util.wait_click(986, 654, "0297F4")
		//�U��
		If strAid = "aid" Then 
			Call Lib.Util.wait_click(856, 230, "232B35")
		End If
		//�j��i�J
		Call Lib.Util.wait_click(867, 581, "059AF4")
		//�[��
		Call Lib.Util.wait_until(305, 661, "01BE71")
		//�۰ʾ԰�
		Call Lib.Util.wait_click(665, 599, "B0E0F2")
		//�[��
		Call Lib.Util.wait_until(305, 661, "01BE71")
		//�[������
		Call Lib.Util.wait_until(665, 599, "B0E0F2")
	Next
End Sub

Sub select_dungeon(strId)
	Select Case strId
		Case "100"
			Call Lib.Util.click(331, 633)
		Case "952"
			Call Lib.Util.click(331, 513)
		Case "902"
			Call Lib.Util.click(331, 393)
		Case "802"
			Call Lib.Util.click(331, 273)
		Case "702"
			Call Lib.Util.click(331, 153)
		Case "602"
			Call Lib.Util.click(331, 153)
			Call Lib.Util.click(331, 308)
		Case "502"
			Call Lib.Util.click(331, 153)
			Call Lib.Util.click(331, 188)
		Case "402"
			Call Lib.Util.click(331, 153)
			Call Lib.Util.click(331, 188)
			Call Lib.Util.click(331, 308)
		Case "302"
			Call Lib.Util.click(331, 153)
			Call Lib.Util.click(331, 188)
			Call Lib.Util.click(331, 188)
		Case "202"
			Call Lib.Util.click(331, 153)
			Call Lib.Util.click(331, 188)
			Call Lib.Util.click(331, 188)
			Call Lib.Util.click(331, 308)
		Case "102"
			Call Lib.Util.click(331, 153)
			Call Lib.Util.click(331, 188)
			Call Lib.Util.click(331, 188)
			Call Lib.Util.click(331, 188)
	End Select
End Sub

Sub raid_card(strId, intT, strAid)
	//�����b�u
	Call Lib.Util.wait_until(213, 400, "F7FFFF")
	//�ƥ��ǰe��
	Call Lib.Util.click_until(564, 357, "75B0E3")
	For intT
		//��ܰƥ�
		Call select_card(strId)
		//�h�H�D��
		Call Lib.Util.wait_click(692, 659, "0297F4")
		//�U��
		If strAid = "aid" Then 
			Call Lib.Util.wait_click(856, 230, "232B35")
		End If
		//�j��i�J
		Call Lib.Util.wait_click(867, 581, "059AF4")
		//�[��
		Call Lib.Util.wait_until(305, 661, "01BE71")
		//�۰ʾ԰�
		Call Lib.Util.wait_click(665, 599, "B0E0F2")
		//�[��
		Call Lib.Util.wait_until(305, 661, "01BE71")
		//�[������
		Call Lib.Util.wait_until(564, 357, "75B0E3")
	Next
	//�����ƥ��ǰe��
	Call Lib.Util.wait_click(1240, 50, "B5E1FD")
End Sub

Sub select_card(strId)
	Select Case strId
		Case "106"
			Call Lib.Util.click(450, 584)
		Case "105"
			Call Lib.Util.click(450, 463)
		Case "104"
			Call Lib.Util.click(310, 463)
		Case "103"
			Call Lib.Util.click(310, 584)
		Case "102"
			Call Lib.Util.click(170, 584)
		Case "101"
			Call Lib.Util.click(170, 463)
	End Select
End Sub

Sub raid_dragon(strId, intT, strAid)
	//�����b�u
	Call Lib.Util.wait_until(213, 400, "F7FFFF")
	For intT
		//�ƥ��ǰe��
		Call Lib.Util.click_until(670, 312, "382817")
		//�D��
		Call Lib.Util.wait_click(820, 626, "059AF4")
		//�U��
		If strAid = "aid" Then 
			Call Lib.Util.wait_click(856, 230, "232B35")
		End If
		//�j��i�J
		Call Lib.Util.wait_click(867, 581, "059AF4")
		//�[��
		Call Lib.Util.wait_until(305, 661, "01BE71")
		//�۰ʾ԰�
		Call Lib.Util.wait_click(665, 599, "B0E0F2")
		//�[��
		Call Lib.Util.wait_until(305, 661, "01BE71")
		//�[������
		Call Lib.Util.wait_until(665, 599, "B0E0F2")
	Next
End Sub

Sub raid_escort(strId, intT, strAid)
	//�ƥ��ǰe��
	Call Lib.Util.click_until(581, 269, "D6E7EF")
	//��������
	Call Lib.Util.wait_click(905, 640, "E39D6F")
	For intT
		//����
		Call Lib.Util.wait_until(437, 310, "167AF2")
		//��������
		Call Lib.Util.wait_until(665, 599, "B0E0F2")
		If strAid = "aid" Then
			//�}�Ҧa��
			Call Lib.Util.click(1200, 116)
			Call Lib.Util.wait_until(344, 109, "D7FFFF")
			//�d�ݦa��
			Select Case Lib.Util.color_at(649, 413)
				//����
				Case "BDEFF9"
					//�ƥ��ǰe��
					Call Lib.Util.click_until(577, 287, "CDDDE6")
					//��������
					Call Lib.Util.wait_click(905, 641, "E19D6E")
				//�ȳ�
				Case "D6E396"
					//�ƥ��ǰe��
					Call Lib.Util.click_until(618, 274, "D5E5EE")
					//��������
					Call Lib.Util.wait_click(905, 641, "E19D6E")
				//�ʪ�
				Case "D8CFE8"
					//�ƥ��ǰe��
					Call Lib.Util.click_until(698, 372, "C8DEDA")
					//��������
					Call Lib.Util.wait_click(905, 641, "E19D6E")
				//�鶧
				Case "7BBAFF"
					//�ƥ��ǰe��
					
					//��������
					Call Lib.Util.wait_click(905, 641, "E19D6E")
			End Select
			//�����ƥ��ǰe��
			Call Lib.Util.click_if(1240, 50, "B5DFF6")
		End If
	Next
End Sub