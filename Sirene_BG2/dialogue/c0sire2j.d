BEGIN C0SIRE2J

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("C0Sirene",LastTalkedToBy)~ EXTERN TRGYP02 g1
END

CHAIN TRGYP02 g1
~你的未来……对我来说奇怪地不清晰，孩子。我感觉到你缺乏方向与目标，可我劝你走你已选定的路，别让你的疑虑告诉你相反的话。~
== C0SIRE2J ~我……我会记住您的话，女士。谢谢您。~
EXIT

// Salvanas

CHAIN IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Name("C0Sirene",LastTalkedToBy)~ THEN SALVANAS C0SireneSalvanas
~那顶白兜帽之下藏着怎样一副容颜，我倒想知道？~
== C0SIRE2J ~您是在跟我说话吗，先生？~
== SALVANAS ~不是别人，甜美的伊尔梅特信徒。啊，我受苦，真的受苦。~
== C0SIRE2J ~您真的受苦？可我看不出这样的迹象。~
== SALVANAS ~是的，最美貌的女士，不过被你的存在点燃的不是我的肉体，而是我的心与灵魂！只需一望你的身影，我心中的痛便可缓解。~
== C0SIRE2J ~我……不确定您在说什么。~
== SALVANAS ~靠近些，亲爱的。我很想细看你美丽的脸、你火焰般的头发、你的……~
= ~……你那美丽的，呃，眼睛。还有你的……那是角吗？哦，天。~
== C0SIRE2J ~……是的。是的，它们确实是。您刚才在说什么？~
== SALVANAS ~呃……恕我失礼。我——我想我喝得太多了……呃，对，就是这样！（求你别杀我……）~
== C0SIRE2J ~*叹气*~
EXIT

// Book Merchant

CHAIN IF WEIGHT #-1
~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneBook","GLOBAL",0)~ THEN IMNBOOK1 C0SireneBook
~抱歉，今天书没多少。这儿生意一直很淡，所以我把大部分存货都运去阿斯卡特拉了。说实话，好几周没跟人说过话了。~
DO ~SetGlobal("C0SireneBook","GLOBAL",1)~
== C0SIRE2J ~打扰一下，先生，我想问您有没有……更简单些的？~
== IMNBOOK1 ~我一眼就看出你有眼光。其实，对那些偏爱轻松读物的人，我确实有几本。您喜欢什么，好女士？历史、悬疑、戏剧？~
== C0SIRE2J ~不，先生。您有没有……*脸红*……言情？~
== IMNBOOK1 ~啊，不必担心，夫人。你不是第一个这么问的，尤其不是第一个这样问的。（眨眼）~
== IMNBOOK1 ~给，这本也许合你的兴趣。这是一个……啊，可我不该剧透。你该在闲暇时自己读。这是部好作品，不必怀疑。~
== C0SIRE2J ~谢谢。多少钱？~
== IMNBOOK1 ~平常那一版要价不低，可你看来品位不错，又念着如今生意这么差，我想五金币就够了。~
== C0SIRE2J ~我……我不会要你为我花你的金币，<CHARNAME>。~
END
+ ~PartyGoldGT(4)~ + ~你说什么？我的金币就是你的金币。给你，商人。~ DO ~TakePartyGold(5) GiveItemCreate("c0sbook","C0Sirene",0,0,0)~ EXTERN C0SIRE2J C0SireneBook1
+ ~PartyGoldGT(4) Global("C0SireneRomanceActive","GLOBAL",1)~ + ~你觉得我会不给你吗？金币在这儿。~ DO ~TakePartyGold(5) GiveItemCreate("c0sbook","C0Sirene",0,0,0)~ EXTERN C0SIRE2J C0SireneBook1
+ ~PartyGoldGT(4) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~你觉得我会不给你吗，我的爱？金币在这儿。~ DO ~TakePartyGold(5) GiveItemCreate("c0sbook","C0Sirene",0,0,0)~ EXTERN C0SIRE2J C0SireneBook1
++ ~我们有更要紧的地方要花金币。~ EXTERN C0SIRE2J C0SireneBook2
++ ~我不会给你买这种傻书的，塞琳。我们走吧。~ EXTERN C0SIRE2J C0SireneBook2

CHAIN C0SIRE2J C0SireneBook1
~你对我太好了，<CHARNAME>。谢谢你。~
== IMNBOOK1 ~跟你做生意很愉快，<PRO_SIRMAAM>。祝你今天愉快。~
EXIT

CHAIN C0SIRE2J C0SireneBook2
~是的，你说得对。原谅我，先生。我怕只能推辞了。~
== IMNBOOK1 ~真是可惜。金币倒不打紧，可再没有比一个爱读书的人错过这样的机会更让我难过的了。啊，德尼尔原谅我！拿去吧，夫人。~
DO ~GiveItemCreate("c0sbook","C0Sirene",0,0,0)~
== C0SIRE2J ~可——可是，我不能收！我还没付……~
== IMNBOOK1 ~请别放在心上。我看着这些好小说卖不出去，每一刻都把我逼近疯狂的边缘。你把它从我手里拿走，反倒是帮了我。~
== C0SIRE2J ~我……我明白了。既然如此，谢谢您，好心的先生。我会好好珍藏它。~
== IMNBOOK1 ~很荣幸，夫人。祝你过得愉快。~
EXIT

// Madam Nin

CHAIN IF WEIGHT #-1
~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!Global("MadamUpset","GLOBAL",1)
OR(2)
Global("C0SireneRomanceActive","GLOBAL",1)
Global("C0SireneRomanceActive","GLOBAL",2)~ THEN MADAM C0SireneMadam
~向您致意，我的<LADYLORD>。我是宁夫人，我来确保您有愉快的陪伴。您对陪伴有兴趣吗，我的<LADYLORD>？~
== C0SIRE2J ~不，<PRO_HESHE>对这种低贱败坏的服务没有兴趣。从<PRO_HISHER>眼前滚开，卖肉的，免得你活着后悔！~
EXTERN MADAM 17

// Bathing Scene

CHAIN IF WEIGHT #-1
~Global("C0SireneBathe","GLOBAL",1)~ THEN PLAYER1 bathe.0
~（这一天又长又累，今日在外沾的尘土与气味还黏在你身上。恰好队伍扎营的地方离一条溪流不远。你想在就寝前去洗个澡。）~ [C0BLANK]
DO ~SetGlobal("C0SireneBathe","GLOBAL",2)~
END
++ ~（去洗澡）~ DO ~FadeFromColor([30.0],0)~ EXTERN PLAYER1 bathe.2
++ ~（去睡觉）~ EXTERN PLAYER1 bathe.1a

CHAIN PLAYER1 bathe.1a
~（你决定懒得去冷溪里洗澡，宁愿等有了像样的澡堂再说。你回到舒适的铺盖上，渐渐睡去。）~
DO ~RestParty()~ EXIT

CHAIN PLAYER1 bathe.1b
~（你决定不去打扰那个已经占了这条溪的人，转身回营地。你回到舒适的铺盖上，渐渐睡去。）~
DO ~RestParty()~ EXIT

CHAIN PLAYER1 bathe.2
~（你觉得洗个澡会是件舒坦事，就独自往溪边去，想好好放松一下，只希望水别太凉。）~
= ~（走近溪边，你先试了试水，觉得还过得去。你开始脱衣，可附近有什么存在让你停手，反射性地去摸武器。）~
= ~（可你在把注意力转回溪流之前，看不见周围有任何动静。你发现水里已经有人，而那人还没注意到你。）~
END
++ ~喂？~ EXTERN C0SIRE2J bathe.4
++ ~（尽量悄声靠近）~ EXTERN PLAYER1 bathe.3
++ ~（收拾东西赶快离开）~ EXTERN PLAYER1 bathe.1b

CHAIN PLAYER1 bathe.3
~（你慢慢向那神秘的人移动，小心不做突然的动作，也不发出会惊动对方的声响。走近些后，你看出那沐浴的身影在月光下轮廓分明是女性。）~
= ~（等你够近时，你认出那是塞琳。没有盔甲，她的身形意外地轻盈娇小，肌肉精瘦。可她的背上布满痕迹与伤疤，许多丑陋而看着就痛。她忽然察觉到你的存在，惊得转过身。）~
EXTERN C0SIRE2J bathe.4

APPEND C0SIRE2J

IF ~~ bathe.4
SAY ~（抽气）啊！<CHARNAME>！请——原谅我，我没注意到你也来洗澡。我——我马上就好，若你肯稍等片刻……~
= ~（她红着脸，一边想用双臂遮住自己，一边去够自己的衣物。）~
= ~<CHARNAME>，你……介意转过去一会儿吗？~
++ ~哦，对。~ + bathe.6
++ ~是，我……对不起。我没看。你继续。~ + bathe.6
+ ~Global("C0SireneSlept","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~怎么了？又不是我没见过的东西。~ + bathe.7a
+ ~!Global("C0SireneSlept","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~怎么了？反正我迟早会看见。~ + bathe.7a
+ ~Gender(Player1,FEMALE)~ + ~你担心什么？我们都是女人。不必难为情。~ + bathe.7b
++ ~对不起，塞琳。我让你自己来吧。~ + bathe.5
END

IF ~~ bathe.5
SAY ~是的……明早见。晚安，<CHARNAME>。~
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ bathe.6
SAY ~（你听见轻轻的溅水声，塞琳离开水面，遮住了自己。）好了……你可以转回来了，<CHARNAME>。~
= ~（你转过身，看见塞琳已用一件素色浴袍遮住自己，湿发在月光下闪光。她的眼睛平日介于金色与黄绿之间，此刻因她的夜视泛着淡淡的橙色微光。）~
= ~请——原谅我，<CHARNAME>。我没料到今晚还有别人来洗澡，而且……我，嗯……我想我该问问你之前看到了多少，在……~
++ ~我没看到多少，只是你的背。我发誓。~ + bathe.8
++ ~你的身材很好，塞琳。你为什么要这么害羞？~ + bathe.9
++ ~比我愿意看到的更多。那些疤和瘀伤看着挺糟。~ + bathe.10
++ ~你知道，我现在真没心情聊天。明天见。~ + bathe.5
END

IF ~~ bathe.7a
SAY ~*叹气*<CHARNAME>，请别开玩笑。你这样盯着我让我不自在……求你，转过去一会儿。~
IF ~~ + bathe.6
END

IF ~~ bathe.7b
SAY ~不是因为那个我才……我稍后解释，<CHARNAME>。~
IF ~~ + bathe.6
END

IF ~~ bathe.8
SAY ~啊……真的就这些？我想我该松口气，可是……~
IF ~~ + bathe.10
END

IF ~~ bathe.9
SAY ~不——不，问题不在我的身体，而是……~
IF ~~ + bathe.10
END

IF ~~ bathe.10
SAY ~我……我只是怕你看见了……我的疤。它们远不好看，而且……我绝不愿让你看见它们。~
++ ~没那么糟。我自己也有一身疤，看见没？~ + bathe.11
++ ~我承认它们不好看。可它们没毁掉你的样子。~ + bathe.12
++ ~你为什么这么在意把它们藏起来？~ + bathe.13
++ ~这有点尴尬了。我想我该去睡了。~ + bathe.5
END

IF ~~ bathe.11
SAY ~是的，可是……~
IF ~~ + bathe.13
END

IF ~~ bathe.12
SAY ~*叹气*那你这么一说，我那些遮掩倒显得虚荣了，<CHARNAME>。~
IF ~~ + bathe.13
END

IF ~~ bathe.13
SAY ~我……我不知道该怎么好好解释。我不愿让自己听起来像是在为这些疤羞耻……不，恰恰相反。我以赢得它们的那些战斗为傲。可是……~
= ~自从你和我……谈过之后，我发觉自己在你面前更在意自己的外貌了。我想我是不愿这些旧伤……影响你对我的看法。~
++ ~你真觉得我那么肤浅？别这样，塞琳。你该知道我不是那种人。~ + bathe.14
++ ~别担心，塞琳。我知道你的疤对你意味着什么，见过它们之后我也不会看轻你。~ + bathe.14
++ ~哦，这就解释了清晨的梳洗。还有那些香油。~ + bathe.15
++ ~听着，塞琳，你想着我让我很受宠若惊，可我只想我们继续做朋友，仅此而已。~ + bathe.16
++ ~我不想谈这个。晚安，塞琳。~ + bathe.5
END

IF ~~ bathe.14
SAY ~（她不情愿地笑了）听你这么说让我安心，<CHARNAME>。虽然你在这里撞见我仍让我有点难为情，可我承认……~
IF ~~ + bathe.17
END

IF ~~ bathe.15
SAY ~*脸红*<CHARNAME>！求你，别这样逗我。那些都是为了……~
IF ~~ + bathe.17
END

IF ~~ bathe.16
SAY ~……是的。我明白。那我们就让这事过去吧。~
= ~夜深了。我该回营地休息了。晚安，<CHARNAME>。~
IF ~~ DO ~SetGlobal("C0SireneBathe","GLOBAL",2) SetGlobal("C0SireneRomanceActive","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ bathe.17
SAY ~（即使在黑暗里，你也确信她脸红了）时——时候不早了，<CHARNAME>。我该回营地了。晚安……~
IF ~~ DO ~RestParty()~ EXIT
END
END

// Cromwell

EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("C0SW2H")~ THEN GOTO CROMWELL1
END
  
APPEND WSMITH01
  IF ~~ THEN BEGIN CROMWELL1 SAY ~嗯，你这儿有什么，嗯？冷铁？闻着像烟和灰……~
    IF ~PartyHasItem("C0SW2H")
        !PartyHasItem("MISC6M")~ THEN GOTO CROMWELL2
    IF ~PartyHasItem("C0SW2H")
        PartyHasItem("MISC6M")~ THEN GOTO CROMWELL3
  END
  
  IF ~~ THEN BEGIN CROMWELL2 SAY ~是啊，你这把剑真够邪的。看得出用过些日子了。可你若有一颗魔物的心，我能让它更咬人些。~
    IF ~~ THEN GOTO CROMWELLNO
  END
  
  IF ~~ THEN BEGIN CROMWELL3 SAY ~是啊，你这把剑真够邪的。看得出用过些日子了。而且以摩拉丁的熔炉起誓，你还有一颗新鲜的魔物心！你若有一万五千金币，我能用魔物的血让这把剑更咬人些。~
    IF ~PartyGoldLT(5000)~ THEN REPLY ~我没有那么多金币。~ GOTO CROMWELLNO
    IF ~PartyGoldGT(4999)~ THEN REPLY ~听起来不错。就做吧。~ DO ~SetGlobal("C0BrimstoneUpgrade","ar0334",1)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(5000)
                                                 TakePartyItemNum("C0SW2H",1)
                                                 DestroyItem("C0SW2H")
                                                 TakePartyItemNum("MISC6M",1)
                                                 DestroyItem("MISC6M")
                                                 DestroyGold(5000)~ GOTO 56
    IF ~~ THEN REPLY ~现在不行。还有别的吗？~ GOTO CROMWELLNO
  END

  IF WEIGHT #-1 ~GlobalGT("C0BrimstoneCraft","ar0334",0)~ THEN BEGIN CROMWELL4 SAY ~好啦，给你，我的朋友。好好用。你若再碰上什么有趣的东西，你知道该往哪儿送，嗯？~
    IF ~~ THEN DO ~SetGlobal("C0BrimstoneCraft","ar0334",0)~ EXIT
  END

  IF ~~ THEN BEGIN CROMWELLNO SAY ~那就继续走吧……~
   COPY_TRANS WSMITH01 13
  END
END

// Yoshimo's betrayal

I_C_T YOSHJ 113 C0SireneYOSHJ113
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~吉野……不，不可能。你*诅咒*了你自己。是什么逼你这么做？~
END

I_C_T YOSHIMOX 5 C0SireneYOSHIMOX5
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我明白了……原来这就是束缚你灵魂的苦难。尽管发生了这一切，吉野，我仍真心遗憾事情非得走到这一步。~
END

// Yoshimo's heart

INTERJECT SLILMAT 0 C0SireneSLILMAT0
== C0SIRE2J IF ~InParty("C0Sirene") Range("C0Sirene",15) !StateCheck("C0Sirene",CD_STATE_NOTVALID) PartyHasItem("miscbu")~ THEN ~兄弟……我必须求你一件事。我这里有一颗逝去朋友的心。他死前……向伊尔梅特大人求了审判。~
EXTERN SLILMAT 10

I_C_T SLILMAT 10 C0SireneSLILMAT10
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~……<CHARNAME>？~
END

INTERJECT WILMAT 0 C0SireneWILMAT0
== C0SIRE2J IF ~InParty("C0Sirene") Range("C0Sirene",15) !StateCheck("C0Sirene",CD_STATE_NOTVALID) PartyHasItem("miscbu")~ THEN ~姐妹……我必须求你一件事。我这里有一颗逝去朋友的心。他死前……向伊尔梅特大人求了审判。~
EXTERN WILMAT 4

I_C_T WILMAT 4 C0SireneWILMAT4
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~……<CHARNAME>？~
END

// Spellhold - non-romanced

INTERJECT Player1 3 C0SireneSpellholdDizzy0
== C0SIRE2J IF ~InParty("C0Sirene") Range("C0Sirene",15) !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Global("C0SireneRomanceActive","GLOBAL",2)~ THEN
~你还好吗，我的朋友？你的脸色明显显出不适。~
END
++ ~我没什么事。~ EXTERN C0SIRE2J pl1.1
++ ~我没事。只是……有点晕。~ EXTERN C0SIRE2J pl1.2
++ ~有什么不对劲。我想艾瑞尼卡斯对我做了什么。~ EXTERN C0SIRE2J pl1.3

CHAIN C0SIRE2J pl1.1
~请原谅我这么说，<CHARNAME>，可我怀疑。若有什么我能帮上忙的，就告诉我。~
EXIT

CHAIN C0SIRE2J pl1.2
~是吗？那我们也许该停下来歇一会儿。这地方不安全，而我们需要你状态良好来领着我们。~
EXIT

CHAIN C0SIRE2J pl1.3
~他做了什么？我怕是最坏的情形，<CHARNAME>。若再发生，告诉我。~
EXIT

// Spellhold - romanced

INTERJECT Player1 3 C0SireneSpellholdDizzy1
== C0SIRE2J IF ~InParty("C0Sirene") Range("C0Sirene",15) !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneRomanceActive","GLOBAL",2)~ THEN
~<CHARNAME>？你——你不舒服吗？求你，跟我说话。~
END
++ ~我没事……真的。~ EXTERN C0SIRE2J pl1.4
++ ~我身上有什么不对，塞琳，可我不知道是什么。~ EXTERN C0SIRE2J pl1.5
++ ~让我抱着你，塞琳。我需要你的支撑。~ EXTERN C0SIRE2J pl1.6

CHAIN C0SIRE2J pl1.4
~<CHARNAME>……求你，别对我说谎。那不会让我好受。~
EXIT

CHAIN C0SIRE2J pl1.5
~你在吓我，<CHARNAME>。也许是这地方……我们快找个出去的路吧。~
EXIT

CHAIN C0SIRE2J pl1.6
~（她点头，紧紧抱住你）你连问都不必，<CHARNAME>。我会一直在你身边，永远。~
EXIT

// Slayer reaction

I_C_T PLAYER1 5 C0SireneFirstSlayerChange1 
== C0SIRE2J IF ~InParty("C0Sirene") See("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~以伊尔梅特之名，那……那*东西*是邪恶的化身，<CHARNAME>。那跟我见过的任何东西都不一样……是你的污秽显形了吗？~
END

// Non-romance, tree of life LG

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneTreeOfLife","GLOBAL",0) !Global("C0SireneRomanceActive","GLOBAL",2) Alignment("C0Sirene",LAWFUL_GOOD)~ EXTERN PLAYER1 pl2
END

CHAIN PLAYER1 pl2
~塞琳，伊尔梅特的圣武士，曾在你身边历经诸多试炼。她一次又一次向你证明了她的忠诚与正直，可你不确定她是否真知道前头等着什么。~
DO ~SetGlobal("C0SireneTreeOfLife","GLOBAL",1)~
END
++ ~塞琳，这是我和艾瑞尼卡斯之间的事。你在这其中的部分已经结束了。~ EXTERN C0SIRE2J pl2.1
++ ~还有许多别人需要你，塞琳。别为我抛掉你的命。~ EXTERN C0SIRE2J pl2.1
++ ~该了结一切了。你准备好了吗？~ EXTERN C0SIRE2J pl2.1

CHAIN C0SIRE2J pl2.1
~在你最需要帮助的至暗时刻，我绝不会从你身边走开，<CHARNAME>，尤其不会在你最需要我时。无论我是生是死，能见你复原就值得。我的命随你取用，我的朋友。~
END
COPY_TRANS PLAYER1 33 

// Non-romance, tree of life CG

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneTreeOfLife","GLOBAL",0) !Global("C0SireneRomanceActive","GLOBAL",2) !Alignment("C0Sirene",LAWFUL_GOOD)~ EXTERN PLAYER1 pl4
END

CHAIN PLAYER1 pl4
~塞琳，伊尔梅特的前圣武士，曾在你身边历经诸多试炼。在你的引导下，她寻到了自己的路，全然掌握自己的命运。可她真准备好为你冒一切风险吗？~
DO ~SetGlobal("C0SireneTreeOfLife","GLOBAL",1)~
END
++ ~塞琳，这是我和艾瑞尼卡斯之间的事。你在这其中的部分已经结束了。~ EXTERN C0SIRE2J pl2.1
++ ~还有许多别人需要你，塞琳。别为我抛掉你的命。~ EXTERN C0SIRE2J pl2.1
++ ~该了结一切了。你准备好了吗？~ EXTERN C0SIRE2J pl2.1

// Romance, tree of life LG

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneTreeOfLife","GLOBAL",0) Global("C0SireneRomanceActive","GLOBAL",2) Alignment("C0Sirene",LAWFUL_GOOD)~ 
EXTERN PLAYER1 pl3
END

CHAIN PLAYER1 pl3
~塞琳，伊尔梅特的圣武士，你成了她最亲密的朋友，最终成为她的爱人。她望着你，眼里满是温暖。~
DO ~SetGlobal("C0SireneTreeOfLife","GLOBAL",1)~
END
++ ~塞琳，我——~ EXTERN C0SIRE2J pl3.1

CHAIN C0SIRE2J pl3.1
~（微笑）不，<CHARNAME>。这一回，让我来说。~
= ~没有言语能向你解释我的感受，可我觉得仍必须说。~
= ~我们在一起的这些时候，我见过许多。我受过的苦、失去与得到的，多过我余生其余的年月，可自从遇见你以来的这些时光，比我无目的地活过的所有年岁都更重要。谢谢你。~
= ~我爱你。你对我已比众神、比世界……甚至比我自己的性命更重要。如今与你分离，以及想到我可能再也见不到你，会是比站在你身边所冒的任何风险都更糟的命运。我会跟着你，无论后果如何。~
END
COPY_TRANS PLAYER1 33

// Romance, tree of life CG

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneTreeOfLife","GLOBAL",0) Global("C0SireneRomanceActive","GLOBAL",2) !Alignment("C0Sirene",LAWFUL_GOOD)~ 
EXTERN PLAYER1 pl5
END

CHAIN PLAYER1 pl5
~塞琳，伊尔梅特的前圣武士，你成了她最亲密的朋友，最终成为她的爱人。她望着你，眼里满是温暖。~
DO ~SetGlobal("C0SireneTreeOfLife","GLOBAL",1)~
END
++ ~塞琳，我——~ EXTERN C0SIRE2J pl3.1

// Tree of Life, Irenicus is dead.

I_C_T PLAYER1 16 C0SireneIrenicusIsDead1
== C0SIRE2J IF ~InParty("C0Sirene") Range("C0Sirene",15) !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~这就是终点吗？对我来说感觉没什么不同，可你呢，<CHARNAME>？~
END

// Hell

I_C_T PLAYER1 25 C0SireneEnteringHell1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~我……我以为有一刻看见了三位神殿。那像是我从不敢想象的梦……可我听见了你的喊声，于是我转过身来。永恒的安息似乎那么近，可是……我站在你身边，<CHARNAME>，即使身死亦然。~
END

I_C_T PLAYER1 25 C0SireneEnteringHell2
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~那么，死亡对我们俩都不是终点……我本以为这也许就是等着我的命运，可是……若我要在这地狱里也继续陪着你，那就如此吧。~
END

// Irenicus in hell

I_C_T HELLJON 7 C0SireneThirdBattleWithIrenicus1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~以伊尔梅特之名，你要为你的罪付出代价，艾瑞尼卡斯。对你再没有仁慈了，无论来自我们，还是来自众神！~
END

I_C_T HELLJON 8 C0SireneThirdBattleWithIrenicus1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~以伊尔梅特之名，你要为你的罪付出代价，艾瑞尼卡斯。对你再没有仁慈了，无论来自我们，还是来自众神！~
END

I_C_T HELLJON 9 C0SireneThirdBattleWithIrenicus1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~以伊尔梅特之名，你要为你的罪付出代价，艾瑞尼卡斯。对你再没有仁慈了，无论来自我们，还是来自众神！~
END

I_C_T HELLJON 10 C0SireneThirdBattleWithIrenicus1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~以伊尔梅特之名，你要为你的罪付出代价，艾瑞尼卡斯。对你再没有仁慈了，无论来自我们，还是来自众神！~
END

I_C_T HELLJON 7 C0SireneThirdBattleWithIrenicus2
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~你犯下的罪，死一千次也不足以赎清，艾瑞尼卡斯。愿你的死来得快，因为你最终的审判不会快！~
END

I_C_T HELLJON 8 C0SireneThirdBattleWithIrenicus2
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~你犯下的罪，死一千次也不足以赎清，艾瑞尼卡斯。愿你的死来得快，因为你最终的审判不会快！~
END

I_C_T HELLJON 9 C0SireneThirdBattleWithIrenicus2
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~你犯下的罪，死一千次也不足以赎清，艾瑞尼卡斯。愿你的死来得快，因为你最终的审判不会快！~
END

I_C_T HELLJON 10 C0SireneThirdBattleWithIrenicus2
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~你犯下的罪，死一千次也不足以赎清，艾瑞尼卡斯。愿你的死来得快，因为你最终的审判不会快！~
END

// ROMANCE CONTENT: the second slayer change

INTERJECT Player1 7 C0SireneSecondSlayerChange0
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) OR(2) Global("C0SireneRomanceActive","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ THEN ~<CHARNAME>……你究竟睡过没有？你脸色苍白得可怕……~
END
++ ~离我远点，我要转变了！~ EXTERN C0SIRE2J C0SireneSecondSlayerChange1
++ ~它又来了，塞琳！能跑就跑！~ EXTERN C0SIRE2J C0SireneSecondSlayerChange1
++ ~我觉得……不对劲……~ EXTERN C0SIRE2J C0SireneSecondSlayerChange1

CHAIN C0SIRE2J C0SireneSecondSlayerChange1
~你在说什么，<CHARNAME>？我听不见你……不，神明在上，不！~
DO ~SetGlobal("C0SireneSecondSlayerChange","GLOBAL",1)
ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~
EXIT

INTERJECT Player1 10 C0SireneSlayerSurvived1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) OR(2) Global("C0SireneRomanceActive","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2) Global("C0SireneSecondSlayerChange","GLOBAL",1)~ THEN ~你……<CHARNAME>，你……~
= ~这……这必须结束。我们必须让你复原，否则……我不敢想象。~
END
IF ~~ EXIT

EXTEND_BOTTOM Player1 10
IF ~Dead("C0Sirene") Global("C0SireneSecondSlayerChange","GLOBAL",1)~ EXTERN Player1 12
END

// Bodhi abduction

EXTEND_BOTTOM BODHIAMB 5
IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneRomanceActive","GLOBAL",2)~ EXTERN BODHIAMB C0SireneKidnap
END

CHAIN BODHIAMB C0SireneKidnap
~你追随至此，是希望取回对你珍贵的东西。我说，你越是这样下去，失去的只会越多。~
== BODHIAMB ~啊，腐化圣武士总是最令人满意。如此自以为是、如此傲慢……而这一个的背景最是有趣。她体内的魔性之血会欣赏我将要做的事，我想。~
== C0SIRE2J ~我知道你打算做什么，怪物，可伊尔梅特会护住我的灵魂。你得不到我。~
== BODHIAMB ~你那可怜的神护不了你，塞琳。你必定感觉到了黑暗在召唤、在欢迎你……~
== C0SIRE2J ~不！我把性命交在我主手中！<CHARNAME>，杀了我！~
END
++ ~（照她说的做）~ EXTERN C0SIRE2J C0SireneKidnap1
++ ~我……我下不了手！~ EXTERN BODHIAMB C0SireneKidnap2
++ ~（什么都不做）~ EXTERN BODHIAMB C0SireneKidnap2

CHAIN C0SIRE2J C0SireneKidnap1
~谢谢你……~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("c0bodhi")~ EXIT

CHAIN BODHIAMB C0SireneKidnap2
~你真下得了手吗，<CHARNAME>，嗯？砍倒最亲近你的人？我怀疑。现在乖一点，跟我来……~
== C0SIRE2J ~我不会伤害<CHARNAME>，即使我必须倒下。我以伊尔梅特之名选择死亡！~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("c0bodhi2")~ EXIT

CHAIN IF WEIGHT #-1
~Global("C0SireneVampire","GLOBAL",3)~ THEN BODHIAMB C0SireneKidnap3
~你真以为这有什么用吗，愚蠢的<CHARNAME>？我无论如何都要得到她。她那具冷掉的尸体也行。再跟着我往前走，你会失去超乎想象的东西……就从现在开始！~
END
IF ~~ DO ~DialogueInterrupt(FALSE)
CreateCreatureObject("VAMPIM01",Myself,0,0,0)
CreateCreatureObject("VAMPIM01",Myself,0,0,0)
CreateCreatureObject("VAMPIM01",Myself,0,0,0)
CreateCreatureObject("VAMPIM01",Myself,0,0,0)
ForceSpell(Myself,DRYAD_TELEPORT)
ForceSpell("C0Sirene",DRYAD_TELEPORT)
Wait(1)
SetGlobal("Deactivate0801","AR0800",3)
DestroySelf()~ UNSOLVED_JOURNAL @100001 EXIT

A_T_T C6bodhi 21 ~!Global("C0SireneVampire","GLOBAL",3)~ DO 0

EXTEND_BOTTOM C6BODHI 21
IF ~Global("C0SireneVampire","GLOBAL",3)~ + 23
END

EXTEND_BOTTOM C6BODHI 23
+ ~Global("C0SireneVampire","GLOBAL",3)~ + ~你已经夺走太多了！把爱蒙的灵魂还回来，还有塞琳的遗体！~ EXTERN C6BODHI C0SireneAb
+ ~Global("C0SireneVampire","GLOBAL",3)~ + ~而你已经兑现了那个承诺。把塞琳的遗体还回来，也许我会仁慈些。~ EXTERN C6BODHI C0SireneAb
+ ~Global("C0SireneVampire","GLOBAL",3)~ + ~单为你偷走塞琳，我就会追你到天涯。我不会失去从你手中救她的最后希望。~ EXTERN C6BODHI C0SireneAb
+ ~Global("C0SireneVampire","GLOBAL",3)~ + ~你太相信感情了。偷走塞琳的遗体救不了你。~ EXTERN C6BODHI C0SireneAbConf
END

CHAIN C6BODHI C0SireneAbConf
~有趣的手段，不过我确信她的命运仍会成为一个警戒，无论你希不希望她回来。~
END
IF ~~ EXTERN C6BODHI C0SireneAb

CHAIN C6BODHI C0SireneAb
~你的小魔裔宠物死了，<CHARNAME>。真了不起，真的。也许她那可怜的神毕竟与她同在，因为我把她的遗体放进这些墓室之后，竟连碰都碰不得她，更别说把她变成我们的一员。~
= ~可那无关紧要。我已从你手中夺走了你最珍视的东西，<CHARNAME>，正如我所愿。不过别怕。你会跟你心爱的塞琳一同入土。~
= ~不……那不是等着你的命运，对吧，嗯？哦，这多令人愉快……知道你的灵魂注定归于虚无、再也见不到你所爱之人，我会更享受看着你的生命消逝！~
END
IF ~~ EXTERN C6BODHI 22

// Sirene's body

CHAIN IF WEIGHT #-1
~Global("C0SireneVampire","GLOBAL",3)
Global("C0SireneBody","AR0809",2)~ THEN PLAYER1 body
~（塞琳的遗体在你怀里冰冷无生气。尽管波迪百般嘲讽，她并没有骗你——塞琳死了。）~ [C0BLANK]
DO ~SetGlobal("C0SireneBody","AR0809",3)
SetGlobal("C0SireneVampire","GLOBAL",4)~
END
IF ~InParty("Imoen2")~ EXTERN IMOEN2J body.1
IF ~!InParty("Imoen2") InParty("Aerie")~ EXTERN AERIEJ body.2
IF ~!InParty("Imoen2") !InParty("Aerie") InParty("Jaheira")~ EXTERN JAHEIRAJ body.3
IF ~!InParty("Imoen2") !InParty("Aerie") !InParty("Jaheira") InParty("Mazzy")~ EXTERN MAZZYJ body.4
IF ~!InParty("Imoen2") !InParty("Aerie") !InParty("Jaheira") !InParty("Mazzy") InParty("Keldorn")~ EXTERN KELDORJ body.5
IF ~!InParty("Imoen2") !InParty("Aerie") !InParty("Jaheira") !InParty("Mazzy") !InParty("Keldorn") InParty("Anomen")~ EXTERN ANOMENJ body.6
IF ~!InParty("Imoen2") !InParty("Aerie") !InParty("Jaheira") !InParty("Mazzy") !InParty("Keldorn") !InParty("Anomen") InParty("Viconia")~ EXTERN VICONIJ body.7
IF ~!InParty("Imoen2") !InParty("Aerie") !InParty("Jaheira") !InParty("Mazzy") !InParty("Keldorn") !InParty("Anomen") !InParty("Viconia") InParty("Cernd")~ EXTERN CERNDJ body.8
IF ~!InParty("Imoen2") !InParty("Aerie") !InParty("Jaheira") !InParty("Mazzy") !InParty("Keldorn") !InParty("Anomen") !InParty("Viconia") !InParty("Cernd")~ UNSOLVED_JOURNAL @100002
EXIT

CHAIN IMOEN2J body.1
~我——我很抱歉，小<PRO_BROTHERSISTER>。我不敢相信她就这么走了……可也许不是永别。总该有办法把她带回来。~
END
IF ~~ DO ~~ UNSOLVED_JOURNAL @100002
EXIT

CHAIN AERIEJ body.2
~不！她——她不可能是……她不可能死了！*啜泣*我……我很抱歉，<CHARNAME>。她是这样……这样死去的，我的魔法帮不上忙。也——也许伊尔梅特的祭司能帮我们。~
END
IF ~~ DO ~~ UNSOLVED_JOURNAL @100002
EXIT

CHAIN JAHEIRAJ body.3
~这……对你一定很难，<CHARNAME>。虽然这违背我的教导，可我实在不忍看你这样痛苦。也许还有希望……也许我们能向伊尔梅特教会求助。~
END
IF ~~ DO ~~ UNSOLVED_JOURNAL @100002
EXIT

CHAIN MAZZYJ body.4
~以阿沃林的慈悲……她不该落得这样不光彩的死。我知道那是什么滋味，<CHARNAME>，帕特里克倒下时我便如此。也许我们该把她带给伊尔梅特的祭司。~
END
IF ~~ DO ~~ UNSOLVED_JOURNAL @100002
EXIT

CHAIN KELDORJ body.5
~我这一生见过许多同伴倒下，可她太年轻，不该如此。你们俩本该一起过漫长充实的一生。无论如何，别绝望，我的朋友，这城里的伊尔梅特祭司也许还能救她。~
END
IF ~~ DO ~~ UNSOLVED_JOURNAL @100002
EXIT

CHAIN ANOMENJ body.6
~这……不是她应得的。我愿借海姆之力把她带回，可我怕没有魔法能逆转这样牺牲性的死亡。我真心遗憾，<CHARNAME>。我们该把她的遗体带给她同教的教士。~
END
IF ~~ DO ~~ UNSOLVED_JOURNAL @100002
EXIT

CHAIN VICONIJ body.7
~那么，这卓尔娘们的愚蠢终究要了她的命，正如我所料。别看我，<CHARNAME>，她那种状态下我没有力量复原她。她在这座破城里不是有同伙吗？必要的话去求他们。~ 
END
IF ~~ DO ~~ UNSOLVED_JOURNAL @100002
EXIT

CHAIN CERNDJ body.8
~死亡是自然循环必要的一环，可也许这一回能有例外。无论如何，我怕塞琳的仪式已经使她无法以寻常方式回来。也许当地的伊尔梅特祭司能帮我们。~
END
IF ~~ DO ~~ UNSOLVED_JOURNAL @100002
EXIT

// Vampirism - priest of Ilmater

EXTEND_BOTTOM SLILMAT 0 #2
+ ~PartyHasItem("c0sbody")~ + ~兄弟，我求你相助。我的心爱之人，与你同信的一位，为保护我而死。你可有什么办法让她复生？~ EXTERN SLILMAT C0SireneSLILMAT1
END

CHAIN SLILMAT C0SireneSLILMAT1
~怎么……这是伊尔梅特圣战者中的塞琳姐妹！她怎么了？~
END
++ ~一个强大的吸血鬼想转变她，可她做了……什么来阻止。~ EXTERN SLILMAT C0SireneSLILMAT2

CHAIN SLILMAT C0SireneSLILMAT2
~请让我看看她。~
= ~以伊尔梅特之名，这是……~
= ~我明白了……这比我预想的要糟得多。我很遗憾这么说，可是……我怕她已彻底去了。~
= ~若只是把她的灵魂从亡者之境召回来，我会乐于竭尽所能。可是……若她以性命为牺牲，使自己免于不死者的命运……那我怕我的祈祷触不到她。~
= ~我无能为力。我真心遗憾。~
END
++ ~她到底做了什么来保护自己？~ EXTERN SLILMAT C0SireneSLILMAT3
++ ~这不行。求你，我们总得试试。~ EXTERN SLILMAT C0SireneSLILMAT4
++ ~这还不够。你现在就把她复原，否则……~ EXTERN SLILMAT C0SireneSLILMAT4

CHAIN SLILMAT C0SireneSLILMAT3
~我说不准……但看来她以自己的性命为牺牲，祝福了她的身体，使它免于腐化。看来她成功了，可是……~
= ~看来结果是，她也使自己无法被复活。这就是这样牺牲的代价……你对她的意义一定非常重大，<PRO_BROTHERSISTER>。~
END
++ ~我必须把她要回来。你真的什么都做不了？~ EXTERN SLILMAT C0SireneSLILMAT4
++ ~这还不够。你现在就把她复原，否则……~ EXTERN SLILMAT C0SireneSLILMAT4

CHAIN SLILMAT C0SireneSLILMAT4
~也许……~
= ~也许还有希望……可唯一能救她的是伊尔梅特本人。若她的信仰真诚，也许他会再赐她生命……~
= ~我会准备向伊尔梅特大人祈愿的仪式。她的灵魂此刻多半已在通往审判的路上，所以我们不能浪费时间。这至少需要一整天，所以请当在自己家里，我的<PRO_LADYLORD>。~
DO ~TakePartyItemNum("C0SBODY",1)
DestroyItem("C0SBODY")
ClearAllActions()
StartCutsceneMode()
StartCutscene("C0ILM01")~ EXIT

EXTEND_BOTTOM WILMAT 0 #2
+ ~PartyHasItem("c0sbody")~ + ~姐妹，我求你相助。我的心爱之人，与你同信的一位，为保护我而死。你可有什么办法让她复生？~ EXTERN WILMAT C0SireneWILMAT1
END

CHAIN WILMAT C0SireneWILMAT1
~怎么……这是伊尔梅特圣战者中的塞琳姐妹！她怎么了？~
END
++ ~一个强大的吸血鬼想转变她，可她做了……什么来阻止。~ EXTERN WILMAT C0SireneWILMAT2

CHAIN WILMAT C0SireneWILMAT2
~请让我看看她。~
= ~以伊尔梅特之名，这是……~
= ~我明白了……这比我预想的要糟得多。我很遗憾这么说，可是……我怕她已彻底去了。~
= ~若只是把她的灵魂从亡者之境召回来，我会乐于竭尽所能。可是……若她以性命为牺牲，使自己免于不死者的命运……那我怕我的祈祷触不到她。~
= ~我无能为力。我真心遗憾。~
END
++ ~她到底做了什么来保护自己？~ EXTERN WILMAT C0SireneWILMAT3
++ ~这不行。求你，我们总得试试。~ EXTERN WILMAT C0SireneWILMAT4
++ ~这还不够。你现在就把她复原，否则……~ EXTERN WILMAT C0SireneWILMAT4

CHAIN WILMAT C0SireneWILMAT3
~我说不准……但看来她以自己的性命为牺牲，祝福了她的身体，使它免于腐化。看来她成功了，可是……~
= ~看来结果是，她也使自己无法被复活。这就是这样牺牲的代价……你对她的意义一定非常重大，<PRO_BROTHERSISTER>。~
END
++ ~我必须把她要回来。你真的什么都做不了？~ EXTERN WILMAT C0SireneWILMAT4
++ ~这还不够。你现在就把她复原，否则……~ EXTERN WILMAT C0SireneWILMAT4

CHAIN WILMAT C0SireneWILMAT4
~也许……~
= ~也许还有希望……可唯一能救她的是伊尔梅特本人。若她的信仰真诚，也许他会再赐她生命……~
= ~我会准备向伊尔梅特大人祈愿的仪式。她的灵魂此刻多半已在通往审判的路上，所以我们不能浪费时间。这至少需要一整天，所以请当在自己家里，我的<PRO_LADYLORD>。~
DO ~TakePartyItemNum("C0SBODY",1)
DestroyItem("C0SBODY")
ClearAllActions()
StartCutsceneMode()
StartCutscene("C0ILM02")~ EXIT

// Post-Resurrection

CHAIN IF WEIGHT #-1 ~Global("C0SireneVampire","GLOBAL",5) Global("C0SirenePostResurrection","GLOBAL",0)~ THEN SLILMAT postres
~我得恭喜你，姐妹，经过那样艰难的试炼还能获准回到这世界。你必定蒙我们主的恩宠，才得到这样的礼物。~
DO ~SetGlobal("C0SirenePostResurrection","GLOBAL",1)~ EXTERN SLILMAT 0

CHAIN IF WEIGHT #-1 ~Global("C0SireneVampire","GLOBAL",5) Global("C0SirenePostResurrection","GLOBAL",0)~ THEN WILMAT postres2
~我得恭喜你，姐妹，经过那样艰难的试炼还能获准回到这世界。你必定蒙我们主的恩宠，才得到这样的礼物。~
DO ~SetGlobal("C0SirenePostResurrection","GLOBAL",1)~ EXTERN WILMAT 0

// Waukeen's Promenade

I_C_T AERIE 26 C0SireneAERIE26
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~这不是食人魔，<CHARNAME>。至少不是邪恶的生物。~
END

I_C_T QUAYLE 1 C0SireneQUAYLE1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~（微笑）这还是你我都记得的那个奎尔吗，<CHARNAME>？~
END

// Faldorn

I_C_T CEFALDOR 0 C0SireneCEFALDOR0
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~法尔多恩？！你真是疯了吗，德鲁伊？就算我记得的你，也没堕到这般地步！你还认得我们吗？~
== CEFALDOR ~你那非人的臭气我熟悉，虽不记得从哪儿闻过。闭嘴吧！~
END

// Bodhi

I_C_T BODHI 1 C0SireneBODHI1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~小心，<CHARNAME>。这女人把邪恶的气息像斗篷一样披在身上。她对我们的任何话，我都不会信。~
END

I_C_T BODHI 6 C0SireneBODHI6
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我不会这么做，<CHARNAME>，我也劝你别信这……这东西说的一个字。~
END

I_C_T BODHI 18 C0SireneBODHI18
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我不会与这生物有任何牵扯，<CHARNAME>！原谅我，尽管我们有交情，我们就在这里分道吧。再会。~
DO ~SetGlobal("C0SireneJoined","GLOBAL",0)
LeaveParty()
EscapeArea()~
END

I_C_T BODHI2 6 C0SireneBODHI26
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~别信这些谎话，<CHARNAME>。连影贼都只是血肉之躯，可她却是纯粹的邪恶存在，是我们的敌人。不能信她。~
END

I_C_T C6BODHI 0 C0SireneC6BODHI0
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~你的邪恶到此为止，波迪，我以伊尔梅特之名起誓。~
END

// Docks District

I_C_T2 DCLERIC 1 C0SireneDCLERIC1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~以伊尔梅特之名，你的疯狂今日终结！~
END

I_C_T2 DCLERIC 2 C0SireneDCLERIC2
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~以伊尔梅特之名，你的疯狂今日终结！~
END

I_C_T2 DCLERIC 3 C0SireneDCLERIC3
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~以伊尔梅特之名，你的疯狂今日终结！~
END

I_C_T2 DCLERIC 4 C0SireneDCLERIC4
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~让他就这么走掉是个错误，<CHARNAME>。西瑞克的疯徒既残忍又疯狂，只要让他们活着，就只会播撒纷乱。~
END

I_C_T2 MAEVAR 25 C0SireneMAEVAR25
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~艾德温……不是我指望再听见的名字。~
END

I_C_T2 MAEVAR 31 C0SireneMAEVAR31
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我们已经被迫参与过一次谋杀了，<CHARNAME>。我不想再当另一桩的一部分。~
END

I_C_T EDWIN 1 C0SireneEDWIN1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~自我们分别后，我本希望再不见你，红袍法师，虽然你混迹于这等恶徒之间我也不该意外。~
== EDWIN ~看来你还把你这小魔裔带在身边，<CHARNAME>。这正是我说的那种同伴。无所谓了。~
END

I_C_T RENAL 30 C0SireneRENAL30
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~（叹气）又要跟贼打交道……让我们尽快了结这桩令人厌恶的任务。~
END

I_C_T RENAL 30 C0SireneRENAL30
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~（叹气）跟贼合作……我不喜欢这样。让我们尽快了结这桩令人厌恶的任务。~
END

I_C_T ARAN 0 C0SireneARAN0
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~影主本人……他跟我预想的不同，不过也许外表会骗人。~
END

I_C_T ARAN 51 C0SireneARAN51
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我们的任务事关生死，你觉得这些破烂就能打发？别戏弄我们，贼。~
END

I_C_T LYROS 11 C0SireneLYROS11
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~我本希望与他分开后就再不见这疯狂的死灵师。~
== LYROS ~而我本希望你已躺进棺材里，圣武士。看来我们俩都该失望了，嗯？~
END

I_C_T2 RENFELD 6 C0SireneRENFELD6
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我知道我们有要紧事，<CHARNAME>，可我们该尽快带他去求医。每耽搁一刻，他的状况就会更糟。~
END

I_C_T2 RENFELD 8 C0SireneRENFELD8
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~你不能这么残忍，<CHARNAME>！他痛苦极重，我们若不帮他，他会死得很惨。~
END

I_C_T JAHEIRAJ 34 C0SireneJAHEIRAJ34
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~神明啊，贾希拉，你说话时脸色越来越白。他对你做了什么？你感觉如何？~
== JAHEIRAJ ~我……目前还好。可那混蛋……~
END

I_C_T2 DLOST 0 C0SireneDLOST0
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~哦，可怜的孩子……我们能做点什么吗，<CHARNAME>？~
END

I_C_T2 DLOST 3 C0SireneDLOST3
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~那太残忍了，<CHARNAME>。那女孩急需帮助，而不是你的冷漠。~
END

// Slums District

I_C_T2 LEHTIN 10 C0SireneLEHTIN10
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~一个卑劣的人……他的语调像蛇一样奸诈。我怕那些门后没有好事。~
END

I_C_T HENDAK 1 C0SireneHendak1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~这巢穴竟以奴役为业，我不该意外。我们必须终结它，<CHARNAME>。~
END

I_C_T HENDAK 40 C0SireneHendak40
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~也许这样最好，虽然我怕这只会引来奴隶贩子更多注意。你该小心，亨达克。~
== HENDAK ~你说的是实话，我的朋友，虽然我很清楚风险，我并不怕它们。~
END

I_C_T SLAVERM 0 C0SireneSLAVERM0
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~这是什么？当地律法竟会明知而对此等魔鬼行径视而不见？~
END

I_C_T HENDAK 31 C0SireneHendak31
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我们也会终结它们，无论在哪儿找到。这一点我们向你保证。~
END

I_C_T LISSA 4 C0SireneLISSA4
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~多么可憎……孩子是众神的恩赐，该被珍爱。这样的虐待只配惩罚。~
END

INTERJECT GIRL1 0 C0SireneGIRL1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~不，孩子，别怕。你自由了。去伊尔梅特神殿。你在那里会安全，我保证。~
EXTERN GIRL1 1

INTERJECT HAEGAN 0 C0SireneHAEGAN0
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~你的奴隶贩子日子到头了，怪物。~
EXTERN HAEGAN 2

I_C_T GIRL2 0 C0SireneGIRL20
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~那些恶棍……竟把这可怜的孩子留给那些畜生。至少我们把她救下来了，真是奇迹。~
END

INTERJECT GIRL2 4 C0SireneGIRL2
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~等等！来，孩子……这是我所有的钱币。很抱歉不多……可用来买吃的和栖身之处，应该够了……藏好，保重。~
== GIRL2 ~我——我明白，小姐。谢——谢谢您的善心！~
DO ~SetGlobal("FreeSlaves","GLOBAL",1)
AddexperienceParty(3500)
ReputationInc(1)
EscapeArea()~ EXIT

INTERJECT LLYNIS 7 C0SireneLLYNIS7
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~不，你不会这么容易逃过惩罚，杀人犯。面对正义吧！~
DO ~Attack("llynis")~
EXTERN LLYNIS 10

// Graveyard

I_C_T WELLYN 0 C0SireneWELLYN0
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~这是个不安的亡魂……可我感觉不到他的恶意，只有悲伤。别伤害他，<CHARNAME>。~
END

I_C_T WELLYN 3 C0SireneWELLYN3
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~难以想象……只有恶魔才可能谋杀一个无辜的孩子。我们必须帮这一个。~
END

I_C_T TIRDIR 2 C0SireneTIRDIR2
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~被活埋……比死更糟的命运。谁能做出这种事？~
END

I_C_T SETHLE 6 C0SireneSETHLE6
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~别对我们说谎，你这恶棍！我们知道你帮忙活埋的那个人的事！~
END

I_C_T2 BHCRYPT 0 C0SireneBHCRYPT0
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~回到你的坟墓去，肮脏的不死畜生！~
END

// Bridge District

I_C_T TANNER 8 C0SireneTanner8
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我们不打算离开，除非让你为你做过的事付出代价。~
END

I_C_T INSPECT 13 C0SireneINSPECT13
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~以伊尔梅特之名，这样的行径绝非任何清醒心智所能做出……~
END

I_C_T RAELIS 44 C0SireneRAELIS37
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~你……你来自别的位面，对吧？我血里的什么东西能感觉到。~
== RAELIS ~而我感觉到巴托的触碰在你身上，孩子。真是古怪……不过我怕我们手头有更紧急的事。~
END

I_C_T2 PTHRAL01 1 C0SirenePTHRAL01
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~太可怕了……被迫违背意愿生死相斗。我们别无选择，只能给他们一个仁慈的结束。~
END

I_C_T2 KAYPAL01 3 C0SireneKAYPAL013
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~你已远离了你的道路，如今必须面对后果，阿纳格爵士。愿众神怜悯你的灵魂。~
END

I_C_T KAYPAL02 6 C0SireneKAYPAL026
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~这个人……雷纳德·德·沙蒂永。他仍是位有荣誉的人，<CHARNAME>。我希望我们不必像其余那些一样杀他。~
END

I_C_T2 NEB 5 C0SireneNEB5
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~<CHARNAME>，这是博德之门那个杀孩子的人！你将面对伊尔梅特的正义，怪物！~
END

I_C_T2 ANOMENJ 129 C0SireneANOMENJ129
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~不！阿诺门，你不能这么做！~
END

I_C_T YUSUF 2 C0SireneYUSUF2
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~为什么，阿诺门？你让一个无辜者的血沾上了手！你怎么能做这种事？~
END

I_C_T HLSKULL 4 C0SireneHLSKULL4
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~也许是残酷的命运，<CHARNAME>，可……这人的存在让我有些戒备。也许并不全然不该。~
END

// Temple District

I_C_T DORN 18 C0SireneDORN18
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~你不能真考虑与这恶棍为伍，<CHARNAME>。~
END

INTERJECT DORN 16 C0SireneDORN16
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~卑劣的恶魔……你竟能毫无一丝悔意地说出这种话……~
== DORN ~闭嘴，蠢货。我的话是对你的首领说的，不是你。~
== C0SIRE2J ~今日我的话还不够。拔剑吧，邪恶的奴仆。为了那些倒在你手里的人，我要终结你。~
END
++ ~我同意塞琳。你的邪恶之路到头了，多恩。~ EXTERN DORN 8
++ ~把武器收起来，塞琳。多恩可以成为可贵的盟友。~ EXTERN C0SIRE2J SireneDORN1

INTERJECT DORN 23 C0SireneDORN23
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~卑劣的恶魔……你竟能毫无一丝悔意地说出这种话……~
== DORN ~闭嘴，蠢货。我的话是对你的首领说的，不是你。~
== C0SIRE2J ~今日我的话还不够。拔剑吧，邪恶的奴仆。为了那些倒在你手里的人，我要终结你。~
END
++ ~我同意塞琳。你的邪恶之路到头了，多恩。~ EXTERN DORN 8
++ ~把武器收起来，塞琳。多恩可以成为可贵的盟友。~ EXTERN C0SIRE2J SireneDORN1

CHAIN C0SIRE2J SireneDORN1
~<CHARNAME>，你若与这恶魔结盟，那我就别无选择，只能也与你对立，因为我无意退让。我们中必须有一个倒在这里。~
END
++ ~好，就按你的方式来。多恩，准备受死。~ EXTERN DORN 8
++ ~很抱歉事情走到这一步，塞琳。~ DO ~SetGlobal("OHD_PLOT","GLOBAL",1)
SetGlobalTimer("OHD_CRASH_WEDDING","GLOBAL",TWO_DAYS)
ReputationInc(-1)
ActionOverride("DORN",JoinParty()) SetGlobal("C0SireneJoined","GLOBAL",0) LeaveParty() Enemy()~ EXIT
++ ~这是你自找的，塞琳。最好先祷个告。~ DO ~SetGlobal("OHD_PLOT","GLOBAL",1)
SetGlobalTimer("OHD_CRASH_WEDDING","GLOBAL",TWO_DAYS)
ReputationInc(-1)
ActionOverride("DORN",JoinParty()) SetGlobal("C0SireneJoined","GLOBAL",0) LeaveParty() Enemy()~ EXIT

I_C_T GARRICK 2 C0SireneGARRICK2
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~你不记得我们了吗，加里克？真可惜……不过他看起来变了很多。我纳闷他到底出了什么事？~
END

CHAIN IF WEIGHT #-1
~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",STATE_SLEEPING)
RandomNum(2,1)
Global("C0Sirene","LOCALS",0)~ THEN TIRLANA C0SireneIrlana
~喂，那儿！我认出你盔甲上伊尔梅特的烙印，同道的骑士。光辉之心的骑士们欢迎你。可你为何要把面容遮得这么仔细？~
DO ~SetGlobal("C0Sirene","LOCALS",1)~
== C0SIRE2J ~我……我怕我有一道相当难看的疤，露出来让我非常羞愧，尤其是在您这样光彩照人的人面前，我的女士。恕我失礼……~
EXIT

CHAIN IF WEIGHT #-1
~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",STATE_SLEEPING)
RandomNum(2,1)
Global("C0Sirene","LOCALS",0)~ THEN TCADRIL C0SireneIrlana
~向您致意，我的女士。我们这厅堂里难得见到哭泣之神的骑士，可无论如何您在我们中间当然受欢迎。~
DO ~SetGlobal("C0Sirene","LOCALS",1)~
== C0SIRE2J ~哦……谢谢你，先生。~
EXIT

// Unseeing Eye

I_C_T2 CSGAAL 7 C0SireneCSGAAL7
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~这是彻底的亵渎，<CHARNAME>！怎么会有人相信这种事？~
END

I_C_T HPRELATE 11 C0SireneHPRELATE11
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我早就想亲眼看看这些厅堂，<CHARNAME>。它如我想的一样辉煌，不，更胜我想。没有你作伴，我不敢踏进这里。~
END

I_C_T2 HURGISF 4 C0SireneHURGISF4
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~记住，<CHARNAME>。怀着邪恶意图的人也许想藏在伪装之后，可我们有力量看见他们心中的真相。现在正是运用这力量的时候。~
END

I_C_T2 HURGISR 4 C0SireneHURGISR4
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~记住，<CHARNAME>。怀着邪恶意图的人也许想藏在伪装之后，可我们有力量看见他们心中的真相。现在正是运用这力量的时候。~
END

I_C_T PLMETR01 22 C0SirenePLMETR0122
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~他已露出了真面目……我希望你明白这里正确的选择，<CHARNAME>。~
END

I_C_T KAYL2 10 C0SireneKAYL210
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我们自己人选择滥用职位时，那是场悲剧，虽然我怕流放只会促使他们更远离正道。~
== KAYL2 ~您不是骑士团的人，夫人，所以也许难以理解。我们尽力让成员走在正道上，可有时他们会走得太远。~
END

I_C_T KAYL2 14 C0SireneKAYL214
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我不知道这些人堕落到什么地步，<CHARNAME>，可要杀同道的圣武士，仍是让人不安的念头。~
END

I_C_T GAAL 6 C0SireneGAAL6
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~这真是*可憎*，<CHARNAME>。这比洛薇雅塔和塔洛娜的教会还要残忍。~
END

I_C_T2 GAAL 23 C0SireneGAAL23
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~你只会死，疯子，愿你的疯狂随你痛苦的生命一同终结！~
END

I_C_T THESHAL 5 C0SireneTHESHAL5
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~他正在失控，<CHARNAME>。我不愿这么想，可我怕我们很快必须自卫。~
END

I_C_T RIFTM01 0 C0SireneRIFTM010
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~奇怪……是人，又不是人，也不是不死者。他们是守护者吗？~
== RIFTM01 ~随你怎么称呼我们。那无关紧要。~
END

I_C_T RIFTM01 14 C0SireneRIFTM0114
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~比伊尔梅特本人还古老……我无法想象这些守护者受了多久的苦。~
END

I_C_T RIFTM01 21 C0SireneRIFTM0121
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~别怕，守护者。我们确实拿走了那装置，可我们无意作恶。~
END

// Government District

I_C_T TOLGER 75 C0SireneTOLGER75
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我不信这个法师，<CHARNAME>。他也许举止有礼，可他藏不住他的恶意。~
END

INTERJECT TOLGER 80 C0SireneTOLGER80
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN
~你才是唯一的蠢货，法师，如果你以为我们还会听你的谎话。这人无罪，你也很清楚，你若打算带走他，就准备豁上你的命。~
EXTERN TOLGER 81

I_C_T2 VICG1 4 C0SireneVICG12
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~维康尼亚，在这里？我对她没有好回忆，可只因偏见就把人活活烧死……我不会袖手旁观让这事发生，<CHARNAME>。~
END

I_C_T2 VICG1 4 C0SireneVICG12a
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~即使对一个卓尔来说这也太残酷了，<CHARNAME>。我们不能让这事发生。~
END

I_C_T VICONI 2 C0SireneVICONI2
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我对莎尔的信徒没有好感，可看到几乎发生的事之后……你若希望她加入我们，<CHARNAME>，我不反对。~
END

I_C_T VICONI 11 C0SireneVICONI11
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~（叹气）光是看着就让我恶心，<CHARNAME>。这算她一生的公道结局吗？我希望永不遭遇同样的命运。我们……我们离开这里吧，求你。~
END

I_C_T ANOMENJ 150 C0SireneANOMENJ150
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我知道你一定心绪翻涌，阿诺门，真的。你姐妹的死不公，可莽撞的复仇不是解决之道。~
END

I_C_T MARIA 5 C0SireneMARIA5
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~神明啊，太可怕了……我觉得这样严重的事我们该让他们自己处理，可我为凯尔登爵士担心……~
END

I_C_T KELDORJ 23 C0SireneKELDORJ23
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~一定还有别的办法，爵士。你不能就这样把家人判成这样残酷的命运！我知道那不是你真正的愿望。~
== KELDORJ ~你不明白这事有多严重，孩子！这不再是情感的问题——这是正义。我的荣誉要求我走正道，无论我感觉如何。~
== C0SIRE2J ~凯尔登爵士，你不能是这意思……~
END

// Umar Hills

I_C_T VALYGAR 43 C0SireneVALYGAR43
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我信他，<CHARNAME>。他是游侠，不会无缘无故得罪那些法师。~
END

I_C_T2 VALYGAR 28 C0SireneVALYGAR28
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~不！你若打算杀这个无辜的人，<CHARNAME>，那我就与他同死！~
DO ~SetGlobal("C0SireneJoined","GLOBAL",0)
ChangeAIScript("",DEFAULT)
LeaveParty()
Enemy()~
END

I_C_T UHMAY01 18 C0SireneUHMAY18
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~这小小的村子麻烦真不少，<CHARNAME>。无论是食人魔、女巫还是狼，都不会怀着好意。~
END

I_C_T2 UHOGRE01 15 C0SireneUHOGRE0115
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~见到这样的事真令人意外，<CHARNAME>。我倾向于相信他们真的无意害伊姆斯谷，所以我想最好告诉村长。~
END

INTERJECT MAZZY 6 C0SireneMAZZY6
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~等等，<CHARNAME>。自我们进来我就感觉到这地方的邪恶，而这位高尚者身上没有。让我放了她。~
EXTERN MAZZY 13

I_C_T MAZZY 13 C0SireneMAZZY13
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我相信她会成为可贵的同伴，<CHARNAME>，我也想要一位同道骑士作伴。~
== MAZZY ~选择当然在你。可你若愿意收我，我的弓与剑随你差遣。~
END

// Windspear Hills

I_C_T KELDORJ 103 C0SireneKELDORJ103
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~阿——阿詹提斯？是的，真的是他……今天真是黑暗的一天。他曾是我的朋友和战友，而我们杀了他。~
END

I_C_T GARREN 1 C0SireneGARREN1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1) !InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN ~神明啊，不……仔细看，<CHARNAME>。这……这是阿詹提斯。我的朋友和战友，死在我自己手里。是什么邪恶误导我们做出这种事？~
END

I_C_T2 TAZOK 3 C0SireneTAZOK3
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~我们击败过你一次，我们还会再来一次！~
END

I_C_T2 FIRKRA02 25 C0SireneFIRKRA0225
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~以伊尔梅特之名，以阿詹提斯和所有因你诡计而倒下的人之名，你会倒下，龙！~
END

I_C_T2 FIRKRA02 25 C0SireneFIRKRA0225
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~愿伊尔梅特的祝福引我们走向胜利，<CHARNAME>。我们今日要终结你的邪恶与暴政，龙！~
END

I_C_T FIRKRA02 29 C0SireneFIRKRA0229
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~求你，别考虑这个，<CHARNAME>。这人受够了苦，别夺走他仅剩的东西。~
END

I_C_T2 FIRKRA02 32 C0SireneFIRKRA0232
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~你……你这卑劣的叛徒！愿你得到应得的惩罚！~
DO ~LeaveParty()
EscapeArea()
SetGlobal("C0SireneJoined","GLOBAL",0)~
END

// de'Arnise Keep

I_C_T NALIA 45 C0SireneNALIA45
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我们该听她把话说完，<CHARNAME>。她语气里的痛苦我听得够清楚。~
END

I_C_T NALIA 46 C0SireneNALIA46
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我们该听她把话说完，<CHARNAME>。她语气里的痛苦我听得够清楚。~
END

// Trademeet

I_C_T NEEBER 7 C0SireneNEEBER7
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~<CHARNAME>，我们不是在纳什克尔见过这个人吗？他烦人得足以是同一个。~
END

I_C_T TRSKIN02 10 C0SireneTRSKIN0210
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我们必须帮忙，<CHARNAME>。这关系到一个无辜女孩的性命。~
END

I_C_T TRSKIN02 15 C0SireneTRSKIN0215
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~神明啊，我本希望能再遇上那怪物，好让正义得以伸张，可是……不是这样。~
END

I_C_T MAZZYJ 58 C0SireneMAZZYJ58
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~若你允许，我的朋友，也许我可以留下。也许我的治疗之力对你姐妹还有用。~
== MAZZYJ ~不，不。我感激你的提议，可我想治疗已经完成了。我只想在帕拉醒来时陪着她。<CHARNAME>更需要你的本领。~
END

INTERJECT TRSKIN03 1 C0SireneTRSKIN031
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN
~等等，<CHARNAME>，有什么不对。我感觉到这女人周围有邪恶的气息，而且很熟悉。你们解释一下！~
== TRSKIN06 ~呃，嗯……你一定是弄错了，我们……~
EXTERN TRSKIN03 3

I_C_T TRGENI01 7 C0SireneTRGENI017
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~无辜者的性命不是你取乐的玩物！~
END

I_C_T2 GPHIL01 3 C0SireneCPHIL013
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~真正的力量该用来护佑弱者，而非压迫他们。我不能袖手旁观让这事发生！~
DO ~Attack("gphil03")~
END

// Brynnlaw + Spellhold
	
EXTEND_BOTTOM PPIMOEN 0
+ ~IsValidForPartyDialog("C0Sirene") Global("C0SirenePartyBG1","GLOBAL",1)~ + ~你该记得塞琳。你认得她吗，爱蒙？~ EXTERN C0SIRE2J C0SirenePPIMOEN0
END

CHAIN C0SIRE2J C0SirenePPIMOEN0
~她……哦，伊尔梅特的慈悲，发生了什么？我几乎认不出她……她的心智碎了，而我无能为力。原谅我，<CHARNAME>。~
END
IF ~~ EXTERN PPIMOEN 1

I_C_T PIRCOR02 12 C0SirenePIRCOR0212
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~这真恶心，<CHARNAME>。我们不能袖手旁观让这暴政继续。~
END

I_C_T PIRMUR01 2 C0SirenePIRMUR012
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~你的打手都没了，女巫。我建议你投降，现在把克莱尔交出来，免得逼我们动手。~
END

INTERJECT PPLDR01 1 C0SirenePPLDR011
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN
~我想不必。我们没时间理你，所以我建议你离我们远点，免得我们被迫了结你们的性命。~
EXTERN PPLDR01 2

INTERJECT PIRPIR05 1 C0SirenePIRPIR051
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN
~我们是为吉妮娅和埃森来的，奴隶贩子。自卫吧！~
EXTERN PIRPIR05 5

I_C_T PPDILI 0 C0SirenePPDILI0
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~以伊尔梅特之名，他们连孩子都关？什么样的怪物会做这种事？~
== PPDILI ~我喜欢你的脸，漂亮小姐。可你为什么有角？它们让你看起来怪怪的。它们是你身上的一部分吗？~
END

I_C_T2 PPDRADEE 3 C0SirenePPDRADEE3
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~你觉得他面熟吗，<CHARNAME>？他那些胡话让我想起……~
END

I_C_T PPSAEM2 0 C0SirenePPSAEM20
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~又是你？在那迷宫里乏味地走了一趟之后，你的脸不是我愿再见的。~
== PPSAEM2 ~也许我接下来要说的话能改变你的主意，我的女士。~
END

I_C_T PPSAEM2 19 C0SirenePPSAEM219
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~要么穿越幽暗地域，要么把信任交给这个恶棍……我说不上喜欢哪个方案。~
END

I_C_T2 IMOEN2 22 C0SireneIMOEN222
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~<CHARNAME>，不。你不能抛下她，尤其在她经历了那样可怕的磨难之后。~
== C0SIRE2J ~那就抛下我吧。我能照顾自己。爱蒙比我更需要你。~
END

// Yoshimo

APPEND C0SIRE2J

IF ~Global("C0SireneYoshimoHeart","GLOBAL",1)~ C0SireneYoshimoHeart
 SAY ~（叹气）一个受尽折磨的生命结束得太早，<CHARNAME>。尽管他背叛了，我无法恨他。我只能希望伊尔梅特能宽恕他的错误。~ [C0BLANK]
 = ~留下他的心，<CHARNAME>。若众神仁慈，也许他还有希望。~
IF ~~ DO ~SetGlobal("C0SireneYoshimoHeart","GLOBAL",2)~ EXIT
END

END

// Sahuagin City

I_C_T SAHKNG01 1 C0SireneSAHKNG011
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~他像是在打量我们，好准备下一顿，<CHARNAME>。我不喜欢这样。~
END

I_C_T SAHKNG01 36 C0SireneSAHKNG0136
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我不排除这些鲨鱼魔在利用完我们之后就翻脸，<CHARNAME>。~
END

I_C_T SAHPR4 4 C0SireneSAHPR44
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~可怕的前景……我只能希望他们族类的傲慢将来会害了他们自己。~
END

// Underdark 

I_C_T UDSVIR03 23 C0SireneUDSVIR0323
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~即使你没有什么能回报我们，我们也会帮忙。~
END

I_C_T UDSILVER 0 C0SireneUDSILVER0
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~哦……哦，天。她太美了……我甚至无法形容。~
END

I_C_T UDSILVER 53 C0SireneUDSILVER53
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~这就像用一个恶魔的血换另一个恶魔的血，<CHARNAME>。我说不上哪个感觉更糟。~
END

INTERJECT UDPHAE01 61 C0SireneUDPHAE0161
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN
~什么？这有什么理由？深地侏儒有什么威胁，值得你不问缘由就杀他们？~
EXTERN UDPHAE01 62

I_C_T2 UDPHAE01 88 C0SireneUDPHAE188
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我不喜欢这样，<CHARNAME>。尽管他有敌意，索劳芬相比其余这些恶魔对我们已算非常公道。也许我们可以警告他，另找办法。~
END

I_C_T2 UDSOLA01 132 C0SireneUDSOLA01132
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~一位黑少女的信徒，在这里……他比我想的更勇敢。幸好我们不必杀他。~
END

I_C_T2 UDSOLA01 140 C0SireneUDSOLA01140
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~一位黑少女的信徒，在这里……他比我想的更勇敢。幸好我们不必杀他。~
END

I_C_T2 UDTRAP02 3 C0SireneUDTRAP023
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~他的心智必定被囚禁弄坏了，<CHARNAME>，可也许还能修补。暴力未必是唯一的办法！~
END

I_C_T UDILSLA2 0 C0SireneUDILSLA20
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~欢迎你们，朋友们，不过我好奇你们为何偏偏来这里。~
END

// Coran

I_C_T C6CORAN 1 C0SireneC6CORAN1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~（笑）更可能是你太忙于女人的关注，才没心思来找我们，科兰。~
== C6CORAN ~啊……亲爱的、美丽的塞琳！再见到你真是件乐事。呃……也许我确实有过那些念头，可我的打算是终究要追上你，我向你发誓。~
== C0SIRE2J ~你一点都没变，科兰……真不幸。~
== C6CORAN ~（笑）我就是我，夫人。~
END

// Chapter 6-7

I_C_T C6ELF1 2 C0SireneC6ELF12
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~（叹气）以伊尔梅特之名，这到底有没有完？~
END

I_C_T SUELF4 0 C0SireneC6ELF40
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~嘘……别怕，孩子们。我们是朋友，不是怪物。~
END

I_C_T SUELF4 5 C0SireneC6ELF45
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~嘘……别怕，孩子们。我们是朋友，不是怪物。~
END

I_C_T SUDEMIN 22 C0SireneSUDEMIN22
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~那还不够，这一点很清楚，而看来你的亲族也得为<CHARNAME>如今的状况分担罪责。~
END

I_C_T SUDEMIN 32 C0SireneSUDEMIN32
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~虽然你失去灵魂的事最要紧，<CHARNAME>，可我们不能就看着这座城市受苦。~
END

I_C_T2 SUJON 14 C0SireneSUJON14
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~你已让太多人受苦，不终结你存在的祸害，我不会罢休！~
END

// TALKS START HERE

CHAIN IF WEIGHT #-1 ~Global("C0SireneBG1Talk","GLOBAL",2)~ THEN C0SIRE2J t0
~<CHARNAME>……又能与你作伴真好。自从我们分道，我一直在想我们会不会再见……~ [C0BLANK]
DO ~RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",3600) SetGlobal("C0SireneBG1Talk","GLOBAL",3)~
END
++ ~我也是。再遇到老朋友总是好的。~ + t0.1
++ ~真可惜，我们一起击败萨瑞沃克之后你就走了。你错过了许多。~ + t0.2
++ ~那不奇怪。毕竟龙矛事件之后，我差一点就被判死刑。~ + t0.3
+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~我很意外，火焰之拳把我收押之后，你再见我还这么高兴。我记得你并不想再见到我。~ + t0.4
+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~分开之后我也一直在想同样的事。我想你。~ + t0.5
+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~别误会，可某种意义上我几乎庆幸你走了。我不愿你看着我因谋杀斯基而被绞死……即使最后并不是那样。~ + t0.6
++ ~我们现在没时间谈，塞琳。~ + t.0

APPEND C0SIRE2J

IF ~~ t.0
SAY ~我明白。那改天吧。~
IF ~~ DO ~RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",3600) SetGlobal("C0SireneBG1Talk","GLOBAL",0)~ EXIT
END

IF ~~ t0.1
SAY ~我只希望情形不是这样。卡立德和迪娜希尔……*叹气*命运真是残酷。~
IF ~~ + t0.7
END

IF ~~ t0.2
SAY ~是的，我能想象……真可惜。当我听说光辉女士的十字军威胁这片土地时，我回到了博德之门……若命运更仁慈，也许我们会更早重逢，一起面对那场十字军。~
IF ~~ + t0.7
END

IF ~~ t0.3
SAY ~斯基的死一直重重压在我心头……可若这能让你好受些，<CHARNAME>，我不怪你，无论在我们被迫分别之前我相信过什么。~
IF ~~ + t0.7
END

IF ~~ t0.4
SAY ~那……我……*叹气*我那时太冲动了。我让情绪蒙蔽了判断……伊尔梅特大人提醒了我这一点。我不该相信你真的会做出谋杀那样可怕的事。~
= ~真的，我希望我没有在那座可怕的牢里对你说那些话……可我无法收回我的行为。我只能求你宽恕我对你的责难。~
++ ~我接受你的道歉。那时情况艰难，我一点也不怪你。~ + t0.4a
++ ~要我原谅你说过的话、做过的事很难，可你若真心，那会随时间改变。~ + t0.4a
++ ~宽恕已经太迟了。我可以让你留在队伍里，可我们之间的一切都结束了。~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ + t0.4b
++ ~你责难我、抛下我，还指望得到宽恕？绝无可能。从我眼前消失。~ + t0.4c
END

IF ~~ t0.4a
SAY ~我……你对我比我所应得的更仁慈，<CHARNAME>。谢谢你。~
IF ~~ + t0.7
END

IF ~~ t0.4b
SAY ~我明白，<CHARNAME>。我一定深深伤了你……这是我应得的。~
IF ~~ + t0.7
END

IF ~~ t0.4c
SAY ~……若……若那是你的愿望，<CHARNAME>，那我就照你的命令做。我不会再用我的存在来烦你。~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ t0.5
SAY ~我……*脸红*你能想到我，即使经历了这一切，我真是受宠若惊，<CHARNAME>。~
IF ~~ + t0.7
END

IF ~~ t0.6
SAY ~是的，也许我离开只是因为怕看见你死去……那对我会是最可怕的景象。可我在想，若我当时留下，你的那些悲剧会不会被避免……~
IF ~~ + t0.7
END

IF ~~ t0.7
SAY ~*叹气*原谅我。自从离开，我一直被愧疚与悔恨纠缠。我觉得我辜负了你，<CHARNAME>，在你最需要的时候离开了你。~
= ~你失去的一切……卡立德、迪娜希尔，甚至爱蒙……我忍不住觉得自己要负一部分责任。~
++ ~别这样。你什么都做不了，也无法预知会发生什么。~ + t0.8
++ ~你若留下，也只会成为名单上又一个牺牲者。~ + t0.8
++ ~嗯，你又回到我身边了，这才是现在要紧的。过去的事就过去了。~ + t0.8
++ ~现在谈够了。改天我们可以再说这个。~ + t0.12
END

IF ~~ t0.8
SAY ~那也许确实如此，可是……说实话，那并不让我好受。自从我把剑献给你的差遣那天起，你一直把我当朋友，也不顾我受诅咒的血脉而公平待我。~
= ~<CHARNAME>，只要你的目标正当，我就把一生献给这目标，无论你要的是为逝者复仇，还是爱蒙的平安。我以伊尔梅特的圣武士……也以一个朋友的身份起誓。~
++ ~谢谢你。能有这样忠诚的朋友是我的荣幸。~ + t0.9
++ ~这承诺可不小。我会盯着你兑现。~ + t0.10
++ ~知道就好。现在我们走吧。~ + t0.11
END

IF ~~ t0.9
SAY ~不，<CHARNAME>，这是我的荣幸。我希望不会让你失望。~
IF ~Global("C0SireneMatch","GLOBAL",1)~ + t0.12
IF ~!Global("C0SireneMatch","GLOBAL",0)~ EXIT
END

IF ~~ t0.10
SAY ~当然，<CHARNAME>。我希望不会让你失望。~
IF ~Global("C0SireneMatch","GLOBAL",1)~ + t0.12
IF ~!Global("C0SireneMatch","GLOBAL",0)~ EXIT
END

IF ~~ t0.11
SAY ~是的……如你所愿。~
IF ~Global("C0SireneMatch","GLOBAL",1)~ + t0.12
IF ~!Global("C0SireneMatch","GLOBAL",0)~ EXIT
END

IF ~~ t0.12
SAY ~还有……一件事。我们分别之前，我记得我们谈过我们之间的事，我表示过我想要的不只是单纯的友谊。你……从那以后也考虑过同样的事吗？~
++ ~我们在龙矛已经谈过一次了。我们还吻过，记得吗？~ + t0.13
++ ~谁知道呢？我想弄清楚。~ + t0.14
++ ~不。我信任你，塞琳，作为朋友，可我们就别越过那条线了。~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ + t0.15
END

IF ~~ t0.13
SAY ~是的，我想我永远不会忘记……你若真对我还有感觉，<CHARNAME>，正如我承认我对你仍有，那么……我们很快可以再谈这个。我……我会喜欢的。~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",1)~ EXIT
END

IF ~~ t0.14
SAY ~若是那样……那我们以后也许可以多谈谈。我……我会喜欢的。~
IF ~~ EXIT
END

IF ~~ t0.15
SAY ~我明白，<CHARNAME>。我不愿把感情强加于你。那我们就继续做朋友吧。~
IF ~~ EXIT
END
END

// Friendship talk 1

CHAIN IF ~Global("C0SireneFriendshipTalk","GLOBAL",2)~ THEN C0SIRE2J t1
~你很少谈你的目标，<CHARNAME>。我不打算向你要求答案，可我想知道……你要的是爱蒙的平安，还是向你的敌人复仇？~ [C0BLANK]
DO ~IncrementGlobal("C0SireneFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",2700)~
END
++ ~你为什么问？~ + t1.1
++ ~那不是你该知道的。~ + t1.0
++ ~对不起，可现在不太是时候。~ + t1.x

APPEND C0SIRE2J

IF ~~ t1.x
SAY ~是的，当然……我明白。~
IF ~~ DO ~SetGlobal("C0SireneFriendshipTalk","GLOBAL",1)~ EXIT
END

IF ~~ t1.0
SAY ~若是那样，那么……我不再烦你。~
IF ~~ EXIT
END

IF ~~ t1.1
SAY ~我不愿显得不知感激。你给了我队伍里的位置，我也知道你不是邪恶的<PRO_MANWOMAN>。我只是……想知道是什么驱使你走这条路。你追的是爱蒙，还是艾瑞尼卡斯？~
++ ~爱蒙是我首要的。艾瑞尼卡斯尽可以在蒙面法师的监管里烂掉，我不在乎。~ + t1.2
+ ~!Global("C0SirenePartyBG1","GLOBAL",1)~ + ~都是。我想救爱蒙，可我也想知道那法师为什么找我。~ + t1.3
+ ~Global("C0SirenePartyBG1","GLOBAL",1)~ + ~都是。我想救爱蒙，可我也想知道那法师为什么找我。~ + t1.3a
++ ~我追的是艾瑞尼卡斯。若路上能救爱蒙，那也很好。~ + t1.4
++ ~我追他们的理由是我自己的事。我宁愿你别问。~ + t1.0
END

IF ~~ t1.2
SAY ~那是高尚的目标，<CHARNAME>。我会乐于尽力帮你。~
IF ~~ + t1.5
END

IF ~~ t1.3
SAY ~我明白。若他对我也做了对你做的事，我也会想追他。~
IF ~~ + t1.5
END

IF ~~ t1.3a
SAY ~我明白。知道卡立德和迪娜希尔的遭遇，更别说爱蒙……还有你自己，最要紧的……我也会想复仇。~
IF ~~ + t1.5
END

IF ~~ t1.4
SAY ~那么是复仇？因为他害了别人，还是因为他害了你？~
= ~不，那无关紧要。我知道你在为正当的目标战斗，评判你不是我的位置。我会尽力为你，<CHARNAME>。~
IF ~~ + t1.5
END

IF ~~ t1.5
SAY ~我要问的就是这些。谢谢你愿意听我……我希望我们还能再谈。~
IF ~~ EXIT
END
END

// Friendship talk 2

CHAIN IF ~Global("C0SireneFriendshipTalk","GLOBAL",4)~ THEN C0SIRE2J t2
~我——我想谢谢你让我加入，<CHARNAME>。许多人不会给我这样的信任。~ [C0BLANK]
DO ~IncrementGlobal("C0SireneFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",2700)~
END
+ ~Global("C0SirenePartyBG1","GLOBAL",1)~ + ~他们不如我了解你。你是位亲近的朋友。~ + t2.1
+ ~Global("C0SirenePartyBG1","GLOBAL",1)~ + ~这些时候你仍一直是独自旅行吗？~ + t2.2
+ ~!Global("C0SirenePartyBG1","GLOBAL",1)~ + ~你一直是独自旅行吗？~ + t2.2
++ ~我看不出为什么。你看来很值得信任，战斗上也有本领。~ + t2.3
++ ~我们没什么时间闲聊，塞琳。也许改天吧。~ + t2.0

APPEND C0SIRE2J

IF ~~ t2.0
SAY ~你这么说就好，<CHARNAME>。我再一次感激你。~
IF ~~ EXIT
END

IF ~~ t2.1
SAY ~是的，我也珍视你的友谊，<CHARNAME>，比你所能知道的更多。~
IF ~~ + t2.4
END

IF ~~ t2.2
SAY ~是的。很少有人愿意接纳一个身负邪血的人，无论是因为他们自己的疑虑，还是怕别人评判他们。这……严重影响了我的人生，你能想象。~
IF ~~ + t2.4
END

IF ~~ t2.3
SAY ~不是所有人都像你这样……接纳一个身负邪血的人，<CHARNAME>。~
IF ~~ + t2.4
END

IF ~~ t2.4
SAY ~可你不曾有过疑虑吗？不顾别人怎么想，让我这样的人加入你？~
++ ~不，我信任你。~ + t2.5
++ ~那我就是伪君子了。你忘了我是做什么的？~ + t2.6
++ ~谁在乎？我才不在乎。~ + t2.7
END

IF ~~ t2.5
SAY ~我知道，我为此感谢你，可这不只是你信不信我的问题，<CHARNAME>。~
IF ~ReputationGT(Player1,13)~ + t2.8
IF ~!ReputationGT(Player1,13)~ + t2.9
END

IF ~~ t2.6
SAY ~不……不，我没有，<CHARNAME>，可那更该让你有理由怀疑。~
IF ~ReputationGT(Player1,13)~ + t2.8
IF ~!ReputationGT(Player1,13)~ + t2.9
END

IF ~~ t2.7
SAY ~这话也许不该我说，可是……也许你该说，<CHARNAME>。~
IF ~ReputationGT(Player1,13)~ + t2.8
IF ~!ReputationGT(Player1,13)~ + t2.9
END

IF ~~ t2.8
SAY ~在众人眼里，你是英雄，一位值得尊敬的人。你可曾想过，我的存在对这一点意味着什么吗？~
IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ + t2.10
IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ + t2.11
END

IF ~~ t2.9
SAY ~在众人眼里你可以远不止如此，<CHARNAME>。你可曾想过，我的存在对这一点意味着什么吗？~
IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ + t2.10
IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ + t2.11
END

IF ~~ t2.10
SAY ~我曾因怕别人看见我在你身边时怎么想而离开过你一次。我不愿减损别人对你的敬佩。~
= ~也许我这样揣测是错的，可是……我愿为你好，作为你的朋友。即使如今，我仍在想……~
IF ~~ + t2.11
END

IF ~~ t2.11
SAY ~我感激，<CHARNAME>，你能知道能有这里的位置我有多感激，可你若哪天觉得我替你给我添了麻烦，那么……你该怎么做就怎么做。我不会为此怨你。~
++ ~我绝不会那样做。~ + t2.12
++ ~我会考虑。~ + t2.13
END

IF ~~ t2.12
SAY ~你心肠好，<CHARNAME>。远比我应得的好。只要你愿意留我，我就不会辜负你。~
IF ~~ EXIT
END

IF ~~ t2.13
SAY ~你本该如此，<CHARNAME>。可只要你愿意留我，我就不会辜负你。~
IF ~~ EXIT
END
END
// Friendship talk 3

CHAIN IF ~Global("C0SireneFriendshipTalk","GLOBAL",6)
!Class(Player1,PALADIN_ALL)
!Class(Player1,CLERIC_ALL)
!Class(Player1,DRUID_ALL)
!Class(Player1,RANGER_ALL)~ THEN C0SIRE2J t3
~这话也许不该我问，可你是信神的<PRO_MANWOMAN>吗，<CHARNAME>？~ [C0BLANK]
DO ~IncrementGlobal("C0SireneFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",2700)~
END
++ ~是的，我是。~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",1)~ + t3.1
++ ~我不确定。~ + t3.2
++ ~我回答你会评判我吗？~ + t3.3
++ ~不，我不是。~ DO ~SetGlobal("C0SirenePCFaithless","GLOBAL",1) IncrementGlobal("C0SireneFaith","GLOBAL",-1)~ + t3.4

CHAIN IF ~Global("C0SireneFriendshipTalk","GLOBAL",6)
OR(4)
Class(Player1,PALADIN_ALL)
Class(Player1,CLERIC_ALL)
Class(Player1,DRUID_ALL)
Class(Player1,RANGER_ALL)~ THEN C0SIRE2J t3
~作为信神的<PRO_MANWOMAN>，<CHARNAME>……你肯容我片刻吗？~ [C0BLANK]
DO ~IncrementGlobal("C0SireneFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",2700)~
END
++ ~当然。你想问什么？~ + t3.5
++ ~现在实在不是好时候。~ + t3.0

APPEND C0SIRE2J

IF ~~ t3.0
SAY ~好罢，<CHARNAME>。我不再拿这事烦你。~
IF ~~ EXIT
END

IF ~~ t3.1
SAY ~我明白了。那很好……也许你适合回答这个。~
IF ~~ + t3.5
END

IF ~~ t3.2
SAY ~所以你还没找到一个与你信念相合的神……那没关系。你也许仍能回答我的问题。~
IF ~~ + t3.5
END

IF ~~ t3.3
SAY ~不，当然不会，我的朋友。我只是有个问题想问，而……你是否信神也许有帮助。~
++ ~既然如此，那我就说是有——我确实敬拜一位神。~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",1)~ + t3.1
++ ~我不确定。我相信他们存在，我也不反对他们……可我不向任何特定的神宣誓效忠。~ + t3.2
++ ~不，我不是信仰的仆人。~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",-1)~ + t3.4
END

IF ~~ t3.4
SAY ~我明白了……那也许你最合适回答这个。~
IF ~~ + t3.5
END

IF ~~ t3.5
SAY ~你认为人死后该按其一生的行为轻重受审，还是按其对神的忠诚受审？~
+ ~OR(2)
Class(Player1,CLERIC_ALL)
CheckStatGT(Player1,14,WIS)~ + ~我知道这话要往哪儿去。你在想无信者之墙，对吧？~ + t3.6
++ ~你在说什么？~ + t3.7
++ ~我现在没时间回答这个。问别人去。~ + t3.0
END

IF ~~ t3.6
SAY ~是的……没错，<CHARNAME>。你聪明，知道这个。~
IF ~~ + t3.7
END

IF ~~ t3.7
SAY ~我在阿斯卡特拉与伊尔梅特教会的兄弟姐妹们相处时，我们……谈过许多事，不只是我们的信仰，还有众神一般的行事之道。~
= ~某个时候，我们提到了无信者之墙……那是等着那些不向众神宣誓效忠者的命运。我自童年学习以来就没听人提过那堵墙，可从那以后，这念头一直留在我心里。~
++ ~伊尔梅特信徒怎么看那堵墙？~ + t3.8
++ ~它不公。许多好人不应得那样的命运。~ + t3.9
++ ~那堵墙是场荒谬。它存在只为了强迫别人敬拜，并惩罚不敬拜的人。~ + t3.9
++ ~我觉得那是无信者该得的命运。~ + t3.10
++ ~我不想谈那堵墙。~ + t3.0
END

IF ~~ t3.8
SAY ~我们中有些人认为它不公。另一些人相信那不是我们能决定的，因为死者之主克兰沃受他同侪众神的命令维护那墙，要求信仰，以不肯敬拜者为警戒。~
IF ~~ + t3.10
END

IF ~~ t3.9
SAY ~我也这么认为……墙里有无数灵魂，无论善恶，都被判同样的命运。一个残忍的西瑞克信徒死后都可能比一个无信者得到更好的结局。~
IF ~~ + t3.10
END

IF ~~ t3.10
SAY ~他们无从解脱，恶人没有赎罪的机会，生时受苦的人得不到安宁。只有压顶的绝望，直到他们的意志被彻底摧毁。~
= ~想到这个……常萦绕我的梦。我相信信仰该是一种选择，一件值得自豪的事，而不是……胁迫的必需。~
++ ~这很可怕，我同意。~ + t3.11
++ ~那墙的存在证明了众神的怯懦。~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",-1)~ + t3.12
++ ~知道自己免于那种命运，你不感到安慰吗？~ + t3.13
++ ~不是所有神都靠那堵墙。许多神的力量来自信徒的爱。~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",1)~ + t3.14
END

IF ~~ t3.11
SAY ~想到这个让我怀疑我的信仰是否错置。我常常想……我的信仰是否不过是恐惧。神明啊，我希望不是。~
IF ~Global("C0SirenePCFaithless","GLOBAL",1)~ + t3.16
IF ~!Global("C0SirenePCFaithless","GLOBAL",1)~ + t3.15
END

IF ~~ t3.12
SAY ~话很严厉，<CHARNAME>，可我无法否认你说的有道理。也许连众神也未能免于凡人的弱点。~
IF ~Global("C0SirenePCFaithless","GLOBAL",1)~ + t3.16
IF ~!Global("C0SirenePCFaithless","GLOBAL",1)~ + t3.15
END

IF ~~ t3.13
SAY ~我怎么能安心，<CHARNAME>？知道无信者注定要落进他们不该得的命运，我几乎无法安歇。~
= ~我一生没能救下许多人。他们中有多少从未祈祷过，注定要变成砖石？若我救下他们，能否帮他们得到信仰？那些被判永恒受苦的灵魂，我是否也有一部分罪责？~
++ ~不，你没有。你已尽力而为。~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",1)~ + t3.14
++ ~那是他们的选择，不是你的。~ + t3.11
++ ~该怪众神，不该怪你自己。~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",-1)~ + t3.12
END

IF ~~ t3.14
SAY ~我只能相信伊尔梅特本人也不支持这样的不公，即使他无力阻止。*叹气*这大概证明连众神也非全知全能。~
IF ~Global("C0SirenePCFaithless","GLOBAL",1)~ + t3.16
IF ~!Global("C0SirenePCFaithless","GLOBAL",1)~ + t3.15
END

IF ~~ t3.15
SAY ~我的思虑已经浪费了你太多时间，我的朋友。我们继续吧，愿我们不再想这事。~
IF ~~ EXIT
END

IF ~~ t3.16
SAY ~我为你担心，我的朋友。想到你有一天可能注定要进那堵墙……这念头难以承受。~
= ~我只希望有一天你能找到避开那命运的办法。~
IF ~~ EXIT
END
END

// Friendship talk 4

CHAIN IF ~Global("C0SireneFriendshipTalk","GLOBAL",8)~ THEN C0SIRE2J t4
~我想我还没问过你，<CHARNAME>。你离开烛堡的家并不完全是出于自愿……你对如今过的生活满意吗？~ [C0BLANK]
DO ~IncrementGlobal("C0SireneFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",2700)~
END
++ ~离开烛堡也许不是我的选择，可我很高兴我离开了。自那以后我成长了许多。~ + t4.1
++ ~当然！烛堡是我一生中最无聊的一段。我很高兴离开了它。~ + t4.2
++ ~我不确定。也许我在安宁舒适中活着会更快乐。~ + t4.3
++ ~你怎么突然问这个？~ + t4.4
++ ~我没心情谈烛堡。~ + t4.0

APPEND C0SIRE2J

IF ~~ t4.0
SAY ~哦。好罢……若你宁愿如此。~
IF ~~ EXIT
END

IF ~~ t4.1
SAY ~是的……我很明白那种感觉。不过我的童年也许不如你的令人羡慕。我对自己抛下的一切没多少遗憾。~
IF ~~ + t4.4
END

IF ~~ t4.2
SAY ~我明白了……所以你对抛下平静的生活并无遗憾。那我们……比我想的更相似。~
IF ~~ + t4.4
END

IF ~~ t4.3
SAY ~也许。（微笑）可很难想象你过那样的生活，看你在这种生活里多么自在。~
IF ~~ + t4.4
END

IF ~~ t4.4
SAY ~我一直在想我们如今这种活法要经历多少挣扎。那么多性命从我手中被夺走……太多了。这是我深深悔恨的事。~
= ~有时我想，我的一生若用在教会里做隐修修女，而非做斗士，是否会更好。那无疑会是更轻松的一生。~
++ ~那只是一半。我们确实夺人性命，可只在必须时。~ + t4.5
++ ~若这种暴力的生活让你如此厌恶，你为什么不抛下它？~ + t4.6
++ ~这种生活里总有你喜欢的什么，否则你不会在这里。~ + t4.7
++ ~现在谈够了。~ + t4.0
END

IF ~~ t4.5
SAY ~是的……这也是驱我前行的一部分。我怀疑我的一生若在庇护的礼拜堂里度过会更好。而且……那会是孤独的一生。我就不会有幸有你作伴。~
IF ~~ + t4.8
END

IF ~~ t4.6
SAY ~我考虑过。可我怀疑我的一生若在庇护的礼拜堂里度过会更好。而且……那会是孤独的一生。我就不会有幸有你作伴。~
IF ~~ + t4.8
END

IF ~~ t4.7
SAY ~是的，确实如此……我做圣武士行的善，也许多过我若在庇护中度过的一生。我见过童年家园之外的许多地界。而且……我有幸有如今的同伴。~
IF ~~ + t4.8
END

IF ~~ t4.8
SAY ~谢谢你听我说，<CHARNAME>。这种事跟朋友说出来就更容易承受。~
IF ~Global("C0SireneMatch","GLOBAL",1) !Global("C0SireneRomanceActive","GLOBAL",3)~ + t4.9
IF ~OR(2) !Global("C0SireneMatch","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ t4.9
SAY ~若我可以……自我们相识，你对我一直极好。我不能否认我被你吸引……不止一种意义上。我希望这不让你困扰。~
++ ~你想说什么？~ + t4.10
++ ~不，不会。我很想更了解你。~ + t4.11
++ ~这话动人，可我希望我们只做朋友。~ + t4.12
END

IF ~~ t4.10
SAY ~我是说我有兴趣……不，我被你吸引，<CHARNAME>。作为朋友，也作为一个<PRO_MANWOMAN>。若这太过分，那么……我道歉。我不会再提。~
++ ~不，没关系。我很想更了解你。~ + t4.11
++ ~我受宠若惊，可我希望只停留在友谊。~ + t4.12
++ ~你是位亲爱的朋友，可是……我不被女人吸引。希望你能理解。~ + t4.12
++ ~那你就别再提了。我对你没有那种兴趣。~ + t4.12
END

IF ~~ t4.11
SAY ~哦，那……那很好。那也许我们很快……可以再谈。~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",1)~ EXIT
END

IF ~~ t4.12
SAY ~我明白，<CHARNAME>，真的。能有你这个朋友已超出我所能求的。~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END
END

// Friendship talk 5

CHAIN IF ~Global("C0SireneFriendshipTalk","GLOBAL",10)~ THEN C0SIRE2J t5
~我们见过太多死亡。当我立誓要做正义的斗士、无辜者的护佑者时……我没想到会跟暴力如此熟悉。~ [C0BLANK]
DO ~IncrementGlobal("C0SireneFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",2700)~
END
++ ~你原以为会怎样？~ + t5.1
++ ~也许这种活法不适合你。~ + t5.2
++ ~我现在忙。能改天谈吗？~ + t5.0

APPEND C0SIRE2J

IF ~~ t5.0
SAY ~如你所愿。~
IF ~~ DO ~SetGlobal("C0SireneFriendshipTalk","GLOBAL",9)~ EXIT
END

IF ~~ t5.1
SAY ~我几乎不记得了。我离开村子去朝圣时还只是个莽撞的少年，盼着像英雄传说里的游侠骑士那样行善。现实……远比我预想的复杂。~
IF ~~ + t5.2
END

IF ~~ t5.2
SAY ~这不是说我觉得自己不适合这种生活，<CHARNAME>。我有训练也有意志做伊尔梅特的斗士，我也感激我有力量保护亲近的人，比如你，可是……~
= ~有时我很难不去看沾在我手上的血，无论它多黑。那……令人作呕。~
++ ~我不知道这竟这样影响你。你在战场上看起来几乎很自在。~ + t5.3
++ ~你说得对。想到我终结了多少性命就可怕。到如今我已数不清了。~ + t5.4
++ ~有时杀戮是必要的，以防更多邪恶发生。~ + t5.5
++ ~这是生活的必需。最好习惯它。~ + t5.6
END

IF ~~ t5.3
SAY ~我不表露出来，好让同伴们不至于失去勇气，可是……它确实让我心痛。~
IF ~~ + t5.6
END

IF ~~ t5.4
SAY ~那你就很明白它了。为过一种平静的生活，我愿意付出什么啊……~
IF ~~ + t5.6
END

IF ~~ t5.5
SAY ~你说得对。尽管如此，这也不让那必然性更好受些。~
IF ~~ + t5.6
END

IF ~~ t5.6
SAY ~你知道我为什么选择披这件白斗篷吗，<CHARNAME>？~
++ ~那是你信仰的象征，不是吗？~ + t5.7
++ ~我不知道。为什么？~ + t5.8
++ ~我一直以为那只是衣着上的选择。~ + t5.8
END

IF ~~ t5.7
SAY ~是的，那是，可也不止如此。~
IF ~~ + t5.8
END

IF ~~ t5.8
SAY ~我的许多同信者会选择不那么醒目的东西，也许是圣徽，或是一面盾，把伊尔梅特的记号放在上面。~
= ~我选了这件斗篷，好让沾在上面的血成为提醒，提醒我必须做什么，才能确保再不会有苦难发生。~
= ~这是个我既爱又恨的象征。我带着自己最怕之物的提醒，还把它变成我信仰的象征，这不是很傻吗？~
++ ~我觉得一点也不傻。我觉得这是个大胆的选择。~ + t5.9
++ ~也许有一点，可我并不因此看轻你。~ + t5.9
++ ~我觉得你该把它扔了。~ + t5.10
END

IF ~~ t5.9
SAY ~你这么说真是好心，<CHARNAME>。~
IF ~~ + t5.11
END

IF ~~ t5.10
SAY ~我考虑过，可我怀疑那不会给我带来任何安宁。~
IF ~~ + t5.11
END

IF ~~ t5.11
SAY ~至少现在我有别人的目标可为之战斗，一个值得我流这些血的目标。不知怎地，这让那念头更能承受了。~
IF ~~ EXIT
END

END

// Friendship talk 6

CHAIN IF ~Global("C0SireneFriendshipTalk","GLOBAL",12)~ THEN C0SIRE2J t6
~我……希望你没觉得我上次谈话是在批评你，<CHARNAME>。我不是想暗示我对你的领导不满。~ [C0BLANK]
DO ~IncrementGlobal("C0SireneFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",2700)~
END
++ ~不，当然没有。~ + t6.1
++ ~你为什么这么想？~ + t6.1
++ ~我们现在没时间谈这个。~ + t6.0

APPEND C0SIRE2J

IF ~~ t6.0
SAY ~哦……好罢。~
IF ~~ EXIT
END

IF ~~ t6.1
SAY ~上次谈话时我提到我厌恶战斗与死亡，我意识到自己听起来像是在怪你领我们走进这一切。那不是我的本意。~
= ~无论与你同行还是独自上路，战斗都不会离开我的生活，直到我放下剑的那天。我已接受这一点。~
++ ~你若为我们打的仗多而心烦，我不介意。我跟你一样恨它。~ + t6.2
++ ~你觉得你会有退出这种生活的一天吗？~ + t6.3
++ ~嗯，至少知道你不恨我，这很好。我们能继续吗？~ + t6.4
END

IF ~~ t6.2
SAY ~知道你我一样渴望这一切战斗结束，我很高兴，<CHARNAME>。无论如何，只要你能承受，我也能。~
IF ~~ + t6.3
END

IF ~~ t6.3
SAY ~也许有一天我会安定下来过平静的生活……不过我在这几年内看不到这样的机会。只要我还有能力，我就仍对我的神负有职责。~
++ ~你觉得接下来几十年你会在哪里？~ + t6.5
++ ~另一方面，我一旦有机会，会乐于结束冒险生涯。~ + t6.6
++ ~我们别现在就想这个。我们还有事要做。~ + t6.4
END

IF ~~ t6.4
SAY ~是的，你说得对。谢谢你容我这一刻。~
IF ~~ EXIT
END

IF ~~ t6.5
SAY ~若我不以伊尔梅特之名倒下，那么……也许我会退隐到一座伊尔梅特教会，用余生治病救人、教导他人。~
= ~我可以试着去泰瑟找我受苦圣战骑士团的同道，可是……他们也许不会接纳我。不会接纳如今的我。~
++ ~为什么不会？伊尔梅特的信徒不是该宽容吗？~ + t6.7
++ ~成家怎么样？你不想要吗？~ + t6.8
++ ~这番谈话挺有意思，可我们真该走了。~ + t6.4
END

IF ~~ t6.6
SAY ~那是你的权利，我的朋友。你经历的比我认识的任何人都多，你该有平静的生活。另一方面，我……~
IF ~~ + t6.5
END

IF ~~ t6.7
SAY ~许多人是的，嗯，可我只认识我这一信仰的祭司。我不能确定骑士团的人对我的出身会不会一样宽容……我只认识我的导师，他是个正直的人，远不如教会里那些平和的人那样愿意妥协。~
IF ~~ + t6.9
END

IF ~~ t6.8
SAY ~我怀疑那永远不会有，<CHARNAME>，无论我多想要。而想到把这样的血脉带给另一个人……不，我想我最好独自一人。~
IF ~~ + t6.9
END

IF ~~ t6.9
SAY ~可我们不该整天谈未来，<CHARNAME>。不过我仍珍视这些闲聊的时刻。~
IF ~~ EXIT
END

END

// Friendship talk 7

CHAIN IF ~Global("C0SireneFriendshipTalk","GLOBAL",14)~ THEN C0SIRE2J t7
~他们仍带着怀疑看我。我以为情况会变，可是……并没有。~ [C0BLANK]
DO ~IncrementGlobal("C0SireneFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",2700)~
END
++ ~你仍在意外人怎么看你吗？~ + t7.1
++ ~你在说什么？~ + t7.2
++ ~我们现在没时间谈这个。你只能自己应付。~ + t7.0

APPEND C0SIRE2J

IF ~~ t7.0
SAY ~是的，我想我必须。继续吧，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ t7.1
SAY ~我知道我不该，可它仍然困扰我。这么久以来，我的血决定了我是谁、别人眼中的我是谁，而且……这从来不曾更容易应付。~
= ~我有时想，同样处境的人是否也像我这样被人看轻。也许他们幸运些，出身的痕迹更少，或学会了遮掩自己。有些人甚至能走在人群里，尽管一切仍昂着头。~
= ~若有这样的人，那我羡慕他们。这是副难扛的担子，因你是什么而被畏惧、被厌恶，而非因你是谁。~
++ ~不是所有人都怕你。有些人确实敬重你这位伊尔梅特骑士。~ + t7.3
++ ~若这能让你好受些，我完全支持你走上前，给那些瞪眼的人几个耳光，让他们端正态度。~ + t7.4
++ ~你觉得你若生来是普通人类，跟别人一样，会更快乐吗？~ + t7.5
END

IF ~~ t7.2
SAY ~别人看我的角，看见的是个受诅咒的女人，<CHARNAME>。即使如今，他们也在盯着。~
IF ~~ + t7.1
END

IF ~~ t7.3
SAY ~确实如此。至少这一点我能感激，尽管别人这样待我很少见。不过我求的不是敬重，只是接纳。~
IF ~~ + t7.6
END

IF ~~ t7.4
SAY ~*笑*也许那确实能让我心情轻松一点。你的玩笑至少给了我些许安慰。~
IF ~~ + t7.6
END

IF ~~ t7.5
SAY ~我是人类，<CHARNAME>。无论我血管里流着什么血，我都是像任何人类孩子一样被养育、教导的。可若问我愿不愿……我不确定。~
= ~也许我若正常些会更快乐，可是……那我就不是我了。我会是另一个人，是我本可能成为之人的一个倒影。这念头既让我敬畏……也让我恐惧。~
IF ~~ + t7.6
END

IF ~~ t7.6
SAY ~我还想再听你的想法，<CHARNAME>。你觉得我把自己的血视为诅咒，即使它塑成了如今的我，这算对吗？~
++ ~你该为你是谁而自豪。无论你生来是什么。~ + t7.7
++ ~想本可能如何没意义，塞琳。你必须学会接受它。~ + t7.8
++ ~这我没法替你回答。你必须自己决定。~ + t7.0
END

IF ~~ t7.7
SAY ~我想，<CHARNAME>。真的，我想。~
IF ~~ + t7.9
END

IF ~~ t7.8
SAY ~我早就接受了，可是……也许这不止是认命而已。~
IF ~~ + t7.9
END

IF ~~ t7.9
SAY ~无论如何，我想让你知道，你给了我许多启发，<CHARNAME>。你是巴尔之子，可你首先是你自己。这正是我向往效法的榜样。~
++ ~谢谢你，塞琳。~ EXIT
++ ~你不必效法我，塞琳。做你认为最好的事。~ + t7.10
++ ~你本该如此。~ EXIT
END

IF ~~ t7.10
SAY ~我确实，<CHARNAME>。这正是我认为最好的。~
IF ~~ EXIT
END
END

// Friendship talk 8

CHAIN IF ~Global("C0SireneFriendshipTalk","GLOBAL",16)~ THEN C0SIRE2J t8
~「苦难自牺牲而来。忍耐自苦难而来。力量自忍耐而来。愿伊尔梅特赐<PRO_HESHE>成功之力，与忍耐之坚。」~ [C0BLANK]
DO ~IncrementGlobal("C0SireneFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",2700)~
END
++ ~你祈祷时声音很美。比平常更美。~ + t8.1
++ ~你在祈祷吗，塞琳？我没怎么听你这样过。~ + t8.2
++ ~很高兴看到你经历了我们谈的这一切之后，仍没有失去信仰。~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",1)~ + t8.3

APPEND C0SIRE2J

IF ~~ t8.0
SAY ~当然，<CHARNAME>。只要我能，我就会继续为你祈祷。~
IF ~~ EXIT
END

IF ~~ t8.1
SAY ~谢谢你，<CHARNAME>。说实话，这是有原因的。~
IF ~~ + t8.2
END

IF ~~ t8.2
SAY ~我想让你听见我的祈祷，因为那些话是为你说，<CHARNAME>。~
++ ~为什么专门为我？~ + t8.4
++ ~你不是要把我献给你的神当祭品什么的吧？~ + t8.5
++ ~说实话有点瘆人。你祈祷了什么？~ + t8.4
END

IF ~~ t8.3
SAY ~这要谢你，我的朋友。你一直是支撑我的恒常源泉。~
IF ~~ + t8.2
END

IF ~~ t8.4
SAY ~你很快要面对艰难的试炼，我知道。我已把持剑的手臂给了你，可是……有时我觉得那还不够。~
= ~所以我……把另一件我仅有的东西给了你。我的祈祷，为你持续的成功与好运。~
++ ~你真好心。~ + t8.6
++ ~我不需要祈祷。你的友谊就够了。~ + t8.7
++ ~这都很暖心，可我们能继续吗？~ + t8.0
END

IF ~~ t8.5
SAY ~什么？不，当然不是……你又在拿我说笑了吗，<CHARNAME>？~
IF ~~ + t8.4
END

IF ~~ t8.6
SAY ~相比你给我的善意，这实在微不足道，<CHARNAME>。~
IF ~~ + t8.8
END

IF ~~ t8.7
SAY ~而你会有的，我保证。可这于我所需甚少，对你也许意义重大。~
IF ~~ + t8.8
END

IF ~~ t8.8
SAY ~说实话，我已有一段时间以你的名义祈祷……可直到近来我才有勇气让你听见。我想我在你身边变得……更自在了。~
= ~你是位真正的朋友，一位值得钦佩的领袖，在我疑惑时是位明智的导师。我欠你许多，也许多到还不清。~
++ ~我们是朋友，塞琳。朋友之间不相欠。~ + t8.9
++ ~慢慢来。我们一时半会儿不会死。~ + t8.10
++ ~我感激。~ + t8.11
END

IF ~~ t8.9
SAY ~不，可是……为你，我愿把这给你。我不愿再见一位难得的朋友失去。~
IF ~~ + t8.11
END

IF ~~ t8.10
SAY ~我知道，<CHARNAME>。你不会领我们走错路。~
IF ~~ + t8.11
END

IF ~~ t8.11
SAY ~时候到了，我希望这些祈祷能助你，<CHARNAME>。伊尔梅特看顾我们两人。~
IF ~~ EXIT
END
END
// Friendship talk 9

CHAIN IF ~Global("C0SireneFriendshipTalk","GLOBAL",18)~ THEN C0SIRE2J t9
~你看起来不好，<CHARNAME>。你在那肮脏的收容所里无论遭遇了什么……我不敢想象。~ [C0BLANK]
DO ~IncrementGlobal("C0SireneFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",2700)~
END
++ ~你最好别想。没人该经历我经历的事。~ + t9.1
++ ~是，嗯，失去灵魂可不是每天都能经历的事。~ + t9.1
++ ~我没事。要打垮我，艾瑞尼卡斯的折磨还远远不够。~ + t9.1
++ ~这谈话能改天再说吗？我现在没心情。~ + t9.0

APPEND C0SIRE2J

IF ~~ t9.0
SAY ~是的，当然……可你若需要什么，<CHARNAME>，我随时愿意听。~
IF ~~ EXIT
END

IF ~~ t9.1
SAY ~你是坚强的<PRO_MANWOMAN>，<CHARNAME>。知道你这样受苦之后，我无法把你看成别的。~
= ~若回答不违背你的意愿，我的朋友……你感觉如何？你为你失去的东西感到痛吗？~
++ ~不完全是痛。更像是……一种空洞。~ + t9.2
++ ~不必担心。我感觉很好。~ + t9.3
++ ~痛这个词不对，塞琳。我在愤怒。我要复仇。~ + t9.4
END

IF ~~ t9.2
SAY ~是的……我想你会这样形容。~
IF ~~ + t9.5
END

IF ~~ t9.3
SAY ~若真如你所说，<CHARNAME>，那我该放心。可我担心你只是在硬撑。~
IF ~~ + t9.5
END

IF ~~ t9.4
SAY ~愤怒……是的，也许你该感到它。我愿祈祷你别让它吞掉你，可是……~
IF ~~ + t9.5
END

IF ~~ t9.5
SAY ~若这能给你些许安慰，<CHARNAME>，我愿与你分享我的一些感受。~
= ~我知道变得空洞是什么感觉。虽然我的灵魂并未被从我身体里撕走，可我感觉到留在我身体里的仿佛不是我的灵魂。它在我体内挣扎，想逃出去。有时……我觉得它已经逃了。~
= ~在我最糟的时候，我希望一切结束，仿佛世界本身在压碎我。~
= ~我知道那是无法形容的痛，<CHARNAME>，可是……我发现你的陪伴能安抚它。如今我希望我……也能反过来帮你。你若需要我的支撑，我会乐于给你，无论你需要的是安慰的话，还是仅仅一个可以靠的肩膀。~
++ ~谢谢你。有这样的忠实朋友我很高兴。~ + t9.6
++ ~这确实让我好受了些。我想从今往后我会更常需要你的支撑。~ + t9.6
++ ~我感激，可我真的没事。我会坚强。~ + t9.7
++ ~既然如此，我能……借那个肩膀吗？现在？~ + t9.8
++ ~别把我看成软弱。我不需要同情。~ + t9.9
END

IF ~~ t9.6
SAY ~你不必为我的友谊感激，<CHARNAME>。你给我的已超出我所能期望。这……是我至少能回报的。~
IF ~~ + t9.10
END

IF ~~ t9.7
SAY ~偶尔依靠朋友绝不算错，<CHARNAME>。~
IF ~~ + t9.10
END

IF ~~ t9.8
SAY ~（她努力挤出安抚的笑，把你的头靠在她的肩上，全力支撑着你。）~
IF ~~ + t9.10
END

IF ~~ t9.9
SAY ~我——若那是你的愿望，<CHARNAME>。我不再打扰。~
IF ~~ EXIT
END

IF ~~ t9.10
SAY ~无论要付出什么，我们都会把事情纠正过来，我的朋友。我向你起誓。~
IF ~~ EXIT
END

END

// Friendship talk 10

CHAIN IF ~Global("C0SireneFriendshipTalk","GLOBAL",20)~ THEN C0SIRE2J t10
~自从遇见我兄弟，我……一直在想我至今的选择。情况变了。不……更准确地说，是*我*变了。~ [C0BLANK]
DO ~IncrementGlobal("C0SireneFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",2700)~
END
+ ~Alignment("C0Sirene",LAWFUL_GOOD)~ + ~变好，还是变坏？~ + t10.1
+ ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + ~变好，还是变坏？~ + t10.2
+ ~Alignment("C0Sirene",LAWFUL_GOOD)~ + ~自那以后你确实看起来不一样了。你重新找回了信仰吗？~ + t10.1
+ ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + ~自那以后你确实看起来不一样了。你与自己和解了吗？~ + t10.2
++ ~我们没时间谈这个。~ + t10.0

APPEND C0SIRE2J

IF ~~ t10.0
SAY ~如你所愿。可我确实想说……无论我如今这条路前头有什么，都是你领我走的，我感激你所做的一切。~
IF ~~ EXIT
END

IF ~~ t10.1
SAY ~我的信仰恢复了，我觉得焕然一新。我的祈祷与特萨蒙同在……我希望他放下仇恨，希望我们能以真正的手足重逢。~
IF ~~ + t10.3
END

IF ~~ t10.2
SAY ~真奇怪……我已不是圣武士，可我并不觉得失去。我觉得……伊尔梅特释放了我。~
IF ~~ + t10.3
END

IF ~~ t10.3
SAY ~没有你，我做不到，<CHARNAME>。若不是你引导我，我的疑虑会把我定在原地，无法决定真正该信什么。为此，我真心感谢你。~
++ ~我什么都没做。全是你自己做到的。~ + t10.4
++ ~不客气。~ + t10.5
END

IF ~~ t10.4
SAY ~不，你教了我许多，我的朋友。我会尽力回报你，无论要付出什么。~
IF ~~ + t10.5
END

IF ~~ t10.5
SAY ~无论将来如何，我都该以勇气面对，并信我的信念。这就是你向我显示的。~
IF ~~ EXIT
END
END

// Friendship talk 11

CHAIN IF ~Global("C0SireneFriendshipHellTalk","GLOBAL",2)~ THEN C0SIRE2J t11
~<CHARNAME>？~ [C0BLANK]
DO ~IncrementGlobal("C0SireneFriendshipHellTalk","GLOBAL",1)~
END
++ ~什么事？~ + t11.1
++ ~有什么不对吗？你感觉到危险了？~ + t11.1
++ ~这看起来像是现在谈这个的地方吗？~ + t11.1

APPEND C0SIRE2J

IF ~~ t11.1
SAY ~我只是想再一次谢谢你的一切。为你领导与友谊的愉快。能在你身边战斗是我的荣幸……在你身边死去亦然。~
++ ~谢谢你，塞琳。~ + t11.2
++ ~噢……谢谢。这几乎让我忘了我们身处的地方有多阴沉。~ + t11.2
++ ~我们还没死。不算是。~ + t11.3
++ ~这些暖心的话，等我们出了这地狱再说吧。~ + t11.3
END

IF ~~ t11.2
SAY ~我只是想说……我不怪你领我们到这里。跟随你进这些坑洞对抗你的敌人，是我的选择……我没有遗憾。~
++ ~没有遗憾？一点也不？~ + t11.4
++ ~你真觉得我们回不去了？~ + t11.5
++ ~这就是我要听的。谢谢你。~ + t11.6
END

IF ~~ t11.3
SAY ~我知道这不是交谈的最好地方，可我甩不掉那种感觉——我们很快要面对至今最艰难的一战……若我们失败，那我要说心里话就太迟了。~
IF ~~ + t11.2
END

IF ~~ t11.4
SAY ~嗯……（笑）也许我心里确实有几件小小的遗憾。可是……现在想它们太迟了。~
IF ~~ + t11.6
END

IF ~~ t11.5
SAY ~我不能否认这有可能，可是……我相信我们会成功。因为……我相信你。~
IF ~~ + t11.6
END

IF ~~ t11.6
SAY ~是你一路领我们走到这里，而在这旅程中，我全因你才坚持下来……所以，再一次，谢谢你，我的朋友。~
IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ + t11.7
IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + t11.8
END

IF ~~ t11.7
SAY ~若不是你的引导，我大概早就失去信仰了……不知道自己为何而战。只有伊尔梅特知道我本会迷得多远。~
IF ~~ + t11.9
END

IF ~~ t11.8
SAY ~因为你的领导，我知道了必须做什么……必须走哪条路。我能毫不犹豫地做出选择，相信自己的能力……全因你。~
IF ~~ + t11.9
END

IF ~~ t11.9
SAY ~即使不是这样，我也珍视我们友谊的深度，<CHARNAME>。我很高兴我们同行了这么久。我比我曾经的那个人更多了。~
++ ~成长的不仅是你。我也从你的榜样中学了许多。~ + t11.10
++ ~我希望这一切结束后我们仍是朋友。~ + t11.11
++ ~说完了？好，我们走吧。~ + t11.12
END

IF ~~ t11.10
SAY ~是吗？（塞琳的唇慢慢弯成微笑）……那我真心满足了。谢谢你的一切，我的朋友。~
IF ~~ EXIT
END

IF ~~ t11.11
SAY ~当然，<CHARNAME>。只要我活着，我想我永远不会忘记你。~
IF ~~ EXIT
END

IF ~~ t11.12
SAY ~是的……倾我们全部之力……让我们一同把艾瑞尼卡斯绳之以法。~
IF ~~ EXIT
END
END

// Lovetalk 1

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",2)~ THEN C0SIRE2J lt1
~你肯陪我走一会儿吗，我的朋友？~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
++ ~当然。有什么问题吗？~ + lt1.1
++ ~女士相邀，我怎能拒绝？~ + lt1.2
++ ~不，我宁愿我们分开走。~ + lt1.3

APPEND C0SIRE2J

IF ~~ lt1.1
SAY ~不，一点也没有。我只是……想要你作伴一会儿。~
IF ~~ + lt1.2
END

IF ~~ lt1.2
SAY ~（你们并肩而行，虽然也许是你多心，可你走动时塞琳似乎在渐渐靠近你。）~
= ~我该趁这时候说说我多珍视你的陪伴，<CHARNAME>。有你在，我几乎能忘掉我生活里所有别的难处。~
= ~像你这样宽容的人并不多。你的善意深深触动了我。~
++ ~多谢你的称赞。~ + lt1.4
++ ~我能说什么？也许我喜欢上你了。~ + lt1.5
++ ~我留你在身边是因为你有用，塞琳。就这样吧。~ + lt1.3
END

IF ~~ lt1.3
SAY ~如你所愿，我的朋友。若我做了什么让你不快，我很抱歉。~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ lt1.4
SAY ~我只是在说实话，<CHARNAME>。你不必谢我。~
IF ~~ + lt1.6
END

IF ~~ lt1.5
SAY ~*脸红*<CHARNAME>，那……听到这样的话，我不知道该怎么回应。~
++ ~我该停下吗？~ + lt1.7
++ ~笑一个怎么样？~ + lt1.6
END

IF ~~ lt1.6
SAY ~（她唇上浮现温和紧张的笑，忽然你感觉到她的手碰到了你的手。）~
++ ~你笑起来很迷人。我希望你多笑笑。~ + lt1.8
++ ~有你在真好。~ + lt1.9
++ ~（抽回手）别这样。~ + lt1.3
END

IF ~~ lt1.7
SAY ~不，请别停。我感激你把我往好处想。~
IF ~~ + lt1.6
END

IF ~~ lt1.8
SAY ~为你，<CHARNAME>，我会尽力。~
IF ~~ EXIT
END

IF ~~ lt1.9
SAY ~我也是，<CHARNAME>。~
IF ~~ EXIT
END
END

// Lovetalk 2

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",4)~ THEN C0SIRE2J lt2
~你可曾想过本可能如何，<CHARNAME>？若你血管里流的不是巴尔的血？~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
++ ~我尽量不去想。~ + lt2.1
++ ~一直在想。~ + lt2.2
++ ~我为什么会想这种事？~ + lt2.1

APPEND C0SIRE2J

IF ~~ lt2.1
SAY ~你不曾想过，你若生自凡人父母，你的人生会有多大不同吗？~
IF ~~ + lt2.2
END

IF ~~ lt2.2
SAY ~我常想，若我血管里流的不是魔性的血，我会在什么地方。也许我永远不会成为伊尔梅特祭司的受监护者。~
= ~我甚至有可能认识我的家人。想这些很怪吗？~
++ ~一点也不。~ + lt2.3
++ ~那你会是完全另一个人。~ + lt2.4
++ ~这没意义。~ + lt2.5
END

IF ~~ lt2.3
SAY ~听你这么说我放心了，我的朋友。有时我担心自己心在天上，而我该专注于当下。~
IF ~~ + lt2.6
END

IF ~~ lt2.4
SAY ~是的，确实……我在想我会不会喜欢那个我本可能成为的人。~
IF ~~ + lt2.6
END

IF ~~ lt2.5
SAY ~你也许说得对。无论我相信什么，我都无法改变命运造就的我。~
IF ~~ + lt2.6
END

IF ~~ lt2.6
SAY ~不过……想到我本可能正常，这……至少也算点什么。我不能说我就不会更喜欢那样的人生。~
++ ~你真这么厌恶你的血脉吗？~ + lt2.7
++ ~那若我们从未相遇呢？你还会宁愿那样吗？~ + lt2.8
++ ~今天的哲学思辨够了。我们还有现实要应付。~ + lt2.9
END

IF ~~ lt2.7
SAY ~这问题真怪，<CHARNAME>。我还能拿它跟什么比？我没那么天真——我知道事情本可能糟得多得多。~
IF ~~ + lt2.10
END

IF ~~ lt2.8
SAY ~不……我不能说我会。有如今的位置……也许即使我有能力，我也不会改变过去。~
IF ~~ + lt2.10
END

IF ~~ lt2.9
SAY ~是的，没错。那就带路吧。~
IF ~~ EXIT
END

IF ~~ lt2.10
SAY ~我的白日梦已经浪费了你太多时间，<CHARNAME>。不过……有人可以分享这样的念头，真好。~
IF ~~ EXIT
END
END

// Lovetalk 3

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",6)~ THEN C0SIRE2J lt3
~（你注意到塞琳似乎心不在焉，低头看着一面小小的手镜。）~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
++ ~塞琳？你还好吗？~ + lt3.1
++ ~我没想到你是爱虚荣的人。~ + lt3.2
++ ~你不注意周围，把这把所有人都置于危险中。~ + lt3.3
++ ~（别理她）~ + lt3.0

APPEND C0SIRE2J

IF ~~ lt3.0
SAY ~（终于，她带着悲伤的表情，把镜子放回行囊，像什么都没发生一样继续走。）~
IF ~~ EXIT
END

IF ~~ lt3.x
SAY ~是的……我们该走了。~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ lt3.1
SAY ~是——是的，我当然没事，<CHARNAME>。~
IF ~~ + lt3.4
END

IF ~~ lt3.2
SAY ~我没事，<CHARNAME>。我只是在沉思……~
IF ~~ + lt3.4
END

IF ~~ lt3.3
SAY ~是的……我知道，<CHARNAME>。我不该分心，可是……~
IF ~~ + lt3.4
END

IF ~~ lt3.4
SAY ~<CHARNAME>……在你看来我像怪物吗？~
++ ~什么？你为什么说这种话？~ + lt3.5
++ ~我不确定我明白你在问什么，塞琳。~ + lt3.5
++ ~我若说是，你会看轻我吗？~ + lt3.6
END

IF ~~ lt3.5
SAY ~也许这太突然了。我只是一直在看……我的血赐给我的那些「礼物」。~ [C0BLANK]
= ~请原谅我这么说，可是……我觉得你幸运。你的血脉是黑暗的，正如我的，可是……你各方面看起来都正常。很难不羡慕你。~
++ ~那不对，塞琳。巴尔的污秽也许看不见，可它一样影响我。~ + lt3.7
++ ~你宁愿我们的角色互换吗？~ + lt3.8
++ ~我不太舒服跟你谈这个。也许我们就到此为止。~ + lt3.x
END

IF ~~ lt3.6
SAY ~我……不，我不会，<CHARNAME>。你若真会，那么……我就没有理由继续问了。~
++ ~对不起。我不是想暗示什么。~ + lt3.5
++ ~不，说下去。你本来要说什么？~ + lt3.5
++ ~既然如此，那我们该专心赶路。~ + lt3.x
END

IF ~~ lt3.7
SAY ~不，确实如此……你也许不知道你血里藏着什么邪恶，可它一样塑成了你的人生。~
IF ~~ + lt3.9
END

IF ~~ lt3.8
SAY ~我……我不知道。也许我不会。~
IF ~~ + lt3.9
END

IF ~~ lt3.9
SAY ~若我说你背负的担子比我的轻，冒犯了你，那我真心道歉。我无法指望知道这对你真正意味着多少。~
++ ~我没被冒犯，塞琳。你不是有意说什么。~ + lt3.10
++ ~别担心。我其实觉得你的人生比我艰难得多。~ + lt3.10
++ ~这确实让我不舒服。也许我们该放下这个。~ + lt3.x
END

IF ~~ lt3.10
SAY ~你太好心了，<CHARNAME>。我希望我能更早遇到……像你这样的人。~
= ~谢谢你听我的想法。我很高兴你不像别人那样把我看成怪物。那就够了。~
IF ~~ EXIT
END
END

// Lovetalk 4

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",8)~ THEN C0SIRE2J lt4
~你受伤了，我的朋友，看着让我心痛。你肯让我替你治吗？~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
+ ~OR(2)
Class(Player1,CLERIC_ALL)
Class(Player1,DRUID_ALL)~ + ~我自己能治我的伤，谢谢。~ + lt4.1
++ ~那我会感激。~ + lt4.2
++ ~不，把你的治疗留给更需要的人。~ + lt4.3
++ ~别管我。~ + lt4.4

APPEND C0SIRE2J

IF ~~ lt4.1
SAY ~我知道你的治疗本领远胜于我，<CHARNAME>，可若我能做什么，我就会做。求你，别动。~
IF ~~ + lt4.5
END

IF ~~ lt4.2
SAY ~别动，<CHARNAME>。我会尽力处理你的伤。~
IF ~~ + lt4.5
END

IF ~~ lt4.3
SAY ~你需要的帮助不比任何人少，<CHARNAME>。求你，别动，让我处理你的伤。~
IF ~~ + lt4.5
END

IF ~~ lt4.4
SAY ~……如你所愿，<CHARNAME>。~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ lt4.5
SAY ~我该道歉。我宣誓为你效力、护你周全。你受伤是我的疏忽之过。~
++ ~别怪自己。没人能救所有人。~ + lt4.6
++ ~我没让你立过这样的誓。你愿意留或走都随你。~ + lt4.6
++ ~我听腻了你的疑虑和自怜。你若觉得自己失败了，就自己跟自己说，别烦我。~ + lt4.4
END

IF ~~ lt4.6
SAY ~我是自愿在这里的，<CHARNAME>，而我对伊尔梅特的誓约要求我尽力护人。这一回，我觉得我失败了。~
= ~若我不能护你免于伤害，那至少……我能把你的痛带走……~
IF ~~ + lt4.7
END

IF ~~ lt4.7
SAY ~「伊尔梅特，忍耐者……将此人的苦难从<PRO_HISHER>身上移去……把<PRO_HISHER>的痛加在您卑微的仆人身上……」~
++ ~我的伤……现在到你身上了！~ + lt4.8
++ ~你在做什么？停下！~ + lt4.8
++ ~谢谢你。~ + lt4.9
END

IF ~~ lt4.8
SAY ~别怕，<CHARNAME>。我做过许多次了，而且……我很习惯了。~
IF ~~ + lt4.9
END

IF ~~ lt4.9
SAY ~这也是我职责的一部分。你感觉如何，<CHARNAME>？~
++ ~好多了。可是，塞琳……~ + lt4.10
++ ~下次我建议还是用绷带。~ + lt4.11
++ ~答应我，别再为我那样做。~ + lt4.12
END

IF ~~ lt4.10
SAY ~我会没事的，别担心。来，我们一起走。~
IF ~~ DO ~ForceSpellRES("C0ILMS1",Player1)~ EXIT
END

IF ~~ lt4.11
SAY ~也许吧，可是……这么做确实有种解脱感。来，我们一起走。~
IF ~~ DO ~ForceSpellRES("C0ILMS1",Player1)~ EXIT
END

IF ~~ lt4.12
SAY ~（微笑）我怕那是我不能做的承诺，我的朋友。来，我们一起走。~
IF ~~ DO ~ForceSpellRES("C0ILMS1",Player1)~ EXIT
END
END

// Lovetalk 5 - after rest

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",10)~ THEN C0SIRE2J lt5
~（你醒来时，听见塞琳在睡梦中呻吟、轻声哭泣。）~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
= ~嗯呃……不——不，等等……别离开我……求你！~
END
++ ~塞琳！醒醒！~ + lt5.1
++ ~（摇她）~ + lt5.1
++ ~（靠近她但不叫醒她）~ + lt5.2
++ ~（不理她，开始收拾行装）~ + lt5.3

APPEND C0SIRE2J

IF ~~ lt5.1
SAY ~（她忽然抓住你的手，紧紧抱在怀里，仿佛怕放开。）~
= ~（她双眼猛然睁开，震惊地看着你。）你——你……<CHARNAME>？~
++ ~你吓了我一跳，塞琳。怎么了？做噩梦了？~ + lt5.4
++ ~你还好吗？你满脸都是湿的。~ + lt5.4
++ ~你终于醒了。来吧，我们该走了。~ + lt5.5
END

IF ~~ lt5.2
SAY ~为——为什么……？我……我几乎看不清你……~
IF ~~ + lt5.1
END

IF ~~ lt5.3
SAY ~（过了一会儿她醒来，擦去脸上的汗与泪。带着认命的表情，她收拾东西，努力装出什么都没发生的样子。）~
IF ~~ EXIT
END

IF ~~ lt5.4
SAY ~（她从铺盖上坐起，陷入沉思。）~
= ~我……我希望我的样子没让你不安。那个梦……我做过许多次，可我仍没更明白它。~
++ ~你在嘟囔有人离开什么的。你看见了什么？~ + lt5.6
++ ~慢慢来。不过现在，我们真该走了。~ + lt5.5
++ ~你还抓着我的手呢，你知道吧。~ + lt5.7
END

IF ~~ lt5.5
SAY ~是——是的……若我让你担心了，我很抱歉。我马上就好。~
IF ~~ EXIT
END

IF ~~ lt5.6
SAY ~每次都一样。灼热……火焰之中有影像……一个男人和一个女人的影子，在跑。~
= ~我……我只能猜他们是我的父母。可无论我怎么呼唤，他们都不听我。~
IF ~~ + lt5.8
END

IF ~~ lt5.7
SAY ~什么——哦！~
IF ~~ + lt5.8
END

IF ~~ lt5.8
SAY ~（她忽然发觉自己正把你的手按在自己胸口，脸红着松开。她转开身去藏起羞意。）~
= ~我——我很抱歉，<CHARNAME>。我不该让你看见我这样。~
++ ~没关系。我们都有可怕的回忆。~ + lt5.9
++ ~别让它在清醒时影响你。~ + lt5.10
END

IF ~~ lt5.9
SAY ~我希望那些是回忆，可我醒着时怎么努力也召不出来。~
IF ~~ + lt5.10
END

IF ~~ lt5.10
SAY ~*叹气*我不该让这个妨碍我对你的职责，<CHARNAME>。你若能……装作没看见，我会非常感激。原谅我。~
IF ~~ EXIT
END
END

// Lovetalk 6

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",12)~ THEN C0SIRE2J lt6
~我刚想到……我对自己的过去并不算坦白，<CHARNAME>。~ [C0BLANK]
== C0SIRE2J IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~我们做朋友有一段时间了，可我记得我只跟你讲过我的幼年。~
== C0SIRE2J ~也许你会想更了解我。我觉得那也许……对我们之间建立信任是必要的。你愿意吗？~
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
++ ~我已经信任你了，塞琳。~ + lt6.1
++ ~这跟你之前的梦有关吗？~ + lt6.2
++ ~说吧。我愿意听。~ + lt6.3
++ ~现在不行。~ + lt6.4

APPEND C0SIRE2J

IF ~~ lt6.1
SAY ~我知道，我也为此感激，可是……我觉得我对你不公平。我从你的传说和你告诉我的事里了解了你许多，可是……你对我的过去几乎一无所知。~
IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ + lt6.3
IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ + lt6.5
END

IF ~~ lt6.2
SAY ~是的……嗯，也许不是直接相关，可是……它确实让我想到该跟你讲讲我自己。~
IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ + lt6.3
IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ + lt6.5
END

IF ~~ lt6.3
SAY ~你已经知道我的一些事……比如伊尔梅特的祭司为何选我做圣武士，好让我在重伤了神殿里一个同伴之后学会自律。可那故事还有更多。~
IF ~~ + lt6.6
END

IF ~~ lt6.4
SAY ~如你所愿，我的朋友。也许改天吧。~
IF ~~ DO ~SetGlobal("C0SireneLovetalk","GLOBAL",11)~ EXIT
END

IF ~~ lt6.5
SAY ~我婴儿时被遗弃，由伊尔梅特的祭司养大……这你已经知道。我是个脾气烈的女孩，被神殿里的同伴畏惧、欺侮，直到有一天我出于愤怒犯下了可怕的罪。~
= ~那些不够怕我、没躲开的孩子们会朝我扔石头，叫我受诅咒的孩子。有一天我勃然大怒，攻击了他们几个，重伤了一个男孩。~
= ~即使在那时我也极为悔恨。我让自己血里的邪恶控制了我，即使只是一瞬……而我为此受了罚。~
= ~可是……祭司们在我身上仍看到希望，相信圣武士身份会给我自律，让我控制更黑暗的冲动。又或者他们希望把我的怒气变成正义的怒火……无论哪种，我都感激他们给了我这个机会。~
++ ~我以为圣武士通常属于某个特定的骑士团。~ + lt6.7
++ ~说下去。~ + lt6.6
++ ~我听够了。我们走吧。~ + lt6.8
END

IF ~~ lt6.6
SAY ~我那小小的村子并非出产精良战士的地方。可神殿的一位兄弟熟悉受苦圣战武士，便召来一位骑士团的圣武士亲自训练我。马克·莫里斯爵士，伊尔梅特的殉道者。~
= ~我起初并不知道这些。我第一次与这位后来成为我导师的人面对面时，我还被锁在神殿自己的房间里，祈祷忏悔。~
++ ~你当时怎么想？~ + lt6.9
++ ~说下去。~ + lt6.9
++ ~我听够了。我们走吧。~ + lt6.8
END

IF ~~ lt6.7
SAY ~我……按身份说，是受苦圣战武士的骑士。虽然除导师之外我从没见过同团的别人，可我受过那样的训练。~
IF ~~ + lt6.6
END

IF ~~ lt6.8
SAY ~如你所愿。~
IF ~~ EXIT
END

IF ~~ lt6.9
SAY ~我猜他是不是来把我带走，也许关进某个收容所。我记得我问过他这话。神明啊，那多尴尬……~
= ~他起初没答……他只是回望我，望着这个年轻、莽撞、带污秽的孩子挑衅地瞪回去。然后……他只是点了头。~
++ ~他认可你的行为？~ + lt6.10
++ ~然后发生了什么？~ + lt6.10
END

IF ~~ lt6.10
SAY ~他问我怕不怕他。我说：「不。」他问我最想要什么，我告诉他：「被宽恕。」~
= ~莫里斯爵士又朝我点头，说我有成为信仰斗士的资质。我不知道是什么让我这样想……可我信了他。~
= ~他教我怎样握训练剑；怎样战斗不是为了伤人，而是护人。我意识到，即使我魔性的血，也能以伊尔梅特之名洒出。~
= ~这就是我最初开始圣武士训练的故事，我的朋友。也许将来我会告诉你更多……若你愿意。~
++ ~我现在就想知道。~ + lt6.11
++ ~当然，改天吧。~ + lt6.12
++ ~我没兴趣。~ + lt6.13
END

IF ~~ lt6.11
SAY ~我若能就好了，<CHARNAME>，可是……我需要时间想个最好的故事来讲。给我时间，我会尽量不让你厌烦。~
IF ~~ EXIT
END

IF ~~ lt6.12
SAY ~好罢。我会想个最好的故事讲给你听……到时候再说。~
IF ~~ EXIT
END

IF ~~ lt6.13
SAY ~那是你该做的决定……不过你若改变主意，我愿意讲。~
IF ~~ EXIT
END

END

// Lovetalk 7

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",14)~ THEN C0SIRE2J lt7
~我跟你讲过我如何加入伊尔梅特的圣武士骑士团，<CHARNAME>，可我没讲完。你还感兴趣吗？~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
++ ~听听也无妨。~ + lt7.1
++ ~现在不行。~ + lt7.2
++ ~我没兴趣。~ + lt7.3

APPEND C0SIRE2J

IF ~~ lt7.1
SAY ~好罢。我说到哪儿了？我讲过初次见到我导师，受苦圣战武士的莫里斯爵士。我十二岁开始习武。~
= ~我从没握过剑，也不是……最有耐性的学生。我的急躁常占上风，我会伤到自己，或者把自己置于险境。~
= ~可奇怪的是……虽然我每次犯错都以为莫里斯爵士会斥责我，他却很少如此。他只是替我处理伤口，让我继续。~
++ ~他从没指出你错在哪里？~ + lt7.4
++ ~说下去。~ + lt7.4
++ ~这故事我还是不想听了。~ + lt7.3
END

IF ~~ lt7.2
SAY ~如你所愿。那改天吧。~
IF ~~ DO ~SetGlobal("C0SireneLovetalk","GLOBAL",13)~ EXIT
END

IF ~~ lt7.3
SAY ~好罢。若你宁愿如此。~
IF ~~ EXIT
END

IF ~~ lt7.4
SAY ~有一天我发觉有什么不对……那天我特别烦躁，为了什么我已记不得……我去校场练习。~
= ~盛怒之中我脚步犯了个严重错误，绊倒时头撞上石头，受了近乎致命的伤。~
++ ~然后怎么了？~ + lt7.5
++ ~哎哟！你没事吧？~ + lt7.6
++ ~我不想再听了。~ + lt7.3
END

IF ~~ lt7.5
SAY ~我失去了知觉，可等我醒过来……我很困惑。我的头完好无损，而且我觉得像是从一场安眠中醒来。~
= ~我转头看四周时……看见的景象让我惊骇。莫里斯爵士从上方看着我，他的头正流着血，伤口跟我给自己造成的一样。~
= ~他告诉我，他把我的苦痛接到自己身上，说*这*就是伊尔梅特骑士团的职责——活着护人，为人受苦，必要时……为人而死。~
= ~我那时明白了，我犯的每一个错，都让他为我受苦。我问他是否愿意用他的命换我的命，把我从我自己的愚蠢中救出，而他……沉默了。可我知道答案，我记得……我流下了悔恨的泪。~
++ ~他做的这事真勇敢。~ + lt7.6
++ ~说下去。~ + lt7.6
END

IF ~~ lt7.6
SAY ~我没有向他道歉，而是……我求他教我怎么也能这样做。我受到了感召。我想像他救我那样去救别人。~
++ ~而他教了，对吧？~ + lt7.7
++ ~故事感人，可我们真该走了。~ + lt7.8
END

IF ~~ lt7.7
SAY ~他朝我笑了，同时还流着不少血……那是我第一次见导师笑。~
= ~之后我亲手替他包扎处理伤口，把每一秒都用在学伊尔梅特殉道者的本领上。从那以后我便专心训练，治疗与剑术都是。~
= ~我只能向往成为像我的莫里斯爵士那样伟大的骑士……可我仍有许多要学。~
= ~谢谢你听我讲这冗长的故事，<CHARNAME>。我希望没让你厌烦。~
++ ~一点也没有。这是个好故事。~ + lt7.9
++ ~有点拖，可现在讲完了，对吧？~ + lt7.10
END

IF ~~ lt7.8
SAY ~好罢。我——我希望没让你厌烦。~
IF ~~ EXIT
END

IF ~~ lt7.9
SAY ~知道这个很好，<CHARNAME>。我还有更多可讲，只要你不厌倦。~
= ~不过我想最好还是留到改天。~
IF ~~ EXIT
END

IF ~~ lt7.10
SAY ~是的……是的，是这样。抱歉占了你这么多时间。~
IF ~~ EXIT
END
END

// Lovetalk 8

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",16)~ THEN C0SIRE2J lt8
~（塞琳不经意地揉着左眼上的疤，仿佛它让她不舒服。）~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
++ ~还疼吗？~ + lt8.1
++ ~那道疤是哪儿来的？~ + lt8.2
++ ~（别理她）~ + lt8.0

APPEND C0SIRE2J

IF ~~ lt8.0
SAY ~（塞琳眨了几下眼，然后停下，回到队伍里。）~
IF ~~ EXIT
END

IF ~~ lt8.1
SAY ~嗯？哦，不……嗯，也许有点疼，可是……~
IF ~~ + lt8.3
END

IF ~~ lt8.2
SAY ~我还没跟你讲过这道疤的来历，对吧？原谅我，可这不是个愉快的可说之事。也许你最好不知道。~
++ ~无论如何，我想听。~ + lt8.3
++ ~若你觉得那样最好。~ + lt8.4
END

IF ~~ lt8.3
SAY ~好罢……不过你若后悔，你说停我就停。~
= ~那是我开始朝圣几年之后的事……我那时仍是个莽撞的少年。我沿识海岸大道路走，想尽我的职责。~
= ~那时我并不孤单。还有另一个……一个我非常在意的人。我们在一起，想在能行之处做些好事。~
++ ~你肯跟我讲讲那个人吗？~ + lt8.5
++ ~说下去。~ + lt8.6
++ ~这跟你的疤有什么关系？~ + lt8.6
END

IF ~~ lt8.4
SAY ~是的……我相信是。~
IF ~~ EXIT
END

IF ~~ lt8.5
SAY ~也许改天吧……若你有兴趣。那本身就是另一个故事。~
IF ~~ + lt8.6
END

IF ~~ lt8.6
SAY ~海岸大道路……是个危险的地方。那条路一直有强盗与劫掠者的风险，可是……那时更糟。一伙奴隶贩子，由一个叫阿萨多尔的人领头，掳走了许多旅人。~
= ~我出于傲慢，带着自己与同伴去找这伙奴隶贩子……而我们找到了他们。~
++ ~这听起来不妙。然后怎么了？~ + lt8.7
++ ~我想这故事我听够了。~ + lt8.8
END

IF ~~ lt8.7
SAY ~我们在林中一片空地遇上对手，那里我们人数处于劣势，处境不利。我们反击，却被打败，几乎被杀……或更糟。我逃进林子，勉强保住性命。~
= ~那天夜里……我向伊尔梅特祈祷，求指引。我梦见了当日的战斗，并被驱使回到那地方。~
++ ~你回去了？那不是很危险吗？~ + lt8.10
++ ~说下去。~ + lt8.9
++ ~我听够了。~ + lt8.8
END

IF ~~ lt8.8
SAY ~如你所愿。也许你没听见那些暴行……也没听见我被迫做的事，倒是最好。~
IF ~~ EXIT
END

IF ~~ lt8.9
SAY ~我找到了尸体，我前一日杀的人。我在他们身上找到一张地图，引我去找他们的首领阿萨多尔……而我知道我该做什么。~
= ~我伪装成他们中的一个奴隶贩子，把盔甲藏在他们的衣服下，找到了去他们营地的路。我藏身于敌人之中，有被发现的风险。即使如今想到也令我战栗……可我必须除掉这威胁，无论付出什么。~
++ ~那么你杀了他们的首领？~ + lt8.11
++ ~你为什么不干脆把地图交给最近的官署？~ + lt8.12
++ ~够了。我们该走了。~ + lt8.13
END

IF ~~ lt8.10
SAY ~也许……可我信我的神，所以我去了。~
IF ~~ + lt8.9
END

IF ~~ lt8.11
SAY ~借着我奴隶贩子的伪装，我找到了阿萨多尔。我看出他手下对他的畏惧，本以为他会显得强大。可他……远不是我想的那样。~
++ ~那他是什么样？~ + lt8.14
++ ~说下去。~ + lt8.14
END

IF ~~ lt8.12
SAY ~我本该那样。可我对这些人怀着炽烈的恨，而且……我想亲手杀他们。我太蠢了。~
IF ~~ + lt8.11
END

IF ~~ lt8.13
SAY ~如你所愿，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ lt8.14
SAY ~在他的私室里，我看见一个男人——精瘦、矮小，额头突出双角，眼神残酷。他身负邪血——正如我。~
= ~我愣住了，放松了戒备。他很快发觉我不是他的手下，便质问我是谁。~
++ ~你怎么回答他？~ + lt8.15
++ ~你逃了吗？~ + lt8.15
END

IF ~~ lt8.15
SAY ~我知道逃不掉，撒谎也无用。我带着虚假的勇气对他说：「我是塞琳，伊尔梅特的斗士。我来为你的罪行惩罚你。」~
= ~他当面大笑，还嘲弄地称赞我的胆量。我觉得恐惧化成了愤怒，便向他挑战决斗。~
= ~阿萨多尔答应了。他傲慢，相信自己会赢……而说实话，也许他本会赢。~
++ ~所以你击败并杀了他？~ + lt8.16
++ ~说下去。~ + lt8.16
++ ~够了。我们该走了。~ + lt8.13
END

IF ~~ lt8.16
SAY ~我们拔剑相斗，可他的技艺远胜于我。我完全料到会当场死去，可我至少会带着荣誉死。~
= ~他第一记命中的攻击……造成了我脸上的这道疤。同时，我被燃烧的灰烬扑打，烧掉了我的兜帽，露出了我的真身。~
= ~他震惊了，有一瞬放松了戒备——我就在那一瞬击中了他。~
++ ~杀了他吗？~ + lt8.17
++ ~说下去。~ + lt8.17
END

IF ~~ lt8.17
SAY ~那一击伤了他，可我虚弱——不足以杀他。他暴怒，抬手念咒。那一刻我明白他不只是战士，还是法师。~
= ~我被一团火焰吞没，若不是我魔性的血，我大概就死了。可我被击败了……在他面前毫无还手之力。~
= ~我以为他会了结我，可他没有。当他把我按在地上时，我明白他打算对我做的事比速死更糟，我惊恐万分。~
++ ~太可怕了！~ + lt8.18
++ ~他……得逞了吗？~ + lt8.18
++ ~我不能再听了。~ + lt8.19
END

IF ~~ lt8.18
SAY ~他一边嘲弄我，一边从我身上剥下盔甲，说我有太多潜力，不该被杀或扔掉。可是……他疏忽了，没注意到自己腰带上带着的一把刀。~
= ~我……假装屈服，等他让自己露出破绽时，我抽出那把刀……刺进他的后颈。~
= ~神明啊，我至今还记得他的血滴在我脸上的味道。即使如今，多年之后，我最深的噩梦里仍会想起那一刻。~
++ ~可你救了自己。你至少松了口气吗？~ + lt8.20
++ ~说下去。~ + lt8.21
END

IF ~~ lt8.19
SAY ~是的……也许那样最好。~
IF ~~ EXIT
END

IF ~~ lt8.20
SAY ~松了口气，是的……可也惊恐。~
IF ~~ + lt8.21
END

IF ~~ lt8.21
SAY ~在我动手的前一刻，我失去了所有关于荣誉、我的主伊尔梅特的念头，一切……我所能想到的只有活下去。而且……当我把刀刺进阿萨多尔的喉咙时……我没有一丝犹豫。~
= ~看着躺在我身上的尸体，看着我手指上的血，我明白了我可能变成的最坏样子。我把尸体推开，强忍住尖叫的冲动。~
+ ~OR(2) PartyHasItem("c0sw2h") PartyHasItem("c0sw2h2")~ + ~你怎么逃出来的？~ + lt8.22
+ ~!PartyHasItem("c0sw2h") !PartyHasItem("c0sw2h2")~ + ~你怎么逃出来的？~ + lt8.23
END

IF ~~ lt8.22
SAY ~我照进来的方式逃出去——我取下阿萨多尔的斗篷披上，也拿了他的剑……就是我现在带着的这把。~
IF ~~ + lt8.24
END

IF ~~ lt8.23
SAY ~我照进来的方式逃出去——我取下阿萨多尔的斗篷披上，也拿了他的剑……那把烟与灰的剑，我带了多年。~
IF ~~ + lt8.24
END

IF ~~ lt8.24
SAY ~只有身负下层位面之血的人才能安全使用他的剑。阿萨多尔的手下必定知道这一点，因为我离开时他们毫不怀疑地以为我就是他。~
= ~我知道那天我见到了我族类最坏的一面。那种我永远不会成为的人……于是我学会了憎恨暴力。阿萨多尔的残忍给了我宝贵的一课。~
= ~这就是我过去的故事，<CHARNAME>。我希望它没让你太过厌恶。~
++ ~这……让人不舒服，可我感激你告诉我。~ + lt8.25
++ ~太可怕了。我不敢相信你经历过这种事。~ + lt8.25
END

IF ~~ lt8.25
SAY ~我该谢谢你，<CHARNAME>。你是我唯一讲过这故事的人……而讲出来比我以为的容易。也许这段记忆不会再缠我的梦了。~
= ~我只能希望。我不愿再带着它了。~
IF ~~ EXIT
END
END

// Lovetalk 9

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",18)~ THEN C0SIRE2J lt9
~你是个好听众，<CHARNAME>。谢谢你腾出时间给我……我觉得像是从心里卸下了几副重担。~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
++ ~你还好吗？我们上次谈完之后你看起来很消沉。~ + lt9.1
++ ~很高兴我的存在就足以帮到你。~ + lt9.1
++ ~那很好，可我们能改天再谈吗？~ + lt9.0

APPEND C0SIRE2J

IF ~~ lt9.0
SAY ~当然，<CHARNAME>。我该说的都说了。~
IF ~~ EXIT
END

IF ~~ lt9.1
SAY ~我上次讲的那个故事……虽然重述起来有些可怕，可讲完我觉得好多了。我把太多事都藏在心里。~
= ~不过我希望自己没显得是在把担子卸给你，我的朋友。我知道你也有你自己的烦恼。~
++ ~也许有一天我可以跟你讲讲那些。~ + lt9.2
++ ~没关系。我喜欢更了解你，即使是……更黑暗的部分。~ + lt9.3
++ ~只要比你上一个故事愉快些，你就尽管全告诉我。~ + lt9.4
END

IF ~~ lt9.2
SAY ~我……会喜欢的，我想。~
IF ~~ + lt9.5
END

IF ~~ lt9.3
SAY ~我只是高兴……即使知道我告诉你的事，你也没有看轻我。~
IF ~~ + lt9.5
END

IF ~~ lt9.4
SAY ~别担心，<CHARNAME>，上回那些是最糟的了。~
IF ~~ + lt9.5
END

IF ~~ lt9.5
SAY ~（她双手把你的手合在中间）能有你的友谊、你的陪伴，我真是太感激了，还有……~
++ ~还有什么？~ + lt9.6
++ ~你想要更多吗？因为我愿意给。~ + lt9.7
++ ~（抽回手）是，嗯，我们就到此为止，好吗？~ + lt9.8
END

IF ~~ lt9.6
SAY ~哦，没什么。只是说漏了嘴。你如今给我的已经够多了。~
IF ~~ EXIT
END

IF ~~ lt9.7
SAY ~我——*脸红*嗯，我会考虑这个。~
IF ~~ EXIT
END

IF ~~ lt9.8
SAY ~哦……当然。若我越了界，我道歉。~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END
END

// Lovetalk 10

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",20)~ THEN C0SIRE2J lt10
~*叹气*我怕我永远习惯不了城市。我小时候总听那样的传说，说深水城的街道铺着白色与金色，可是……我一直怀疑现实会大不相同。~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
== C0SIRE2J IF ~!Class(Player1,RANGER_ALL) !Class(Player1,DRUID_ALL)~ THEN ~你觉得呢，<CHARNAME>？你在这样的地方自在吗？~
== C0SIRE2J IF ~Class(Player1,RANGER_ALL)~ THEN ~你是游侠，<CHARNAME>。我无法想象你会比我更喜欢这地方。还是我猜错了？~
== C0SIRE2J IF ~Class(Player1,DRUID_ALL)~ THEN ~你是德鲁伊，<CHARNAME>。我无法想象你会比我更喜欢这地方。还是我猜错了？~
END
++ ~不太喜欢。烛堡更好。~ + lt10.1
++ ~这比较不公平。不是所有城市都一样。~ + lt10.2
++ ~其实我更喜欢城市。~ + lt10.3
++ ~我们没时间想这些，塞琳。~ + lt10.0

APPEND C0SIRE2J

IF ~~ lt10.0
SAY ~是的，当然……我道歉。~
IF ~~ DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",2)~ EXIT
END

IF ~~ lt10.1
SAY ~那你就知道那是什么滋味。嗯……至少你明白我的意思，这让我放心。~
IF ~~ + lt10.4
END

IF ~~ lt10.2
SAY ~是的，这地方确实如此，可人……我很难把这里的人跟博德之门的人区分开。~
IF ~~ + lt10.4
END

IF ~~ lt10.3
SAY ~你真的喜欢？我不愿评判，可是……我几乎看不出有什么吸引力。~
IF ~~ + lt10.4
END

IF ~~ lt10.4
SAY ~我见过的城市不多，可……我从没找到一座城里的人不显得……负累的。~
= ~我知道没有言语能准确描述我对城市的感受，可是……我开始怀念我抛下的平静乡村生活。~
= ~也许若我们有时间……我想再去看看乡野。只是去记起那是什么滋味。我们能去吗，我在想？~
++ ~好主意。我也会喜欢。~ + lt10.5
++ ~那么……你是在约我吗？~ + lt10.6
++ ~也许等我们有时间，可不是现在。~ + lt10.7
END

IF ~~ lt10.5
SAY ~谢谢你，<CHARNAME>。不必是今天，也不必是明天，甚至不必很快。只是……终究有一天。我求的就是这个。~
IF ~~ EXIT
END

IF ~~ lt10.6
SAY ~*脸红*不！我——我是说……你若愿意那样看，那是你的决定，可是……我不是那个意思。~
++ ~你是说你不喜欢我？~ + lt10.8
++ ~好，我明白。也许我们终究会去乡野，可不是现在。~ + lt10.7
END

IF ~~ lt10.7
SAY ~我明白，<CHARNAME>。不必是今天，也不必是明天，甚至不必很快。只是……终究有一天。我求的就是这个。~
IF ~~ EXIT
END

IF ~~ lt10.8
SAY ~不，我不是想说那个……~
= ~*叹气*你，你是个出色的领袖，是我非常钦佩的<PRO_MANWOMAN>。可你若问我更深的感受……我——我怕我只会让自己出丑。~
= ~正如我说的……我想再去看看乡野，重温一些童年的回忆，还有……多和你在一起，<CHARNAME>。~
IF ~~ EXIT
END
END

// lovetalk 11 - at Umar Hills

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",22) !Global("C0SireneUmarLovetalk","GLOBAL",1)~ THEN C0SIRE2J lt11
~是的，这地方很美……你肯陪我去走走吗，<CHARNAME>？~ [C0BLANK]
DO ~SetGlobal("C0SireneUmarLovetalk","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("c0slake1")~
EXIT

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",22) Global("C0SireneUmarLovetalk","GLOBAL",1)~ THEN C0SIRE2J lt11a
~我记得有个跟这里一模一样的湖，离我的神殿不远……别的孩子很少去那里玩，所以那是个我能得些安宁的地方。~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
= ~我五岁时，我的角已经长到再也不能藏在头发底下了……在那之前我对同伴来说只是个长得奇怪的孩子，可他们明白我是什么之后……~
= ~（说着，她在池边坐下来，摘着芦苇，不经意地拧着它们）~
= ~别的孩子第一次朝我扔石头时，我记得我哭着跑向湖边，好一个人待着。~
END
++ ~太可怕了。你真的独自一人吗？~ + lt11.1
++ ~说下去。~ + lt11.1
++ ~嗯，这挺有意思，可我们真该走了。~ + lt11.0

APPEND C0SIRE2J

IF ~~ lt11.0
SAY ~如你所愿，<CHARNAME>。我们在这里待得够久了。~
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("c0slake2")~ EXIT
END

IF ~~ lt11.1
SAY ~神殿里一位年轻的修女，卡米拉，在那里找到了我……又或者她是跟着我来的。~
= ~那天我在她面前哭让我感到羞耻，可她安慰我。她一天天带我去同一个地方，给我讲故事，教我唱歌……~
= ~有一次，她教我用叶子吹口哨，吹出舒缓的曲调。我小时候怎么也学不会。我在想如今会不会……~
= ~（她从附近的灌木上摘下一片薄叶，送到唇边。一声极轻柔、哀伤而不成调的音响从她那里发出。）~
= ~（她笑了）不，我想我自那以后只有更糟。可我喜欢在那里度过的时光，那里我忘了我……我是什么。~
++ ~来，我教你怎么吹。~ + lt11.2
++ ~你爱她吗？她似乎对你意义重大。~ + lt11.3
++ ~我很高兴你能有安宁的时刻，无论多么短暂。~ + lt11.4
++ ~这消遣不错，可我们真该回去了。~ + lt11.0
END

IF ~~ lt11.2
SAY ~（你从她手里接过叶子，放在唇间，吹出一段悦耳的曲调。）~
= ~（她坐回草地上，闭着眼，专心听着。）~
++ ~（停下，吻她）~ + lt11.2a
++ ~你喜欢吗？~ + lt11.2b
END

IF ~~ lt11.2a
SAY ~哦……（她起初一惊，可当你把她抱近时便放松下来。她的唇温热，几乎发烫。）~
= ~（你们终于分开时，她明显慌乱了，可一点也不恼怒。）<CHARNAME>……~
++ ~我是不是太大胆了？~ + lt11.2c
++ ~*这*倒是新鲜，对吧？~ + lt11.2d
END

IF ~~ lt11.2b
SAY ~是的，我喜欢，<CHARNAME>。谢谢你哄我开心，虽然你本不必如此。~
IF ~~ + lt11.4
END

IF ~~ lt11.2c
SAY ~不——不，一点也没有，<CHARNAME>，其实，我，嗯……（她紧张地用舌头舔过嘴唇）~
= ~我喜欢那个。谢谢你。~
IF ~NumInPartyGT(2)~ + lt11.5
IF ~!NumInPartyGT(2)~ + lt11.6
END

IF ~~ lt11.2d
SAY ~是的，那……那出乎意料，可是……我喜欢。我们，嗯……~
IF ~NumInPartyGT(2)~ + lt11.5
IF ~!NumInPartyGT(2)~ + lt11.6
END

IF ~~ lt11.3
SAY ~卡米拉修女对我来说像姐姐，<CHARNAME>。若我对她有更深的感情，我也不会知道那是什么。~
= ~你可以说她对我很重要，你说得对——可是……不是像你对我那样的方式。~
IF ~~ + lt11.4
END

IF ~~ lt11.4
SAY ~如今回想起来……我的童年很艰难，可尽管如此……那里仍有许多宝贵的记忆。~
= ~谢谢你带我来这里，<CHARNAME>。这对我意义重大，而且……这是我近来最开心的时候。~
IF ~NumInPartyGT(2)~ + lt11.5
IF ~!NumInPartyGT(2)~ + lt11.6
END

IF ~~ lt11.5
SAY ~来吧，<CHARNAME>。我们不该让别人等。~
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("c0slake2")~ EXIT
END

IF ~~ lt11.6
SAY ~来吧，<CHARNAME>。我们该回去做事了。~
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("c0slake2")~ EXIT
END
END

// Lovetalk 12

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",24)~ THEN C0SIRE2J lt12
~（微笑）你想来块糖吗，<CHARNAME>？~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
++ ~什么样的糖？~ + lt12.1
++ ~哦，我爱甜食！给我点！~ + lt12.1
++ ~不了，我讨厌甜食。~ + lt12.2
++ ~现在不是吃零食的时候，塞琳。~ + lt12.0

APPEND C0SIRE2J

IF ~~ lt12.0
SAY ~哦，好罢……若你坚持，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ lt12.1
SAY ~（她从手里一个天鹅绒小袋中取出一条小巧克力，掰成两半，把一半递给你。）~
IF ~~ + lt12.3
END

IF ~~ lt12.2
SAY ~哦。真可惜……我本盼着跟你分享这块巧克力。~
IF ~~ + lt12.3
END

IF ~~ lt12.3
SAY ~我一直爱甜食……它们让我想起童年较好的时刻，那时卡米拉修女会带我和村里几个女孩去湖边，一起分享小蛋糕，唱些傻气的小歌。~
= ~当然，我在莫里斯爵士手下开始习武之后，事情变了。可我在外头练武时，她仍会给我送巧克力蛋糕。~
= ~我……我在想她是否安好。我们上次见面已是许多年前了。~
++ ~你从不写信回家吗？~ + lt12.4
++ ~我有时也想家。想温斯罗普、泰斯托瑞尔，那些老修士……~ + lt12.5
++ ~你听起来很想家。你觉得你会有回去的一天吗？~ + lt12.6
END

IF ~~ lt12.4
SAY ~很少……而作为一个游历骑士，他们想反过来联系我……很难，若非不可能。真可惜……我想再收到他们的消息。~
IF ~~ + lt12.7
END

IF ~~ lt12.5
SAY ~至少你比我离家近。等这一切结束，回去的选择可以是你自己的。~
IF ~~ + lt12.7
END

IF ~~ lt12.6
SAY ~我希望……我祈祷我能，是的。可我也许永远没有那机会。~
IF ~~ + lt12.7
END

IF ~~ lt12.7
SAY ~真奇怪，人总是不到失去就不珍视拥有的东西……若我早知道我会这样想念他们，我……我会想多留些那样的记忆。~
= ~啊，可是等等……*笑*~
++ ~有什么好笑的？~ + lt12.8
++ ~嗯，这休息不错，可我们真该走了。~ + lt12.0
END

IF ~~ lt12.8
SAY ~我刚想到……我后悔没有更多美好的回忆，可是……我如今就在这里，跟一个我认为珍贵的人创造新的回忆。我想要的都有了，而我甚至没注意到。~
= ~（她拿起最后一块巧克力，静静凝视了一会儿，然后把它放回袋里。）~
= ~就剩这些了，<CHARNAME>。你想吃完它吗？~
++ ~谢谢你。~ + lt12.9
++ ~不，你吃吧。~ + lt12.10
++ ~（掰成两半，把一块给她）~ + lt12.11
++ ~（接过它，塞进她嘴里）~ + lt12.12
END

IF ~~ lt12.9
SAY ~人生最好的东西该在朋友之间分享。~
IF ~~ EXIT
END

IF ~~ lt12.10
SAY ~（她笑着接过，把巧克力掰成两半，把一半还给你。）~
IF ~~ + lt12.9
END

IF ~~ lt12.11
SAY ~谢谢你。~
IF ~~ + lt12.9
END

IF ~~ lt12.12
SAY ~哦……~
= ~（在你把手抽回之前，她抓住你的手指吻了它们。）~
= ~*这个*我会好好记住，<CHARNAME>。~
IF ~~ EXIT
END
END
// Lovetalk 13

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",26)~ THEN C0SIRE2J lt13
~（塞琳偷偷朝你这边瞟，却没能成功地不让你发觉。）~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
++ ~你看我是有什么原因吗，塞琳？~ + lt13.1
++ ~什么？我脸上有东西吗？~ + lt13.1
++ ~（别理她）~ + lt13.2

APPEND C0SIRE2J

IF ~~ lt13.1
SAY ~哦，没什么，<CHARNAME>。我只是……~
IF ~Gender(Player1,MALE)~ + lt13.3
IF ~Gender(Player1,FEMALE)~ + lt13.4
END

IF ~~ lt13.2
SAY ~（她终于放弃所有含蓄，以为你没注意便直勾勾看你，然后脸红着转开。）~
IF ~~ EXIT
END

IF ~~ lt13.3
SAY ~我只是……在欣赏你的容貌，<CHARNAME>。我想我没见过像你这样……这样有吸引力的人。~
++ ~嗯，谢谢你，塞琳。~ + lt13.5
++ ~我受宠若惊……我想。~ + lt13.5
++ ~我也觉得你很美。~ + lt13.6
++ ~你又脸红了。~ + lt13.8
END

IF ~~ lt13.4
SAY ~我只是……在欣赏你的美，<CHARNAME>。我想我没见过像你这样美的人。~
++ ~嗯，谢谢你，塞琳。~ + lt13.5
++ ~我受宠若惊……我想。~ + lt13.5
++ ~我也觉得你很美。~ + lt13.7
++ ~我注意到你夸女人时更自在。我这样想错了吗？~ + lt13.9
END

IF ~~ lt13.5
SAY ~我只说我所见的实话，<CHARNAME>。我希望这不算太过，可是……我确实觉得你很有吸引力。~
IF ~~ + lt13.10
END

IF ~~ lt13.6
SAY ~我……你这样想让我受宠若惊，<CHARNAME>。~
IF ~~ + lt13.10
END

IF ~~ lt13.7
SAY ~我……你这样想让我受宠若惊，<CHARNAME>，可我比不上你。你身上有种……吸引力，我被它牵动。~
IF ~~ + lt13.10
END

IF ~~ lt13.8
SAY ~这……会发生的，<CHARNAME>。也许比平常频繁些，当我在你身边时。~
IF ~~ + lt13.10
END

IF ~~ lt13.9
SAY ~不……你没想错，<CHARNAME>。这……更容易。我见过的大多数女人不太会把这样的话往，嗯……调情的方面想。~
IF ~~ + lt13.10
END

IF ~~ lt13.10
SAY ~我想最初吸引我的是……你的善意与接纳，可在那之后……我觉得你内外都迷人。~
++ ~那你是在说你被我吸引了？~ + lt13.11
++ ~你在绕着真正想说的话打转，塞琳。~ + lt13.12
END

IF ~~ lt13.11
SAY ~我，嗯……是的，我是。我常想到你。有时……比我所该的更不纯洁。*脸红*~
IF ~~ + lt13.13
END

IF ~~ lt13.12
SAY ~不，我……*叹气*嗯，是的。你大概说得对。~
IF ~~ + lt13.13
END

IF ~~ lt13.13
SAY ~这……这一切变得很尴尬，<CHARNAME>。我——我想最好就在这里结束这番谈话。~
IF ~~ EXIT
END
END

// Lovetalk 14 - rest at inn

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",28)~ THEN C0SIRE2J lt14
~（你已就寝，准备睡一晚应得的休息。你正脱衣时，听见门上轻轻一敲。）~ [C0BLANK]
END
++ ~谁？~ + lt14.1
++ ~进来吧，不管是谁。~ + lt14.2
++ ~（不理它，去睡）~ + lt14.0
++ ~走开！~ + lt14.0

APPEND C0SIRE2J

IF ~~ lt14.0
SAY ~（没有回应，一切寂静，直到你终于睡去。）~
IF ~~ DO ~SetGlobal("C0SireneLovetalk","GLOBAL",31) RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700) RestParty()~ EXIT
END

IF ~~ lt14.1
SAY ~（隔了很久才有回应）是我，<CHARNAME>……你若还没上床，我想……陪你待一会儿。~
++ ~塞琳？进来。~ + lt14.2
++ ~不，我现在太累了。~ + lt14.0
END

IF ~~ lt14.2
SAY ~（塞琳溜进房间，尽可能轻地关上门。）~
= ~很抱歉打扰，<CHARNAME>。我知道你一定累了。~
++ ~怎么了？睡不着？~ + lt14.3a
++ ~你有话要跟我说？~ + lt14.3
++ ~是的，我累了。不管是什么，能留到明天吗？~ + lt14.2a
END

IF ~~ lt14.2a
SAY ~如你所愿。好好休息。~
IF ~~ DO ~SetGlobal("C0SireneLovetalk","GLOBAL",31) RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700) RestParty()~ EXIT
END

IF ~~ lt14.3a
SAY ~不，不是那个。我只是……想跟你谈一会儿。~
IF ~~ + lt14.3
END

IF ~~ lt14.3
SAY ~（她坐到床上你身边，握住你的手）~
= ~原谅我这不成体统的样子，<CHARNAME>。我独自一人，然后……我开始觉得不安。~
++ ~我看得出。你喝了多少酒？~ + lt14.4
++ ~这不像你。怎么了？~ + lt14.5
++ ~对不起，可我现在真的很累，塞琳。我们明天再谈。~ + lt14.2a
END

IF ~~ lt14.4
SAY ~只喝了两杯。我需要……鼓起勇气独自来见你。~
IF ~~ + lt14.6
END

IF ~~ lt14.5
SAY ~我……就是……你，<CHARNAME>，就是那件事。~
IF ~~ + lt14.6
END

IF ~~ lt14.6
SAY ~我近来常想到你，而且……很难制止自己。我怕你改变了我，<CHARNAME>，随着我们……对彼此的感情的增长。~
= ~我一生大半都认命要独自一人，我也接受了。可是，自从认识你，我开始怕再一次承受那种孤独。~
= ~你对我已变得太重要，<CHARNAME>，而我……我如今知道我陷进去了，因为我想要的不只是你的陪伴。~
= ~我在你身边时，我的话、我的感受……什么都不再那么容易。这……对你的情绪与渴望的风暴让我害怕，可我……我想更……靠近……~
++ ~你是在说你想……跟我上床？~ + lt14.7
++ ~我明白。过来，让我告诉你我对你的感觉。~ + lt14.8
++ ~不，塞琳。这太早了。别做我们俩都可能后悔的事。~ + lt14.9
END

IF ~~ lt14.7
SAY ~我……是的，我说的正是这个。我再不能否认我对你的渴望。若……若这是个错误，那我要你告诉我，因为我自己做不到。~
++ ~不，等等。其实……我也想要这个。过来……~ + lt14.8
++ ~我觉得这太早了。我们不必这样急。~ + lt14.9
++ ~对不起。我只是没那样看你。~ + lt14.11
END

IF ~~ lt14.8
SAY ~*叹气*神明啊……愿众神宽恕我的软弱，因为我再无法抵抗了。~
= ~（她把身体压向你，把你推倒在床单上，引你的手到她胸衣的系带上，一边在你脸上落满吻，轻轻咬你的耳朵。）~
= ~（她的呼吸带着红酒的香；她一件件脱去你的衣裳，手指抚过你赤裸的皮肤，催你屈服。）~
++ ~（向她屈服）~ + lt14.10
++ ~（夺取主动，把她翻到身下）~ + lt14.10
++ ~不……停下。我改变主意了。~ + lt14.9
END

IF ~~ lt14.9
SAY ~*叹气*是的，你说得对，<CHARNAME>。我太冲动了。我该……我该走了，趁我还没改变主意。~
= ~（她猛地起身要走，仿佛怕自己走不掉。）~
= ~好好休息，<CHARNAME>。~
IF ~~ DO ~SetGlobal("C0SireneLovetalk","GLOBAL",30) RestParty()~ EXIT
END

IF ~~ lt14.10
SAY ~我是你的，<CHARNAME>，全是你的……~
IF ~~ DO ~SetGlobal("C0SireneLovetalk","GLOBAL",30) SetGlobal("C0SireneSlept","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ lt14.11
SAY ~*叹气*那就如我所怕的。~
= ~（她认命地起身，走向门口，一副败退的样子。）~
= ~我想让你知道……我不因此对你怀怨。好好休息，我的朋友。~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3) RestParty()~ EXIT
END
END
// Lovetalk 15

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",30)~ THEN C0SIRE2J lt15
~日安，<CHARNAME>。你……你休息得好吗？~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
+ ~Global("C0SireneSlept","GLOBAL",1)~ + ~那么，昨晚的事……~ + lt15.1
+ ~!Global("C0SireneSlept","GLOBAL",1)~ + ~那么，昨晚的事……~ + lt15.2
+ ~Global("C0SireneSlept","GLOBAL",1)~ + ~我醒来时希望你在身边。~ + lt15.3
+ ~!Global("C0SireneSlept","GLOBAL",1)~ + ~我只希望你留下来陪我。~ + lt15.2
+ ~Global("C0SireneSlept","GLOBAL",1)~ + ~非常好。你呢？~ + lt15.3
+ ~!Global("C0SireneSlept","GLOBAL",1)~ + ~非常好。你呢？~ + lt15.2

APPEND C0SIRE2J

IF ~~ lt15.1
SAY ~不，请什么都别说，<CHARNAME>。我该向你道歉。我让情欲带走了我……然后被它淹没时又像个懦夫一样逃走。~
IF ~~ + lt15.4
END

IF ~~ lt15.2
SAY ~我……我想昨晚我们在……在做可能后悔的事之前分开是对的。我们之间没有必要强迫什么，而我……我道歉。你若宁愿现在就结束，那么……我明白。~
++ ~我不要那样，塞琳。发生的事已过去了，可我仍在乎你。~ + lt15.5
++ ~也许那样最好。我们承担不起让任何分心的事妨碍任务。~ + lt15.6
END

IF ~~ lt15.3
SAY ~我……我很抱歉早上离开了你。我被淹没了，醒来时像个懦夫一样逃走。你不该被这样对待。~
IF ~~ + lt15.4
END

IF ~~ lt15.4
SAY ~也许我们做的是……错事，也许不是。无论如何，我想现在最好不谈它。我……希望你能理解。~
IF ~~ EXIT
END

IF ~~ lt15.5
SAY ~我——我明白了。至少这一点给了我希望。~
IF ~~ EXIT
END

IF ~~ lt15.6
SAY ~是的……你说得对。那我们就继续做朋友。~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END
END

// Lovetalk 16

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",32)~ THEN C0SIRE2J lt16
~<CHARNAME>，我——我必须向你坦白真相。我把这事瞒你太久了，我再也受不住了。~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
++ ~什么事？~ + lt16.1
++ ~我知道你要说什么，塞琳。你不必替我说明。~ + lt16.2
++ ~听着，塞琳……我觉得我们之前犯了错。我们该结束我们之间这件事。~ + lt16.x

APPEND C0SIRE2J

IF ~~ lt16.x
SAY ~（她沉默地回望你，惊呆了。）~
= ~你……你真是这个意思吗，<CHARNAME>？~
= ~我……（她转开身去）~
++ ~你……在哭？~ + lt16.1x
++ ~对不起。~ + lt16.2x
END

IF ~~ lt16.1x
SAY ~……不。不，没什么。我没事，<CHARNAME>。~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ lt16.2x
SAY ~我也是，<CHARNAME>……~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ lt16.1
SAY ~自从我们相识那天，你已成为对我真正重要的人，<CHARNAME>，一个我觉得该以性命去护的人。我喜欢与你交谈，你朝我笑时，我便觉得安心……~
++ ~说下去。~ + lt16.3
++ ~这算是某种绕圈子的爱的告白吗？~ + lt16.4
++ ~求你，别说了。我知道你想说什么，可我无法回应你的感情。~ + lt16.x
END

IF ~~ lt16.2
SAY ~我必须说，<CHARNAME>。若我不说……那我怕这份揪着我心的感情永远不会松开。~
IF ~~ + lt16.1
END

IF ~~ lt16.3
SAY ~哦……管他呢。我真正要说的是……我爱上你了，<CHARNAME>。~
++ ~你……你爱上了？~ + lt16.3a
++ ~我很高兴你终于说了。我也爱你，塞琳。~ + lt16.5
++ ~这话很难说，可是……我无法回应你的感情，塞琳。我们该继续做朋友。~ + lt16.x
END

IF ~~ lt16.3a
SAY ~是的，<CHARNAME>。虽然我起初以为那只是一时的好感，可随着时间过去，我被你的善意、你的力量与勇气吸引……~
= ~我想我很久以前就喜欢上你了，可是……我无法用言语说出来。可这份对你的感情已长到……我再也藏不住。~
= ~所以我问你，<CHARNAME>……你对我也有同样的感觉吗？~
++ ~我当然有。~ + lt16.5
++ ~对不起，塞琳。我没有。~ + lt16.x
END

IF ~~ lt16.4
SAY ~不——不！*脸红*嗯，也许……~
IF ~~ + lt16.3
END

IF ~~ lt16.5
SAY ~你……你真的？~
++ ~我真的。~ + lt16.6
++ ~你怀疑我？~ + lt16.7
END

IF ~~ lt16.6
SAY ~以伊尔梅特之名，我……我从没想过……~
IF ~Global("C0SireneFlowers","GLOBAL",1)~ + lt16.8
IF ~!Global("C0SireneFlowers","GLOBAL",1)~ + lt16.9
END

IF ~~ lt16.7
SAY ~不——不，当然没有。我只是……从没想过……~
IF ~Global("C0SireneFlowers","GLOBAL",1)~ + lt16.8
IF ~!Global("C0SireneFlowers","GLOBAL",1)~ + lt16.9
END

IF ~~ lt16.8
SAY ~也许我该早点看出来，那些调情、那些花，还有……~
IF ~~ + lt16.9
END

IF ~~ lt16.9
SAY ~我以为……也许你爱上我只是我的一场幻想。可如今我知道那是真的，我……~
= ~（她无奈地叹气，然后轻轻笑了一声。）~
= ~当然，现在我反倒说不出话了。所以我要问……你肯抱抱我吗，<CHARNAME>？~
++ ~当然。~ + lt16.10
++ ~（什么都不说，只是抱住她）~ + lt16.10
++ ~我很想，可现在我们该走了。~ + lt16.11
END

IF ~~ lt16.10
SAY ~谢谢你。~
= ~有你在身边，我……我觉得我受的一切苦、一切试炼……若这就是我的报偿，那全都值得。~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ lt16.11
SAY ~嗯，好罢，<CHARNAME>。也许今晚……我们可以多分享彼此的感受。我会喜欢的。~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",2)~ EXIT
END

END

// Lovetalk 17

CHAIN IF ~Global("C0SireneLovetalk","GLOBAL",34)~ THEN C0SIRE2J lt17
~（你注意到塞琳自己在笑，这对她来说很少见。）~ [C0BLANK]
DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1)
RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",2700)~
END
++ ~难得见你笑，真好，塞琳。~ + lt17.1
++ ~嘿，有什么好笑的？~ + lt17.2
++ ~（别理她）~ + lt17.0

APPEND C0SIRE2J

IF ~~ lt17.0
SAY ~（过了一会儿，她走近，轻轻触碰你。她的双臂环住你，给你一个温暖的拥抱。）~
IF ~~ EXIT
END

IF ~~ lt17.1
SAY ~我想我近来有理由笑。你只是在我身边，就给了我这样的喜悦。~
IF ~~ + lt17.3
END

IF ~~ lt17.2
SAY ~没什么。我只是……非常快乐。~
IF ~~ + lt17.3
END

IF ~~ lt17.3
SAY ~把曾对你藏着的情感说出来感觉真好，<CHARNAME>。既然你知道了我的感受，我的心轻了许多。~
= ~我想我许久没有过这样的快乐了。~
++ ~只要你快乐，我就快乐。~ + lt17.4
++ ~你以前从未有过这种感觉吗？~ + lt17.5
++ ~听你这么说我很高兴。我们一起走走？~ + lt17.6
END

IF ~~ lt17.4
SAY ~我只希望这能长久。我不愿像……像从前失去别人那样失去你。~
= ~他们的痛已够多了。可你……失去你会比任何事都糟。~
= ~*叹气*对不起。我不该用这样的念头破坏这一刻。~
IF ~~ + lt17.6
END

IF ~~ lt17.5
SAY ~我也许曾以为自己有过，可那全藏在我自己的恐惧与不安之下，而且……我并不真正知道爱是什么。~
= ~如今我更明白了。我知道我对你的感受是真正的爱，而且……我不再怕它了。~
IF ~~ + lt17.6
END

IF ~~ lt17.6
SAY ~（她握住你的手，与你挽臂同行。）~
= ~这一回，我觉得自己真是有福，能有你在身边。求你，永远别离开我。~
IF ~~ EXIT
END
END
// Lovetalk at Ust Natha

CHAIN IF ~Global("C0SireneUstNathaLovetalk","GLOBAL",1)~ THEN C0SIRE2J lt18
~我的——维尔德林。我……我想私下跟你谈谈。这很重要。~ [C0BLANK]
DO ~SetGlobal("C0SireneUstNathaLovetalk","GLOBAL",2)~
END
+ ~Gender(Player1,MALE)~ + ~当然，我的女主人。~ + lt18.1
+ ~Gender(Player1,FEMALE)~ + ~当然。~ + lt18.1
++ ~*低声*你得更强硬些。~ + lt18.2
++ ~那就要个两人房间？我们会有需要的一切私密。~ + lt18.3
++ ~不在这里。我们承担不起暴露任何东西。~ + lt18.0

APPEND C0SIRE2J

IF ~~ lt18.0
SAY ~是的，我想你说得对……那我把话压着。~
IF ~~ EXIT
END

IF ~~ lt18.1
SAY ~这里，不会有人听见……~
= ~……~
++ ~你——你为什么只是盯着我？~ + lt18.4
++ ~我以为你有话要说。~ + lt18.4
++ ~（什么都不说，只是看着她）~ + lt18.4
++ ~这变得尴尬了。我们趁没人怀疑赶紧走吧。~ + lt18.0
END

IF ~~ lt18.2
SAY ~*叹气*维尔德林，就……快过来。~
IF ~~ + lt18.1
END

IF ~~ lt18.3
SAY ~*叹气*现在不是开玩笑的时候，维尔德林。就跟我到一边待一会儿。~
IF ~~ + lt18.1
END

IF ~~ lt18.4
SAY ~*叹气*原谅我，<CHARNAME>。我本想说话，可我被你的新模样弄得分了神。~
= ~真奇怪。你的脸，甚至你的声音都完全不同……即使面对面，我也认不出你了……~
= ~只有你的眼睛，没有周围这些恶魔的残忍与野心，才能让我确信真的是你。我觉得自己又像是身处一群敌意的陌生人之中，我不愿承认，可我……我怕。~
++ ~我明白。我也怕。~ + lt18.5
++ ~别担心。我仍是<CHARNAME>，你仍是塞琳，这永远不会变。~ + lt18.5
++ ~你在我看来也完全陌生。我承认，这让我不舒服。~ + lt18.5
++ ~到这一步我们对此无能为力。~ + lt18.5
++ ~既然我们已经在这里了，抱怨也没意义。~ + lt18.5
END

IF ~~ lt18.5
SAY ~（叹气）我想说这些也没用。我们是为一个目标来的，我承担不起被这样的疑虑纠缠。只是……~
= ~（她抬起一只乌黑的手抚你的脸颊，没有一个客人注意到。）~
= ~真奇怪……<CHARNAME>，答应我，别让这地方改变你。我求的就是这个。~
++ ~我答应。~ + lt18.6
++ ~你说得对。我不能让自己被腐化。~ + lt18.6
++ ~够了。我们何不要个私人房间？~ + lt18.7
++ ~对不起。我不能答应。~ + lt18.8
END

IF ~~ lt18.6
SAY ~谢谢你。~
IF ~~ + lt18.9
END

IF ~~ lt18.7
SAY ~不，<CHARNAME>……即使知道那是你，我也只会后悔我们以这些虚假的模样之间发生任何事。可是……我希望我能……至少……~
IF ~~ + lt18.9
END

IF ~~ lt18.8
SAY ~我怕你会这么说……~
IF ~~ + lt18.9
END

IF ~~ lt18.9
SAY ~（塞琳前倾要吻你，却在将触未触时停下。）~
= ~*叹气*我已经忘了自己……这既不是地方也不是时候。求你，我们尽快离开这里吧。~
IF ~~ EXIT
END
END

// Phaere

EXTEND_TOP UDPHAE01 106
+ ~OR(2)
Global("C0SireneRomanceActive","GLOBAL",1)
Global("C0SireneRomanceActive","GLOBAL",2)~ + ~我的同伴，塞琳。~ EXTERN UDPHAE01 110
END

APPEND C0SIRE2J

IF ~Global("C0SirenePhaere","GLOBAL",1)~ C0SirenePhaere
SAY ~你……<CHARNAME>，你是不是……~ [C0BLANK]
IF ~Global("PhaereInnuendo","GLOBAL",2)~ + C0SirenePhaere1
IF ~!Global("PhaereInnuendo","GLOBAL",2)~ + C0SirenePhaere2
END

IF ~~ C0SirenePhaere1
SAY ~你跟那……那畜生一样的女人待得太久了。我担心你和她是不是……~
= ~*叹气*不，我不问。无论好坏，我想我最好不知道。你若有一点在乎我，<CHARNAME>，那就别告诉我。~
IF ~~ DO ~SetGlobal("C0SirenePhaere","GLOBAL",2)~ EXIT
END

IF ~~ C0SirenePhaere2
SAY ~你比我以为的更快逃出那卓尔的掌握。我怕她可能用你来做折磨，或更糟……~
= ~我很高兴。既为你平安，也为知道你仍是你。来吧，我们该走了。~
IF ~~ DO ~SetGlobal("C0SirenePhaere","GLOBAL",2)~ EXIT
END
END

// Lovetalk after Bodhi

CHAIN IF ~Global("C0SireneSleepLovetalk","GLOBAL",1)~ THEN C0SIRE2J lt19
~我不知道你愿不愿听这个，我的爱，可是……我一直在想我在亡者之境的那段时候。~ [C0BLANK]
DO ~SetGlobal("C0SireneSleepLovetalk","GLOBAL",2)~
END
++ ~那是可怕的磨难。你还好吗？~ + lt19.1
++ ~我太庆幸没有失去你。~ + lt19.2
++ ~我们能不能就当那可怕的时刻从未发生过？~ + lt19.3

APPEND C0SIRE2J

IF ~~ lt19.1
SAY ~是——是的，我如今多多少少好了。至少……身体上是。~
IF ~~ + lt19.4
END

IF ~~ lt19.2
SAY ~我也为此高兴，<CHARNAME>。把你留下……比我经历过的任何事都痛。~
IF ~~ + lt19.4
END

IF ~~ lt19.3
SAY ~我希望我能，<CHARNAME>，可如今我学到的太多，没法就这样忘掉。~
IF ~~ + lt19.4
END

IF ~~ lt19.4
SAY ~死亡的前景……真正的、最终的死亡，虽然以前也让我害怕，可我一直愿意把它当作我对伊尔梅特职责的一部分来接受。~
= ~当我得知我可能需要做出最终的牺牲，献出性命以免被转变、变成用来对付你的武器时，我……我毫不犹豫地接受了这是我的命运。~
++ ~你不该那样。我会拼命保住我们两个。~ + lt19.5
++ ~看着你死去让我心碎，塞琳。我不愿再见到那样的事发生。~ + lt19.6
++ ~你为我牺牲自己，真勇敢。~ + lt19.6
END

IF ~~ lt19.5
SAY ~我知道，<CHARNAME>，我因此更爱你，可是……我不能让自己变成我所憎恶的一切。即使那意味着我们永远分离。~
IF ~~ + lt19.6
END

IF ~~ lt19.6
SAY ~当我接受我必须死去时，我……很平静。即使在那墓地里，我也感觉不到恐惧。我只抱着希望，希望你能战胜我们的敌人，并带着这希望进入死亡。~
= ~可当我在那梦里看见你——那真是梦吗？我……我发现我说服自己相信的一切都只是表面。~
= ~即使在我等待审判时，我唯一的遗憾就是在我走向殉道时失去你。当你来到我身边时，我……我崩溃了。我想起了我将失去的一切。~
= ~所以当我醒来重回我的身体时，我……决定不再那样轻易选择死亡。我不愿再带着任何遗憾离开。~
++ ~我很高兴你这样决定。~ + lt19.7
++ ~答应我，别再做什么那样愚蠢的事。~ + lt19.8
++ ~来吧，我们还有一段旅程要走完。~ + lt19.7
END

IF ~~ lt19.7
SAY ~（她突然吻你，把身体压向你。）~
IF ~Global("C0SireneSlept","GLOBAL",1)~ + lt19.9
IF ~!Global("C0SireneSlept","GLOBAL",1)~ + lt19.10
END

IF ~~ lt19.8
SAY ~我答应，我的爱。我知道我该信任你……我只能希望你能原谅我此前没有做到。~
IF ~~ + lt19.7
END

IF ~~ lt19.9
SAY ~我……我后悔上次向你坦白真心之后，第二天早上却从你身边逃走。我答应，我不会再逃。你肯……要我吗，我的爱？~
++ ~这……这真是最好的时候吗？~ + lt19.11
++ ~当然。我们到一边去待一会儿？~ + lt19.12
++ ~不。等我完整了再说。~ + lt19.13
END

IF ~~ lt19.10
SAY ~我……我后悔那晚把一切都告诉你之后就那样结束了……关于我对你的真心。你那时拒绝了我，可我如今要问……你肯要我吗？~
++ ~这……这真是最好的时候吗？~ + lt19.11
++ ~当然。我们到一边去待一会儿？~ + lt19.12
++ ~不。等我完整了再说。~ + lt19.13
++ ~我爱你，塞琳，可不行。我不愿让这事成为我们之间的全部。~ + lt19.13
END

IF ~~ lt19.11
SAY ~你若不愿意，我不会强迫你。我只是……不愿在我们共享这段时光之前又倒下。~
++ ~那我们就找个私密的地方待一会儿。~ + lt19.12
++ ~现在不行，塞琳。至少等我把自己完整了再说。~ + lt19.13
++ ~我爱你，塞琳，可不行。我不愿让这事成为我们之间的全部。~ + lt19.13
END

IF ~~ lt19.12
SAY ~跟我来，我的爱……让我们暂时忘掉别的一切，把这段时间留给我们。~
IF ~!Global("C0SireneSlept","GLOBAL",1)~ DO ~SetGlobal("C0SireneSlept","GLOBAL",1) RestParty()~ EXIT
IF ~Global("C0SireneSlept","GLOBAL",1)~ DO ~RestParty()~ EXIT
END

IF ~~ lt19.13
SAY ~是的，你说得对。我……我并非需要这个才能爱你。至少让我……抱你一会儿。~
IF ~~ DO ~SetGlobal("C0SireneSleepLovetalk","GLOBAL",3)~ EXIT
END

END

// Lovetalk after sex

CHAIN IF ~Global("C0SireneAfterSleep","GLOBAL",1)~ THEN C0SIRE2J lt20
~（塞琳躺到你旁边的软草地上，衣衫凌乱，气息未定。她挪到你身侧，握住你的手，把你搂紧。）~ [C0BLANK]
DO ~SetGlobal("C0SireneAfterSleep","GLOBAL",2)~
= ~谢谢你，<CHARNAME>……求你，留下……~
END
++ ~你喜欢吗？~ + lt20.1
++ ~你若愿意，我们可以永远留在这里。~ + lt20.2
++ ~不，我真得起来了。~ + lt20.3
++ ~我希望我能，可我们有事情要做。来吧，穿衣服。~ + lt20.0

APPEND C0SIRE2J

IF ~~ lt20.0
SAY ~当然……（微笑）你触碰的记忆就足够了。来吧，我的爱……该起来了。~
IF ~~ EXIT
END

IF ~~ lt20.1
SAY ~是的……比你能想象的更多。~
IF ~Gender(Player1,MALE)~ + lt20.4a
IF ~Gender(Player1,FEMALE)~ + lt20.4b
END

IF ~~ lt20.2
SAY ~（笑）要是能就好了……~
IF ~Gender(Player1,MALE)~ + lt20.4a
IF ~Gender(Player1,FEMALE)~ + lt20.4b
END

IF ~~ lt20.3
SAY ~（微笑）我真有那么糟吗？~
IF ~Gender(Player1,MALE)~ + lt20.4a
IF ~Gender(Player1,FEMALE)~ + lt20.4b
END

IF ~~ lt20.4a
SAY ~那是我有过的最奇妙的感觉。你太棒了。我从没想过我会喜欢这种事……~
= ~离你这么近，感觉着你，完全是另一种感受，还有……~
IF ~~ + lt20.5
END

IF ~~ lt20.4b
SAY ~那是我有过的最奇妙的感觉……我从没想过我会喜欢这种事，而且是跟另一个女人……~
= ~你真美，那样光彩照人，那样……~
IF ~~ + lt20.5
END

IF ~~ lt20.5
SAY ~（笑）我是不是太夸张了？有点难为情。~
= ~（她转过身来面对你，微笑著深情地抚你的脸。）~
= ~我爱你，<CHARNAME>……~
++ ~我也爱你。~ + lt20.6
++ ~我们可以再来一次……~ + lt20.7
++ ~我们穿衣服吧。~ + lt20.0
END

IF ~~ lt20.6
SAY ~（她以几个吻回应在你的胸口，一路升到你的颈与脸。）~
IF ~~ + lt20.8
END

IF ~~ lt20.7
SAY ~（笑）这提议很诱人，可是……~
= ~（她摇头。）不，我们不该过度放纵。我们手头有更要紧的事。~
IF ~~ + lt20.8
END

IF ~~ lt20.8
SAY ~来吧，我们穿衣服，我的爱。等你复原之后，也许我们可以想想这对我们意味着什么……可我会永远珍藏这段记忆。~
IF ~~ DO ~IncrementGlobal("C0SireneLovetalk","GLOBAL",1) RealSetGlobalTimer("C0SireneLoveTimer","GLOBAL",3600)~ EXIT
END
END

// Chapter 5.

CHAIN IF ~Global("C0SireneChapter5","GLOBAL",1)~ THEN C0SIRE2J c5
~空气好沉重，黑暗压得人喘不过气……~ [C0BLANK]
DO ~SetGlobal("C0SireneChapter5","GLOBAL",2)~
= ~我以为那些传说是夸大，可它跟人家说的一样凶险。带路吧，<CHARNAME>……在这里我们必须时刻戒备。~
EXIT

// Planar Sphere Abyss

APPEND C0SIRE2J

IF ~Global("C0SireneAbyss","GLOBAL",1)~ C0SireneAbyss
SAY ~神明啊，这比我能想象的更糟……我从没想过我偏偏会来这里。~ [C0BLANK]
+ ~CheckStatGT(Player1,13,INT)~ + ~什么，深渊？~ + C0SireneAbyss1
++ ~你什么意思？~ + C0SireneAbyss2
++ ~呃，是啊。我们到底在哪里？~ + C0SireneAbyss2
++ ~我们拿到要拿的就回球里去，然后走吧。~ + C0SireneAbyss0
END

IF ~~ C0SireneAbyss0
SAY ~是的……带路吧。~
IF ~~ DO ~SetGlobal("C0SireneAbyss","GLOBAL",2)~ EXIT
END

IF ~~ C0SireneAbyss1
SAY ~是的，正是。我起初不确定，可凭着我血里的这种感觉……不，我不再怀疑。~
IF ~~ + C0SireneAbyss3
END

IF ~~ C0SireneAbyss2
SAY ~这是深渊，<CHARNAME>。至少是它的一层。我起初不确定，可凭着我血里的这种感觉……不，我不再怀疑。~
IF ~~ + C0SireneAbyss3
END

IF ~~ C0SireneAbyss3
SAY ~我也许跟你讲过，据说我的魔性血脉源自九层地狱。正如魔鬼与恶魔彼此敌对，我在这地方的存在本身就会激起一股狂怒，那是我从未感受过的。~
= ~在我们必须待在这地方的短时间里我能压住它，可是……我不喜欢在这里。~
++ ~对不起。我们会尽快离开。~ + C0SireneAbyss4
++ ~你宁愿在球里等着吗？~ + C0SireneAbyss5
++ ~只要你别哪天在我旁边「失控」就行。~ + C0SireneAbyss6
++ ~好。我们拿到东西就尽快回去。~ + C0SireneAbyss0
END

IF ~~ C0SireneAbyss4
SAY ~不必道歉，<CHARNAME>，不过仍谢谢你。~
IF ~~ DO ~SetGlobal("C0SireneAbyss","GLOBAL",2)~ EXIT
END

IF ~~ C0SireneAbyss5
SAY ~不。让你独自面对深渊的住民，我会更不舒服。带路吧。~
IF ~~ DO ~SetGlobal("C0SireneAbyss","GLOBAL",2)~ EXIT
END

IF ~~ C0SireneAbyss6
SAY ~你可以开玩笑，<CHARNAME>，可说实话……那也许真会发生。至少战斗中我可能更暴烈。带路吧。~
IF ~~ DO ~SetGlobal("C0SireneAbyss","GLOBAL",2)~ EXIT
END

// Temple of Lathander

IF ~Global("C0SireneLathander","GLOBAL",1)~ C0SireneLathander
SAY ~真壮丽……兰森德尔的信徒确实懂得鉴赏美。~ [C0BLANK]
+ ~Kit(Player1,GODLATHANDER)~ + ~毕竟我们的宗教确实鼓励创造力。~ + C0SireneLathander1
++ ~我承认，这确实不凡。~ + C0SireneLathander2
++ ~是吗？……我看不出来。~ + C0SireneLathander3
++ ~这个？这丑死了！设计者的艺术感糟透了！~ + C0SireneLathander3
++ ~你这么说就这么说吧。~ + C0SireneLathander0
END

IF ~~ C0SireneLathander0
SAY ~我——我为分心道歉。我知道我们不是来观光的。请带路吧。~
IF ~~ DO ~SetGlobal("C0SireneLathander","GLOBAL",2)~ EXIT
END

IF ~~ C0SireneLathander1
SAY ~（微笑）真的，我想我从没提过我多钦佩你的信仰。若我在你的教士中间长大，我想我会像接受伊尔梅特的教导一样接受它。~
IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ + C0SireneLathander4a
IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ + C0SireneLathander4b
END

IF ~~ C0SireneLathander2
SAY ~很高兴知道你也有同感。不过吸引我的不只是美。我一直钦佩敬拜晨光之主者的信念。我想若我的境遇不同，我会像接受伊尔梅特的教导一样接受它。~
IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ + C0SireneLathander4a
IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ + C0SireneLathander4b
END

IF ~~ C0SireneLathander3
SAY ~嗯，呃……各人有各人的看法吧。~
IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ + C0SireneLathander4a
IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ + C0SireneLathander4b
END

IF ~~ C0SireneLathander4a
SAY ~这也让人怀旧。毕竟我们是在兰森德尔神殿外相遇的，不是吗？我想某种意义上，我的路与晨光之主交错是种福气。~
IF ~~ + C0SireneLathander5
END

IF ~~ C0SireneLathander4b
SAY ~我在剑湾旅行时，曾经过贝雷戈斯特的兰森德尔神殿。那里也有美，可那是朴素之美。这里完全不同。这神殿仿佛不是凡人双手所能造出。~
IF ~~ + C0SireneLathander5
END

IF ~~ C0SireneLathander5
SAY ~可是……让我满心喜悦的不只是这神殿的美。~
= ~虽然兰森德尔与伊尔梅特的信仰在许多方面不同，他们的神职却紧密相连。伊尔梅特执掌忍耐与坚持，兰森德尔则带来随之而来的生机与更新。因此，我希望你能明白我为何几乎把晨光之主的信徒看作我自己信仰的人。~
= ~哦……我已经说得太久了。原谅我，我不是想给你说教。我们该继续了。~
IF ~~ DO ~SetGlobal("C0SireneLathander","GLOBAL",2)~ EXIT
END

// Tanner's basement

IF ~Global("C0SireneTanner","GLOBAL",1) Global("EnteredTanner","GLOBAL",1)~ C0SireneTannerBasement
SAY ~伊尔梅特的慈悲，这里发生过何等暴行……这些遗体被亵渎得无法复原。我只能祈祷他们死前没有受苦。~ [C0BLANK]
= ~小心脚下，<CHARNAME>。我只能想象那凶手给我们设了什么机关。~
IF ~~ DO ~SetGlobal("C0SireneTanner","GLOBAL",2)~ EXIT
END

// Neb's head

IF ~Global("C0SireneNebHead","GLOBAL",1)~ C0SireneNebHead
SAY ~卑劣的恶棍……至少知道他的暴行到头了，也算一件宽慰。~ [C0BLANK]
= ~（叹气）我们该把这恶魔的头交给当地官署。对孩子们来说算不了什么安慰，可是……最好让律法知道这事。~
IF ~~ DO ~SetGlobal("C0SireneNebHead","GLOBAL",2)~ EXIT
END

// Demogorgon's shrine

IF ~Global("C0SireneDemogorgon","GLOBAL",2)~ C0SireneDemogorgon
SAY ~这……这地方每块石头都散着邪恶，<CHARNAME>。我们不该在这里。~ [C0BLANK]
++ ~你什么意思？~ DO ~SetGlobal("C0SireneDemogorgon","GLOBAL",3)~ + C0SireneDemogorgon2
++ ~那尊雕像有点古怪。~ DO ~SetGlobal("C0SireneDemogorgon","GLOBAL",3)~ + C0SireneDemogorgon2
END

IF ~~ C0SireneDemogorgon2
SAY ~我……我几乎不敢相信，可这是恶魔王子的神龛，<CHARNAME>。我无法想象这里为何会有这样的地方，可是……~
= ~不可能有别的解释。我在伊尔梅特神殿藏书的一卷书里见过那雕像的形貌。而且……光是待在这里，我的血就在恐惧与憎恨中反应。~
= ~我们不能留下，<CHARNAME>。我有种不自然的冲动想砸碎这房间的一切，而那样只会招来那恶魔或他仆从的怒火。~
++ ~那我们立刻离开。~ + C0SireneDemogorgon3
++ ~就一会儿。我想先四处看看。~ + C0SireneDemogorgon4
END

IF ~~ C0SireneDemogorgon3
SAY ~是的，那样最好。谢谢你……<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ C0SireneDemogorgon4
SAY ~若你非要……不过我劝你千万别靠近那雕像。连碰它都可能引来那恶魔的注意。~
IF ~~ EXIT
END
END

// Given Carsomyr

CHAIN IF WEIGHT #-1 ~Global("C0SireneCarsomyr","GLOBAL",1)~ THEN C0SIRE2J C0SireneCarsomyr
~这——这是什么意思，<CHARNAME>？~ [C0BLANK]
DO ~SetGlobal("C0SireneCarsomyr","GLOBAL",2)~
END
++ ~什么意思？有什么不对吗？~ + C0SireneCarsomyr2
++ ~我给你一把剑。有问题吗？~ + C0SireneCarsomyr2

APPEND C0SIRE2J

IF ~~ C0SireneCarsomyr2
SAY ~<CHARNAME>，你不知道自己在说什么。这……这把剑是神圣复仇者！只有最伟大的圣武士才蒙赐这样的荣耀……~
++ ~是吗？呃……我不知道。~ + C0SireneCarsomyr3
+ ~OR(3)
False()
!Class(Player1,PALADIN)
Kit(Player1,Blackguard)~ + ~嗯，那它跟你正相配。~ + C0SireneCarsomyr4a
+ ~!Kit(Player1,Blackguard)
True()
Class(Player1,PALADIN)
!FallenPaladin(Player1)~ + ~嗯，那它跟你正相配。~ + C0SireneCarsomyr4b
++ ~你到底能不能用？~ + C0SireneCarsomyr5
END

IF ~~ C0SireneCarsomyr3
SAY ~你不该这样轻率地说这种事，<CHARNAME>。这样的剑只有最纯净的心才能使用。至于我能不能……~
IF ~OR(3)
False()
!Class(Player1,PALADIN)
Kit(Player1,Blackguard)~ + C0SireneCarsomyr4a
IF ~!Kit(Player1,Blackguard)
True()
Class(Player1,PALADIN)
!FallenPaladin(Player1)~ + C0SireneCarsomyr4b
END

IF ~~ C0SireneCarsomyr4a
SAY ~不……不，我不能。我不觉得自己配得上。~
IF ~~ + C0SireneCarsomyr6
END

IF ~~ C0SireneCarsomyr4b
SAY ~不……不，我不能。我不觉得自己配得上。若有人配用这样的剑，那该是你。~
IF ~~ + C0SireneCarsomyr6
END

IF ~~ C0SireneCarsomyr5
SAY ~嗯……是的，也许我能，可是……~
IF ~OR(3)
False()
!Class(Player1,PALADIN)
Kit(Player1,Blackguard)~ + C0SireneCarsomyr4a
IF ~!Kit(Player1,Blackguard)
True()
Class(Player1,PALADIN)
!FallenPaladin(Player1)~ + C0SireneCarsomyr4b
END

IF ~~ C0SireneCarsomyr6
SAY ~即使我能，我也不配用这样的剑。我的血被污了……连碰它都会让它不安，更别说使用。它是为比我更伟大的手打造的。~
+ ~!Kit(Player1,Blackguard)
True()
Class(Player1,PALADIN)
!FallenPaladin(Player1)~ + ~你跟我一样配用这把剑。拿着。~ + C0SireneCarsomyr7
++ ~我觉得你对自己太苛刻了。不管有没有魔性血脉，这剑接受了你。你该带着自豪使用它。~ + C0SireneCarsomyr7
++ ~你若真不愿意，我不会强迫你用。~ + C0SireneCarsomyr8
++ ~你自己决定。~ + C0SireneCarsomyr8
END

IF ~~ C0SireneCarsomyr7
SAY ~是的……你说得当然对。若这剑认为我配得上……那我理当带着自豪携带它。~
= ~说实话，自从我读到它名字的那天，我就一直梦想以伊尔梅特之名使用这样的剑。可我从未想象梦想会成真……谢谢你相信我，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ C0SireneCarsomyr8
SAY ~（叹气）我不能自私，对吧？若这剑认为我配得上，那我理当接受这份荣耀。眼下，只要它允许，我就使用这把剑。~
IF ~~ EXIT
END

// Post-Daeron encounter

IF ~Global("C0SireneDaeron","GLOBAL",2)~ daeron
SAY ~怎……怎会走到这一步？~ [C0BLANK]
+ ~Global("C0SireneDaeronExecute","GLOBAL",1)~ + ~你做了你必须做的，塞琳。~ + daeron1
+ ~Global("C0SireneDaeronKill","GLOBAL",1)~ + ~你做了你必须做的，塞琳。~ + daeron2
+ ~Global("C0SireneDaeronLeave","GLOBAL",1)~ + ~你做了你必须做的，塞琳。~ + daeron3
+ ~Global("C0SireneDaeronRedeem","GLOBAL",1)~ + ~你做了你必须做的，塞琳。~ + daeron4
++ ~以后再想。现在我们必须往前走。~ + daeron0
END

IF ~~ daeron0
SAY ~这……这对我来说是相当大的启示，<CHARNAME>。我……我会慢慢接受它。~
IF ~~ DO ~SetGlobal("C0SireneDaeron","GLOBAL",3)~ EXIT
END

IF ~~ daeron1
SAY ~那……那不是我的意思，<CHARNAME>。这是该做的事，我知道。可是……~
IF ~~ + daeron5
END

IF ~~ daeron2
SAY ~我……我刚杀了我的兄弟姐妹，而我曾发誓绝不伤害另一个同信者。可这……这是*该做*的事吗？~
IF ~~ + daeron5
END

IF ~~ daeron3
SAY ~我什么都没做，<CHARNAME>。即使知道戴伦做了什么，我也什么都没做。我放他走了，让他逃过审判。这怎么可能是对的？~
IF ~~ + daeron5
END

IF ~~ daeron4
SAY ~我不是那个意思，<CHARNAME>。戴伦会为他的所作所为受到应有的审判，可是……~
IF ~~ + daeron5
END

IF ~~ daeron5
SAY ~伊尔梅特*支持*了他，<CHARNAME>。他清楚戴伦所做的一切，却继续赐他力量，继续让他相信自己所做的是正义的。为什么……为什么我的主不阻止他？他怎么能让这种事发生？~
= ~我一生从未怀疑过伊尔梅特，只怀疑我服侍他的能力。可在见了我所见的事之后，我在想……他是否真如我所信的那样。~
++ ~也许伊尔梅特怜悯他。毕竟连戴伦自己也相信他所做的是对的。~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",1)~ + daeron6
++ ~你不能怀疑你的神，塞琳。伊尔梅特信任他的信徒去行他的旨意，而你必须继续，无论别人如何滥用这份信任。~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",2)~ + daeron7
+ ~!Global("C0SireneDaeronLeave","GLOBAL",1)~ + ~神明行事的方式很古怪，塞琳。也许你本就是注定要阻止他的那个人。~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",1)~ + daeron8
++ ~我能说什么？也许你说得对。~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",-1)~ + daeron9
++ ~你不需要伊尔梅特告诉你什么是对、什么是错，塞琳。你可以相信自己来判断。~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",-2)~ + daeron10
++ ~想想吧。这方面我怕帮不上你多少。~ + daeron0
END

IF ~~ daeron6
SAY ~你也许说得对。也许伊尔梅特本希望戴伦在看到真相后、在事情走到这一步之前悔改……可若是那样，那他就错了，不是吗？~
IF ~~ + daeron11
END

IF ~~ daeron7
SAY ~也许……也许我怀疑是错的。~
IF ~~ + daeron11
END

IF ~~ daeron8
SAY ~为什么？他为什么……要我做这个？为什么他不能用他自己的指引来阻止这一切？~
IF ~~ + daeron11
END

IF ~~ daeron9
SAY ~我希望我错了，<CHARNAME>。神明在上，我真希望我错了。~
IF ~~ + daeron11
END

IF ~~ daeron10
SAY ~我会……想想这个。~
= ~神明啊，我不敢相信我真在想这个。这会是背叛我学过的一切……~
IF ~~ + daeron11
END

IF ~~ daeron11
SAY ~（叹气）这是我的担子，<CHARNAME>，不是你的。抱歉占了你这么多时间。我们该走了。~
IF ~~ DO ~SetGlobal("C0SireneDaeron","GLOBAL",3)~ EXIT
END
// Messenger

IF ~Global("C0SireneMessenger","GLOBAL",2)~ C0SireneLetter
SAY ~（塞琳专心读着那封信；她的表情忽然阴沉下来。）~ [C0BLANK]
= ~「……你若想知道你一切罪的真相，就在下面这地点见我」……「T.D.T」。这可能是什么意思？~
+ ~Global("C0SirenePartyBG1","GLOBAL",1)~ + ~这是我们在去龙矛堡垒途中遇见的那个召唤师写的吗？~ DO ~SetGlobal("C0SireneMessenger","GLOBAL",3)~ + C0SireneLetter1
++ ~你知道这封信是谁写的吗？~ DO ~SetGlobal("C0SireneMessenger","GLOBAL",3)~ + C0SireneLetter1
++ ~我们没时间分心，塞琳。~ DO ~SetGlobal("C0SireneMessenger","GLOBAL",3)~ + C0SireneLetter1
END

IF ~~ C0SireneLetter1
SAY ~我不能确定……可这封信提到了死人隘口的遭遇。只能是……~
= ~写这封信的人……我不知道他是谁，可从我上次遭遇中了解的那一点点看，他知道我的过去。在他想杀我之前，他叫我「弑亲者」。~
= ~这多半会很危险，可是……我想跟这个「T.D.T」谈谈。虽然他信里满是敌意，我不怀疑会有暴力。~
++ ~我不确定这是个好主意。这满是陷阱的味道。~ + C0SireneLetter2
++ ~嗯，我们还在等什么？去找他吧。~ + C0SireneLetter2
++ ~我们有更优先的事，塞琳。我不能浪费时间追陌生人。~ + C0SireneLetter2
END

IF ~~ C0SireneLetter2
SAY ~我……这事我不能求你相助，<CHARNAME>。这人很强，我不能让你为我冒性命。你灵魂的事仍是我最优先的。~
= ~不过……我需要知道这人想对我做什么，他知道我过去的什么。若……若你允许，我们可以从城门区到信上画的地点。可我不会强迫你。~
= ~决定终究在你，<CHARNAME>。我不怀疑这会危险，可是……我不愿这样的机会就这么错过。~
IF ~~ EXIT
END

// T'samon's Camp

IF ~Global("C0SIR1SireneArea","C0SIR1",1)~ C0SireneArea
SAY ~我想就是这里了。很不祥……看这地面，<CHARNAME>。它像是被毒过。还有一种古怪的存在感，仿佛每个转角都藏着敌人。~ [C0BLANK]
= ~我建议我们以防万一先做好战斗准备。至少可以说，这地方让我不安。~
IF ~~ DO ~SetGlobal("C0SIR1SireneArea","C0SIR1",2)~ EXIT
END

// Post-encounter

IF ~Global("C0SirenePostEncounter","GLOBAL",1)~ C0SirenePostEncounter
SAY ~……~ [C0BLANK]
IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ + C0SirenePostEncounter1
IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + C0SirenePostEncounter2
END

IF ~~ C0SirenePostEncounter1
SAY ~他走了。我在想我还会不会再见到他。~
++ ~你还好吗？~ + C0SirenePostEncounter3
++ ~若是如此，我希望他回来时已变了个人。~ + C0SirenePostEncounter4
++ ~你希望那样吗？~ + C0SirenePostEncounter5
END

IF ~~ C0SirenePostEncounter2
SAY ~做完了。在我被迫杀过的人里，这一次……是最难的。这让我付出许多。~
++ ~你还好吗？~ + C0SirenePostEncounter6
++ ~你不是被迫杀他。是你自己选择的。~ + C0SirenePostEncounter7
++ ~也许，可你如今自由了，不是吗？~ + C0SirenePostEncounter8
END

IF ~~ C0SirenePostEncounter3
SAY ~不，现在还不算，可是……我想随着时间会吧。~
IF ~~ + C0SirenePostEncounter9
END

IF ~~ C0SirenePostEncounter4
SAY ~是的……我也希望如此。~
IF ~~ + C0SirenePostEncounter9
END

IF ~~ C0SirenePostEncounter5
SAY ~我……不确定。也许有一天吧。~
IF ~~ + C0SirenePostEncounter9
END

IF ~~ C0SirenePostEncounter6
SAY ~不。我觉得……愤怒。几乎像是被背叛。~
= ~可奇怪的是，我也觉得解脱，仿佛一副重担离我而去。这感觉很难形容。~
IF ~~ + C0SirenePostEncounter9
END

IF ~~ C0SirenePostEncounter7
SAY ~是的，我做了。可这是对是错，我只能自己判断。这一举动让我失去了伊尔梅特的眷顾，也失去了他的指引。~
IF ~~ + C0SirenePostEncounter9
END

IF ~~ C0SirenePostEncounter8
SAY ~自由？是的……我想我是自由了。~
IF ~~ + C0SirenePostEncounter9
END

IF ~~ C0SirenePostEncounter9
SAY ~我……我需要一些时间思考，<CHARNAME>。我需要……想一想这如何改变了我。也许我们改天再谈。~
IF ~~ DO ~SetGlobal("C0SirenePostEncounter","GLOBAL",2)~ EXIT
END

// New Power

IF ~Global("C0SireneNewPowers","GLOBAL",2)~ C0SireneNewPowers
SAY ~<CHARNAME>，自从我们遇上……我兄弟特萨蒙之后，我用了些时间反思我的行为，而我的力量也有了一些……变化。~ [C0BLANK]
IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ + C0SireneNewPowers1
IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + C0SireneNewPowers2
END

IF ~~ C0SireneNewPowers1
SAY ~我向伊尔梅特祈祷指引……我相信他以赐我一份特殊的恩惠，表明他赞许我选择仁慈。~
= ~我的治疗之触变强了，如今我能驱除他人身与心的疾病，并在之后一小段时间里保护他们免于此等病痛。~
= ~要习惯这新力量也许需要些时间……我怀疑我一天用不了超过一次。可我想这会是我们目标的可贵助力。~
IF ~~ DO ~AddSpecialAbility("C0ILMN4") SetGlobal("C0SireneNewPowers","GLOBAL",3)~ EXIT
END

IF ~~ C0SireneNewPowers2
SAY ~自从我放弃伊尔梅特赐我的恩惠以来，我……努力重新学习我血脉里的力量，好不成为你的负担。~
= ~我已有许多年没试着用我的提夫林力量了，它们比我记得的弱，可我仍有足够的控制，能在有限范围内随意使用。~
= ~我魔性的血让我能从手中放火，用扭曲的幻象藏身，甚至一眼击瞎别人……全是凶恶的力量，我曾发誓绝不使用。可是……我再不受那誓约束缚，而没有从前的力量，我怕我会需要它们。~
IF ~~ DO ~AddSpecialAbility("C0SBLIND")
AddSpecialAbility("C0SBURN")
AddSpecialAbility("C0SBLUR") SetGlobal("C0SireneNewPowers","GLOBAL",3)~ EXIT
END

// Chapter 6 - Pre-Bodhi talk

IF ~Global("C0SireneC6BodhiTalk","GLOBAL",1)~ C0SireneC6Bodhi
SAY ~等等，<CHARNAME>……我需要跟你谈谈。~ [C0BLANK]
++ ~我在听，什么事？~ DO ~SetGlobal("C0SireneC6BodhiTalk","GLOBAL",2)~ + C0SireneC6Bodhi1
++ ~现在不行。我们有个任务要完成。~ DO ~SetGlobal("C0SireneC6BodhiTalk","GLOBAL",2)~ + C0SireneC6Bodhi2
END

IF ~~ C0SireneC6Bodhi1
SAY ~我们很快要面对两个主要敌人中的第一个，可是……在我们继续之前，有些事你必须知道。~
= ~我……在我们再次看见光之后不久，得了一个幻象。我想……那是警告。来自伊尔梅特的警告。~
++ ~是什么？~ + C0SireneC6Bodhi3
++ ~你还好吗？~ + C0SireneC6Bodhi4
++ ~我们没时间听你的梦，<CHARNAME>。~ + C0SireneC6Bodhi5
END

IF ~~ C0SireneC6Bodhi2
SAY ~我知道。所以我现在必须跟你说。求你听我说，<CHARNAME>。~
IF ~~ + C0SireneC6Bodhi1
END

IF ~~ C0SireneC6Bodhi3
SAY ~在幻象里，我看见……死亡。我的死亡。~
++ ~什么？！~ + C0SireneC6Bodhi6
++ ~说下去……~ + C0SireneC6Bodhi6
END

IF ~~ C0SireneC6Bodhi4
SAY ~我……到时候我会的。我想……~
IF ~~ + C0SireneC6Bodhi3
END

IF ~~ C0SireneC6Bodhi5
SAY ~那不只是梦，<CHARNAME>。这关系我们两个。求你，听我说！~
IF ~~ + C0SireneC6Bodhi3
END

IF ~~ C0SireneC6Bodhi6
SAY ~我……我躺在冰冷的石头上，视线模糊。你不在那里……可我不是独自一人。那个吸血鬼……波迪和我在一起，她的唇贴在我的喉上。~
= ~我感觉到痛……难以忍受的痛，当我感觉到她的尖牙。然后……什么都没有。没有痛，也没有温暖……我感觉到体内的邪恶，化成一种非人的饥渴……若我不满足它，它威胁要把我从内部撕开。~
= ~然后……我看见了你，<CHARNAME>，而我所感觉到的只有那饥渴。我止不住自己向你扑去，然后……~
= ~（她发出一声痛苦的呻吟，抓住自己的额头。）~
++ ~那么……你看见她把你变成吸血鬼？~ + C0SireneC6Bodhi7
++ ~可……可那不过是个梦，对吧？~ + C0SireneC6Bodhi8
++ ~那可能是什么意思？~ + C0SireneC6Bodhi7
++ ~（抱住她）~ + C0SireneC6Bodhi9
END

IF ~~ C0SireneC6Bodhi7
SAY ~那……那必定是伊尔梅特的警告。我看不出别的可能……~
IF ~~ + C0SireneC6Bodhi10
END

IF ~~ C0SireneC6Bodhi8
SAY ~我……我不这么想，<CHARNAME>。那必是对未来的一瞥。~
IF ~~ + C0SireneC6Bodhi10
END

IF ~~ C0SireneC6Bodhi9
SAY ~<CHARNAME>……（她绝望地抓着你，仿佛怕一松手你就会消失）~
IF ~~ + C0SireneC6Bodhi10
END

IF ~~ C0SireneC6Bodhi10
SAY ~我……我不会变成吸血鬼，<CHARNAME>。我不会允许那……那怪物腐化我，让我背叛我一生所信奉的一切。而我也绝不能伤害你……永远不能。~
++ ~我明白。你留在后头，我独自面对她。~ + C0SireneC6Bodhi11
++ ~那你打算怎么办？~ + C0SireneC6Bodhi11
END

IF ~~ C0SireneC6Bodhi11
SAY ~若我的存在意味着我会被转变来对付你、伤害你，那么……我不该跟你去。可我也无法忍受让你独自面对波迪……~
= ~不。只有一个选择。若波迪想夺取我，那么……你必须杀了我，<CHARNAME>。我宁愿死在你的手里，也不愿被腐化成邪恶的工具。~
++ ~不！你不能这样要求我！~ + C0SireneC6Bodhi12
++ ~你知道自己在说什么吗，塞琳？我永远杀不了你。~ + C0SireneC6Bodhi12
++ ~若必须如此，那就如此吧。我答应我会照你说的做。~ + C0SireneC6Bodhi13
END

IF ~~ C0SireneC6Bodhi12
SAY ~我……我知道这很难。我也希望不会走到那样的极端……可若真会发生，那么……我宁愿选择死亡。~
= ~你必须明白，<CHARNAME>。不死对圣武士是诅咒。若我堕入其中，我怕我永远无法在伊尔梅特眼中赎清自己。而且……若我因此杀了你，那么……我也活不下去。~
= ~我只能信你会把我从这样的命运中救出，<CHARNAME>。所以我……我要你承诺，在那样的事发生之前杀了我。~
++ ~我……我答应。~ + C0SireneC6Bodhi13
++ ~若我别无选择。可不会走到那一步的，塞琳。~ + C0SireneC6Bodhi13
++ ~不，我不能答应这种事。我们会撑过去的，我知道。别逼我对你做这个。~ + C0SireneC6Bodhi14
END

IF ~~ C0SireneC6Bodhi13
SAY ~谢谢你，<CHARNAME>……~
= ~我……我只能希望是我弄错了。可若我没弄错……那么你的承诺让我能毫无畏惧地面对死亡。~
IF ~~ EXIT
END

IF ~~ C0SireneC6Bodhi14
SAY ~<CHARNAME>……~
= ~也许我只是在白担心。我只能希望是我弄错了，可若我的恐惧成真，那么……我只能做该做的事。我不会伤害你，<CHARNAME>，无论那要我付出什么。~
IF ~~ EXIT
END

// Chapter 5 + 7 PID

IF ~IsGabber(Player1) Global("Chapter","GLOBAL",%bg2_chapter_5%)~ C0SirenePIDUnderdark
SAY ~不，不在这里，<CHARNAME>。危险在每个转角，我们必须保持警觉。~ [C0BLANK]
IF ~~ EXIT
END

IF ~IsGabber(Player1) AreaCheck("AR2900")~ C0SirenePIDHell
SAY ~<CHARNAME>……有更要紧的事。等这一切结束我们再谈。~ [C0BLANK]
IF ~~ EXIT
END

// Romance conflict

IF ~Global("C0SireneRomanceConflict","GLOBAL",1) RealGlobalTimerExpired("C0SireneRomanceConflictTimer","GLOBAL")~ C0SireneConflict
SAY ~<CHARNAME>，我们能谈一会儿吗？这对我是一件要紧事。~ [C0BLANK]
++ ~当然。什么事？~ + C0SireneConflict1
++ ~我怕我现在没时间。~ + C0SireneConflict0
END

IF ~~ C0SireneConflict0
SAY ~我……我明白了。那原谅我。我不会再烦你。~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)
SetGlobal("C0SireneRomanceConflict","GLOBAL",2)~ EXIT
END

IF ~~ C0SireneConflict1
SAY ~我……我知道我们常谈，我也确实觉得我们走得近了。可我觉得该问一下……你是否对别人有意。尤其是我们队伍里的人。~
= ~这话也许不该我问，可是……同时，我希望你如实相告。你若真对别人有强烈的感情，我不愿插进来。~
++ ~你若逼我做选择，那我承认——我会选你。这会不会更进一步发展，取决于你。~ + C0SireneConflict8
+ ~Global("AerieRomanceActive","GLOBAL",1)~ + ~既然如此，我就说实话。我也许真的对艾黎有感情。~ + C0SireneConflict2
+ ~Global("JaheiraRomanceActive","GLOBAL",1)~ + ~我对贾希拉的念头……很复杂。我也许把她看得不只是守护者。~ + C0SireneConflict3
+ ~Global("AnomenRomanceActive","GLOBAL",1)~ + ~阿诺门脾气粗，可我想也许能成。~ + C0SireneConflict4
+ ~Global("ViconiaRomanceActive","GLOBAL",1)~ + ~维康尼亚也许真的俘获了我的心。~ + C0SireneConflict5
+ ~Global("RasaadRomanceActive","GLOBAL",1)~ + ~拉萨德是个好人。我确实想跟他更亲近。~ + C0SireneConflict6
+ ~Global("NeeraRomanceActive","GLOBAL",1)~ + ~我不完全确定会有多顺利，可我确实喜欢妮拉，即使有危险。~ + C0SireneConflict7
++ ~对别人？不……说实话，我更愿意跟你说话。~ + C0SireneConflict8
++ ~没有特别的人。我很珍视我们所有的盟友，可我无意开始一段感情。~ + C0SireneConflict9
++ ~你是在暗示什么，塞琳？我对你、对任何特定的人都没有特别的感情。~ + C0SireneConflict9
END

IF ~~ C0SireneConflict2
SAY ~啊……我该早点想到。艾黎在我心里也很亲近……我希望你好好待她，<CHARNAME>。~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)
SetGlobal("C0SireneRomanceConflict","GLOBAL",2)~ EXIT
END

IF ~~ C0SireneConflict3
SAY ~我明白，<CHARNAME>。说实话，我不觉得那样的感情有什么错。~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)
SetGlobal("C0SireneRomanceConflict","GLOBAL",2)~ EXIT
END

IF ~~ C0SireneConflict4
SAY ~是的，尽管有缺点，他并不算坏人。也许你能引出他好的一面。~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)
SetGlobal("C0SireneRomanceConflict","GLOBAL",2)~ EXIT
END

IF ~~ C0SireneConflict5
SAY ~若是那样，那我祈祷你知道自己在做什么。我不觉得她没有善良的能力，可是……小心别让她把你拖进黑暗。~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)
SetGlobal("C0SireneRomanceConflict","GLOBAL",2)~ EXIT
END

IF ~~ C0SireneConflict6
SAY ~既然如此，我只求你好好待他，<CHARNAME>。他受了许多苦，我只希望他的人生能再有几分幸福。~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)
SetGlobal("C0SireneRomanceConflict","GLOBAL",2)~ EXIT
END

IF ~~ C0SireneConflict7
SAY ~（笑）我想这风险也许值得，<CHARNAME>。无论她多难测，她确实是个善良的人。~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)
SetGlobal("C0SireneRomanceConflict","GLOBAL",2)~ EXIT
END

IF ~~ C0SireneConflict8
SAY ~哦……我真是受宠若惊。那我希望我们能……照原样继续。~
IF ~~ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
SetGlobal("JaheiraRomanceActive","GLOBAL",3)
SetGlobal("ViconiaRomanceActive","GLOBAL",3)
SetGlobal("AnomenRomanceActive","GLOBAL",3)
SetGlobal("RasaadRomanceActive","GLOBAL",3)
SetGlobal("NeeraRomanceActive","GLOBAL",3)
SetGlobal("C0SireneRomanceConflict","GLOBAL",2)~ EXIT
END

IF ~~ C0SireneConflict9
SAY ~我明白了。那……我想有点失望。我以为也许……不，算了。那是你该做的决定。~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3) SetGlobal("C0SireneRomanceConflict","GLOBAL",2)~ EXIT
END
END

// Low Reputation

CHAIN IF WEIGHT #-1 ~Global("C0SireneLowRep","GLOBAL",1)~ THEN C0SIRE2J C0SireneRep01
~<CHARNAME>，我觉得你正把我们领上错路。~ [C0BLANK]
DO ~SetGlobal("C0SireneLowRep","GLOBAL",2)~
= ~我暂且不作评判，可我建议你转向更好的方向。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneRepBreak","GLOBAL",1)~ THEN C0SIRE2J C0SireneRep02
~那么，你无意改变方向。既如此，我就告辞。愿伊尔梅特怜悯你的灵魂，因为若我们再相见，我不会。~ [C0BLANK]
DO ~SetGlobal("C0SireneRepBreak","GLOBAL",2) SetGlobal("C0SireneJoined","GLOBAL",0) LeaveParty() EscapeArea()~ 
EXIT

// FLIRTS
APPEND C0SIRE2J

IF ~Global("C0SireneFlirt","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",1)~ flirt1
SAY ~（塞琳近来一直在密切留意你。）~ [C0BLANK]
IF ~RandomNum(15,1) Global("C0SirenePartyBG1","GLOBAL",1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a1
IF ~RandomNum(15,1) !Global("C0SirenePartyBG1","GLOBAL",1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a2
IF ~RandomNum(15,2)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a2
IF ~RandomNum(15,3)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a3
IF ~RandomNum(15,4)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a4
IF ~RandomNum(15,5)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a5
IF ~RandomNum(15,6)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a6
IF ~RandomNum(15,7)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a7
IF ~RandomNum(15,8)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a8
IF ~RandomNum(15,9) AreaType(OUTDOOR) TimeOfDay(DAY)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a13
IF ~RandomNum(15,9) !AreaType(OUTDOOR) !TimeOfDay(DAY)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a10
IF ~RandomNum(15,10) AreaType(FOREST)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a14
IF ~RandomNum(15,10) !AreaType(FOREST)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a11
IF ~RandomNum(15,11) CheckStatGT(Player1,5,FATIGUE)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a15
IF ~RandomNum(15,11) !CheckStatGT(Player1,5,FATIGUE)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a12
IF ~RandomNum(15,12) AreaType(OUTDOOR) TimeOfDay(DAY)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a17
IF ~RandomNum(15,12) AreaType(OUTDOOR) !TimeOfDay(DAY)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a18
IF ~RandomNum(15,13) AreaType(FOREST)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a19
IF ~RandomNum(15,13) !AreaType(FOREST)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a9
IF ~RandomNum(15,14) ReputationGT(Player1,18)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a20
IF ~RandomNum(15,14) ReputationLT(Player1,19)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a21
IF ~RandomNum(15,15)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a22
IF ~HPPercentLT(Player1,50) Alignment("C0Sirene",LAWFUL_GOOD)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + a16
END

IF ~~ a1
SAY ~你记得贝雷戈斯特吗，<CHARNAME>？我们初次相遇那天？~
++ ~我当然记得。~ + a1.1a
++ ~不太记得。~ + a1.1b
END

IF ~~ a1.1a
SAY ~（微笑）能有幸与你同行，我想那是种福气。~
IF ~~ EXIT
END

IF ~~ a1.1b
SAY ~我记得清清楚楚，就像昨天一样……~
IF ~~ + a1.1a
END

IF ~~ a2
SAY ~（她擦过你身边，把什么小巧精致的东西塞进你手里。你低头看见一朵小小的白花。你再回头看塞琳时，她已转过身去，似乎在刻意保持距离。）~
IF ~~ EXIT
END

IF ~~ a3
SAY ~（她走近，抚你的手臂，温柔地笑着。）你好吗，我的朋友？~
IF ~~ EXIT
END

IF ~~ a4
SAY ~（她正解开盔甲，忽然发觉你在看，便尴尬地挪开，避开视线。）~
IF ~~ EXIT
END

IF ~~ a5
SAY ~我昨晚做了个梦，我的朋友，梦见一位<PRO_MANWOMAN>……我看不清<PRO_HISHER>的脸，可我觉得我仍认得<PRO_HESHE>……~
= ~我相信……那是你，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ a6
SAY ~（她正啃着什么，忽然发觉你在看她。）~
= ~你喜欢巧克力吗，<CHARNAME>？（笑）我得承认，这是孩子气的东西，可我相当偏爱它。~
IF ~~ EXIT
END

IF ~~ a7
SAY ~（她走过来吻你的脸颊，仿佛才意识到自己做了什么，脸红起来。）~
= ~我——我不知道自己怎么了，<CHARNAME>……~
++ ~没关系。~ + a7.1
++ ~我喜欢。谢谢你。~ + a7.1
++ ~那很好，可我另一边脸还寂寞着……~ + a7.2
++ ~别再这样了。~ + a7.0
END

IF ~~ a7.0
SAY ~我……我明白。~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ a7.1
SAY ~（她见你接受了她的亲近，似乎松了口气。）~
= ~我……若你不介意，我改天也许还会这样。~
IF ~~ EXIT
END

IF ~~ a7.2
SAY ~（她笑着吻你另一边脸颊。）~
= ~好了，够了。我们有要紧事要做……对吧？~
IF ~~ EXIT
END

IF ~~ a8
SAY ~（她拿着湿布走近，温柔地擦去你脸上的汗。）~
IF ~~ EXIT
END

IF ~~ a9
SAY ~（她沉默地看着你，仔细观察你脸上的每一处细节，然后抬手拂去你脸颊上一根掉落的睫毛。）~
IF ~~ EXIT
END

IF ~~ a10
SAY ~（她羞怯地挨到你身边，陪你走了一阵。）~
IF ~~ EXIT
END

IF ~~ a11
SAY ~（她握住你的手，把手指与你的交缠，并肩走时朝你飞快一笑。）~
IF ~~ EXIT
END

IF ~~ a12
SAY ~（她在挠胸甲上一处贴身的缝隙，发觉你在看便停下。）~
++ ~我可以帮你。~ + a12.1
++ ~你在做什么，塞琳？~ + a12.2
++ ~（移开视线。）~ + a12.3
END

IF ~~ a12.1
SAY ~不——不！呃，我是说……我想那很不合适……（脸红）~
IF ~~ EXIT
END

IF ~~ a12.2
SAY ~没——没什么……~
IF ~~ EXIT
END

IF ~~ a12.3
SAY ~（你觉得听见了一声松气，她大概又开始试着缓解够不着的痒处。）~
IF ~~ EXIT
END

IF ~~ a13
SAY ~（她拉下兜帽，用手指梳过头发，你看她及肩的火红发卷在日光下舞动。）~
IF ~~ EXIT
END

IF ~~ a14
SAY ~（尽管穿着沉重盔甲，她仍优雅轻捷地越过林间小径上的落枝、树根与泥洼。）~
IF ~~ EXIT
END

IF ~~ a15
SAY ~你看起来累了，<CHARNAME>。为了你，也许最好尽快扎营。~
IF ~~ EXIT
END

IF ~~ a16
SAY ~（她看着你的伤，脸上是惊恐与担忧。）~
= ~别动，<CHARNAME>。（她双手触着你的伤处，低声念了一句祝福。）~
IF ~~ DO ~ForceSpell(Player1,PALADIN_LAY_ON_HANDS)~ EXIT
END

IF ~~ a17
SAY ~（天气又热又干，塞琳正尽情喝水袋里的水。她把水袋举过头顶，让水淋过脸，流进盔甲里。）~
= ~（她发觉你在看，赶紧停下，脸红起来。）~
IF ~~ EXIT
END

IF ~~ a18
SAY ~（她的眼睛平日是浅黄绿色，此刻在黑暗里泛着橙光。即使如此，看向你时，它们只流露温暖与关切。）~
IF ~~ EXIT
END

IF ~~ a19
SAY ~（她停下来在附近的溪里洗脸，然后抬头看你。她脸上与发上点缀的水珠有种奇特的动人。）~
IF ~~ EXIT
END

IF ~~ a20
SAY ~你真是位善良正直的人，<CHARNAME>……我不能否认我羡慕你。可我对你的钦佩胜过我所怀的任何其他感情。~
IF ~~ EXIT
END

IF ~~ a21
SAY ~（她静静地观察你，咬着嘴唇，仿佛有话要从她嘴里逃出，可她似乎又不舒服于让它们出来。）~
IF ~~ EXIT
END

IF ~~ a22
SAY ~（她轻声哼着你陌生的一段调子，当她看向你时，似乎哼得更有劲了。）~
IF ~~ EXIT
END

// Flirts for Branwen, C0SireneRomanceActive=2

IF ~Global("C0SireneFlirt","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ flirt2
SAY ~（塞琳带着新生的自信看你，眼里满是温暖。）~ [C0BLANK]
IF ~RandomNum(17,1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b1
IF ~RandomNum(17,2) !Race(Player1,GNOME)
!Race(Player1,DWARF)
!Race(Player1,HALFLING)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b2
IF ~RandomNum(17,3)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b3
IF ~RandomNum(17,4)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b4
IF ~RandomNum(17,5)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b5
IF ~RandomNum(17,6) Global("C0SireneSlept","GLOBAL",1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b6
IF ~RandomNum(17,6) !Global("C0SireneSlept","GLOBAL",1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b6a
IF ~RandomNum(17,7) Global("C0SireneSlept","GLOBAL",1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b7
IF ~RandomNum(17,7) !Global("C0SireneSlept","GLOBAL",1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b7a
IF ~RandomNum(17,8) Global("C0SireneSlept","GLOBAL",1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b8
IF ~RandomNum(17,8) !Global("C0SireneSlept","GLOBAL",1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b8a
IF ~RandomNum(17,9) Global("C0SireneSlept","GLOBAL",1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b9
IF ~RandomNum(17,9) !Global("C0SireneSlept","GLOBAL",1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b9a
IF ~RandomNum(17,10) Global("C0SireneSlept","GLOBAL",1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b10
IF ~RandomNum(17,10) !Global("C0SireneSlept","GLOBAL",1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b10a
IF ~RandomNum(17,11)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b11
IF ~RandomNum(17,12)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b12
IF ~RandomNum(17,13)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b13
IF ~RandomNum(17,14)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b14
IF ~RandomNum(17,14) Global("C0SireneVampire","GLOBAL",4)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b15
IF ~RandomNum(17,15) Gender(Player1,MALE)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b17
IF ~RandomNum(17,15) Gender(Player1,FEMALE)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b18
IF ~RandomNum(17,16)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b19
IF ~RandomNum(17,17)
!AreaCheck("AR0021")
!AreaCheck("AR0313")
!AreaCheck("AR0406")
!AreaCheck("AR0509")
!AreaCheck("AR0513")
!AreaCheck("AR0522")
!AreaCheck("AR0704")
!AreaCheck("AR0709")
!AreaCheck("AR1105")
!AreaCheck("AR1602")
!AreaCheck("AR2010")~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b20
IF ~RandomNum(17,17) OR(11)
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR0406")
AreaCheck("AR0509")
AreaCheck("AR0513")
AreaCheck("AR0522")
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR1105")
AreaCheck("AR1602")
AreaCheck("AR2010")~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b21
IF ~HPPercentLT(Player1,50) Alignment("C0Sirene",LAWFUL_GOOD)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimer","GLOBAL",2500) SetGlobal("C0SireneFlirt","GLOBAL",0)~ + b16
END

IF ~~ b1
SAY ~（她走近你，实实地吻上你的唇。）~
IF ~~ EXIT
END

IF ~~ b2
SAY ~（她把身体压向你，双臂无力地搭上你的肩，靠着你的支撑才站得住。）~
IF ~~ EXIT
END

IF ~~ b3
SAY ~（她走过时擦过你身边，你闻到她那股古怪却诱人的气息。）~
IF ~~ EXIT
END

IF ~~ b4
SAY ~<CHARNAME>……（你的名字几乎停在她唇上，她柔软的声音在那个词说出之后许久仍留在你心里。）~
IF ~~ EXIT
END

IF ~~ b5
SAY ~我爱你，<CHARNAME>……每次开口，这话都变得更易说。~
IF ~~ EXIT
END

IF ~~ b6
SAY ~（她带着不端庄的意图抚你的大腿。）我希望你知道我在暗示什么，<CHARNAME>……~
IF ~~ EXIT
END

IF ~~ b6a
SAY ~（她带着怅然与悔意看你，抬手要触你的脸……却在将触未触时停下。）~
IF ~~ EXIT
END

IF ~~ b7
SAY ~<CHARNAME>……我再也忍不住了。我需要你。今晚。~
IF ~~ EXIT
END

IF ~~ b7a
SAY ~（她与你对视时唇微微颤动，挤出紧张的一半微笑。）~
IF ~~ EXIT
END

IF ~~ b8
SAY ~（见过没有盔甲束缚的塞琳之后，你才注意到她在路上看起来多么不同。）~
IF ~~ EXIT
END

IF ~~ b8a
SAY ~（她专心地看你，在她目光下你觉得有些暴露。）~
IF ~~ EXIT
END

IF ~~ b9
SAY ~（她以惊人的自信接受你，从你的脸一路吻到颈。）~
= ~你可以期待稍后更多……~
IF ~~ EXIT
END

IF ~~ b9a
SAY ~我希望你不为……我那晚的行为怨恨我，<CHARNAME>。也许你把我推离身边是对的。~
IF ~~ EXIT
END

IF ~~ b10
SAY ~（她挑逗地舔着嘴唇，这对平日端庄的她很不寻常。自你们的爱成真之后，你注意到她常在你眼前做类似的事。）~
IF ~~ EXIT
END

IF ~~ b10a
SAY ~自从我们相识，你教了我许多关于爱与渴望的事，<CHARNAME>。我……学会了欣赏我对你的感觉。~
IF ~~ EXIT
END

IF ~~ b11
SAY ~闭上眼……~ 
= ~（她把一小块巧克力塞进你嘴里，你享受这突如其来的甜美。）~
IF ~~ EXIT
END

IF ~~ b12
SAY ~（她猛地凑过来，深情地咬你的鼻子，事后又羞得笑出声。）~
IF ~~ EXIT
END

IF ~~ b13
SAY ~（她把自己的额头贴上你的，直直望进你眼里。过了似乎很久，她才放开你。）~
IF ~~ EXIT
END

IF ~~ b14
SAY ~（她深情地抱住你，用尖牙轻咬你的耳朵，轻得不会造成疼痛。）~
IF ~~ EXIT
END

IF ~~ b15
SAY ~我……我在那些墓室里以为要永远失去你时，从没体会过那样的恐惧。我太庆幸我们没有分离……~
IF ~~ EXIT
END

IF ~~ b16
SAY ~<CHARNAME>……我不愿见你受伤。到我这儿来……~
= ~（她触着你的伤口，低声念着祷词。你感觉到伤口在愈合。）~
IF ~~ DO ~ForceSpell(Player1,PALADIN_LAY_ON_HANDS)~ EXIT
END

IF ~~ b17
SAY ~（她触着你，探索你的下颌线，然后手指一路滑下你的胸膛。）~
IF ~~ EXIT
END

IF ~~ b18
SAY ~（她触着你，探索你的下颌线，然后一路下移到你胸前的曲线。）~
IF ~~ EXIT
END

IF ~~ b19
SAY ~（她递给你一个装满肥大红枣的布袋。）尝尝，<CHARNAME>。很好吃。~
IF ~~ EXIT
END

IF ~~ b20
SAY ~（她双臂环上你的脖子，在你耳边低语情话，同时轻轻咬它。）~
IF ~~ EXIT
END

IF ~~ b21
SAY ~（在这旅店里相对安全舒适，塞琳坐在你身边，靠在你肩上，眼睑低垂。你不确定她是否打起了盹。）~
= ~（她闭眼笑着，在你身边歇息，看起来极天真动人。）~
IF ~~ EXIT
END

IF ~IsGabber(Player1) !Global("C0SireneRomanceActive","Global",2)~ C0SirenePID    			
SAY ~你需要我吗，<CHARNAME>？~ [C0SIR015]
+ ~Global("C0SireneBook","GLOBAL",0) PartyHasItem("c0sbook")~ + ~书怎么样？~ + book
+ ~OR(2)
Global("C0SireneRomanceActive","GLOBAL",1)
Global("C0SireneRomanceActive","GLOBAL",2)~ + ~（调情）~ + flirt
+ ~RandomNum(4,1)~ + ~你近来如何？~ + p1.1
+ ~RandomNum(4,2)~ + ~你近来如何？~ + p1.2
+ ~RandomNum(4,3)~ + ~你近来如何？~ + p1.3
+ ~RandomNum(4,4)~ + ~你近来如何？~ + p1.4
+ ~Global("Chapter","GLOBAL",%bg2_chapter_2%)~ + ~你觉得我们的任务怎么样？~ + chapter2
+ ~Global("Chapter","GLOBAL",%bg2_chapter_3%) Global("C0SirenePartyBG1","GLOBAL",1)~ + ~你觉得我们的任务怎么样？~ + chapter3a
+ ~Global("Chapter","GLOBAL",%bg2_chapter_3%) !Global("C0SirenePartyBG1","GLOBAL",1)~ + ~你觉得我们的任务怎么样？~ + chapter3b
+ ~Global("Chapter","GLOBAL",%bg2_chapter_4%)~ + ~你觉得我们的任务怎么样？~ + chapter4
+ ~Global("Chapter","GLOBAL",%bg2_chapter_6%)~ + ~你觉得我们的任务怎么样？~ + chapter6
+ ~Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + ~你觉得我们的任务怎么样？~ + chapter7
++ ~我能问你一个问题吗？~ + questions
+ ~Global("C0SireneShutUp","GLOBAL",0)~ + ~塞琳，我希望你暂时别跟我说话。~ DO ~SetGlobal("C0SireneShutUp","GLOBAL",1)~ + again
+ ~Global("C0SireneShutUp","GLOBAL",1)~ + ~我挺想念跟你说话的。你想聊随时都可以来找我。~ DO ~SetGlobal("C0SireneShutUp","GLOBAL",0)~ + again
++ ~我觉得你的声音有点不对劲。~ + stringfix
++ ~不，算了。~ EXIT
END

IF ~IsGabber(Player1) Global("C0SireneRomanceActive","Global",2)~ C0SireneRomancePID    			
SAY ~（你走近时，塞琳微笑。）我在你身边。~ [C0SIR016]
+ ~Global("C0SireneBook","GLOBAL",0) PartyHasItem("c0sbook")~ + ~书怎么样？~ + book
+ ~OR(2)
Global("C0SireneRomanceActive","GLOBAL",1)
Global("C0SireneRomanceActive","GLOBAL",2)~ + ~（调情）~ + flirt
+ ~RandomNum(4,1)~ + ~你近来如何？~ + p1.1
+ ~RandomNum(4,2)~ + ~你近来如何？~ + p1.2
+ ~RandomNum(4,3)~ + ~你近来如何？~ + p1.3
+ ~RandomNum(4,4)~ + ~你近来如何？~ + p1.4
+ ~Global("Chapter","GLOBAL",%bg2_chapter_2%)~ + ~你觉得我们的任务怎么样？~ + chapter2
+ ~Global("Chapter","GLOBAL",%bg2_chapter_3%) Global("C0SirenePartyBG1","GLOBAL",1)~ + ~你觉得我们的任务怎么样？~ + chapter3a
+ ~Global("Chapter","GLOBAL",%bg2_chapter_3%) !Global("C0SirenePartyBG1","GLOBAL",1)~ + ~你觉得我们的任务怎么样？~ + chapter3b
+ ~Global("Chapter","GLOBAL",%bg2_chapter_4%)~ + ~你觉得我们的任务怎么样？~ + chapter4
+ ~Global("Chapter","GLOBAL",%bg2_chapter_6%)~ + ~你觉得我们的任务怎么样？~ + chapter6
+ ~Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + ~你觉得我们的任务怎么样？~ + chapter7
++ ~我能问你一个问题吗？~ + questions
+ ~Global("C0SireneShutUp","GLOBAL",0)~ + ~塞琳，我希望你暂时别跟我说话。~ DO ~SetGlobal("C0SireneShutUp","GLOBAL",1)~ + again
+ ~Global("C0SireneShutUp","GLOBAL",1)~ + ~我挺想念跟你说话的。你想聊随时都可以来找我。~ DO ~SetGlobal("C0SireneShutUp","GLOBAL",0)~ + again
++ ~我觉得你的声音有点不对劲。~ + stringfix
++ ~算了。~ EXIT
END

// Flirt Menu

IF ~~ flirt
SAY ~什么事？~ [C0SIR017]
+ ~Global("C0SireneRomanceActive","GLOBAL",2)
Global("C0SireneSleepLovetalk","GLOBAL",2) Global("C0SireneSlept","GLOBAL",0)
OR(11)
AreaType(OUTDOOR)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ + ~塞琳，我准备好了。今晚留在我身边。~ DO ~SetGlobal("C0SireneSlept","GLOBAL",1)~ + sleepwithme
+ ~RandomNum(4,1) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~（吻她）~ + r1.1
+ ~RandomNum(4,2) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~（吻她）~ + r1.2
+ ~RandomNum(4,3) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~（吻她）~ + r1.3
+ ~RandomNum(4,4) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~（吻她）~ + r1.4
+ ~RandomNum(4,1) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~（抚她的脸）~ + r2.1
+ ~RandomNum(4,2) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~（抚她的脸）~ + r2.2
+ ~RandomNum(4,3) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~（抚她的脸）~ + r2.3
+ ~RandomNum(4,4) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~（抚她的脸）~ + r2.4
+ ~RandomNum(4,1) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~（牵她的手）~ + r3.1
+ ~RandomNum(4,2) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~（牵她的手）~ + r3.2
+ ~RandomNum(4,3) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~（牵她的手）~ + r3.3
+ ~RandomNum(4,4) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~（牵她的手）~ + r3.4
+ ~RandomNum(4,1)~ + ~（抚她的头发）~ + f1.1
+ ~RandomNum(4,2)~ + ~（抚她的头发）~ + f1.2
+ ~RandomNum(4,3)~ + ~（抚她的头发）~ + f1.3
+ ~RandomNum(4,4)~ + ~（抚她的头发）~ + f1.4
+ ~RandomNum(4,1)~ + ~（吻她的脸颊）~ + f2.1
+ ~RandomNum(4,2)~ + ~（吻她的脸颊）~ + f2.2
+ ~RandomNum(4,3)~ + ~（吻她的脸颊）~ + f2.3
+ ~RandomNum(4,4)~ + ~（吻她的脸颊）~ + f2.4
+ ~RandomNum(4,1)~ + ~你看起来很美。~ + f3.1
+ ~RandomNum(4,2)~ + ~你看起来很美。~ + f3.2
+ ~RandomNum(4,3)~ + ~你看起来很美。~ + f3.3
+ ~RandomNum(4,4) Gender(Player1,FEMALE)~ + ~你看起来很美。~ + f3.4
+ ~RandomNum(4,4) Gender(Player1,MALE)~ + ~你看起来很美。~ + f3.5
+ ~RandomNum(4,1)~ + ~（抱她）~ + f4.1
+ ~RandomNum(4,2)~ + ~（抱她）~ + f4.2
+ ~RandomNum(4,3)~ + ~（抱她）~ + f4.3
+ ~RandomNum(4,4) Gender(Player1,FEMALE)~ + ~（抱她）~ + f4.4a
+ ~RandomNum(4,4) Gender(Player1,MALE)~ + ~（抱她）~ + f4.4b
+ ~RandomNum(4,1)~ + ~（给她揉肩）~ + f5.1
+ ~RandomNum(4,2)~ + ~（给她揉肩）~ + f5.2
+ ~RandomNum(4,3)~ + ~（给她揉肩）~ + f5.2
+ ~RandomNum(4,4)~ + ~（给她揉肩）~ + f5.3
+ ~RandomNum(4,1)~ + ~我爱你的眼睛。~ + f6.1
+ ~RandomNum(4,2)~ + ~我爱你的眼睛。~ + f6.2
+ ~RandomNum(4,3)~ + ~我爱你的眼睛。~ + f6.3
+ ~RandomNum(4,4)~ + ~我爱你的眼睛。~ + f6.4
+ ~RandomNum(4,1)~ + ~塞琳……~ + f7.1
+ ~RandomNum(4,2)~ + ~塞琳……~ + f7.2
+ ~RandomNum(4,3)~ + ~塞琳……~ + f7.3
+ ~RandomNum(4,4)~ + ~塞琳……~ + f7.4
+ ~RandomNum(4,1)~ + ~（挠她痒）~ + f8.1
+ ~RandomNum(4,2)~ + ~（挠她痒）~ + f8.2
+ ~RandomNum(4,3)~ + ~（挠她痒）~ + f8.3
+ ~RandomNum(4,4)~ + ~（挠她痒）~ + f8.4
+ ~RandomNum(4,1) Global("C0SireneLovetalk","GLOBAL",20)~ + ~（请她吃巧克力）~ + f9.1
+ ~RandomNum(4,2) Global("C0SireneLovetalk","GLOBAL",20)~ + ~（请她吃巧克力）~ + f9.2
+ ~RandomNum(4,3) Global("C0SireneLovetalk","GLOBAL",20)~ + ~（请她吃巧克力）~ + f9.3
+ ~RandomNum(4,4) Global("C0SireneLovetalk","GLOBAL",20)~ + ~（请她吃巧克力）~ + f9.4
+ ~RandomNum(4,1) Global("C0SireneSlept","GLOBAL",1)~ + ~今晚我要你。~ + r4.1
+ ~RandomNum(4,2) Global("C0SireneSlept","GLOBAL",1)~ + ~今晚我要你。~ + r4.2
+ ~RandomNum(4,3) Global("C0SireneSlept","GLOBAL",1)~ + ~今晚我要你。~ + r4.3
+ ~RandomNum(4,4) Global("C0SireneSlept","GLOBAL",1)~ + ~今晚我要你。~ + r4.4
+ ~RandomNum(4,1) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~我爱你。~ + r5.1
+ ~RandomNum(4,2) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~我爱你。~ + r5.2
+ ~RandomNum(4,3) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~我爱你。~ + r5.3
+ ~RandomNum(4,4) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~我爱你。~ + r5.4
+ ~RandomNum(4,1) Global("C0SireneSlept","GLOBAL",1) OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ + ~你肯跟我一起洗澡吗？~ + r6.1
+ ~RandomNum(4,2) Global("C0SireneSlept","GLOBAL",1) OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ + ~你肯跟我一起洗澡吗？~ + r6.2
+ ~RandomNum(4,3) Global("C0SireneSlept","GLOBAL",1) OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ + ~你肯跟我一起洗澡吗？~ + r6.3
+ ~RandomNum(4,4) Global("C0SireneSlept","GLOBAL",1) OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ + ~你肯跟我一起洗澡吗？~ + r6.4
+ ~RandomNum(4,1) !Global("C0SireneSlept","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~（挑逗地把身体贴向她）~ + r7.1
+ ~RandomNum(4,2) !Global("C0SireneSlept","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~（挑逗地把身体贴向她）~ + r7.2
+ ~RandomNum(4,3) !Global("C0SireneSlept","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~（挑逗地把身体贴向她）~ + r7.3
+ ~RandomNum(4,4) !Global("C0SireneSlept","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2) Gender(Player1,FEMALE)~ + ~（挑逗地把身体贴向她）~ + r7.4a
+ ~RandomNum(4,4) !Global("C0SireneSlept","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2) Gender(Player1,MALE)~ + ~（挑逗地把身体贴向她）~ + r7.4b
+ ~RandomNum(5,1) Global("C0SireneSlept","GLOBAL",1)~ + ~（挑逗地把身体贴向她）~ + r7.1
+ ~RandomNum(5,2) Global("C0SireneSlept","GLOBAL",1)~ + ~（挑逗地把身体贴向她）~ + r7.2
+ ~RandomNum(5,3) Global("C0SireneSlept","GLOBAL",1)~ + ~（挑逗地把身体贴向她）~ + r7.3
+ ~RandomNum(5,4) Global("C0SireneSlept","GLOBAL",1) Gender(Player1,FEMALE)~ + ~（挑逗地把身体贴向她）~ + r7.4a
+ ~RandomNum(5,4) Global("C0SireneSlept","GLOBAL",1) Gender(Player1,MALE)~ + ~（挑逗地把身体贴向她）~ + r7.4b
+ ~RandomNum(5,5) Global("C0SireneSlept","GLOBAL",1)~ + ~（挑逗地把身体贴向她）~ + r7.5
+ ~RandomNum(4,1) Global("C0SireneSlept","GLOBAL",1)~ + ~（抚她的大腿）~ + r8.1
+ ~RandomNum(4,2) Global("C0SireneSlept","GLOBAL",1)~ + ~（抚她的大腿）~ + r8.2
+ ~RandomNum(4,3) Global("C0SireneSlept","GLOBAL",1)~ + ~（抚她的大腿）~ + r8.3
+ ~RandomNum(4,4) Global("C0SireneSlept","GLOBAL",1)~ + ~（抚她的大腿）~ + r8.4
+ ~Global("C0SireneStopFlirting","GLOBAL",0)~ + ~塞琳，我真的很喜欢你，可我需要专心。请别跟我调情了。~ DO ~SetGlobal("C0SireneStopFlirting","GLOBAL",1)~ + noflirt
+ ~Global("C0SireneStopFlirting","GLOBAL",1)~ + ~我怀念你的关注，塞琳。你想调情就来吧。~ DO ~SetGlobal("C0SireneStopFlirting","GLOBAL",0)~ + yesflirt
++ ~塞琳，我知道我们近来走得很近，可我现在得告诉你……我希望我们只做朋友，仅此而已。~ + breakup
++ ~不，没什么。~ EXIT
END

// Romance novel

IF ~~ book
SAY ~哦……*脸红*那……那真好。~
= ~我熬夜读了一整晚。这故事太美了。我，嗯……*抽鼻子*~
++ ~嘿，我明白。~ + book1
++ ~能让我读读吗？~ + book2
++ ~别在我面前哭哭啼啼的。~ + book3
++ ~随便吧。别把心飘在云上就行。~ + book3
END

IF ~~ book1
SAY ~<CHARNAME>，别……别逗我了。*脸红*~
+ ~Global("C0SireneRomanceActive","GLOBAL",2)~ + ~别逗你？你宁愿我……（前倾吻她）~ + book1a
++ ~可你难为情的时候很可爱。~ + book1b
++ ~哈哈，抱歉。~ + book1c
END

IF ~~ book1a
SAY ~哦！唔嗯……~
++ ~怎么样？比那本傻书好吧？~ + book1d
++ ~你喜欢吗？~ + book1d
END

IF ~~ book1b
SAY ~别说了，你真是……哦，神明啊，我现在得把脸藏起来。~
IF ~~ + book1c
END

IF ~~ book1c
SAY ~我——我们现在是不是该做点什么？也许我们该……专心赶路。对，我想那样最好。~
IF ~~ DO ~SetGlobal("C0SireneBook","Global",1)~ EXIT
END

IF ~~ book1d
SAY ~是的……~
IF ~~ + book1c
END

IF ~~ book2
SAY ~你想读随时都行。毕竟那本书是你花钱买的。~
= ~我，嗯，还没读完。可等我读完，它就是你的。~
IF ~~ DO ~SetGlobal("C0SireneBook","Global",1)~ EXIT
END

IF ~~ book3
SAY ~是——是的，当然。你不必怀疑我。~
IF ~~ DO ~SetGlobal("C0SireneBook","Global",1)~ EXIT
END

IF ~~ again
SAY ~我明白。~
IF ~~ EXIT
END

IF ~~ noflirt
SAY ~哦……我没意识到我的关注这么扰你。原谅我。~
IF ~~ EXIT
END

IF ~~ yesflirt
SAY ~（微笑）好罢。~
IF ~~ EXIT
END

IF ~~ breakup
SAY ~我……本希望你对我有些兴趣，<CHARNAME>，可也许是我误会了……你真是这个意思吗？~
++ ~是的。~ + breakup2
++ ~不，算了。~ + again
END

IF ~~ breakup2
SAY ~我……好罢。谢谢你告诉我。~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ sleepwithme
SAY ~（微笑）那我们找个只有我们的地方……~
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ brotheralive
SAY ~*叹气*不太好，<CHARNAME>。~
= ~我知道我做的是对的事……你向我保证过。可我仍觉得愤怒、被背叛。即使我从没认识过他，那还是……~
= ~（她难过地摇头）我不想谈这个。~
IF ~~ EXIT
END

IF ~~ brotherdead
SAY ~*叹气*如今我知道你在下城区杀萨瑞沃克时必是什么感受了……真可怕。~
= ~我不后悔，不后悔他的死，也不后悔离开伊尔梅特的路。可是……我希望我认识他不只是作为我杀掉的那个人。~
IF ~~ EXIT
END

IF ~~ chapter2
SAY ~我说不上喜欢与影贼结盟，可说实话，我看不出多少选择。~
IF ~~ EXIT
END

IF ~~ chapter3a
SAY ~若不是救爱蒙的任务最要紧，我不会屈尊与影贼合作。可我想这是必要的。~
IF ~~ EXIT
END

IF ~~ chapter3b
SAY ~若不是救你朋友的任务最要紧，我不会屈尊与影贼合作。可我想这是必要的。~
IF ~~ EXIT
END

IF ~~ chapter4
SAY ~这整座岛和它的住民都被邪恶包围，<CHARNAME>。我希望我们能尽快完成任务。~
IF ~~ EXIT
END

IF ~~ chapter6
SAY ~精灵们可以信任会与我们合作，虽然他们不愿说出全部真相。我们只能希望赢得他们的信任。~
IF ~~ EXIT
END

IF ~~ chapter7
SAY ~如今许多性命悬于一线，<CHARNAME>，包括你自己的。我们必须尽快阻止艾瑞尼卡斯。~
IF ~~ EXIT
END

IF ~~ f1.1
SAY ~（你的手指穿过塞琳柔软火红的发卷，一路拂到她的颈后。）~
IF ~~ EXIT
END

IF ~~ f1.2
SAY ~（塞琳抓住你的手，笑着把它轻轻按在自己脸颊上，然后放开。）~
IF ~~ EXIT
END

IF ~~ f1.3
SAY ~（塞琳满足地轻叹，任你触碰她赤褐色的发卷）~
IF ~~ EXIT
END

IF ~~ f1.4
SAY ~（笑）<CHARNAME>……现在真是做这个的时候吗？~
IF ~~ EXIT
END

IF ~~ f2.1
SAY ~（你的唇贴在她脸颊上时，塞琳微微泛红。）~
= ~<CHARNAME>……~
IF ~~ EXIT
END

IF ~~ f2.2
SAY ~（塞琳的皮肤光滑，微微带着汗的咸味。你退开时，她紧张地笑着。）~
IF ~~ EXIT
END

IF ~~ f2.3
SAY ~（在你退开之前，她捧住你的脸，回吻你。）~
IF ~~ EXIT
END

IF ~~ f2.4
SAY ~（笑）我做了什么，值得这个？~
IF ~~ EXIT
END

IF ~~ f3.1
SAY ~（她只是红了脸，带着浅笑把目光移开。）~
IF ~~ EXIT
END

IF ~~ f3.2
SAY ~哦，谢……谢谢你，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ f3.3
SAY ~（微笑）谢谢你的称赞。~
IF ~~ EXIT
END

IF ~~ f3.4
SAY ~而你是我见过最美、最迷人的女人……（脸红）哦，失礼了……~
IF ~~ EXIT
END

IF ~~ f3.5
SAY ~而你是我见过最伟大、最了不起的男人……（脸红）哦，失礼了……~
IF ~~ EXIT
END

IF ~~ f4.1
SAY ~（你抱住她时，塞琳颤了一下。）~
= ~哦！嗯，嗯嗯……~
IF ~~ EXIT
END

IF ~~ f4.2
SAY ~（你抱住她时，塞琳靠进你怀里，双手按在你背上。）~
IF ~~ EXIT
END

IF ~~ f4.3
SAY ~（她回抱你时，前倾把脸埋进你的头发里。）~
IF ~~ EXIT
END

IF ~~ f4.4a
SAY ~（塞琳满足地叹气，把头靠在你的肩上。）~
IF ~~ EXIT
END

IF ~~ f4.4b
SAY ~（塞琳满足地叹气，把头贴在你的胸口。）~
IF ~~ EXIT
END

IF ~~ f5.1
SAY ~哦，我会喜欢的。谢谢你，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ f5.2
SAY ~嗯，挺舒服的……你这手法很好，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ f5.3
SAY ~（塞琳松开盔甲的系带，在你手指在她肩上揉按时放松下来。）~
IF ~~ EXIT
END

IF ~~ f6.1
SAY ~哦，谢谢你，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ f6.2
SAY ~（微笑）你真是体贴，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ f6.3
SAY ~（塞琳回应着向你倾身，让你看清她那双黄绿色的眼睛。）~
IF ~~ EXIT
END

IF ~~ f6.4
SAY ~我很高兴至少你喜欢它们。~
IF ~~ EXIT
END

IF ~~ f7.1
SAY ~什么事，<CHARNAME>？~
IF ~~ EXIT
END

IF ~~ f7.2
SAY ~<CHARNAME>……~
IF ~~ EXIT
END

IF ~~ f7.3
SAY ~（微笑）我在。~ [C0SIR012]
IF ~~ EXIT
END

IF ~~ f7.4
SAY ~嗯？~
IF ~~ EXIT
END

IF ~~ f8.1
SAY ~（你挠她盔甲缝隙时，塞琳笑得弯下腰，笑得不自在。）~
IF ~~ EXIT
END

IF ~~ f8.2
SAY ~不，不，停下！太过了！~
IF ~~ EXIT
END

IF ~~ f8.3
SAY ~（塞琳打闹着把你的手拍开。）~
IF ~~ EXIT
END

IF ~~ f8.4
SAY ~（你挠她颈侧露出的皮肤时，塞琳笑着扭动。）~
IF ~~ EXIT
END

IF ~~ f9.1
SAY ~（塞琳吃完你给的巧克力后，挑逗地舔着嘴唇、吮着手指，然后带着羞怯的笑，用沾了巧克力的手指划过你的唇。）~
IF ~~ EXIT
END

IF ~~ f9.2
SAY ~（塞琳掰下一块，塞进你嘴里。）~
IF ~~ EXIT
END

IF ~~ f9.3
SAY ~嗯，正是我需要的……~
IF ~~ EXIT
END

IF ~~ f9.4
SAY ~（塞琳一手接过巧克力，另一手把你的手拉到唇边，舔你的手指。）~
IF ~~ EXIT
END

IF ~~ r1.1
SAY ~（塞琳热烈地回应你，把身体压向你。）~
IF ~~ EXIT
END

IF ~~ r1.2
SAY ~（你们终于分开时，塞琳拦住你，甜甜地舔你的嘴唇。）~
IF ~~ EXIT
END

IF ~~ r1.3
SAY ~（吻结束后，她不得不喘息。）<CHARNAME>……~
IF ~~ EXIT
END

IF ~~ r1.4
SAY ~唔嗯……~
IF ~~ EXIT
END

IF ~~ r2.1
SAY ~（塞琳的脸光滑温暖，你的手指拂过她的颧骨和眉骨时，她闭上了眼。）~
IF ~~ EXIT
END

IF ~~ r2.2
SAY ~（塞琳把你贴在她脸颊上的手握住，吻了它。）~
IF ~~ EXIT
END

IF ~~ r2.3
SAY ~（塞琳也回应着触碰你的脸，以轻柔的触感探索你的五官。）~
IF ~~ EXIT
END

IF ~~ r2.4
SAY ~（你的触碰让塞琳脸上泛红，你挑逗地抚过她的脸颊与下颌时，她的脸变得温热。）~
IF ~~ EXIT
END

IF ~~ r3.1
SAY ~（塞琳的指甲比一般人类女性略长且弯，可它们微微掐进你掌心时，感觉却很好。）~
IF ~~ EXIT
END

IF ~~ r3.2
SAY ~（塞琳的手形是女性的，却像战士的手一样有力、布满老茧。）~
IF ~~ EXIT
END

IF ~~ r3.3
SAY ~（塞琳回应着，把手指与你的交缠在一起。）~
IF ~~ EXIT
END

IF ~~ r3.4
SAY ~（你们牵着手走了很久，她才不舍地放开你。）~
IF ~~ EXIT
END

IF ~~ r4.1
SAY ~（听见你的话，你看见她眼里燃起渴望。）~
= ~我是你的，你何时想要我都行。~
IF ~~ EXIT
END

IF ~~ r4.2
SAY ~我希望你愿意兑现这话，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ r4.3
SAY ~（挑逗地）今晚？非得等那么久吗？~
IF ~~ EXIT
END

IF ~~ r4.4
SAY ~嗯，我会热切地等着，<CHARNAME>……~
IF ~~ EXIT
END

IF ~~ r5.1
SAY ~（微笑）听你说这话，意义比你能想象的更大，<CHARNAME>……~
IF ~~ EXIT
END

IF ~~ r5.2
SAY ~我也爱你……胜过我能说出的。~
IF ~~ EXIT
END

IF ~~ r5.3
SAY ~（虽然你已对她说过同样的话，可每次听到她似乎都很高兴。）~
IF ~~ EXIT
END

IF ~~ r5.4
SAY ~这是我唯一需要听的话，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ r6.1
SAY ~（她挑着一根眉毛，带着不太诚恳的笑。）~
= ~你若想看我身子，<CHARNAME>，不必编这样的借口。~
IF ~~ EXIT
END

IF ~~ r6.2
SAY ~我想那会是件愉快的消遣。是的……我会的。~
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("c0bathe")~ EXIT
END

IF ~~ r6.3
SAY ~（笑）若你没先来找我，我也许会问你同样的话……我们开始吧？~
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("c0bathe")~ EXIT
END

IF ~~ r6.4
SAY ~是的，不过我想最好还是私下做。~
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("c0bathe")~ EXIT
END

IF ~~ r7.1
SAY ~（塞琳的手放在你腰侧，你能感觉到她温热的呼吸落在你颈上。）~
IF ~~ EXIT
END

IF ~~ r7.2
SAY ~（即使塞琳穿着盔甲，她的身形仍玲珑娇小，你感觉到她从胸到纤细腰身的曲线。）~
IF ~~ EXIT
END

IF ~~ r7.3
SAY ~（笑）<CHARNAME>……我不确定我该不该觉得难为情。~
IF ~~ EXIT
END

IF ~~ r7.4a
SAY ~（你轻轻贴住她时，感觉到她的胸口在你胸前缓缓起伏，她用一根手指沿着你的胸膛划过。）~
IF ~~ EXIT
END

IF ~~ r7.4b
SAY ~（你轻轻贴住她时，感觉到她的胸口在你胸前缓缓起伏，她用一根手指沿着你的胸口划过。）~
IF ~~ EXIT
END

IF ~~ r7.5
SAY ~嗯……<CHARNAME>，我想再试一次这个……不穿这些盔甲和衣裳。~
IF ~~ EXIT
END

IF ~~ r8.1
SAY ~（你碰到她大腿内侧时，塞琳尖利地抽了口气，猛地抓住你的手。）~
= ~<CHARNAME>，求你……~
IF ~~ EXIT
END

IF ~~ r8.2
SAY ~啊啊……（你温柔地抚她时，塞琳舒服地闭上眼。）~
IF ~~ EXIT
END

IF ~~ r8.3
SAY ~（塞琳羞怯地想挪开，却还是让步，任你触碰她腿上没有护甲的部分。）~
IF ~~ EXIT
END

IF ~~ r8.4
SAY ~（塞琳握住你的手，没有推开，而是把它引到她双腿之间，轻声呻吟。）~
IF ~~ EXIT
END

IF ~~ p1.1
SAY ~我很好。怎么？你有什么需要我吗？~
IF ~~ EXIT
END

IF ~~ p1.2
SAY ~我在想我们前头的任务。~
IF ~~ EXIT
END

IF ~~ p1.3
SAY ~一切都好。你自己呢？~
IF ~~ EXIT
END

IF ~~ p1.4
SAY ~我……此刻有点走神。别在意我。~
IF ~~ EXIT
END

IF ~~ stringfix 
SAY ~是的，也许……给我一点时间。~ 
IF ~~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("C0RESET")~ EXIT 
END

// Questions

IF ~~ questions
SAY ~当然。你想问什么就问。~
+ ~OR(2)
Global("BardPlotOn","GLOBAL",5)
Global("BardPlotOn","GLOBAL",6)
GlobalGT("playquality","GLOBAL",0)
Global("C0SirenePIDPlay","GLOBAL",0)~ + ~我注意到那出图米什戏剧结尾时你几乎要落泪了。你真那么喜欢？~ DO ~SetGlobal("C0SirenePIDPlay","GLOBAL",1)~ + bardplay
+ ~Global("C0SirenePIDIlmater","GLOBAL",0) Alignment("C0Sirene",LAWFUL_GOOD)~ + ~你对追随伊尔梅特满意吗？~ DO ~SetGlobal("C0SirenePIDIlmater","GLOBAL",1)~ + ilmater
+ ~Global("C0SirenePIDHome","GLOBAL",0)~ + ~你可曾想念过家乡？~ DO ~SetGlobal("C0SirenePIDHome","GLOBAL",1)~ + home
+ ~Global("C0SirenePIDPaladin","GLOBAL",0)~ + ~你做圣武士多久了？~ DO ~SetGlobal("C0SirenePIDPaladin","GLOBAL",1)~ + paladin
+ ~Global("C0SirenePIDRadiantHeart","GLOBAL",0)~ + ~你觉得光辉之心骑士团怎么样？~ DO ~SetGlobal("C0SirenePIDRadiantHeart","GLOBAL",1)~ + radiantheart
+ ~Global("C0SirenePIDScars","GLOBAL",0)~ + ~你的疤还会疼吗？~ DO ~SetGlobal("C0SirenePIDScars","GLOBAL",1)~ + scars
+ ~Global("C0SirenePIDFood","GLOBAL",0)~ + ~你偏好什么样的食物？~ DO ~SetGlobal("C0SirenePIDFood","GLOBAL",1)~ + food
+ ~Global("C0SirenePIDSettle","GLOBAL",0)~ + ~你可曾想过安定下来？~ DO ~SetGlobal("C0SirenePIDSettle","GLOBAL",1)~ + settle
+ ~GlobalGT("C0SireneLovetalk","GLOBAL",16)
!Global("C0SirenePIDFirstLove","GLOBAL",1)
OR(2)
Global("C0SireneRomanceActive","GLOBAL",1)
Global("C0SireneRomanceActive","GLOBAL",2)~ + ~你能跟我讲讲你的初恋吗？~ + firstlove
+ ~Global("C0SirenePIDFirstLove","GLOBAL",1)
!Global("C0SirenePIDSecondLove","GLOBAL",1)
OR(2)
Global("C0SireneRomanceActive","GLOBAL",1)
Global("C0SireneRomanceActive","GLOBAL",2)~ + ~你能跟我讲讲你的第二段爱吗？~ DO ~SetGlobal("C0SirenePIDSecondLove","GLOBAL",1)~ + secondlove
+ ~Global("C0SireneRomanceActive","GLOBAL",2) Global("C0SirenePIDAppearance","GLOBAL",0)~ + ~我注意到你比平常更照顾自己的外表了。是什么带来了这变化？~ + appearance
+ ~Global("C0SireneRomanceActive","GLOBAL",2) Global("C0SirenePIDBhaalspawn","GLOBAL",0)~ + ~你可曾怀疑过爱上一个巴尔之子？~ + bhaalspawn
+ ~GlobalLT("C0SireneTsamon","GLOBAL",3)~ + ~你此刻对自己的信仰感觉如何？~ + faith
+ ~NumInPartyAliveGT(2)~ + ~我想问你一位同伴的事。~ + companions
++ ~再想想，我没什么想问的。~ EXIT
END

IF ~~ bardplay
SAY ~哦……是的，我提过我对虚构作品里的恋情有软肋吗？那出戏深深打动了我……我一生没见过那样的东西。~
IF ~GlobalLT("playmistake","GLOBAL",3)~ + bardplay1
IF ~!GlobalLT("playmistake","GLOBAL",3)~ EXIT
END

IF ~~ bardplay1
SAY ~你的演出也很出色，<CHARNAME>。有时很容易忘了你既是领袖也是个艺术家。~
IF ~~ EXIT
END

IF ~~ ilmater
SAY ~我……从没停下来想过这个。虽然我在伊尔梅特的祭司中间长大，可从来没人要求我信奉这信仰。敬拜哭泣之神是我自己的决定。~
= ~也许我若做了别的选择，我的人生会更容易。我对我如今的样子满意吗？我不知道，可我确实在帮人分担重负与苦难中得到满足。这就是为什么我继续服侍伊尔梅特，尽管有这一切职责。~
IF ~~ EXIT
END

IF ~~ home
SAY ~有时会……不过我并不真想念那些人，除了神殿的兄弟姐妹。他们一直对我戒备，即使在我发誓成为圣武士之后。~
= ~可有一个例外……村里的面包师是伊尔梅特的虔诚信徒，常来教堂。跟大多数村民不同，他一直待我很好，有时还给所有孩子带甜点。~
= ~当我被受苦圣战武士接纳时，除了祭司们，他是唯一恭喜我的人。可是……在我出发朝圣前不久，他去世了。~
= ~你呢，<CHARNAME>？你想念家乡吗？你上次回去已是好久之前了。~
++ ~我常想起烛堡。若我有得选，我现在就回去。~ + home1
++ ~那是很好的童年，可我不太想念它。~ + home1
++ ~你在开玩笑吗？我离开那天是我一生最快乐的时刻！~ + home1
END

IF ~~ home1
SAY ~我明白了……知道你的想法很有趣。可我们谈得够久了，该走了。~
IF ~~ EXIT
END

IF ~~ paladin
SAY ~到如今八年了，我想……可感觉像过了一辈子。我已有好一阵没停下来想过了多久。~
IF ~~ EXIT
END

IF ~~ radiantheart
SAY ~我没在他们中间待过，可据我所知，他们似乎是阿斯卡特拉城里唯一真正的道德支柱。我敬重他们，尽管他们……不肯妥协的守则。~
IF ~~ EXIT
END

IF ~~ scars
SAY ~有时会，是的。不过很少严重到妨碍我战斗……常在我歇息时，我会想起那些留下这些疤的战斗，重新体验那种痛。~
= ~你也许觉得这很傻，<CHARNAME>，可我的许多疤让我自豪，因为它们是为保护别人而换来的。~
IF ~~ EXIT
END

IF ~~ food
SAY ~我不是在富贵中长大的，<CHARNAME>。作为伊尔梅特教会的受监护者，我学会了珍惜祭司们花时间心力供的饭菜。~
= ~有时我会在野地里打猎，想给同伴弄些肉，可我从不太喜欢那个味道。我更喜欢鱼的味道，虽然我没钓鱼的耐性。~
IF ~~ EXIT
END

IF ~~ settle
SAY ~我会喜欢退出战斗、成家立业的前景，可我对我的骑士团有职责……对伊尔梅特有职责。只要还有人需要，我看不出自己能离开这种生活。~
IF ~OR(2)
Global("C0SireneRomanceActive","GLOBAL",1)
Global("C0SireneRomanceActive","GLOBAL",2)~ + settle2
IF ~!Global("C0SireneRomanceActive","GLOBAL",1)
!Global("C0SireneRomanceActive","GLOBAL",2)~ + settle3
END

IF ~~ settle2
SAY ~不过……若有人愿意在我身边安定下来，我不能否认那念头很诱人……也许足以诱我放下这种生活。~
IF ~~ EXIT
END

IF ~~ settle3
SAY ~何况，我怀疑别人会愿意在我身边过一辈子。不，我想我会一直做伊尔梅特的仆人，直到老死。~
IF ~~ EXIT
END

IF ~~ firstlove
SAY ~若你愿意……不过我必须警告你，这不是个快乐的故事。你真想知道？~
++ ~是的，我想。~ DO ~SetGlobal("C0SirenePIDFirstLove","GLOBAL",1)~ + firstlove1
++ ~也许改天吧。~ + again
END

IF ~~ firstlove1
SAY ~好罢。我的初恋……是我几年前认识的一位同伴。我那时才十九岁……离我离开家乡村子去朝圣大约才两年。~
= ~他是来自泰瑟的佣兵……一个年轻人，也许比我大两岁。我们是在去剑湾的路上相遇的，他当时给一支商队做护卫。~
= ~商队遭到一伙穴居人劫掠者袭击，护卫商队的许多人都受了伤。我帮忙处理他们的伤口，就是在那里遇见他的。~
++ ~他叫什么？~ + firstlove2
++ ~我没兴趣再听了。~ + again
END

IF ~~ firstlove2
SAY ~他叫凯尔。我们相遇之后，我跟着商人们走了一阵，不过我一直把自己的血脉藏着，怕因此被赶走。~
= ~可凯尔先发现了……有一天我离开队伍去洗澡，而他，那个爱拈花惹草的家伙，跟了我来。等我发现时，我已经进了水，没机会遮掩了。~
++ ~他什么反应？~ + firstlove3
++ ~哎哟。我希望你教训了他。~ + firstlove4
++ ~我不想再听了。~ + again
END

IF ~~ firstlove3
SAY ~他起初震惊，可我几乎没给他说话的时间。我那时更火爆，在一阵羞怒之中，我抓起包朝他抡去。~
IF ~~ + firstlove5
END

IF ~~ firstlove4
SAY ~*笑*我当然教训了，虽然我年轻时更火爆。我看见他时又怒又羞，一阵暴怒之下抓起包朝他抡去。~
IF ~~ + firstlove5
END

IF ~~ firstlove5
SAY ~我正中他的头，他向后踉跄，我这才清醒过来。我离开水去帮他，怕我把他伤得重了。~
= ~他醒过来后，只是笑着揭过。他说他震惊于我竟没杀他，说我反应得跟任何别的女人一样。他不信我的血让我有什么不同。~
= ~从那以后，我完全信任凯尔，随着时间我们变得亲近。~
++ ~他后来怎么了？~ + firstlove6
END

IF ~~ firstlove6
SAY ~我……我说过这故事没有圆满结局，对吧？~
= ~商队走完行程后，凯尔和我跟他们分了道，我们一起旅行。之后不久我们才成为恋人，可是……~
= ~我们在海岸大道路上遇上一伙阿萨多尔的奴隶军。我们人数是一比四，虽然我们打败了他们，可凯尔……胸口中了一支毒箭。~
= ~我觉得我的命那时也要结束了。我试着救他，可最后，我只能抱着他，减轻他离世的痛苦。~
++ ~对不起。那一定很可怕。~ + firstlove7
++ ~复仇是你杀阿萨多尔的理由吗？~ + firstlove8
END

IF ~~ firstlove7
SAY ~我……谢谢你听我说，<CHARNAME>。除你之外我没跟任何人讲过这故事……说出来我觉得好受了些。~
IF ~~ EXIT
END

IF ~~ firstlove8
SAY ~是凯尔的死驱我去取阿萨多尔的命，是的……可若给我选择，我无论如何也会杀他。复仇没给我带来任何安宁。~
IF ~~ + firstlove7
END

IF ~~ secondlove
SAY ~我提过那个吗？一定是说漏了嘴。无论如何，讲出来我看没什么害处。~
= ~这故事比上一个结局好些……她叫阿谢拉，是苏妮的女祭司。~
= ~我说不上这是有趣的故事。我们相遇在我为凯尔复仇很久之后，而她……在我一次愚蠢举动几乎送命之后救了我。~
= ~像凯尔一样，她从不因我的血评判我，还鼓励我拥抱美。渐渐地，我开始在意她。~
++ ~她美吗？~ + secondlove2
++ ~她后来怎么了？~ + secondlove3
END

IF ~~ secondlove2
SAY ~阿谢拉是个大美人，她的同僚祭司说她蒙苏妮亲赐美貌。可她告诉我，给她美的是她的用心，而非神力干预，说只要我肯尝试，我也能如此。~
= ~她有给人带来欢愉的才能，我想那就是我……被她吸引的原因，胜过她的美貌。~
IF ~~ + secondlove3
END

IF ~~ secondlove3
SAY ~我们终究分了道，不过是和气分手。我仍有我的朝圣，虽然我不愿分离，可我知道那必定发生。不过……~
= ~我离开前一天受了伤，被送回苏妮神殿。阿谢拉替我处理伤口，然后……我们一起过了那一夜。~
++ ~你想再见她吗？~ + secondlove4
++ ~我们谈够了。走吧。~ EXIT
END

IF ~~ secondlove4
SAY ~我会想，是的，不过能否重燃我们的关系……我怀疑。我离开时祈祷她能另寻爱与陪伴。即使如今，我……仍希望如此。~
IF ~~ EXIT
END

IF ~~ appearance
SAY ~嗯……*脸红*我真的有吗？我没注意到任何变化……也许你弄错了。~
++ ~那我闻到的是什么？是香水吗？~ + appearance1
++ ~不，我想我没有。你的头发比平常整齐。也更亮。~ + appearance2
++ ~真的？那我们上次住旅店时，你忽然换了衣着是怎么回事？~ + appearance3
++ ~也许我有。算了。~ EXIT
END

IF ~~ appearance1
SAY ~不——不！那只是……治伤的药膏。那一定就是你闻到的味道。~
++ ~你撒谎撒得真糟，塞琳。为什么不干脆说实话？我保证不笑。~ + appearance4
++ ~当——然。~ + appearance4
++ ~随便吧……~ EXIT
END

IF ~~ appearance2
SAY ~我……只是上次有个敌人差点在战斗中抓住它，所以需要剪短修整。它长得有点太长了。~
++ ~你撒谎撒得真糟，塞琳。为什么不干脆说实话？我保证不笑。~ + appearance4
++ ~当——然。~ + appearance4
++ ~随便吧……~ EXIT
END

IF ~~ appearance3
SAY ~那……那是因为那天比平常暖。所以我才……~
++ ~你撒谎撒得真糟，塞琳。为什么不干脆说实话？我保证不笑。~ + appearance4
++ ~当——然。~ + appearance4
++ ~随便吧……~ EXIT
END

IF ~~ appearance4
SAY ~*叹气*这不行。是的，我近来……更仔细地照顾自己了，好能……让你动心。~
++ ~我知道。你这样花心思让我受宠若惊。~ + appearance5
++ ~你不必为我改变自己。我就喜欢你现在的样子。~ + appearance5
END

IF ~~ appearance5
SAY ~*脸红*谢谢你，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ bhaalspawn
SAY ~*微笑*我为什么要？我知道你是谁，正如你看穿了我的血。若我因你的血脉评判你，那我就是伪君子。~
IF ~~ EXIT
END

IF ~~ faith
SAY ~这问题真古怪，<CHARNAME>……不过我近来确实常想我在伊尔梅特的信仰这件事。~
IF ~GlobalGT("C0SireneFaith","GLOBAL",5)~ + maxfaith
IF ~GlobalLT("C0SireneFaith","GLOBAL",6) GlobalGT("C0SireneFaith","GLOBAL",0)~ + goodfaith
IF ~Global("C0SireneFaith","GLOBAL",0)~ + midfaith
IF ~GlobalLT("C0SireneFaith","GLOBAL",0) GlobalGT("C0SireneFaith","GLOBAL",-6)~ + badfaith
IF ~GlobalLT("C0SireneFaith","GLOBAL",-5)~ + minfaith
END

IF ~~ maxfaith
SAY ~我的信仰过去也许动摇过，可是……你的支持给了我自信，让我能为我服侍我的神而自豪。为此谢谢你，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ goodfaith
SAY ~我承认还有些疑虑，可是……我正慢慢开始明白服侍伊尔梅特真正意味着什么。也许随着时间，我会抛下剩下的不确定。~
IF ~~ EXIT
END

IF ~~ midfaith
SAY ~我很……矛盾，<CHARNAME>。也许将来我能给你更好的答案。~
IF ~~ EXIT
END

IF ~~ badfaith
SAY ~我的疑虑开始质疑我是否配做伊尔梅特的仆人。事情也许会有变化，可是……我在想我还能走这条路多久。~
IF ~~ EXIT
END

IF ~~ minfaith
SAY ~这话也许听着亵渎，可是……我开始怀疑服侍伊尔梅特是否真是我该扮演的角色。有时我想……我是否该考虑走自己的路，不受神的规则控制。~
IF ~~ EXIT
END

// Companions

IF ~~ companions
SAY ~当然……为你，我会尽力如实回答。~
+ ~InParty("Aerie")~ + ~你觉得艾黎怎么样？~ + aerie
+ ~InParty("Anomen") Global("AnomenIsKnight","GLOBAL",1)~ + ~你觉得阿诺门怎么样？~ + anomengood
+ ~InParty("Anomen") Global("AnomenIsNotKnight","GLOBAL",1)~ + ~你觉得阿诺门怎么样？~ + anomenbad
+ ~InParty("Anomen") !Global("AnomenIsNotKnight","GLOBAL",1)
!Global("AnomenIsNotKnight","GLOBAL",1)~ + ~你觉得阿诺门怎么样？~ + anomenneutral
+ ~InParty("Cernd")~ + ~你觉得瑟恩德怎么样？~ + cernd
+ ~InParty("Edwin")~ + ~你觉得艾德温怎么样？~ + edwin
+ ~InParty("E3Fade")~ + ~你觉得费德怎么样？~ + fade
+ ~InParty("L#Fou")~ + ~你觉得弃儿怎么样？~ + foundling
+ ~InParty("C0Gley")~ + ~你觉得格蕾雅怎么样？~ + gleya
+ ~InParty("HaerDalis")~ + ~你觉得海尔达利怎么样？~ + haerdalis
+ ~InParty("Imoen") Global("C0SirenePartyBG1","GLOBAL",1)~ + ~你觉得爱蒙怎么样？~ + imoen1
+ ~InParty("Imoen") !Global("C0SirenePartyBG1","GLOBAL",1)~ + ~你觉得爱蒙怎么样？~ + imoen2
+ ~InParty("Jaheira")~ + ~你觉得贾希拉怎么样？~ + jaheira
+ ~InParty("Jan")~ + ~你觉得扬怎么样？~ + jan
+ ~InParty("Keldorn")~ + ~你觉得凯尔登怎么样？~ + keldorn
+ ~InParty("Korgan")~ + ~你觉得科根怎么样？~ + korgan
+ ~InParty("Mazzy")~ + ~你觉得玛兹怎么样？~ + mazzy
+ ~InParty("Minsc")~ + ~你觉得明斯克怎么样？~ + minsc
+ ~InParty("Nalia")~ + ~你觉得娜莉亚怎么样？~ + nalia
+ ~InParty("Neera")~ + ~你觉得妮拉怎么样？~ + neera
+ ~InParty("C0PaiNa")~ + ~你觉得派娜怎么样？~ + paina
+ ~InParty("Rasaad")~ + ~你觉得拉萨德怎么样？~ + rasaad
+ ~InParty("Viconia")~ + ~你觉得维康尼亚怎么样？~ + viconia
+ ~InParty("Valygar")~ + ~你觉得瓦里格怎么样？~ + valygar
+ ~InParty("Yoshimo")~ + ~你觉得吉野怎么样？~ + yoshimo
+ ~InParty("YxYve")~ + ~你觉得伊薇特怎么样？~ + yvette
++ ~算了。我不想知道。~ EXIT
END

IF ~~ aerie
SAY ~我非常在意她，可同时我有时又觉得自己保护得过头，担心这种生活的风险。这对她不公平。~
IF ~~ EXIT
END

IF ~~ anomengood
SAY ~骑士身份很适合他。他是个可敬的同伴，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ anomenbad
SAY ~我不能宽恕他所做的事，<CHARNAME>。我会接纳他为同伴，可你不会想听我对他的看法。~
IF ~~ EXIT
END

IF ~~ anomenneutral
SAY ~他不信任我，我们的信仰也不合，可我能同情他的梦想。~
IF ~~ EXIT
END

IF ~~ cernd
SAY ~我相信他是个好人……即使我不理解他。~
IF ~~ EXIT
END

IF ~~ edwin
SAY ~我不信任他，<CHARNAME>。他只忠于他自己。~
IF ~~ EXIT
END

IF ~~ fade
SAY ~我们几乎没有共同之处，可我仍觉得与她有种亲近。我希望有一天能赢得她的友谊。~
IF ~~ EXIT
END

IF ~~ foundling
SAY ~说实话，我不能完全信任他。他在邪恶的阴影里生活、成长……而我说不上喜欢那邪恶在他心里养出的力量。~
IF ~~ EXIT
END

IF ~~ gleya
SAY ~我对她的精神与洒脱有种古怪的钦佩。~
IF ~~ EXIT
END

IF ~~ haerdalis
SAY ~我觉得他颇迷人，虽然他那虚无主义的理念让人有些不舒服。~
IF ~~ EXIT
END

IF ~~ imoen1
SAY ~她……以伊尔梅特之名，<CHARNAME>，她跟我记得的那个女孩太不一样了。我无法想象是怎样可怕的经历把她逼成这样。~
IF ~~ EXIT
END

IF ~~ imoen2
SAY ~想到可能把她逼到如今地步的那些事，我就不寒而栗。虽然我不认识她，可我能看出她从前必定是个怎样的年轻女孩的痕迹……~
IF ~~ EXIT
END

IF ~~ jaheira
SAY ~我钦佩她的自律，也珍视她的友谊。~
IF ~~ EXIT
END

IF ~~ jan
SAY ~我不知道该怎么应付他那些絮叨，<CHARNAME>。我不想冒犯他，可这怎么忍得住？~
IF ~~ EXIT
END

IF ~~ keldorn
SAY ~能在他身边同行作战是种荣幸，虽然我觉得这超过我应得的。我希望我能从他的榜样中学到东西。~
IF ~~ EXIT
END

IF ~~ korgan
SAY ~我不能赞同你留着他的决定，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ mazzy
SAY ~她是位亲密的朋友，也是坚定的战友。我对她只有最真诚的敬重与钦佩。~
IF ~~ EXIT
END

IF ~~ minsc
SAY ~他是位可贵的朋友，心地纯正。我很满足能有他作伴。~
IF ~~ EXIT
END

IF ~~ nalia
SAY ~我说不上曾这样亲近地认识多少贵族。她……跟我预想的不一样。~
IF ~~ EXIT
END

IF ~~ neera
SAY ~她是位亲爱的朋友。尽管她的魔法有危险，我仍喜欢她。~
IF ~~ EXIT
END

IF ~~ paina
SAY ~她可以很残忍，可我愿相信她也能善良……我还没完全理解她。~
IF ~~ EXIT
END

IF ~~ rasaad
SAY ~我敬重他的技艺与他信仰的信条，可他追寻复仇这一点让我担忧。~
IF ~~ EXIT
END

IF ~~ viconia
SAY ~有个莎尔信徒在，我很不安，可是……我知道她的一生很残酷。我对她的感受……很矛盾，我只能说这些。~
IF ~~ EXIT
END

IF ~~ valygar
SAY ~他是个难交谈的人，<CHARNAME>，可他确实有颗善良的心。我不会轻视他的友谊。~
IF ~~ EXIT
END

IF ~~ yoshimo
SAY ~尽管他干那一行，他看起来还挺讨人喜欢，我古怪地有点喜欢他。~
IF ~~ EXIT
END

IF ~~ yvette
SAY ~我不能否认我对她的出身有戒心……可我确实喜欢有她作伴。她让我想起我……曾经认识的某个人，那人对我很重要。~
IF ~~ EXIT
END

END // END for APPEND