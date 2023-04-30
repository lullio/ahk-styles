#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

RunWith(32) ;force to start in 32 bit mode
; DLLPath:=A_ScriptDir "\USkin.dll" ;Location to the USkin.dll file
; StylesPath:=A_ScriptDir "\styles\" ;location where you saved the .msstyles files
; DLLPath:="C:\Users\Estudos\Desktop\sTYLES\styles\USkin.dll" ;Location to the USkin.dll file
DLLPath=%A_ScriptDir%\styles\USkin.dll ;Location to the USkin.dll file
StylesPath=%A_ScriptDir%\styles\ ;location where you saved the .msstyles files

;*******************************************************
styleArr:=[]
stylearray:=Object() ;create StyleArray to hold styles
Loop,% StylesPath "*.msstyles"
	stylearray.insert(A_LoopFilename)
total:= stylearray.MaxIndex() ;Get total number of styles
; for key, value in stylearray {
; 	CurrentStyle:=value
;    ; styleArr.=CurrentStyle
;    ; styleArr.Push(CurrentStyle)
; }
; MsgBox, % stylearray[1]
; MsgBox, % styleArr[1]
; white
; SkinForm(DLLPath,Apply, StylesPath . stylearray[7]) ; fanta.msstyles
; SkinForm(DLLPath,Apply, StylesPath . stylearray[10]) ; invoice.msstyles
; SkinForm(DLLPath,Apply, StylesPath . stylearray[12]) ; Luminous. msstyles
; SkinForm(DLLPath,Apply, StylesPath . stylearray[13]) ; MacLion3. msstyles
; SkinForm(DLLPath,Apply, StylesPath . stylearray[14]) ; Milikymac. msstyles
; SkinForm(DLLPath,Apply, StylesPath . stylearray[19]) ; panther.msstyles
; SkinForm(DLLPath,Apply, StylesPath . stylearray[11]) ; panther.msstyles
; SkinForm(DLLPath,Apply, StylesPath . stylearray[13]) ; panther.msstyles
; SkinForm(DLLPath,Apply, StylesPath . stylearray[4]) ; panther.msstyles
; SkinForm(DLLPath,Apply, StylesPath . stylearray[2]) ; panther.msstyles
; SkinForm(DLLPath,Apply, StylesPath . stylearray[20]) ; PantherS. msstyles
; SkinForm(DLLPath,Apply, StylesPath . stylearray[21]) ; PaperAGV. msstyles
; SkinForm(DLLPath,Apply, StylesPath . stylearray[26]) ; panther.msstyles
; SkinForm(DLLPath,Apply, StylesPath . stylearray[13]) ; panther.msstyles
; SkinForm(DLLPath,Apply, StylesPath . stylearray[3]) ; panther.msstyles
; SkinForm(DLLPath,Apply, StylesPath . stylearray[28]) ; panther.msstyles

; dark
; SkinForm(DLLPath,Apply, StylesPath . stylearray[11]) ; Iakrits. msstyles
SkinForm(DLLPath,Apply, StylesPath . stylearray[6]) ; cosmo. msstyles



	; Gosub, Gui
; SkinForm(DLLPath,"0", StylesPath . CurrentStyle)	

SkinForm(DLLPath,Param1 = "Apply", SkinName = ""){
	if(Param1 = Apply){
		DllCall("LoadLibrary", str, DLLPath)
		DllCall(DLLPath . "\USkinInit", Int,0, Int,0, AStr, SkinName)
	}else if(Param1 = 0){
		DllCall(DLLPath . "\USkinExit")
	}
}