#Requires AutoHotkey v2.0

Slot := -1
isScrolling := 0
scrollDir := 2
memorySlot := 0

#HotIf WinActive("PlantsVsZombiesRH")

WheelDown:: 
{
	global memorySlot
	global Slot
	global isScrolling
		Slot++
		if(Slot <= -1) 
		{
			Slot := 13
		}
		if(Slot >= 14) 
		{
			Slot := 0
		}
	if(isScrolling = 0)
		{
		MouseGetPos &x, &y
		global x 
		global y
		isScrolling := 1
		Slot := memorySlot
		}
	memorySlot := Slot
	slotCheckMove(Slot)
}
WheelUp:: 
{
	global memorySlot
	global Slot
	global isScrolling
		Slot--
		if(Slot <= -1) 
		{
			Slot := 13
		}
		if(Slot >= 14) 
		{
			Slot := 0
		}
	if(isScrolling = 0)
		{
		MouseGetPos &x, &y
		global x 
		global y
		isScrolling := 1
		Slot := memorySlot
		}
	memorySlot := Slot
	slotCheckMove(Slot)
}

slotCheckMove(Slot) 
{
	WinGetPos(&winX, &winY, &winWidth, &winHeight, "PlantsVsZombiesRH")
	switch
	{ 
		case Slot = 0: MouseMove 0.21 * winWidth, 0.08 * winHeight, 0
		case Slot = 1: MouseMove 0.255 * winWidth, 0.08 * winHeight, 0
		case Slot = 2: MouseMove 0.3 * winWidth, 0.08 * winHeight, 0
		case Slot = 3: MouseMove 0.34 * winWidth, 0.08 * winHeight, 0
		case Slot = 4: MouseMove 0.38 * winWidth, 0.08 * winHeight, 0
		case Slot = 5: MouseMove 0.43 * winWidth, 0.08 * winHeight, 0
		case Slot = 6: MouseMove 0.465 * winWidth, 0.08 * winHeight, 0
		case Slot = 7: MouseMove 0.51 * winWidth, 0.08 * winHeight, 0
		case Slot = 8: MouseMove 0.55 * winWidth, 0.08 * winHeight, 0
		case Slot = 9: MouseMove 0.60 * winWidth, 0.08 * winHeight, 0
		case Slot = 10: MouseMove 0.64 * winWidth, 0.08 * winHeight, 0
		case Slot = 11: MouseMove 0.68 * winWidth, 0.08 * winHeight, 0
		case Slot = 12: MouseMove 0.73 * winWidth, 0.08 * winHeight, 0
		case Slot = 13: MouseMove 0.77 * winWidth, 0.08 * winHeight, 0

	}
}

LButton:: 
{
	global isScrolling
	global Slot
	global x
	global y
	if(isScrolling = 1) 
		{
			Click
			Sleep 40
			isScrolling := 0
			MouseMove x, y, 0
		}
	else
		{
			Click
		}
}
RButton:: 
{
	global isScrolling
	global Slot
	global x
	global y
	if(isScrolling = 1) 
		{
			Click(Button := "Right")
			Sleep 40
			isScrolling := 0
			MouseMove x, y, 0
		}
	else
		{
			Click(Button := "Right")
		}
}

