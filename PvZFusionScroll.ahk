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

	switch
	{ 
		case Slot = 0: MouseMove 541, 157, 0
		case Slot = 1: MouseMove 660, 157, 0
		case Slot = 2: MouseMove 762, 157, 0
		case Slot = 3: MouseMove 878, 157, 0
		case Slot = 4: MouseMove 986, 157, 0
		case Slot = 5: MouseMove 1099, 157, 0
		case Slot = 6: MouseMove 1202, 157, 0
		case Slot = 7: MouseMove 1314, 157, 0
		case Slot = 8: MouseMove 1435, 157, 0
		case Slot = 9: MouseMove 1534, 157, 0
		case Slot = 10: MouseMove 1639, 157, 0
		case Slot = 11: MouseMove 1760, 157, 0
		case Slot = 12: MouseMove 1864, 157, 0
		case Slot = 13: MouseMove 1978, 157, 0

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

