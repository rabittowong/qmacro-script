[General]
SyntaxVersion=2
BeginHotkey=104
BeginHotkeyMod=2
PauseHotkey=104
PauseHotkeyMod=2
StopHotkey=96
StopHotkeyMod=2
RunOnce=1
EnableWindow=
MacroID=46fa4e1c-f150-48bf-ad5f-68b03225c618
Description=�۰�½�P
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
������� �۰�½�P�{��

����: 1.0
�@��: Rabitto
================================
*/

Call Lib.Util.program_init("laplace")
Rem start_pos
For 1
//	Call play_perfect_easy
//	Call play_tolerance_one_easy
//	Call play_perfect_normal
	Call play_tolerance_one_normal
Next

Sub play_perfect_easy
	Call turn_card_easy("11", 390, 179, "58BB82")
	Call turn_card_easy("21", 390, 332, "56B87F")
	Call turn_card_easy("12", 544, 179, "5ABE84")
	Call is_card_opened_easy("11", 390, 179, "58BB82")
	Call turn_card_easy("22", 544, 332, "59BD83")
	Call turn_card_easy("13", 697, 179, "59BD83")
	Call is_card_opened_easy("12", 544, 179, "5ABE84")
	Call turn_card_easy("23", 697, 332, "58BB81")
	Call turn_card_easy("14", 850, 179, "58BB82")
	Call is_card_opened_easy("13", 697, 179, "59BD83")
	Call turn_card_easy("24", 850, 332, "56B87F")
	
	Call turn_card_easy("31", 390, 486, "57B980")
	Call turn_card_easy("41", 390, 639, "58BB82")
	Call turn_card_easy("32", 544, 486, "59BC82")
	Call is_card_opened_easy("31", 390, 486, "57B980")
	Call turn_card_easy("42", 544, 639, "5ABE84")
	Call turn_card_easy("33", 697, 486, "58BB82")
	Call is_card_opened_easy("32", 544, 486, "59BC82")
	Call turn_card_easy("43", 697, 639, "59BD83")
	Call turn_card_easy("34", 850, 486, "57B980")
	Call is_card_opened_easy("33", 697, 486, "58BB82")
	Call turn_card_easy("44", 850, 639, "58BB82")
End Sub

Sub play_tolerance_one_easy
	miss_count = 0
	miss_pos = 0
	
	Call turn_card_easy("11", 390, 179, "58BB82")
	Call turn_card_easy("21", 390, 332, "56B87F")
	Call turn_card_easy("12", 544, 179, "5ABE84")
	//�ˬd½�P11
	If Lib.Util.color_match(390, 179, "58BB82") Then
		miss_count = miss_count + 1
		miss_pos = 1
	End If
	Call turn_card_easy("22", 544, 332, "59BD83")
	Call turn_card_easy("13", 697, 179, "59BD83")
	//�ˬd½�P12
	If Lib.Util.color_match(544, 179, "5ABE84") Then 
		miss_count = miss_count + 1
		miss_pos = 2
	End If
	//���}�@��
	If miss_count >= 2 Then 
		Call restart_easy
	End If
	Call turn_card_easy("23", 697, 332, "58BB81")
	Call turn_card_easy("14", 850, 179, "58BB82")
	//�ˬd½�P13
	If Lib.Util.color_match(697, 179, "59BD83") Then 
		miss_count = miss_count + 1
		miss_pos = 3
	End If
	//���}�@��
	If miss_count >= 2 Then 
		Call restart_easy
	Else 
		Select Case miss_pos
			Case 1
				Call turn_card_easy("21", 390, 332, "56B87F")
				Call turn_card_easy("11", 390, 179, "58BB82")
			Case 2
				Call turn_card_easy("22", 544, 332, "59BD83")
				Call turn_card_easy("12", 544, 179, "5ABE84")
			Case 3
				Call turn_card_easy("23", 697, 332, "58BB81")
				Call turn_card_easy("13", 697, 179, "59BD83")
		End Select
	End If
	Call turn_card_easy("24", 850, 332, "56B87F")
	
	miss_count = 0
	miss_pos = 0
	
	Call turn_card_easy("31", 390, 486, "57B980")
	Call turn_card_easy("41", 390, 639, "58BB82")
	Call turn_card_easy("32", 544, 486, "59BC82")
	//�ˬd½�P31
	If Lib.Util.color_match(390, 486, "57B980") Then
		miss_count = miss_count + 1
		miss_pos = 1
	End If
	Call turn_card_easy("42", 544, 639, "5ABE84")
	Call turn_card_easy("33", 697, 486, "58BB82")
	//�ˬd½�P32
	If Lib.Util.color_match(544, 486, "59BC82") Then 
		miss_count = miss_count + 1
		miss_pos = 2
	End If
	//���}�@��
	If miss_count >= 2 Then 
		Call restart_easy
	End If
	Call turn_card_easy("43", 697, 639, "59BD83")
	Call turn_card_easy("34", 850, 486, "57B980")
	//�ˬd½�P33
	If Lib.Util.color_match(697, 486, "58BB82") Then 
		miss_count = miss_count + 1
		miss_pos = 3
	End If
	//���}�@��
	If miss_count >= 2 Then 
		Call restart_easy
	Else 
		Select Case miss_pos
			Case 1
				Call turn_card_easy("41", 390, 639, "58BB82")
				Call turn_card_easy("31", 390, 486, "57B980")
			Case 2
				Call turn_card_easy("42", 544, 639, "5ABE84")
				Call turn_card_easy("32", 544, 486, "59BC82")
			Case 3
				Call turn_card_easy("43", 697, 639, "59BD83")
				Call turn_card_easy("33", 697, 486, "58BB82")
		End Select
	End If
	Call turn_card_easy("44", 850, 639, "58BB82")
End Sub

Sub play_perfect_normal
	Call turn_card_easy("11", 333, 169, "4387D7")
	Call turn_card_easy("21", 333, 322, "4589D8")
	Call turn_card_easy("12", 486, 169, "468AD8")
	Call is_card_opened_normal("11", 333, 169, "4387D7")
	Call turn_card_easy("22", 486, 322, "468AD9")
	Call turn_card_easy("13", 640, 169, "4286D6")
	Call is_card_opened_normal("12", 486, 169, "468AD8")
	Call turn_card_easy("23", 640, 322, "4589D8")
	Call turn_card_easy("14", 793, 169, "4387D7")
	Call is_card_opened_normal("13", 640, 169, "4286D6")
	Call turn_card_easy("24", 793, 322, "4589D8")
	Call turn_card_easy("15", 946, 169, "468AD8")
	Call is_card_opened_normal("14", 793, 169, "4387D7")
	Call turn_card_easy("25", 946, 322, "468AD9")

	Call turn_card_easy("31", 333, 475, "478BD9")
	Call turn_card_easy("41", 333, 629, "4387D7")
	Call turn_card_easy("32", 486, 475, "478BD9")
	Call is_card_opened_normal("31", 333, 475, "478BD9")
	Call turn_card_easy("42", 486, 629, "468AD8")
	Call turn_card_easy("33", 640, 475, "488CDA")
	Call is_card_opened_normal("32", 486, 475, "478BD9")
	Call turn_card_easy("43", 640, 629, "4286D6")
	Call turn_card_easy("34", 793, 475, "478BD9")
	Call is_card_opened_normal("33", 640, 475, "488CDA")
	Call turn_card_easy("44", 793, 629, "4387D7")
	Call turn_card_easy("35", 946, 475, "478BD9")
	Call is_card_opened_normal("34", 793, 475, "478BD9")
	Call turn_card_easy("45", 946, 629, "468AD8")
End Sub

Sub play_tolerance_one_normal
	miss_count = 0
	miss_pos = 0
	
	Call turn_card_easy("11", 333, 169, "4387D7")
	Call turn_card_easy("21", 333, 322, "4589D8")
	Call turn_card_easy("12", 486, 169, "468AD8")
	//�ˬd½�P11
	If Lib.Util.color_match(333, 169, "4387D7") Then
		miss_count = miss_count + 1
		miss_pos = 1
	End If
	Call turn_card_easy("22", 486, 322, "468AD9")
	Call turn_card_easy("13", 640, 169, "4286D6")
	//�ˬd½�P12
	If Lib.Util.color_match(486, 169, "468AD8") Then 
		miss_count = miss_count + 1
		miss_pos = 2
	End If
	//���}�@��
	If miss_count >= 2 Then 
		Call restart_normal
	End If
	Call turn_card_easy("23", 640, 322, "4589D8")
	Call turn_card_easy("14", 793, 169, "4387D7")
	//�ˬd½�P13
	If Lib.Util.color_match(640, 169, "4286D6") Then 
		miss_count = miss_count + 1
		miss_pos = 3
	End If
	//���}�@��
	If miss_count >= 2 Then 
		Call restart_normal
	End If
	Call turn_card_easy("24", 793, 322, "4589D8")
	Call turn_card_easy("15", 946, 169, "468AD8")
	//�ˬd½�P14
	If Lib.Util.color_match(793, 169, "4387D7") Then 
		miss_count = miss_count + 1
		miss_pos = 4
	End If
	//���}�@��
	If miss_count >= 2 Then 
		Call restart_normal
	Else 
		Select Case miss_pos
			Case 1
				Call turn_card_easy("21", 333, 322, "4589D8")
				Call turn_card_easy("11", 333, 169, "4387D7")
			Case 2
				Call turn_card_easy("22", 486, 322, "468AD9")
				Call turn_card_easy("12", 486, 169, "468AD8")
			Case 3
				Call turn_card_easy("23", 640, 322, "4589D8")
				Call turn_card_easy("13", 640, 169, "4286D6")
			Case 3
				Call turn_card_easy("24", 793, 322, "4589D8")
				Call turn_card_easy("14", 793, 169, "4387D7")
		End Select
	End If
	Call turn_card_easy("25", 946, 322, "468AD9")

	miss_count = 0
	miss_pos = 0
	
	Call turn_card_easy("31", 333, 475, "478BD9")
	Call turn_card_easy("41", 333, 629, "4387D7")
	Call turn_card_easy("32", 486, 475, "478BD9")
	//�ˬd½�P31
	If Lib.Util.color_match(333, 475, "478BD9") Then
		miss_count = miss_count + 1
		miss_pos = 1
	End If
	Call turn_card_easy("42", 486, 629, "468AD8")
	Call turn_card_easy("33", 640, 475, "488CDA")
	//�ˬd½�P32
	If Lib.Util.color_match(486, 475, "478BD9") Then 
		miss_count = miss_count + 1
		miss_pos = 2
	End If
	//���}�@��
	If miss_count >= 2 Then 
		Call restart_normal
	End If
	Call turn_card_easy("43", 640, 629, "4286D6")
	Call turn_card_easy("34", 793, 475, "478BD9")
	//�ˬd½�P33
	If Lib.Util.color_match(640, 475, "488CDA") Then 
		miss_count = miss_count + 1
		miss_pos = 3
	End If
	//���}�@��
	If miss_count >= 2 Then 
		Call restart_normal
	End If
	Call turn_card_easy("44", 793, 629, "4387D7")
	Call turn_card_easy("35", 946, 475, "478BD9")
	//�ˬd½�P34
	If Lib.Util.color_match(793, 475, "478BD9") Then 
		miss_count = miss_count + 1
		miss_pos = 4
	End If
	//���}�@��
	If miss_count >= 2 Then 
		Call restart_normal
	Else 
		Select Case miss_pos
			Case 1
				Call turn_card_easy("41", 333, 629, "4387D7")
				Call turn_card_easy("31", 333, 475, "478BD9")
			Case 2
				Call turn_card_easy("42", 486, 629, "468AD8")
				Call turn_card_easy("32", 486, 475, "478BD9")
			Case 3
				Call turn_card_easy("43", 640, 629, "4286D6")
				Call turn_card_easy("33", 640, 475, "488CDA")
		End Select
	End If
	Call turn_card_easy("45", 946, 629, "468AD8")
End Sub

Sub click(intX, intY)
	//�����I��
	MoveTo intX + ancX, intY + ancY
	LeftClick 1
End Sub

Sub turn_card_easy(note, intX, intY, clrC)
	//�I������½�P
	Do While Lib.Util.color_match(intX, intY, clrC)
		Call click(intX, intY)
	Loop
End Sub

Sub is_card_opened_easy(note, intX, intY, clrC)
	//�ˬd½�P
	If Lib.Util.color_match(intX, intY, clrC) Then
		Call restart_easy
	End If
End Sub

Sub is_card_opened_normal(note, intX, intY, clrC)
	//�ˬd½�P
	If Lib.Util.color_match(intX, intY, clrC) Then
		Call restart_normal
	End If
End Sub

Sub restart_easy
	//�����C��
	Call Lib.Util.wait_click(1229, 59, "B0D0EA")
	//�T�w
	Call Lib.Util.wait_click(749, 498, "059AF4")
	//�D��
	Call Lib.Util.wait_click(322, 611, "0499F4")
	//���s�}�l
	Goto start_pos
End Sub

Sub restart_normal
	//�����C��
	Call Lib.Util.wait_click(1229, 59, "B0D0EA")
	//�T�w
	Call Lib.Util.wait_click(749, 498, "059AF4")
	//�D��
	Call Lib.Util.wait_click(642, 611, "0499F4")
	//���s�}�l
	Goto start_pos
End Sub