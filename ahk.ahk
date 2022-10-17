*Esc::Capslock
Capslock::Esc
#1:: 
{ 
 	DetectHiddenWindows, on 
 	if WinExist("ahk_exe idea64.exe") {
 		WinActivate, ahk_class SunAwtFrame
    }
} 
return
>+b:: 
{
    Run www.bilibili.com
}
return
>+g::
{
    Run www.github.com
}
return 
>+p::
{
    Run www.processon.com
}
return 
>+l::
{
    Run https://leetcode.cn/problemset/all/
}
return
#4::
{DetectHiddenWindows, On	
	SetTitleMatchMode, 2	
	WinGet, winid, ID, 任务管理
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
        oTop = 置顶
    else
        oTop = 取消置顶
    tooltip %oTitle% %oTop%
    SetTimer, RemoveToolTip, 5000
    return
 
    RemoveToolTip:
    SetTimer, RemoveToolTip, Off
    ToolTip
    return
}
