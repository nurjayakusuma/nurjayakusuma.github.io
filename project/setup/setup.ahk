#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Set this to 0 to turn off the status display or 1 to turn it on
ShowStatus = 1

; Where to place the status text on the screen (0,0=top left corner)
Xpos = 0
Ypos = 0

; Colors
BackgroundColor = Black
TextColor = White

; Create a status window and display it centred at the top of the screen
Gui +LastFound +AlwaysOnTop +ToolWindow -Caption ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
Gui, Color, %BackgroundColor%
Gui, Font, s16 
Gui, Add, Text, vStatusText c%TextColor%, 8888 not found

id :=

Loop
{


	IfWinExist, success
	{
			SplashImage, ,M1 b fs14 ctFFFF00 cwBlack x10 y100 w900 , Pembayaran Berhasil
			sleep, 1000   ;- time in ms  if needed
			FileAppend,
			Splashimage,off
			sleep, 1000 ;- extra time
			WinClose, ahk_exe msedge.exe
	}
	
	sleep, 1000

	IfWinExist, fail
	{
			SplashImage, ,M1 b fs14 ctFFFF00 cwBlack x10 y100 w900 , Pembayaran Gagal
			WinClose, ahk_exe msedge.exe
			sleep, 1000   ;- time in ms  if needed
			Splashimage,off
			Run, "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --kiosk --edge-kiosk-type=fullscreen --app=https://nurjayakusuma.github.io/project/
			sleep, 1000 ;- extra time
	}
	
	
	Sleep, 500	; sleep for 1/10th sec to avoid hogging the processor
}
Return