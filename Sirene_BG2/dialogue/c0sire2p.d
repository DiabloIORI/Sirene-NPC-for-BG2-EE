BEGIN C0SIRE2P

IF ~Global("C0SireneKickedOut","LOCALS",0) !Global("C0SireneRomanceActive","GLOBAL",2)~ p1
 SAY ~真到了我们该分别的时候吗，<CHARNAME>？~ [C0BLANK]
 	+ ~!Global("Chapter","GLOBAL",%bg2_chapter_4%)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)
!Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + ~是的，暂且如此。~ + p2a
 	+ ~Global("Chapter","GLOBAL",%bg2_chapter_4%)
Global("Chapter","GLOBAL",%bg2_chapter_5%)
Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + ~是的，暂且如此。~ + p2b
 	++ ~不。我改变主意了。~ + p3
END
 
IF ~~ p2a
 SAY ~那好罢。我会回贫民区的伊尔玛特神殿。你若改变主意，我会在那里。~
++ ~好。回头见。~ DO ~SetGlobal("C0SireneKickedOut","LOCALS",1) EscapeAreaMove("AR0408",480,380,6)~ EXIT
++ ~我们只是分开一小会儿。你何不去铜冠旅店，我在那里见你？~ + p2c
++ ~就在这里等我。我会回来。~ DO ~SetGlobal("C0SireneKickedOut","LOCALS",1)~ EXIT
END

IF ~~ p2b
 SAY ~我明白了……那我就尽力自己离开这地方。祝你好运，<CHARNAME>。~
++ ~也祝你好运。~ DO ~SetGlobal("C0SireneKickedOut","LOCALS",1) EscapeAreaMove("AR0408",480,380,6)~ EXIT
++ ~就在这里等我。我会回来。~ DO ~SetGlobal("C0SireneKickedOut","LOCALS",1)~ EXIT
END

IF ~~ p2c
 SAY ~我不喜欢那地方，可我会照你说的做。再会，<CHARNAME>。~
IF ~~ DO ~SetGlobal("C0SireneKickedOut","LOCALS",1) EscapeAreaMove("AR0406",1317,2055,NW)~ EXIT
END

IF ~~ p3
 SAY ~听你这么说我很高兴。~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~Global("C0SireneKickedOut","LOCALS",0) Global("C0SireneRomanceActive","GLOBAL",2)~ r1
 SAY ~我……我不想离开你身边，<CHARNAME>。你能再考虑一下吗？~ [C0BLANK]
 	++ ~只是一阵子，我保证。~ + r2
	++ ~我觉得你想多了我们的关系，茜琳。我现在不需要你。~ + r3
 	++ ~算了，我不知道自己为什么还想这个。~ + r4
END

IF ~~ r2
 SAY ~（叹气）我信你，<CHARNAME>。我会在贫民区的伊尔玛特神殿等你。求你……回到我身边。~
++ ~我会的。我保证。~ DO ~SetGlobal("C0SireneKickedOut","LOCALS",1) EscapeAreaMove("AR0408",480,380,6)~ EXIT
++ ~只是一小会儿。去铜冠旅店歇一歇，我很快就会回来。~ + r2a
++ ~就在这里等我。我会回来。~ DO ~SetGlobal("C0SireneKickedOut","LOCALS",1)~ EXIT
END

IF ~~ r2a
SAY ~是的，我会照做。暂且再会，<CHARNAME>。~
IF ~~ DO ~SetGlobal("C0SireneKickedOut","LOCALS",1) EscapeAreaMove("AR0406",1317,2055,NW)~ EXIT
END

IF ~~ r3
 SAY ~我……我明白了。听到这个我很难过。~
 = ~我会回贫民区的伊尔玛特神殿。我会……在那里等你。~
IF ~~ DO ~SetGlobal("C0SireneKickedOut","LOCALS",1) SetGlobal("C0SireneRomanceActive","GLOBAL",3) EscapeAreaMove("AR0408",480,380,6)~ EXIT
END

IF ~~ r4
 SAY ~（微笑）我很高兴。我宁愿哪儿都不去。~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~Global("C0SireneKickedOut","LOCALS",1) !Global("C0SireneRomanceActive","GLOBAL",2)~ p4a
 SAY ~很高兴再见到你，<CHARNAME>。你又需要我的助力了吗？~ [C0BLANK]
	++ ~是的。请重新加入我。~ + p5
	++ ~还不是时候。~ + p6
END

IF ~Global("C0SireneKickedOut","LOCALS",1) Global("C0SireneRomanceActive","GLOBAL",2)~ p4b
 SAY ~<CHARNAME>……我等你太久了。求你，让我重新加入你。~ [C0BLANK]
	++ ~当然。我想你。~ + r4
	++ ~还不是时候。~ + p6
END

IF ~~ p5
 SAY ~好罢。~
IF ~~ DO ~SetGlobal("C0SireneKickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ p6
 SAY ~（叹气）如你所愿。~
IF ~~ EXIT
END

// Vampirism - Sirene revived

CHAIN IF WEIGHT #-1 ~Global("C0SireneVampire","GLOBAL",4)~ THEN C0SIRE2P v1.0
~我……伊尔玛特大人，我——~ [C0BLANK]
DO ~SetGlobal("C0SireneVampire","GLOBAL",5)~
END
+ ~AreaCheck("AR0408")~ + ~茜琳！~ SOLVED_JOURNAL @100003 EXTERN SLILMAT v1.1
+ ~AreaCheck("AR0703")~ + ~茜琳！~ SOLVED_JOURNAL @100003 EXTERN WILMAT v1.1

CHAIN SLILMAT v1.1
~赞美残破之神！他的慈悲已再赐他的仆人以生命！~
== C0SIRE2P ~<CHARNAME>？这不……你不是……~
END
++ ~我活着，我的爱。你也活着。~ EXTERN C0SIRE2P v1.3
++ ~嘘……都结束了。一切都好了。~ EXTERN C0SIRE2P v1.3
++ ~（抱住她）~ EXTERN C0SIRE2P v1.2

CHAIN WILMAT v1.1
~赞美残破之神！他的慈悲已再赐他的仆人以生命！~
== C0SIRE2P ~<CHARNAME>？这不……你不是……~
END
++ ~我活着，我的爱。你也活着。~ EXTERN C0SIRE2P v1.3
++ ~嘘……都结束了。一切都好了。~ EXTERN C0SIRE2P v1.3
++ ~（抱住她）~ EXTERN C0SIRE2P v1.2

CHAIN C0SIRE2P v1.2
~（抽气）<CHARNAME>，别抱那么紧……~
END
IF ~~ EXTERN C0SIRE2P v1.3

CHAIN C0SIRE2P v1.3
~那么那不是梦……我太放心了。~
== C0SIRE2P ~感觉像是我有过的最长的噩梦……我以为我就此迷失，可我不愿离去……因为你。~
== C0SIRE2P ~我几乎不敢相信……那黑暗仿佛要永远持续。可是……我在这里。你救了我。~
END
++ ~我们赢了这一日，我的爱。我们再也不分离。~ EXTERN C0SIRE2P v1.4
++ ~我绝不让这样的事再发生，茜琳。我保证。~ EXTERN C0SIRE2P v1.4
++ ~我太放心了。可现在我们该走了。~ EXTERN C0SIRE2P v1.5

CHAIN C0SIRE2P v1.4
~我信你，我的爱。能再次与你在一起，我太高兴了。~
END
IF ~~ DO ~JoinParty() SetGlobal("C0SireneKickedOut","LOCALS",0)~ EXIT

CHAIN C0SIRE2P v1.5
~是的……我们赢了这一日，可我们的试炼还没完。我跟着你，我的爱。~
END
IF ~~ DO ~JoinParty() SetGlobal("C0SireneKickedOut","LOCALS",0)~ EXIT