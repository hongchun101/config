g_LastCtrlKeyDownTime := 0
g_AbortSendEsc := false
g_ControlRepeatDetected := false

*CapsLock::
    if (g_ControlRepeatDetected)
    {
        return
    }

    send,{Ctrl down}
    g_LastCtrlKeyDownTime := A_TickCount
    g_AbortSendEsc := false
    g_ControlRepeatDetected := true

    return

*CapsLock Up::
    send,{Ctrl up}
    g_ControlRepeatDetected := false
    if (g_AbortSendEsc)
    {
        return
    }
    current_time := A_TickCount
    time_elapsed := current_time - g_LastCtrlKeyDownTime
    if (time_elapsed <= 250)
    {
        SendInput {Esc}
    }
    return

~*^a::
~*^b::
~*^c::
~*^d::
~*^e::
~*^f::
~*^g::
~*^h::
~*^i::
~*^j::
~*^k::
~*^l::
~*^m::
~*^n::
~*^o::
~*^p::
~*^q::
~*^r::
~*^s::
~*^t::
~*^u::
~*^v::
~*^w::
~*^x::
~*^y::
~*^z::
~*^1::
~*^2::
~*^3::
~*^4::
~*^5::
~*^6::
~*^7::
~*^8::
~*^9::
~*^0::
~*^Space::
~*^Backspace::
~*^Delete::
~*^Insert::
~*^Home::
~*^End::
~*^PgUp::
~*^PgDn::
~*^Tab::
~*^Return::
~*^,::
~*^.::
~*^/::
~*^;::
~*^'::
~*^[::
~*^]::
~*^\::
~*^-::
~*^=::
~*^`::
~*^F1::
~*^F2::
~*^F3::
~*^F4::
~*^F5::
~*^F6::
~*^F7::
~*^F8::
~*^F9::
~*^F10::
~*^F11::
~*^F12::
    g_AbortSendEsc := true
    return
*Esc::Capslock
;Capslock::Esc
#1:: 
{ 
 	DetectHiddenWindows, on 
 	if WinExist("ahk_exe idea64.exe") {
 		WinActivate, ahk_class SunAwtFrame
    }
} 
return
#q::
{
 Run, https://www.baidu.com/s?wd=%clipboard%
 Return
}
#c:: 
{
	DetectHiddenWindows, On	
	SetTitleMatchMode, 2	
	WinGet, winid, ID, Visual Studio Code
	SetTitleMatchMode, 1	
	If (winid) {		
		WinWait, ahk_id %winid%		
		WinShow		
		WinActivate		
		ControlFocus, EditComponent2, A		
		ControlSetText, EditComponent2,, A	
	} 
    DetectHiddenWindows, Off
}
return
#3:: 
{
	DetectHiddenWindows, On	
	SetTitleMatchMode, 2	
	WinGet, winid, ID, Google Chrome	
	SetTitleMatchMode, 1	
	If (winid) {		
		WinWait, ahk_id %winid%		
		WinShow		
		WinActivate		
		ControlFocus, EditComponent2, A		
		ControlSetText, EditComponent2,, A	
	} else {		
		Run, chrome.exe
	}	
		DetectHiddenWindows, Off
}
return
#s:: 
{
	DetectHiddenWindows, On	
	SetTitleMatchMode, 2	
	WinGet, winid, ID, Sublime Text	
	SetTitleMatchMode, 1	
	If (winid) {		
		WinWait, ahk_id %winid%		
		WinShow		
		WinActivate		
		ControlFocus, EditComponent2, A		
		ControlSetText, EditComponent2,, A	
	} else {		
		Run, "D:\Editor\Sublime Text\sublime_text.exe"
	}	
		DetectHiddenWindows, Off
}
return
#2:: 
{
	DetectHiddenWindows, On	
	SetTitleMatchMode, 2	
	WinGet, winid, ID, Terminal
	;MsgBox,%winid%	
	SetTitleMatchMode, 1	
	If (winid) {		
		WinWait, ahk_id %winid%		
		WinShow		
		WinActivate		
		ControlFocus, EditComponent2, A		
		ControlSetText, EditComponent2,, A	
	} 
    DetectHiddenWindows, Off
}
return
;#2:: 
;{
;	DetectHiddenWindows, On	
;	SetTitleMatchMode, 2	
;	WinGet, winid, ID, Obsidian
;	;MsgBox,%winid%	
;	SetTitleMatchMode, 1	
;	If (winid) {		
;		WinWait, ahk_id %winid%		
;		WinShow		
;		WinActivate		
;		ControlFocus, EditComponent2, A		
;		ControlSetText, EditComponent2,, A	
;	} 
;    DetectHiddenWindows, Off
;}
;return
#5:: 
{
	DetectHiddenWindows, On	
	SetTitleMatchMode, 2	
	WinGet, winid, ID, Navicat Premium
	;MsgBox,%winid%	
	SetTitleMatchMode, 1	
	If (winid) {		
		WinWait, ahk_id %winid%		
		WinShow		
		WinActivate		
		ControlFocus, EditComponent2, A		
		ControlSetText, EditComponent2,, A	
	}	
		DetectHiddenWindows, Off
}
return
#v:: 
{
	DetectHiddenWindows, On	
	SetTitleMatchMode, 2	
	WinGet, winid, ID, Neovim
	SetTitleMatchMode, 1	
	If (winid) {		
		WinWait, ahk_id %winid%		
		WinShow		
		WinActivate		
		ControlFocus, EditComponent2, A		
		ControlSetText, EditComponent2,, A	
	} 	
		DetectHiddenWindows, Off
}
return
#p:: 
{
	DetectHiddenWindows, On	
	SetTitleMatchMode, 2	
	WinGet, winid, ID, Postman
	;MsgBox,%winid%	
	SetTitleMatchMode, 1	
	If (winid) {		
		WinWait, ahk_id %winid%		
		WinShow		
		WinActivate		
		ControlFocus, EditComponent2, A		
		ControlSetText, EditComponent2,, A	
	} else {		
		Run, "C:\Users\12513\AppData\Local\Postman\Postman.exe"
	}	
		DetectHiddenWindows, Off
}
return 
#9:: 
{
	DetectHiddenWindows, On	
    Run, "C:\Program Files (x86)\WXWork\WXWork.exe"
}
return
#0:: 
{ 
	DetectHiddenWindows, on 
    Run, "E:\WeChat\WeChat.exe"
} 
return
#enter:: ;窗口置顶
    WinGet ow, id, A
    WinTopToggle(ow)
return

WinTopToggle(w) {
    WinGetTitle, oTitle, ahk_id %w%
    Winset, AlwaysOnTop, Toggle, ahk_id %w%
    WinGet, ExStyle, ExStyle, ahk_id %w%
    if (ExStyle & 0x8)  ; 0x8 为 WS_EX_TOPMOST.在WinGet的帮助中
        oTop = top
    else
        oTop = untop
    tooltip %oTitle% %oTop%
    SetTimer, RemoveToolTip, 5000
    return
 
    RemoveToolTip:
    SetTimer, RemoveToolTip, Off
    ToolTip
    return
}