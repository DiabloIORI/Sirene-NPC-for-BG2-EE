// Letter from T'samon

BEGIN C0SNOTE

CHAIN IF ~!AreaCheck("AR0020") !AreaCheck("C0SIR1") GlobalLT("C0SireneTsamon","GLOBAL",2)~ THEN C0SNOTE note1
~信上的指引从阿斯卡特拉城门区开始。从那里出发也许是最好的选择。~
EXIT

CHAIN IF ~!InParty("C0Sirene") AreaCheck("AR0020") GlobalLT("C0SireneTsamon","GLOBAL",2)~ THEN C0SNOTE note5
~没有茜琳，你觉得没什么理由去信上画的地点。~
EXIT

CHAIN IF ~InParty("C0Sirene") AreaCheck("AR0020") GlobalLT("C0SireneTsamon","GLOBAL",2)~ THEN C0SNOTE note2
~你照着信上的指引走……~
END
IF ~~ DO ~StartCutsceneMode()
	FadeToColor([10.0],0)
	Wait(4)
    ActionOverride(Player1,LeaveAreaLUA("c0sir1","",[603.1469],N))
    ActionOverride(Player2,LeaveAreaLUA("c0sir1","",[666.1469],N))
    ActionOverride(Player3,LeaveAreaLUA("c0sir1","",[601.1516],N))
    ActionOverride(Player4,LeaveAreaLUA("c0sir1","",[663.1517],N))
    ActionOverride(Player5,LeaveAreaLUA("c0sir1","",[601.1553],N))
    ActionOverride(Player6,LeaveAreaLUA("c0sir1","",[664.1556],N))
	FadeFromColor([10.0],0)
	EndCutsceneMode()~ EXIT
	
CHAIN IF ~AreaCheck("C0SIR1") GlobalLT("C0SireneTsamon","GLOBAL",2)~ THEN C0SNOTE note3
~此刻这封信对你没用。~
EXIT
	
CHAIN IF ~GlobalGT("C0SireneTsamon","GLOBAL",1)~ THEN C0SNOTE note4
~特萨蒙·索恩港的威胁已除，你不再需要这封信了。~
END
IF ~~ DO ~DestroyItem("c0snote")~ EXIT