[General]
SyntaxVersion=2
MacroID=325a9747-2f81-4e5c-b983-a03c08e17a73
[Comment]

[Script]
//�Цb�U���g�W�z���Ƶ{���Ψ��
//�g���O�s��A�b���@�R�O�w�W�I���k��ÿ�ܡ���s���Y�i

Dim ancX, ancY, ancC

//�Ұʸ}��
Sub program_init(strId)
	Select Case (strId)
		Case "laplace"
			ancC = "DB864D"
	End Select
	
	FindColor 0, 0, 3840, 1080, ancC, ancX, ancY
	If ancX > 0 And ancY > 0 Then 
//		MessageBox "�}���Ұʦ��\: " & ancX & ", " & ancY
	Else 
		MessageBox "�}���Ұʥ���: " & ancX & ", " & ancY
		EndScript
	End If
End Sub

//��������C��
Function color_at(intX, intY)
	color_at = GetPixelColor(intX + ancX, intY + ancY)
End Function

//�P�_�C��ۦP
Function color_match(intX, intY, strC)
	IfColor intX + ancX, intY + ancY, strC, 0 Then
		color_match = 1
	Else 
		color_match = 0
	End If
End Function

//�����I��
Sub click(intX, intY)
	MoveTo intX + ancX, intY + ancY
	LeftClick 1
	Delay 1000 * 0.3
End Sub

//�����������
Sub move(intX1, intY1, intX2, intY2)
	MoveTo intX1 + ancX, intY1 + ancY
	LeftDown 1
	MoveTo intX2 + ancX, intY2 + ancY
	LeftUp 1
	Delay 1000 * 0.3
End Sub

//�C��ۦP�ɥ����I��
Sub click_if(intX, intY, strC)
	If color_match(intX, intY, strC) Then 
		Call click(intX, intY)
	End If
End Sub

//�����I�����C��ۦP
Sub click_until(intX, intY, strC)
	Do Until color_match(intX, intY, strC)
		Call click(intX, intY)
	Loop
End Sub

//���ݦ��C��ۦP�ɥ����I��
Sub wait_click(intX, intY, strC)
	Call wait_until(intX, intY, strC)
	Call click(intX, intY)
End Sub

//���ݦ��C��ۦP
Sub wait_until(intX, intY, strC)
	Do Until color_match(intX, intY, strC)
		Delay 1000 * 0.3
	Loop
End Sub

//���ݦ��C���R��
Sub wait_static(intX, intY)
	Dim preC, curC
	preC = color_at(intX, intY)
	Do While 1
		Delay 1000 * 0.6
		curC = color_at(intX, intY)
		If preC = curC Then 
			Exit Do
		Else 
			preC = curC
		End If
	Loop
End Sub