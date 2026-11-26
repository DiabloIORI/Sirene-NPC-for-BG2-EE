BEGIN C0SMESS

CHAIN IF WEIGHT #-1
~Global("C0SireneMessenger","GLOBAL",1)~ THEN C0SMESS C0SireneMessenger
~打扰了……能占用你一点时间吗？~
DO ~SetGlobal("C0SireneMessenger","GLOBAL",2)~
END
++ ~当然。你需要什么？~ EXTERN C0SMESS C0SireneMessenger1
++ ~说吧，但快点。~ EXTERN C0SMESS C0SireneMessenger1

CHAIN C0SMESS C0SireneMessenger1
~我手上有一封给某人的信，其描述符合你的一位同伴。你们哪位是受苦圣战武士的茜琳女士？~
== C0SIRE2J ~那是我，先生。~
== C0SMESS ~那么幸会，女士。我是西奥多，伊尔玛特教会的侍僧，也是泰瑟达萨吉克城堡受苦圣战武士的侍从。能见到你是种荣幸。~
== C0SIRE2J ~不必这样拘礼，西奥多侍从。是什么让你来到安姆？~
== C0SMESS ~这里，女士。这封信是一个自称你相识的人交给我的。~
== C0SIRE2J ~真的？那就奇怪了……虽然我是骑士团的人，可我承认我对泰瑟的同僚几乎一无所知。这人是谁？~
== C0SMESS ~我不知道，茜琳女士。他不肯说名字，可他穿着我们信仰的颜色。他只告诉我，他在北方朝圣时曾遇见你。~
== C0SIRE2J ~北方……？不，不会是……~
== C0SMESS ~还有更多，女士。虽然他藏在兜帽后遮住了脸，可他把信交给我时我瞥见了一眼。他额上有仪式留下的疤，还有一对角。这只是猜测……可我相信他跟你有些关联。~
== C0SIRE2J ~我……我明白了。我想我知道你说的是谁……~
== C0SMESS ~我就知道这些，女士。他吩咐我告知你，去信上画的地点见他。~
== C0SIRE2J ~好罢。谢谢你辛苦跑这一趟，西奥多兄弟。~
== C0SMESS ~不必客气，伊尔玛特的勇士。那么，我得告辞了。再会。~
END
IF ~~ DO ~SetGlobalTimer("C0SireneMessengerTimer","GLOBAL",3) GiveItem("c0snote","C0Sirene") EscapeArea()~ EXIT