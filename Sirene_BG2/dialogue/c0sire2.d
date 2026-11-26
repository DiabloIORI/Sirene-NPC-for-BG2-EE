// First meeting

BEGIN C0SIRE2

IF ~Global("C0SireneBegin","GLOBAL",0) Alignment(Player1,MASK_EVIL)~ THEN BEGIN j.evil
 SAY ~*叹气*我知道这并不难。可我为何犹豫——~ [C0BLANK]
 = ~啊……恕我失礼，我的<PRO_LADYLORD>。我正要离开。祝您日安。~
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~Global("C0SireneBegin","GLOBAL",0) !Alignment(Player1,MASK_EVIL)~ THEN BEGIN j.notevil
 SAY ~*叹气*我知道这并不难。可我为何犹豫——~ [C0BLANK]
IF ~~ DO ~SetGlobal("C0SireneBegin","GLOBAL",1)~ + j.notevil2
END
 
IF ~~ j.notevil2
 SAY ~啊……恕我失礼，挡了您的路。我正要离开……~
	++ ~茜琳！好久不见。~ DO ~SetGlobal("C0SirenePartyBG1","GLOBAL",1)~ + j1
	++ ~你是谁？~ + j2
	++ ~嗯，那我不耽搁你了。~ + j0
END
 
IF ~~ j0
 SAY ~祝您日安。~
IF ~~ DO ~EscapeAreaMove("AR0408",480,380,6)~ EXIT
END

IF ~~ j1
 SAY ~<CHARNAME>！真的是你……我没想到会在这里见到你。~
 = ~原谅我没认出你……我心思在别处。你在安姆做什么？~
	++ ~我被一个邪恶的法师抓去折磨过。不太想谈。~ + j4
	++ ~说来话长。你在这里做什么？~ + j3
	+ ~ReputationGT(Player1,9)~ + ~你愿意加入我吗？路上我可以把事情都告诉你。~ + j5a
	+ ~!ReputationGT(Player1,9)~ + ~你愿意加入我吗？路上我可以把事情都告诉你。~ + j5b
	++ ~我现在没时间解释，茜琳。也许以后吧。~ + j6
END

IF ~~ j2
 SAY ~我是伊尔玛特教会的茜琳。我不是安姆人……我从我的教会远行而来，以哭泣之神之名援助有需要的人。~
	++ ~你不是骑士团的人？~ + j7
	+ ~ReputationGT(Player1,9)~ + ~我是<CHARNAME>。~ + j8a
	+ ~!ReputationGT(Player1,9)~ + ~我是<CHARNAME>。~ + j8b
	++ ~我明白了。那么很高兴认识你，可我现在太忙，没法谈。~ + j0
END

IF ~~ j3
 SAY ~我……嗯，这不是我想谈的事。~
 = ~我近来才回到安姆，大概比你早不了多久。我本打算亲自去光辉之心大殿，可是……我下不了决心进去。~
 = ~我正要离开，可是……你若愿意，我愿与你同行，<CHARNAME>。这地方对我来说别无他物。~
	+ ~ReputationGT(Player1,9)~ + ~你该加入我的队伍，茜琳。我们路上可以谈。~ + j5a
	+ ~!ReputationGT(Player1,9)~ + ~你该加入我的队伍，茜琳。我们路上可以谈。~ + j5b
	++ ~对不起。现在不是好时候。~ + j6
END

IF ~~ j4
 SAY ~你曾……~
 = ~哦，以伊尔玛特之名。我本希望我们分别后你过得好。原谅我。也许若我当时留下……~
	++ ~相信我，你没留下更好。卡立德和戴娜黑都丧了命。~ + j9
	++ ~那你呢？我记得你说过想独自旅行一阵。你为什么在这里？~ + j3
	+ ~ReputationGT(Player1,9)~ + ~你该加入我的队伍，茜琳。我们路上可以谈。~ + j5a
	+ ~!ReputationGT(Player1,9)~ + ~你该加入我的队伍，茜琳。我们路上可以谈。~ + j5b
	++ ~对不起。现在不是好时候。~ + j6
END

IF ~~ j5a
 SAY ~是的，当然。能再一次与你同行是件乐事，<CHARNAME>。~
	++ ~顺便说，我们得去救爱蒙。她在渥金商场被蒙面法师会抓走了，还有那个抓我的法师。这会很危险。~ + j11a
	++ ~顺便说，我要去追那个抓了我、还毁了半个渥金商场的法师。他叫艾瑞尼卡斯。~ + j12
	++ ~好，我们走。~ DO ~JoinParty()~ EXIT
END

IF ~~ j5b
 SAY ~<CHARNAME>，我……不是我不珍视我们的友谊，可你如今走的这条路……以你现在的样子，我无法凭良心跟随你。求你，找到你的方向，那时我会乐于相助。~
  IF ~~ EXIT
END

IF ~~ j6
 SAY ~很好。我会在贫民区的伊尔玛特神殿。你可以在那里找到我。~
IF ~~ DO ~EscapeAreaMove("AR0408",480,380,6)~ EXIT
END

IF ~~ j7
 SAY ~不，我的<PRO_LADYLORD>，我不是。我本打算去光辉之心大殿，可是……~
 = ~哦！我竟还没问您的名字，我的<PRO_LADYLORD>。是我失礼了。~
	+ ~ReputationGT(Player1,9)~ + ~我是<CHARNAME>。~ + j8a
	+ ~!ReputationGT(Player1,9)~ + ~我是<CHARNAME>。~ + j8b
END

IF ~~ j8a
 SAY ~你……你是<CHARNAME>，博德之门的英雄？我在旅途中听说过你。~
 = ~我当时在贝尔苟斯特镇养伤，在洛山达神殿……奇怪，我们竟从未相遇……又或者我们见过。你看着面熟，可我不记得在哪里。~
 = ~我从没想到会在阿斯卡特拉偏偏遇上你。若早知道你在这里，我会去找你。这话也许冒昧，可是……我想加入你的队伍。我听过你英雄事迹的传说，而我也没有别处可去。~
	++ ~你看起来颇有本领。我接受你的提议。~ + j10
	++ ~我需要的帮手已经齐了。~ + j6
	++ ~我不想。我不太喜欢圣武士。~ + j6
END

IF ~~ j8b
 SAY ~<CHARNAME>……？我……我知道你。传说说你……不，算了。~
 = ~我……我该告辞了，我的<PRO_LADYLORD>。若……若您有意，也许您可以找时间去伊尔玛特神殿看看。我们……会乐于欢迎您，不论您的名声如何。再会。~
IF ~~ DO ~EscapeAreaMove("AR0408",480,380,6)~ EXIT
END

IF ~~ j9
 SAY ~不！神明啊，这不可能……~
 = ~我……这比我能听到的任何消息都更糟。你打算去找杀他们的人吗？~
	++ ~当然。可我还没问你来这里做什么。~ + j3
	++ ~先别谈我。你在安姆做什么？~ + j3
	+ ~ReputationGT(Player1,9)~ + ~我会的。你愿意帮我吗？~ + j5a
	+ ~!ReputationGT(Player1,9)~ + ~我会的。你愿意帮我吗？~ + j5b
	+ ~ReputationGT(Player1,9)~ + ~也许。可你愿意再与我同行吗？~ + j5a
	+ ~!ReputationGT(Player1,9)~ + ~也许。可你愿意再与我同行吗？~ + j5b
	++ ~对不起。现在不是好时候。~ + j6
END

IF ~~ j10
 SAY ~谢谢你。我不会让你失望，<CHARNAME>。~
	++ ~顺便说，我的任务是救我从小的朋友爱蒙。她在渥金商场被蒙面法师会抓走了，还有那个抓我的法师。这会很危险。~ + j11b
	++ ~顺便说，我要去追那个抓了我、还毁了半个渥金商场的法师。他叫艾瑞尼卡斯。~ + j12
	++ ~好，我们走。~ DO ~JoinParty()~ EXIT
END

IF ~~ j11a
 SAY ~爱蒙……我还在想她为何不在你身边，可我绝没想到蒙面法师会牵扯进来……我当然会帮你，<CHARNAME>。~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ j11b
 SAY ~蒙面法师会……我在安姆期间没听过他们多少好话。我不怕危险，我的<PRO_LADYLORD>，你若有个朋友急需相助，我会尽力。~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ j12
 SAY ~我听过长廊发生的事……很好，<CHARNAME>。我帮你去找那个人。~
IF ~~ DO ~JoinParty()~ EXIT
END

// Talked to again, not in party

IF ~Global("C0SireneBegin","GLOBAL",1) !Global("C0SirenePartyBG1","GLOBAL",1)~ THEN BEGIN k0
 SAY ~欢迎来到伊尔玛特神殿，我的<PRO_LADYLORD>。~
IF ~~ + k1
END

IF ~~ k1
 SAY ~你有什么需要吗？~
 	+ ~ReputationGT(Player1,9)~ + ~你愿意加入我的队伍吗？~ + k2a
 	+ ~!ReputationGT(Player1,9)~ + ~你愿意加入我的队伍吗？~ + k2b
	++ ~不，没什么。~ + k3
END

IF ~~ k2a
 SAY ~若那是你的愿望，<CHARNAME>。~
	+ ~Global("C0SirenePartyBG1","GLOBAL",1)~ + ~顺便说，我们得去救爱蒙。她在渥金商场被蒙面法师会抓走了，还有那个抓我的法师。这会很危险。~ + j11a
	+ ~!Global("C0SirenePartyBG1","GLOBAL",1)~ + ~顺便说，我的任务是救我从小的朋友爱蒙。她在渥金商场被蒙面法师会抓走了，还有那个抓我的法师。这会很危险。~ + j11b
	++ ~顺便说，我要去追那个抓了我、还毁了半个渥金商场的法师。他叫艾瑞尼卡斯。~ + j12
	++ ~好，我们走。~ DO ~JoinParty()~ EXIT
END

IF ~~ k2b
 SAY ~我……必须拒绝。请原谅我这么说，可我感觉到你走在一条黑暗的路上。也许……有一天吧。我祈求你得救。~
	IF ~~ EXIT
END

IF ~~ k3
 SAY ~随你。愿伊尔玛特祝福你的道路。~
IF ~~ EXIT
END

IF ~Global("C0SireneBegin","GLOBAL",1) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN BEGIN k4
 SAY ~很高兴再见到你，<CHARNAME>。~
IF ~~ + k1
END