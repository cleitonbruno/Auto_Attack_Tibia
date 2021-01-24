;========================CONFIGS=======================
Battle_List_X1 := 0
Battle_List_Y1 := 0
Battle_List_X2 := 0
Battle_List_Y2 := 0





;========================!!!!!!!CUIDADO AO EDITAR DAQUI PARA BAIXO!!!!!!!!!!!=======================
;========================!!!!!!!CUIDADO AO EDITAR DAQUI PARA BAIXO!!!!!!!!!!!=======================
;========================!!!!!!!CUIDADO AO EDITAR DAQUI PARA BAIXO!!!!!!!!!!!=======================
;========================!!!!!!!CUIDADO AO EDITAR DAQUI PARA BAIXO!!!!!!!!!!!=======================
;========================!!!!!!!CUIDADO AO EDITAR DAQUI PARA BAIXO!!!!!!!!!!!=======================
;========================!!!!!!!CUIDADO AO EDITAR DAQUI PARA BAIXO!!!!!!!!!!!=======================



;===========================GERAL==========================
#IfWinActive, ahk_class Qt5QWindowOwnDCIcon
#NoEnv
#Warn
#SingleInstance Force
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
ListLines Off
SendMode Input
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1


SetTimer, AutoAttack, On

;========================SCRIPT=============================
AutoAttack:
if WinActive("ahk_class Qt5QWindowOwnDCIcon") {
	PixelSearch, MonsterX, MonsterY, Battle_List_X1, Battle_List_Y1, Battle_List_X2, Battle_List_Y2, 0x000000, , Fast RGB	;VERIFICA UM PIXEL PRETO
	if (ErrorLevel = 0)	;SE ENCONTRAR
	{
		PixelSearch, AttackX, AttackY, Battle_List_X1, Battle_List_Y1, Battle_List_X2, Battle_List_Y2, 0xFF0000, , Fast RGB	;VERIFICA UM PIXEL VERMELHO
		if (ErrorLevel = 1) ;SE NÃO ENCONTRAR
		{
			MouseGetPos, StartX, StartY
			Click, %Battle_List_X1%, %Battle_List_Y1%
			MouseMove, %StartX%, %StartY%
			Sleep 1000
		}
	}
}
return

;========================PAUSA/DESPAUSAR=====================
F20::
	Pause
return