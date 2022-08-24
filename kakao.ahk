Gui, 1:Add, Button, x12 y9 w370 h20 gStart_click, 시작
Gui, 1:Add, GroupBox, x12 y39 w370 h120 , 메시지 내용
Gui, 1:Add, Edit, x22 y59 w350 h90 vMsg, 메시지 내용 입력`n프로그램 실행 후 다른 작업 하셔도 됩니다. (비활성 작동)
Gui, 1:Add, GroupBox, x12 y169 w370 h450 , 채팅방 세팅
Gui, 1:Add, Text, x22 y189 w340 h30 , 아래 메시지를 보낼 채팅방 이름을 입력합니다`n체크 박스가 체크된 채팅방에 순서대로 메시지를 보냅니다
Gui, 1:Add, Edit, x42 y219 w300 h20 vFirst, 첫번쨰 채팅방 이름
Gui, 1:Add, CheckBox, x352 y219 w20 h20 vFcb,
Gui, 1:Add, Text, x22 y219 w10 h10 , 1.
Gui, 1:Add, Text, x22 y249 w20 h10 , 2.
Gui, 1:Add, Edit, x42 y249 w300 h20 vSecond , 두번째 채팅방 이름
Gui, 1:Add, CheckBox, x352 y249 w20 h20 vScb,
Gui, 1:Add, Edit, x42 y279 w300 h20 vThird, 새번째 채팅방 이름
Gui, 1:Add, CheckBox, x352 y279 w20 h20 vTcb,
Gui, 1:Add, Text, x22 y279 w20 h20 , 3.
Gui, 1:Add, Text, x22 y309 w20 h10 , 4.
Gui, 1:Add, Edit, x42 y309 w300 h20 vFourth, 네번쨰 채팅방 이름
Gui, 1:Add, CheckBox, x352 y309 w20 h20 vFourthcb,
Gui, 1:Add, Text, x22 y339 w20 h10 , 5.
Gui, 1:Add, Edit, x42 y339 w300 h20 vFifth, 다섯번째 채팅방 이름
Gui, 1:Add, CheckBox, x352 y339 w20 h20 vFifthcb,
Gui, 1:Add, Text, x22 y369 w20 h20 , 6.
Gui, 1:Add, Edit, x42 y369 w300 h20 vSixth, 여섯번째 체팅방 이름
Gui, 1:Add, CheckBox, x352 y369 w20 h20 vSixthcb,
Gui, 1:Add, Text, x22 y399 w20 h20 , 7.
Gui, 1:Add, Edit, x42 y399 w300 h20 vSeventh, 일곱번째 채팅방 이름
Gui, 1:Add, CheckBox, x352 y399 w20 h20 vSeventhcb,
Gui, 1:Add, Text, x22 y429 w20 h20 , 8.
Gui, 1:Add, Edit, x42 y429 w300 h20 vEighth, 여덟번째 채팅방 이름
Gui, 1:Add, CheckBox, x352 y429 w20 h20 vEcb,
Gui, 1:Add, Text, x22 y459 w20 h10 , 9.
Gui, 1:Add, Edit, x42 y459 w300 h20 vNineth, 아홉번째 채팅방 이름
Gui, 1:Add, CheckBox, x352 y459 w20 h20 vNcb,
Gui, 1:Add, Text, x22 y489 w20 h20 , 10.
Gui, 1:Add, Edit, x42 y489 w300 h20 vTenth, 열번째 채팅방 이름
Gui, 1:Add, CheckBox, x352 y489 w20 h20 vTenthcb,


Gui, 1:Add, GroupBox, x22 y529 w350 h80 , 세부 설정
Gui, 1:Add, Text, x32 y549 w122 h20 , 딜레이 :
Gui, 1:Add, Edit, x82 y549 w110 h20 vDelay, 2000
Gui, 1:Add, Text, x202 y549 w160 h30 , ※밀리초 단위로 입력하세요 (기본값이 적당합니다)
; Generated using SmartGUI Creator for SciTE

Gui, 1:Add, Text, x32 y575 w125 h20 , 모든 채팅방에 보내기 :
Gui, 1:Add, Checkbox, x160 y572 w20 h20 vAllchat,
Gui, 1:Add, Text, x202 y575 w160 h30 , ※채팅방 세팅과 상관없이 모든 채팅방에 메시지 전송
Gui, 1:Add, Text, x32 y592 w72 h20 , 채팅방 갯수 :
Gui, 1:Add, Edit, x110 y592 w70 h15 vChatroom,
Gui, 1:Show, w398 h634, 봄수정


OnMessage(0x201, "WM_LBUTTONDOWN")
return
WM_LBUTTONDOWN(wParam, lParam)
{

  if (A_GuiControl = "first" || A_GuiControl = "Second" || A_GuiControl = "Third" || A_GuiControl = "Fourth" || A_GuiControl = "Fifth" || A_GuiControl = "Sixth" || A_GuiControl = "Seventh" || A_GuiControl = "Eighth" || A_GuiControl = "Nineth" || A_GuiControl = "Tenth")

	GuiControl,,% A_GuiControl,

}


Start_click:
Gui, Submit, NoHide



if (Allchat = 0 and Fcb = 0 and Scb = 0 and Tcb = 0 and Fourthcb = 0 and Fifthcb = 0 and Sixthcb = 0 and Seventhcb = 0 and Ecb = 0 and Ncb = 0 and Tenthcb = 0)
{
	msgbox,0x20, BSJ Sender, 체크된 체크박스가 없습니다
}

else if (Allchat = 1 and Fcb = 1 or Allchat = 1 and Scb = 1)
{
	MsgBox, 0x0, BSJ Sender, 오류!
	IfMsgBox, Ok
		MsgBox, 0x30, BSJ Sender, [채팅방 세팅 / 모든 채팅방] 체크박스를 동시에 체크할 수 없습니다
}

else if (Msg = "")
{
	MsgBox, 0x30, BSJ Sender, 메시지 내용을 입력하세요
}

else if (Delay = "")
{
	MsgBox, 0x30, BSJ Sender, 딜레이를 설정하세요
}




else if (Fcb = 1)
{
	ControlClick, x278 y51, 카카오톡
	ControlSend, Edit2, %First%, 카카오톡
	Sleep, 400
	ControlSend, Edit2, {Enter}, 카카오톡
	Sleep, 400
	WinGetTitle,Title,A
	Sleep, 400
	ControlSend, ,%Msg%, %Title%
	Sleep, 400
	ControlSend, ,{Enter}, %Title%
	ControlSend, , {Esc}, %Title%
	if (Scb = 1)
{
	Sleep, %Delay%
	ControlClick, x350 y99, 카카오톡
	Sleep, 400
	ControlClick, x278 y51, 카카오톡
	ControlSend, Edit2, %Second%, 카카오톡
	Sleep, 400
	ControlSend, Edit2, {Enter}, 카카오톡
	Sleep, 400
	WinGetTitle,Title,A
	Sleep, 400
	ControlSend, ,%Msg%, %Title%
	Sleep, 400
	ControlSend, ,{Enter}, %Title%
	ControlSend, , {Esc}, %Title%
	if (Tcb = 1)
{
	Sleep, %Delay%
	ControlClick, x350 y99, 카카오톡
	Sleep, 400
	ControlClick, x278 y51, 카카오톡
	ControlSend, Edit2, %Third%, 카카오톡
	Sleep, 400
	ControlSend, Edit2, {Enter}, 카카오톡
	Sleep, 400
	WinGetTitle,Title,A
	Sleep, 400
	ControlSend, ,%Msg%, %Title%
	Sleep, 400
	ControlSend, ,{Enter}, %Title%
	ControlSend, , {Esc}, %Title%
	if (Fourthcb = 1)
{
	Sleep, %Delay%
	ControlClick, x350 y99, 카카오톡
	Sleep, 400
	ControlClick, x278 y51, 카카오톡
	ControlSend, Edit2, %Fourth%, 카카오톡
	Sleep, 400
	ControlSend, Edit2, {Enter}, 카카오톡
	Sleep, 400
	WinGetTitle,Title,A
	Sleep, 400
	ControlSend, ,%Msg%, %Title%
	Sleep, 400
	ControlSend, ,{Enter}, %Title%
	ControlSend, , {Esc}, %Title%
	if (Fifthcb = 1)
{
	Sleep, %Delay%
	ControlClick, x350 y99, 카카오톡
	Sleep, 400
	ControlClick, x278 y51, 카카오톡
	ControlSend, Edit2, %Fifth%, 카카오톡
	Sleep, 400
	ControlSend, Edit2, {Enter}, 카카오톡
	Sleep, 400
	WinGetTitle,Title,A
	Sleep, 400
	ControlSend, ,%Msg%, %Title%
	Sleep, 400
	ControlSend, ,{Enter}, %Title%
	ControlSend, , {Esc}, %Title%
	if (Sixthcb = 1)
{
	Sleep, %Delay%
	ControlClick, x350 y99, 카카오톡
	Sleep, 400
	ControlClick, x278 y51, 카카오톡
	ControlSend, Edit2, %Sixth%, 카카오톡
	Sleep, 400
	ControlSend, Edit2, {Enter}, 카카오톡
	Sleep, 400
	WinGetTitle,Title,A
	Sleep, 400
	ControlSend, ,%Msg%, %Title%
	Sleep, 400
	ControlSend, ,{Enter}, %Title%
	ControlSend, , {Esc}, %Title%
	if (Seventhcb = 1)
{
	Sleep, %Delay%
	ControlClick, x350 y99, 카카오톡
	Sleep, 400
	ControlClick, x278 y51, 카카오톡
	ControlSend, Edit2, %Seventh%, 카카오톡
	Sleep, 400
	ControlSend, Edit2, {Enter}, 카카오톡
	Sleep, 400
	WinGetTitle,Title,A
	Sleep, 400
	ControlSend, ,%Msg%, %Title%
	Sleep, 400
	ControlSend, ,{Enter}, %Title%
	ControlSend, , {Esc}, %Title%
	if (Ecb = 1)
{
	Sleep, %Delay%
	ControlClick, x350 y99, 카카오톡
	Sleep, 400
	ControlClick, x278 y51, 카카오톡
	ControlSend, Edit2, %Eighth%, 카카오톡
	Sleep, 400
	ControlSend, Edit2, {Enter}, 카카오톡
	Sleep, 400
	WinGetTitle,Title,A
	Sleep, 400
	ControlSend, ,%Msg%, %Title%
	Sleep, 400
	ControlSend, ,{Enter}, %Title%
	ControlSend, , {Esc}, %Title%
	if (Ncb = 1)
{
	Sleep, %Delay%
	ControlClick, x350 y99, 카카오톡
	Sleep, 400
	ControlClick, x278 y51, 카카오톡
	ControlSend, Edit2, %Nineth%, 카카오톡
	Sleep, 400
	ControlSend, Edit2, {Enter}, 카카오톡
	Sleep, 400
	WinGetTitle,Title,A
	Sleep, 400
	ControlSend, ,%Msg%, %Title%
	Sleep, 400
	ControlSend, ,{Enter}, %Title%
	ControlSend, , {Esc}, %Title%
	if (Tenthcb = 1)
{
	Sleep, %Delay%
	ControlClick, x350 y99, 카카오톡
	Sleep, 400
	ControlClick, x278 y51, 카카오톡
	ControlSend, Edit2, %Tenth%, 카카오톡
	Sleep, 400
	ControlSend, Edit2, {Enter}, 카카오톡
	Sleep, 400
	WinGetTitle,Title,A
	Sleep, 400
	ControlSend, ,%Msg%, %Title%
	Sleep, 400
	ControlSend, ,{Enter}, %Title%
	ControlSend, , {Esc}, %Title%
}
else if (Tenthcb = 0)
{
	MsgBox, 0x40 ,BSJ Sender, 완료!
}
}
else if (Ncb = 0)
{
	MsgBox, 0x40 ,BSJ Sender, 완료!
}
}
else if (Ecb = 0)
{
	MsgBox, 0x40 ,BSJ Sender, 완료!
}
}
else if (Seventhcb = 0)
{
	MsgBox, 0x40 ,BSJ Sender, 완료!
}
}
else if (Sixthcb = 0)
{
	MsgBox, 0x40 ,BSJ Sender, 완료!
}
}
else if (Fifthcb = 0)
{
	MsgBox, 0x40 ,BSJ Sender, 완료!
}
}
else if (Fourthcb = 0)
{
	MsgBox, 0x40 ,BSJ Sender, 완료!
}
}
else if (Tcb = 0)
{
	MsgBox, 0x40 ,BSJ Sender, 완료!
}
}
else if (Scb = 0)
{
	MsgBox, 0x40 ,BSJ Sender, 완료!
}
}
else if (Fcb = 0)
{
	if (Allchat = 1)
{
	ControlClick, x154 y109 ,카카오톡
	ford := 2
	Loop, %Chatroom%
	{
	Sleep, 500
	ControlSend, EVA_VH_ListControl_Dblclk3, {Enter}, 카카오톡
	Sleep, 500
	WinGetTitle,Title,A
	Sleep, 1000
	ControlSend, , %Msg%, %Title%
	Sleep, 500
	ControlSend, , {Enter}, %Title%
	ControlSend, , {Esc}, %Title%
	Sleep, 500
	Loop, %ford%
	{
		ControlSend, EVA_VH_ListControl_Dblclk3, {Down}, 카카오톡
	}
	ford := ford + 1
	Sleep, %Delay%
	}
	MsgBox, 0x40 ,BSJ Sender, 완료!
}
else if (Allchat = 0)
{
}
}


else
{
}

return
1GuiClose:
ExitApp























































































































































































































































































































































