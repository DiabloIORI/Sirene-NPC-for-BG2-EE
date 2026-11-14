BEGIN BC0SIR25

CHAIN
IF ~InParty("Aerie")
See("Aerie")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneAerieImoenToB","GLOBAL",0)~ THEN BIMOEN25 C0SireneAerieImoen
~怎么样？你觉得如何？~ [C0BLANK]
DO ~SetGlobal("C0SireneAerieImoenToB","GLOBAL",1)~
== BAERIE25 ~我——我觉得还是很难看……~
== BIMOEN25 ~唉，别这样。我们可以，呃……唉，见鬼。我在骗谁呢？你说得对，这整件东西难看得要命。我们到底在干什么，艾黎？~
== BAERIE25 ~我不知道……我想刺绣终究不适合我们。也许下次路过集市时，我们就买点现成的好东西吧？~
== BIMOEN25 ~可那必须是我们亲手做的东西。不然就不算一份像样的礼物，不算一份用心的劳作，对吧？~
== BAERIE25 ~你……你说得对。嘻嘻，你对这事真上心，爱蒙。~
== BIMOEN25 ~那当然！她为我们俩累得筋疲力尽，该得到点好东西。~
== BAERIE25 ~我明白你的意思。这几乎就像有个大姐一样。~
== BIMOEN25 ~正是。所以才必须做得完美！来吧，把这破布扔了，我们再试一次——~
== BC0SIR25 ~艾黎？爱蒙？怎么了？~
== BIMOEN25 ~呀！~
== BAERIE25 ~你——你好，塞琳……~
== BC0SIR25 ~你们俩落在后面了。出什么事了吗？~
== BIMOEN25 ~没有！~
== BAERIE25 ~我们只是，嗯……~
== BC0SIR25 ~你脚边……有东西，爱蒙。~
== BIMOEN25 ~哦，这个？只是一些，呃……~
== BAERIE25 ~也许我们该说实话，爱蒙。我们在……想给你做点东西，塞琳。~
== BC0SIR25 ~给……给我？~
== BIMOEN25 ~是啊。喏，给你。不过做得很难看，所以你最好，呃，赶紧扔了。这样我们才能给你做个更好的。~
== BC0SIR25 ~不，不，它很美。它……*抽鼻子*~
== BAERIE25 ~你——你哭什么？真有那么糟吗？~
== BC0SIR25 ~原谅我，我只是……太受触动了。谢谢你们俩，真的……~
== BIMOEN25 ~唉，好了好了。我们只是想回报你一直以来对我们的照顾。~
== BC0SIR25 ~谢谢你们，爱蒙、艾黎。我已经……这么在乎你们俩了……~
== BIMOEN25 ~我们也在乎你，大姐。等等，我们现在这么叫，你不介意吧？~
== BC0SIR25 ~当然不……我再高兴不过了。~
== BIMOEN25 ~好啦！怎么样，艾黎？~
== BAERIE25 ~嘻嘻。那我们走吧！~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneAerieToB","GLOBAL",0)~ THEN BAERIE25 C0SireneAerieToB
~你感觉怎么样，塞琳？~ [C0BLANK]
DO ~SetGlobal("C0SireneAerieToB","GLOBAL",1)~
== BC0SIR25 ~我很好，艾黎。你有什么需要吗？~
== BAERIE25 ~不不。*轻笑*我只是早就想问你这句话了。你照顾了我这么久，所以这回我想帮帮你。~
== BC0SIR25 ~你帮过我……不，你无数次帮过我们所有人，艾黎。就算你自己没察觉，你也已经变强了……比我更强。~
== BAERIE25 ~哈哈！那不可能。你这么说只是让我好受些。~
== BC0SIR25 ~不，这是真的，艾黎。我们的敌人越来越强，我许多次濒临死亡，可每一次，都是你救了我。我想事到如今，我欠你的命已经多得数不清了。~
== BAERIE25 ~我不敢相信竟有那么多次……每当我看见你受伤，我就……做我能做的一切。拥有这么大的力量真奇怪。可它感觉……很平常。~
== BC0SIR25 ~你变得这么强了，艾黎，而且……我为你骄傲。~
== BAERIE25 ~谢谢你，塞琳。我希望……我不必再依赖你，也希望你能开始依赖我。从今往后我们互相扶持。~
== BAERIE25 IF ~Global("AerieRomanceActive","GLOBAL",2)
GlobalGT("ExpLoveTalk","LOCALS",13) GlobalLT("ExpLoveTalk","LOCALS",18)~ THEN ~不过，有一件事我近期也许……需要仰仗你。~
== BC0SIR25 IF ~Global("AerieRomanceActive","GLOBAL",2)
GlobalGT("ExpLoveTalk","LOCALS",13) GlobalLT("ExpLoveTalk","LOCALS",18)~ THEN ~什么事，艾黎？~
== BAERIE25 IF ~Global("AerieRomanceActive","GLOBAL",2)
GlobalGT("ExpLoveTalk","LOCALS",13) GlobalLT("ExpLoveTalk","LOCALS",18)~ THEN ~你肯定知道我，还有……还有<CHARNAME>。也许会有那么一刻，我需要你的支持……到时候我能指望你吗？~
== BC0SIR25 IF ~Global("AerieRomanceActive","GLOBAL",2)
GlobalGT("ExpLoveTalk","LOCALS",13) GlobalLT("ExpLoveTalk","LOCALS",18)~ THEN ~当然，艾黎，可到底是什么——~
== BAERIE25 IF ~Global("AerieRomanceActive","GLOBAL",2)
GlobalGT("ExpLoveTalk","LOCALS",13) GlobalLT("ExpLoveTalk","LOCALS",18)~ THEN ~以后。我以后告诉你……等只有我们两个人的时候。~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!Alignment("Anomen",CHAOTIC_NEUTRAL)
Global("C0SireneAnomenToB","GLOBAL",0)~ THEN BANOME25 C0SireneAnomenToB
~女士……可否暂且满足一下我的好奇？~ [C0BLANK]
DO ~SetGlobal("C0SireneAnomenToB","GLOBAL",1)~
== BC0SIR25 ~当然。你需要什么？~
== BANOME25 ~我……希望这话不会冒犯你，可我必须问……你可曾主动求取过他人的性命？~
== BC0SIR25 ~……~
== BANOME25 ~以海姆之名，我不该问这种不知轻重的问题。是我的错，我的朋友。我不会再打扰你了。~
== BC0SIR25 ~不，阿诺门……等等。我会告诉你。~
== BANOME25 ~你会？那我多谢了。~
== BC0SIR25 ~我……过去确曾有过杀意。对那些让我所爱之人受苦的人，对那些把不义加于无辜者的人，我感受过憎恨。对那些亏待过我的人……亏待过别人的人，我寻求过复仇。我不否认。~
== BANOME25 ~我明白了。请原谅我这么说，但看来我们终究没那么不同。~
== BC0SIR25 ~也许吧。可你为何要问这个？~
== BANOME25 ~自从受封骑士以来，我不断反思自己过往的行径……我逐渐意识到，我的所作所为也许并不像我所以为的那样公正。~
== BANOME25 ~我一贯主张对心怀恶意者绝不宽恕。许多我认为最卑劣不过的人倒在我的剑下，而我从未为此感到一丝愧疚。~
== BANOME25 ~可看过你的榜样之后……对那些我本会视为无可救药的人施以宽恕，无论敌人多恶，也不从杀戮中取一丝快意……我觉得这影响了我。如今我开始怀疑，我这一直以来是否都错了。~
== BC0SIR25 ~不，阿诺门。你并没有……至少我不认为你错了。真相只有神明知道。而海姆已经对你的行止显出他的眷顾，不是吗？~
== BANOME25 ~唉，确实如此。也许我们俩谁都没有错。我只能遵循海姆的指引，正如你遵循伊尔梅特。多谢你拨冗，女士。~
EXIT

CHAIN 
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneViconiaToB","GLOBAL",0)~ THEN BC0SIR25 C0SireneCerndToB
~我想……我昨夜又做梦了。~ [C0BLANK]
DO ~SetGlobal("C0SireneViconiaToB","GLOBAL",1)~
== BCERND25 ~真的？这次你清楚地记起什么了吗？~
== BC0SIR25 ~记起一些，可是……原谅我，瑟恩德，我实在再用不下去这个了。~
== BCERND25 ~若那些影像太过压人，我随时可以……~
== BC0SIR25 ~不，不是那个缘故。你的香帮我让影像清晰起来。我看不见脸，可我能听见声音……~
== BC0SIR25 ~我醒来时什么都记不得，可我的脸被泪水打湿，心里疼得厉害。我怕……埋在心底深处的那些记忆，是我不愿回想的。~
== BCERND25 ~我们在学会走路之前或许会跌倒无数次，可我们从不考虑失败，只是一次又一次地尝试，直到成功。正如行走的本能人人皆有，记忆的本能也在你心里。我仍觉得你放弃得太早了。~
== BC0SIR25 ~我不想放弃，可是……~
== BCERND25 ~留着这香吧。我怕正如雏鸟终有一日要离巢，我们分别的日子也快到了。你若改变主意，我不愿你留下任何遗憾。~
== BC0SIR25 ~就依你所说，瑟恩德。我会留住你这份礼物。~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneEdwinToB","GLOBAL",0)~ THEN BEDWIN25 C0SireneEdwinToB
~嗯，我倒是惊讶，魔崽子。尽管你对自己血脉的力量显然毫无本领，看来你终究还有点用处。~ [C0BLANK]
DO ~SetGlobal("C0SireneEdwinToB","GLOBAL",1)~
== BC0SIR25 ~你的话里满是居高临下，艾德温。我倒宁愿你闭口不言。~
== BEDWIN25 ~如此不知感恩的放肆，我可是给了你一句称赞。（虽然你也许蠢得领会不到……）你或许毫无清醒头脑的痕迹，可当肉盾，你……倒是意外地称职。~
== BC0SIR25 ~我的身体与技艺，是为守护他人而磨炼的。我唯一的遗憾，是不得不把它浪费在你这种人身上。~
== BEDWIN25 ~可你照样在做。真有意思。~
== BC0SIR25 ~我向你保证，这不会长久。总有一天我们或许会站在战场两端……那时你会看到一个完全不同的我。~
== BEDWIN25 ~也许吧。不过我该警告你，你只会有一个机会。~
EXIT

CHAIN 
IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneHaerdalisToB","GLOBAL",0)~ THEN BC0SIR25 C0SireneHaerdalisToB
~海尔达利……我觉得我们该谈一谈，你和我。~ [C0BLANK]
DO ~SetGlobal("C0SireneHaerdalisToB","GLOBAL",1)~
== BHAERD25 ~当然。我们是要练一首二重唱？还是这将是一场互相倾诉情意？~
== BC0SIR25 ~……~
== BHAERD25 ~啊……我看见你偏爱摆出的那副阴沉面容了。也许来首歌安抚你的心灵？~
== BC0SIR25 ~不，请你停下。这一回我希望你认真。~
== BHAERD25 ~要我收起诙谐？那对我这颗心犹如一根倒刺，我可爱的苍鹰！这只麻雀若没了机智，还剩下什么？~
== BC0SIR25 ~让我忧心的正是你的机智。这一路上我们见的血腥太多了，可你似乎一点也不为所扰。不……你似乎还乐在其中。~
== BHAERD25 ~毁灭是美丽的事物，亲爱的。可怕，却依然美丽。身为艺人，我须懂得欣赏它。~
== BC0SIR25 ~死亡没有什么美丽的，海尔达利。你对那些倒下的人就毫无感受吗？~
== BHAERD25 ~我同情，可万物终须归于虚无。那些有幸先行踏上此途的人，我该为他们悲伤吗？~
== BC0SIR25 ~你对这……理念的认命，我永远无法理解。~
== BHAERD25 ~你无需理解，塞琳。在我们察觉之前，熵已将我们尽数带走。~
EXIT

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneImoenToB","GLOBAL",0)~ THEN BC0SIR25 C0SireneImoenToB
~爱蒙？你不舒服吗？~ [C0BLANK]
DO ~SetGlobal("C0SireneImoenToB","GLOBAL",1)~
== BIMOEN25 ~嗯？不——不，一点也没有。我跟平常一样好得很，嘿——呃。你怎么会这么想？~
== BC0SIR25 ~也许是我看错了。你只是……不像平常的你。~
== BIMOEN25 ~哦。嗯，你知道的。我只是一直在试着更严肃些。有点像你那样，我想。~
== BC0SIR25 ~像我？~
== BIMOEN25 ~是啊，你知道的。那套一本正经又无私的把戏。「我会保护我的朋友们！」诸如此类。~
== BC0SIR25 ~我……我在你听来真是那样吗？~
== BIMOEN25 ~嘿嘿，只是逗你。嗯……我也许夸张了点，可……我说想学你，是真心的。~
== BC0SIR25 ~可……为什么？你没有必要改变自己。~
== BIMOEN25 ~嗯，我也没到那个地步。只是……你现在成了我的榜样。像个大姐一样。~
== BC0SIR25 ~我……我没意识到你这么看我，爱蒙。我很受宠若惊。~
== BIMOEN25 ~嘿嘿。既然我说了，你最好就照这角色演。我等着被你宠呢！~
== BC0SIR25 ~（笑）我会尽力的。~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneJaheiraToB","GLOBAL",0)~ THEN BJAHEI25 C0SireneJaheiraToB
~塞琳，有件很重要的事我们必须谈，越早越好。~ [C0BLANK]
DO ~SetGlobal("C0SireneJaheiraToB","GLOBAL",1)~
== BC0SIR25 ~我在听，贾希拉。~
== BJAHEI25 ~我希望如此，因为这关乎整个队伍。你已经变强了，我们许多人都在磨难中开始依赖你。~
== BC0SIR25 ~我——你过奖了。我只是做了我一贯做的事。~
== BJAHEI25 ~问题就在这里。你不能继续这样不顾性命地冒险。若我们失去如今这样的你，我怕那意味着我们所有人的灭亡。~
== BC0SIR25 ~那我难道该松懈职守，转而把<CHARNAME>或你置于险境吗？不，我不能那样。~
== BJAHEI25 ~你把我们看得这么轻吗，塞琳？我们不是需要你时时保护的弱者。我们是一个队伍，必须学会互相依靠。~
== BJAHEI25 IF ~Global("C0SireneRomanceActive","GLOBAL",2)~ THEN ~且不说这个，你若倒下，你觉得<CHARNAME>会如何反应？~
== BJAHEI25 ~你不能把整个世界的重量都担在肩上，塞琳，无论你多想这么做。你的朋友们就在这里分担这份重负。~
== BC0SIR25 ~你所说……确有道理，贾希拉。原谅我，我一直太过自负。~
== BJAHEI25 ~感谢西尔瓦纳斯，你终于开始明白道理了。我希望这是我们最后一次谈这事。~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneJanToB","GLOBAL",0)~ THEN BJAN25 C0SireneJanToB
~塞琳，我的姑娘，闻闻这个。我保证它立马就能解决你的问题！~ [C0BLANK]
DO ~SetGlobal("C0SireneJanToB","GLOBAL",1)~
== BC0SIR25 ~（伊尔梅特保佑我……）呃，扬……谢谢你，可我觉得这种调料不适合我。~
== BJAN25 ~哦不不，这不是吃的，小姑娘。嗯，我猜你也能吃，可你放出的气能把一头牛熏晕。不，这是我詹森家祖传秘方的祛疤膏。你打了那么多仗，我想你能用掉很多。来，瞧瞧！闻着没那么糟。~
== BC0SIR25 ~我……想试试一点也不碍事……（神明啊，这东西真冲！）~
== BJAN25 ~瞧，是不是感觉挺舒服？而且对你这样的小姑娘，它还能兼作护肤霜！我保证，用上一周，你脸颊上的光润无人能及！嗯，副作用包括偶尔起疹子和变色，不过以你的肤色，我确信没人看得出来。~
== BC0SIR25 ~（我……要把这个涂在脸上？）~
== BJAN25 ~拿去，收下吧！这种东西我多的是。我用我那便携芜菁农场的收成做了一整批。至少还能再用上一两个月。~
== BC0SIR25 ~谢——谢谢你，扬，可我怕只能推辞了。我的疤，呃，有精神上的用途，把它们去掉是不对的。~
== BJAN25 ~那是你的损失。那我想我就留着自己用吧。~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneKeldornToB","GLOBAL",0)~ THEN BKELDO25 C0SireneKeldornToB
~我们一起走了很远，不是吗，塞琳？虽然战事越来越凶，我们仍坚持下来。而我看着你从这些经历中变得更强。~ [C0BLANK]
DO ~SetGlobal("C0SireneKeldornToB","GLOBAL",1)~
== BC0SIR25 ~谢谢你，先生，可是……您呢？如你所说，我们的敌人只增不减，越来越强。以您的年纪，我有时会担心……~
== BKELDO25 ~你怕这副老骨头会倒在战阵之中？我是老了，没错，可还没那么衰弱。~
== BC0SIR25 ~不，我不是想暗示——~
== BKELDO25 ~哈，别担心，孩子。我知道你只是关心我的健康与安危。有一刻我几乎以为自己在跟我女儿们说话。~
== BC0SIR25 ~你的女儿们……你想她们吗，凯尔登爵士？你上次见她们一定已是好几个月前了。~
== BKELDO25 ~唉……我日日夜夜都在想她们。若托姆慈悯，也许我还能活着再见她们一面。~
== BC0SIR25 ~您会的，先生。我会确保如此。如果您能在我身上看见您的女儿们，那么……我就说出心里话。我从不知我父亲是谁，可是……再没有比被您这样的人抚养长大更让我愿意的了。~
== BKELDO25 ~塞琳……哈，你似乎一心要逼出这老傻瓜的眼泪。谢谢你，孩子。你这话给我的荣耀，比你知道的更多。~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("Korgan",CD_STATE_NOTVALID)
Global("C0SireneKorganToB","GLOBAL",0)~ THEN BKORGA25 C0SireneKorganToB
~唉，我得承认，魔崽子，我本以为你是个胆小的娘们，上不了前线，可我不得不承认你用刀挺利索。~ [C0BLANK]
DO ~SetGlobal("C0SireneKorganToB","GLOBAL",1)~
== BC0SIR25 ~我想我该为这句称赞感激你，尤其是从你嘴里说出来，科根，可我怀疑话还没说完。~
== BKORGA25 ~嘿，可惜你脑袋里塞满石头，不然我几乎会觉得你还算能忍。~
== BC0SIR25 ~那么归根结底，你对我的看法几乎没变？~
== BKORGA25 ~你听我说话了没有，娘们，还是你耳朵跟你脑袋一样塞满了东西？我说你打仗不错，所以你终究不算全无用处。你该庆幸我没趁你睡觉割了你喉咙。~
== BC0SIR25 ~嗯，我没忘记你如何对待你从前的同伴。我确实该庆幸，你没对现在这些人做同样的事。尽管我愿信任我的同伴……我却不能把同样的信任给你，科根。~
== BKORGA25 ~哼。我从前的同伴是自找的下场。至于你，只要你出力干活，瘦成那样也无妨，你没有危险……目前。嘿嘿。~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneMazzyToB","GLOBAL",0)~ THEN BMAZZY25 C0SireneMazzyToB
~我的朋友，你对将来有什么打算吗？等我们为<CHARNAME>效力的事结束之后？~ [C0BLANK]
DO ~SetGlobal("C0SireneMazzyToB","GLOBAL",1)~
== BC0SIR25 ~不，我……我没想那么远。~
== BMAZZY25 ~嗯，欢迎你跟我一起北上。去深水城，也许，如果我们能走那么远。~
== BMAZZY25 IF ~Global("C0SireneRomanceActive","GLOBAL",2)~ THEN ~我虽知道你我对<CHARNAME>的情意，但你若宁愿留在他身边，我会祝福你。~
== BC0SIR25 ~去北方……就我们两个？~
== BMAZZY25 ~也许一个小冒险团，跟现在这些人差不多。这样你可满意？~
== BC0SIR25 ~我——我再没有比这更愿意的了，玛兹，真的……可我的存在不会给你带来麻烦吗？~
== BMAZZY25 ~当然不会。我绝不会容许区区偏见侵扰我们的友谊。不管别人怎么看你，能继续与你并肩冒险，是我至高的荣幸。~
== BC0SIR25 ~不……我很领情，我的朋友，可我怕我们的道路不同。我必须继续做我神的事工。你注定要成就伟业，玛兹。我不是。~
== BMAZZY25 ~别这么说，塞琳。我们是平等的同伴，不是棋盘上的棋子。~
== BC0SIR25 ~也许吧，可是……我们在人生中求的东西不同。我不像你那样渴求荣耀或冒险。我们已结下深厚的友谊，玛兹，我不希望我们各自的愿望拿这份友谊去冒险。我希望你能明白。~
== BMAZZY25 ~我明白了……那么是什么都不能让你改变主意了？就依你吧，可记住我的门永远为你敞开。~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneMinscToB","GLOBAL",0)~ THEN BMINSC25 C0SireneMinscToB
~塞琳，布布跟明斯克说，你很孤独。~ [C0BLANK]
DO ~SetGlobal("C0SireneMinscToB","GLOBAL",1)~
== BC0SIR25 ~我……你说什么，明斯克？~
== BMINSC25 ~布布说，明斯克该给你找个像他那样的伙伴。那样你就不再孤独了。~
== BC0SIR25 ~明斯克……（笑）~
== BMINSC25 ~嗯？明斯克说了什么好笑的事吗？~
== BC0SIR25 ~不，我不该笑的。原谅我，只是……我刚在嫉妒你们这份古怪的友谊，忽然你就说了那样一句……我忍不住。~
== BMINSC25 ~明斯克不明白。你为什么要嫉妒我们？~
== BC0SIR25 ~是，明斯克，可是……别想歪了。我只是羡慕你们这份亲密。别人也许看不出来，可……身边永远有个朋友，是件宝贵的事。那是我一辈子都渴望的。~
== BMINSC25 ~布布说，真正的友谊确实宝贵。可我们就是你的朋友，不是吗？~
== BC0SIR25 ~是的，明斯克……你们当然是。~
EXIT

CHAIN 
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneNaliaToB","GLOBAL",0)~ THEN BC0SIR25 C0SireneNaliaToB
~你看着很严肃，娜莉亚。这一天使你疲惫了吗？~ [C0BLANK]
DO ~SetGlobal("C0SireneNaliaToB","GLOBAL",1)~
== BNALIA25 ~嗯？哦，没有。我是说，我累了，可并不是你想的那个缘故。~
== BC0SIR25 ~我明白。你日夜催逼自己，读书、练法术，一练就是好几个时辰。~
== BNALIA25 ~你注意到了？我*确实*试着做得不那么明显，免得队伍里白担心……~
== BC0SIR25 ~这远不是白担心，娜莉亚。从你眼下的黑圈我就看得出，你近来缺觉。是什么逼你有了这么大的改变？~
== BNALIA25 ~我一直在想未来。我现在掌握了这么多力量，忍不住想该怎么最好地用它来纠正我生活里所有出错的地方。等<CHARNAME>的任务结束，我打算回家去，把一切都改得更好。~
== BC0SIR25 ~我明白了。你对此很坚定，是吗？我看得出你决心让自己的理想成为现实。~
== BNALIA25 ~我们曾谈过安姆社会与官僚的腐败，那都只是空谈，因为我相信自己缺乏力量，可现在……不同了。我知道我能让自己想要的改变发生。可我需要的知识比现在多。~
== BNALIA25 ~等我准备好了，我打算在更大的范围上做出改变，把我家乡从盘踞其上的腐败中革新过来。若真有那一天，我希望我能仰仗像你这样有信念的人，去做我做不到的事。~
== BC0SIR25 ~你几乎不必开口问，娜莉亚。你需要我时，我当然会尽全力相助。~
== BNALIA25 ~谢谢你。我向你提这个，是因为我敬重你。如果我被自己所求的力量变得比从前更坏……我会需要一个像你这样有操守的人把我扶正。~
== BC0SIR25 ~娜莉亚……你比你自己以为的更好，所以我求你，别再这样自我怀疑。我知道你能达到你瞄准的任何目标。~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneSarevokToB","GLOBAL",0)
Alignment("Sarevok",MASK_EVIL)~ THEN BSAREV25 C0SireneSarevokToB
~真令人意外，伊尔梅特信徒。自从我复原以来，你还没跟我说过一句话。没有一句谴责？我失望了……我本以为你能有更多表现。~ [C0BLANK]
DO ~SetGlobal("C0SireneSarevokToB","GLOBAL",1)~
== BC0SIR25 ~我跟你无话可说，萨瑞沃克。~
== BSAREV25 ~没有？可你似乎够频繁地往我这边看，而且总带着不安的神色。我的存在就这么冒犯你，以至于你的瞪视都要烧进我的灵魂？~
== BC0SIR25 ~也许我会，若我相信你有灵魂的话。可即使你站在我面前，我看见的也不过是一副杀人的空壳，一个曾经是人的影子。~
== BSAREV25 ~是这样吗？你躲着我，是因为我没有灵魂？真有意思。~
== BC0SIR25 ~我躲着你，是因为你是个可憎之物，一个没有那使人成其为人的共情的生物。我观察过你，你除了播撒不和与杀戮，别无所乐。~
== BSAREV25 ~哈！~
== BC0SIR25 ~你笑什么？~
== BSAREV25 ~这其中的伪善我看得清楚。你若要谴责我是杀人者，又凭什么标准评判你自己？作为<CHARNAME>的走狗，你屠了多少人？几百、几千、更多？你竟相信自己有权评判*我*，这可笑得荒唐！~
== BC0SIR25 ~你已经受过审判。 <CHARNAME>愿意把你带回来，是<PRO_HISHER>仁慈的明证。但你若蠢到重犯旧错，那我会毫无遗憾地了结你。~
== BSAREV25 ~哦，这真是妙不可言。你如今那宝贝的「仁慈」上哪儿去了，娘们？~
== BC0SIR25 ~仁慈是有的。可正如你从不知仁慈，你也将得不到仁慈。~
EXIT

CHAIN 
IF ~InParty("Sarevok")
See("Sarevok")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneSarevokToB2","GLOBAL",0)
!Alignment("Sarevok",MASK_EVIL)~ THEN BC0SIR25 C0SireneSarevokToB2
~你沉默了一阵子，萨瑞沃克。这么快就厌了你的嘲弄？这不像你。~ [C0BLANK]
DO ~SetGlobal("C0SireneSarevokToB2","GLOBAL",1)~
== BSAREV25 ~我再没兴趣跟你斗嘴了，女人，不过你若再激我，你得到的也许就是这个。~
== BC0SIR25 ~不，我……我不是想挑你。也许我的话太冲动了。我……道歉。~
== BSAREV25 ~……~
== BC0SIR25 ~如果……如果就这些的话？~
== BSAREV25 ~你是个怪人，伊尔梅特信徒。这一刻你的话里满是敌意，下一刻你又道歉得那么真诚，我几乎都信了。你到底真正感受什么，我倒想知道。~
== BC0SIR25 ~你……你真是在问吗？我以为你不在意。~
== BSAREV25 ~也许我确实不在意。可<CHARNAME>那想知道<PRO_HESHE>同行者究竟是什么人的怪念头，也许传到我身上了。那么答我，圣武士——你还对我怀着多少恨？~
== BC0SIR25 ~恨不是我轻易会有的东西。我无法原谅你死去时那个人，萨瑞沃克，可如今的你……不，我看不出有什么理由恨你。~
== BSAREV25 ~我明白了。若果真如此，那我也满意了。~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneValygarToB","GLOBAL",0)~ THEN BVALYG25 C0SireneValygarToB
~你的架势破绽还是太多，塞琳。专心。~ [C0BLANK]
DO ~SetGlobal("C0SireneValygarToB","GLOBAL",1)~
== BC0SIR25 ~我……好吧，给我一点时间。~
== BVALYG25 ~战斗中没有犯错的余地，塞琳，你的敌人也不会给你改正的机会。护住自己！~
== BC0SIR25 ~……呃啊！~
== BVALYG25 ~*叹气*我想今天最好就到这儿。我是不是太过分了？~
== BC0SIR25 ~不，我的朋友。我很感激你不留情面。虽然我离你的水平还远，可我学到了很多。~
== BVALYG25 ~不必这么谦逊。从我们开始对练以来，你的技艺进步极大。~
== BC0SIR25 ~可是……我一次都没赢过你。~
== BVALYG25 ~那只是因为我练剑的时间长得多。再说……我不确定问题出在技艺上。~
== BC0SIR25 ~你什么意思？~
== BVALYG25 ~我注意到你打斗时的样子，不管是训练还是实战。你还是不愿下杀手，对吧？~
== BC0SIR25 ~……是的，我想我是。这是种弱点，我怕我永远改不掉。~
== BVALYG25 ~我不觉得那一定是弱点。它确实拖住你，可若你能因此仍是个好人……我觉得那就值得。~
== BC0SIR25 ~这话很厚道，瓦里格。我很领情。~
== BVALYG25 ~哼。别太习惯就好。~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneViconiaToB","GLOBAL",0)~ THEN BVICON25 C0SireneViconiaToB
~我承认我很惊讶，jalil。我没想到我们的同盟能维持到如今。~ [C0BLANK]
DO ~SetGlobal("C0SireneViconiaToB","GLOBAL",1)~
== BC0SIR25 ~你原本指望什么，维康尼亚？指望我趁你睡着杀了你？~
== BVICON25 ~也许吧，从前我不会觉得你做不出这种事。你若不杀我，那就让我死，或者我杀了你。这就是我所知的「同伴之情」。~
== BC0SIR25 ~这听起来……确实残忍。知道你所经历的生活，维康尼亚，我……我甚至没法怪你，更别说恨你。~
== BVICON25 ~你太容易信人了，塞琳。你相信我做不出利用你信任的事吗？~
== BC0SIR25 ~若那是我必须承受的，维康尼亚，我会接受。~
== BVICON25 ~你真是不可救药地愚蠢……abbil。我完全弄不懂你。~
== BVICON25 ~同时，我又觉得你的诚实有种古怪的清新。也许这份同盟对双方都有益。~
EXIT
