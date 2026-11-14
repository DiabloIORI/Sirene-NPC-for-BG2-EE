BEGIN C0SIR25P

IF ~Global("C0SireneToBKickedOut","GLOBAL",0) !Global("C0SireneRomanceActive","GLOBAL",2)~ b1
SAY ~是我们该分别的时候了吗，我的朋友？~ [C0BLANK]
++ ~不，算了。~ DO ~JoinParty()~ EXIT
+ ~AreaCheck("AR4500")~ + ~是的。在这里等。~ DO ~SetGlobal("C0SireneToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([1717.1717]) Face(0)~ EXIT
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~是的。在这里等。~ DO ~SetGlobal("C0SireneToBKickedOut","GLOBAL",1)~ EXIT
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~返回口袋位面。~ DO ~SetGlobal("C0SireneToBKickedOut","GLOBAL",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1717.1717],0)~ EXIT
END

IF ~Global("C0SireneToBKickedOut","GLOBAL",0) Global("C0SireneRomanceActive","GLOBAL",2)~ b1a
SAY ~你确定要我离开吗，<CHARNAME>？我宁愿哪儿都不去，只留在你身边。~ [C0BLANK]
++ ~既然如此，那就留下。~ DO ~JoinParty()~ EXIT
+ ~AreaCheck("AR4500")~ + ~是的。在这里等。~ DO ~SetGlobal("C0SireneToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([1717.1717]) Face(0)~ EXIT
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~是的。在这里等。~ DO ~SetGlobal("C0SireneToBKickedOut","GLOBAL",1)~ EXIT
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~返回口袋位面。~ DO ~SetGlobal("C0SireneToBKickedOut","GLOBAL",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1717.1717],0)~ EXIT
END

IF ~Global("C0SireneToBKickedOut","GLOBAL",1) !Global("C0SireneRomanceActive","GLOBAL",2)~ b2
SAY ~我听候你的差遣，我的朋友。~ [C0BLANK]
++ ~加入我。~ + b2.1
++ ~再等一会儿。~ EXIT
END 

IF ~~ b2.1
SAY ~当然。~
IF ~~ DO ~SetGlobal("C0SireneToBKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~Global("C0SireneToBKickedOut","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ b2a
SAY ~是该走了吗，我的爱？~ [C0BLANK]
++ ~是的。~ + b2.1
++ ~再等一会儿。~ EXIT
END 

IF WEIGHT #-1 ~Global("C0SireneMeetsAunt","GLOBAL",1) !GlobalTimerExpired("C0SireneAuntTimer","GLOBAL")~ c1
SAY ~我……我想在这里多待些时候，<CHARNAME>。求你，明天再来。~ [C0BLANK]
IF ~~ EXIT
END

CHAIN IF WEIGHT #-1 ~Global("C0SireneMeetsAunt","GLOBAL",1) GlobalTimerExpired("C0SireneAuntTimer","GLOBAL")~ THEN C0SIR25P c2
~你回来了，<CHARNAME>。克蕾奥姑母……~
EXTERN C0SCLEO c1