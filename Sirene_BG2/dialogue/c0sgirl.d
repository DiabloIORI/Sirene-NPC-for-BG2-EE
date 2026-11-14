BEGIN C0SGIRL

CHAIN IF WEIGHT #-1
~Global("C0SireneFlowerGirl","GLOBAL",2)~ THEN C0SGIRL girl1
~花，花！红的、紫的，样样都好看！~
DO ~SetGlobal("C0SireneFlowerGirl","GLOBAL",3)~
== C0SGIRL ~「提斯克，塔斯克，
我编了个<MONTHNAME>花篮。
我把花装满，只为说一句：
愿你有个愉快的<MONTHNAME>。
 
提斯克，塔斯克，
我编了个<MONTHNAME>花篮。
今天我把它挂在你门上，
按了门铃就跑开。」~
== C0SIRE2J ~看那个小姑娘，<CHARNAME>。很少见孩子做事时脸上挂着这么灿烂的笑。~
== C0SGIRL IF ~Gender(Player1,MALE)~ ~嘿，嘿！你，穿那身怪衣裳的先生！不想来看看吗？~
== C0SGIRL IF ~!Gender(Player1,MALE)~ ~嘿，嘿！你，穿那身怪衣裳的小姐！不想来看看吗？~
END
++ ~当然。你是在卖花吗，小姑娘？~ EXTERN C0SGIRL girl2
++ ~不感兴趣。走开吧。~ EXTERN C0SGIRL girl0

CHAIN C0SGIRL girl0
~哼！那也祝你一路顺风，哼！*呸呸*~
DO ~EscapeArea()~ EXIT

CHAIN C0SGIRL girl2
~那当然啦！我跟母亲在乡下自己种的。都很好看吧？比城里人的花好多了。~
END
++ ~确实好看。你想要一枝花吗，塞琳？~ EXTERN C0SIRE2J girl3
++ ~我没兴趣买花。~ EXTERN C0SGIRL girl0

CHAIN C0SIRE2J girl3
~什么，给我？不，你不必——~
== C0SGIRL IF ~Gender(Player1,MALE)~ ~哦，她是你的夫人吗，先生？她好漂亮。我得好好想想什么最衬她。~
== C0SGIRL IF ~!Gender(Player1,MALE)~ ~哦，她是你的夫人吗，小姐？她好漂亮。我得好好想想什么最衬她。~
== C0SIRE2J ~我——我很领情，可真的不必。~
END
++ ~哦，别多说。就当是我送你的礼物。~ EXTERN C0SGIRL girl4
++ ~怎么了，塞琳？你不喜欢花吗？~ EXTERN C0SIRE2J girl5
++ ~你听见她说的了。我们不感兴趣，小孩。~ EXTERN C0SGIRL girl0

CHAIN C0SGIRL girl4
~让我想想……不能太俗气，可也不能太素，不行。嗯，我想什么好呢……~
END
++ ~你有玫瑰吗，小姑娘？~ EXTERN C0SGIRL girl6
++ ~你觉得呢，塞琳？你最喜欢哪种花？~ EXTERN C0SIRE2J girl7
++ ~再想想，我还是不买花了。~ EXTERN C0SGIRL girl0

CHAIN C0SIRE2J girl5
~不，其实我觉得花很美。只是……~
EXTERN C0SGIRL girl4

CHAIN C0SGIRL girl6
~呸！玫瑰最无聊了。母亲说那是无聊城里人的东西。你需要的是一种……真的……特别出格的花。~
EXTERN C0SGIRL girl8

CHAIN C0SIRE2J girl7
~我……不确定。也许最好让这孩子自己挑。~
EXTERN C0SGIRL girl8

CHAIN C0SGIRL girl8
~哦！我知道了。要亮色的，配得起夫人那条白披巾。对，那一定好看。看这儿！~
== C0SGIRL IF ~Gender(Player1,MALE)~  ~我有向日葵、百合和雏菊。我最喜欢向日葵，连我帽子上都插了一朵，看见了吗？你觉得呢，先生？你觉得哪枝最好看？~
== C0SGIRL IF ~!Gender(Player1,MALE)~  ~我有向日葵、百合和雏菊。我最喜欢向日葵，连我帽子上都插了一朵，看见了吗？你觉得呢，小姐？你觉得哪枝最好看？~
END
++ ~我要向日葵。~ DO ~SetGlobal("C0SireneFlowers","GLOBAL",1)~ EXTERN C0SGIRL girl9
++ ~我要白百合。~ DO ~SetGlobal("C0SireneFlowers","GLOBAL",1)~ EXTERN C0SGIRL girl9
++ ~我要雏菊。~ DO ~SetGlobal("C0SireneFlowers","GLOBAL",1)~ EXTERN C0SGIRL girl9

CHAIN C0SGIRL girl9
~好！一枝给你，一枝给你的夫人。一枝五金币，所以请给十金币！~
END
+ ~PartyGoldGT(19) Gender(Player1,MALE)~ + ~算作二十金币吧。快去给自己买点喝的，别喊哑了嗓子，小姑娘。~ DO ~TakePartyGold(20)~ EXTERN C0SGIRL girl11a
+ ~PartyGoldGT(19) !Gender(Player1,MALE)~ + ~算作二十金币吧。快去给自己买点喝的，别喊哑了嗓子，小姑娘。~ DO ~TakePartyGold(20)~ EXTERN C0SGIRL girl11b
+ ~PartyGoldGT(9)~ + ~给你。~ DO ~TakePartyGold(10)~ EXTERN C0SGIRL girl10
++ ~我没有那么多金币。~ EXTERN C0SGIRL girl0

CHAIN C0SGIRL girl10
~谢谢！祝你过得愉快！~
DO ~EscapeArea()~ EXTERN C0SIRE2J girl12

CHAIN C0SGIRL girl11a
~哇！谢谢你，先生！希望这些花让你和你的夫人非常开心！~
DO ~EscapeArea()~ EXTERN C0SIRE2J girl12

CHAIN C0SGIRL girl11b
~哇！谢谢你，小姐！希望这些花让你和你的夫人非常开心！~
DO ~EscapeArea()~ EXTERN C0SIRE2J girl12

CHAIN C0SIRE2J girl12
~你真的不必……我是说，我很领情，真的，可是……你给我的远超过我应得的，<CHARNAME>。~
END
+ ~!Global("C0SireneRomanceActive","GLOBAL",1) !Global("C0SireneRomanceActive","GLOBAL",2)~ + ~真的？我觉得这枝花配你正合适。~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",1)~ EXTERN C0SIRE2J girl13
+ ~!Global("C0SireneRomanceActive","GLOBAL",1) !Global("C0SireneRomanceActive","GLOBAL",2)~ + ~我送你礼物，是因为我喜欢你。这有什么不对吗？~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",1)~ EXTERN C0SIRE2J girl14
+ ~!Global("C0SireneRomanceActive","GLOBAL",1) !Global("C0SireneRomanceActive","GLOBAL",2)~ + ~哦，你这人。你就不能哪怕一次，只满足于一句简单的「谢谢」吗？~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",1)~ EXTERN C0SIRE2J girl15
+ ~OR(2) Global("C0SireneRomanceActive","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~真的？我觉得这枝花配你正合适。~ EXTERN C0SIRE2J girl13
+ ~OR(2) Global("C0SireneRomanceActive","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~我送你礼物，是因为我喜欢你。这有什么不对吗？~ EXTERN C0SIRE2J girl14
+ ~OR(2) Global("C0SireneRomanceActive","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~哦，你这人。你就不能哪怕一次，只满足于一句简单的「谢谢」吗？~ EXTERN C0SIRE2J girl15

CHAIN C0SIRE2J girl13
~你这么说真是厚道……不管怎样，它*确实*很美。~
END
IF ~OR(2) Global("C0SireneRomanceActive","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ EXTERN C0SIRE2J girl15
IF ~!Global("C0SireneRomanceActive","GLOBAL",1) !Global("C0SireneRomanceActive","GLOBAL",2)~ EXTERN C0SIRE2J girl16

CHAIN C0SIRE2J girl14
~不，当然不是。我真心领情。~
END
IF ~OR(2) Global("C0SireneRomanceActive","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ EXTERN C0SIRE2J girl15
IF ~!Global("C0SireneRomanceActive","GLOBAL",1) !Global("C0SireneRomanceActive","GLOBAL",2)~ EXTERN C0SIRE2J girl16

CHAIN C0SIRE2J girl15
~……谢谢你，<CHARNAME>。~
EXIT

CHAIN C0SIRE2J girl16
~虽然我……不知道你对我有这样的心意，<CHARNAME>。不过这也绝不是不受欢迎的。我在想，从今往后是否……~
EXTERN C0SIRE2J girl15