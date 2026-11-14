BEGIN BC0SIRE2 

// Aerie

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneAerie1","GLOBAL",0)~ THEN BC0SIRE2 C0SireneAerie1
~你看我时皱了下眉，艾黎。有什么事吗？~ [C0BLANK]
DO ~SetGlobal("C0SireneAerie1","GLOBAL",1)~
== BAERIE ~没——没有。没什么。~
== BC0SIRE2 ~原谅我，我的存在……让你不适吗？~
== BAERIE ~不！一点也不。我不怕——我是说，我不觉得跟你不自在。~
== BC0SIRE2 ~在我面前不必说谎，艾黎，虽然我很领情你在意我的感受。真的，我熟悉你这种反应，它不会让我难受。再也不会了。~
== BAERIE ~我想我只是有点紧张……我知道你是好意，可你总是显得那么悲伤、那么肃穆……当你那样的时候，你的眼睛……~
== BC0SIRE2 ~我明白，艾黎。你不是第一个。如果我让你害怕，那我会尽量避开你。失陪了……~
== BAERIE ~等等，我不是那个意思……*叹气*~
EXIT

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneAerie2","GLOBAL",0)~ THEN BC0SIRE2 C0SireneAerie2
~神明啊，调整盔甲真是件累人的事……要是有个人帮帮忙就好了……~ [C0BLANK]
DO ~SetGlobal("C0SireneAerie2","GLOBAL",1)~
== BAERIE ~*倒吸一口气！*~
== BC0SIRE2 ~什——艾黎？怎么了，我的朋友？~
== BAERIE ~没——没什么！对不起，我盯着看太失礼了！~
== BC0SIRE2 ~哦，天……你看见那些疤了，对吧？原谅我。它们很难看，我知道。~
== BAERIE ~我……对不起。我不该看的。只是它们让我想起我自己的……我的……~
== BC0SIRE2 ~你自己的疤？……原谅我，我不该提起这个。太不体贴了。~
== BAERIE ~不——不。我知道我得习惯。我再也不能飞了……可那不代表我该躲着真相。~
== BAERIE ~它们……它们疼吗？我是说你的。有几道看着……很痛。~
== BC0SIRE2 ~这些？不，我早已感觉不到它们了。也许是我对疼痛的耐受增长了。可每一道都有故事，都是一场打过的仗。~
== BAERIE ~哦……我猜是好故事吧？~
== BC0SIRE2 ~（微笑）有些是。可许多是我失败的遗迹。那些我没能救下、没能护住的人……~
== BAERIE ~哦。对不起。可——可说实话，这倒让我有点嫉妒……~
== BC0SIRE2 ~为何如此，艾黎？~
== BAERIE ~我——我不该说。我这么想是不对的。~
== BC0SIRE2 ~也许吧，可说出口也无妨。~
== BAERIE ~好吧，只是……至少你还能为自己的疤多少骄傲一点。我看着我的疤时，想到的全是我多软弱、多脆弱……连对我那么重要的东西都护不住。它们让我那么羞耻……~
== BC0SIRE2 ~艾黎……不。别那样看自己。~
== BC0SIRE2 ~你比你以为的更强。你失去了我无法想象的重要之物，可你能继续走下去，还能笑得出来、还能像这样关心别人，这就是你坚强的明证。你有许多值得我钦佩之处，我绝不会因为你的疤而看轻你。~
== BAERIE ~哈哈！你这么说，我几乎就信了。谢谢你，塞琳。~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneAerie3","GLOBAL",0)
HPPercentLT("C0Sirene",75)~ THEN BAERIE C0SireneAerie3
~塞琳？呃……对不起。~ [C0BLANK]
DO ~SetGlobal("C0SireneAerie3","GLOBAL",1)~
== BC0SIRE2 ~你为何道歉，艾黎？你没做任何冒犯我的事。~
== BAERIE ~可我做了！你为了护我又受伤了。~
== BC0SIRE2 ~是的，而我是心甘情愿的。你不必为我担心。我习惯做这种事。~
== BAERIE ~对不起！只——只是，我觉得自己好没用，我总在想……万一别人因为你需要救我而受伤呢？万一你因为我而死呢？我不能一直靠你护着我！~
== BC0SIRE2 ~你绝不是没用。我身上这些伤，尽管痛，我并不在意。我骄傲地承受它们，因为若它们落在你身上……我会难受无数倍。~
== BAERIE ~哦……别说这个！我远没有你说的那么可贵……~
== BC0SIRE2 ~真的，艾黎，你很可贵。别为我担心，因为我向你发誓，我会继续活下去，好让我能护住你。~
EXIT

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneAerie1","GLOBAL",1)
Global("C0SireneAerie2","GLOBAL",1)
Global("C0SireneAerie3","GLOBAL",1)
Global("C0SireneAerie4","GLOBAL",0)~ THEN BC0SIRE2 C0SireneAerie3
~你背得太多了，艾黎。分些担子给我。~ [C0BLANK]
DO ~SetGlobal("C0SireneAerie4","GLOBAL",1)~
== BAERIE ~嗯……好吧。~
== BC0SIRE2 ~你若需要水或口粮，尽管开口。~
== BAERIE ~塞琳？~
== BC0SIRE2 ~什么事，艾黎？~
== BAERIE ~你为什么，嗯，对我这么好？我——我是说，我不是说你不对别人好，可你特别照顾我。我能问为什么吗？~
== BC0SIRE2 ~我……你不该多想，我的朋友。分担别人的重负正是我的职责。尤其是你的。~
== BAERIE ~我……我很感激，可我自己能扛得住，真的。就算难，我也需要证明自己。你若替我做了，我就没法证明。~
== BC0SIRE2 ~我确实明白。可我怕你是在过度补偿。我不愿你伤到自己。~
== BAERIE ~好——好吧，可你还是在回避我的问题。~
== BC0SIRE2 ~问题？~
== BAERIE ~你为什么特别对我这么好？毕竟<CHARNAME>才是领队……我们更需要<PRO_HIMHER>，而不是我……~
== BC0SIRE2 ~是的，可这既是为了<CHARNAME>，也是为了我自己……还有为了你。我并没有你说的那么无私。~
== BAERIE ~你……这话什么意思？~
== BC0SIRE2 ~帮助别人是……一种分心，好让我不去想自己。它让我能……忘掉，我想，至少暂时忘掉一切困扰我的事。~
== BAERIE ~哦。那是……~
== BC0SIRE2 ~仔细想想，我其实是个很自私的人，不是吗？~
== BAERIE ~不——不。我一点也不觉得那自私。我觉得那真的很可佩……我也希望我能那么容易就忘掉自己的烦恼。可是……我不觉得忘记是对的辦法。~
== BAERIE ~我想……我们真正需要的，是一个能说话的人，或者一个能靠一靠的肩膀。我——我知道我还软弱无知，可我想这一点，我能给你……我的朋友。~
== BC0SIRE2 ~艾黎……我再没有更多可求的了……而你也永远可以指望我。~
EXIT

// Anomen

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!Global("AnomenIsKnight","GLOBAL",1)
!Global("AnomenIsNotKnight","GLOBAL",1)
Global("C0SireneAnomen1","GLOBAL",0)~ THEN BANOMEN C0SireneAnomen2
~我再说一次，<CHARNAME>，我不喜欢这样。~ [C0BLANK]
DO ~SetGlobal("C0SireneAnomen1","GLOBAL",1)~
== BANOMEN IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~我知道她是你从前的同伴，可是……~
== BC0SIRE2 ~你若要这样说，阿诺门，我宁愿你对我讲，而不是在背后讲我。~
== BANOMEN ~很好。既然如此，我就直说。我不信任你。~
== BC0SIRE2 ~这一点很清楚。还有别的吗？~
== BANOMEN ~你自称是哭泣之神的神圣斗士，可除了你自己的话，你没有任何凭据。而你那邪恶的血统，对我来说却一目了然。~
== BC0SIRE2 ~我从未做过这样大胆的宣称，阿诺门，你在往我嘴里塞话。我只是伊尔梅特的信徒，仅此而已。~
== BC0SIRE2 ~我确实除了自己的话，没有别的能让你安心，可我向你保证，我的血统不能决定我是谁。~
== BANOMEN ~哼。你这么说，可我并不会因此更信你。自己当心，提夫林。我若察觉一丝背信，愿海姆对你仁慈。~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!Global("AnomenIsKnight","GLOBAL",1)
!Global("AnomenIsNotKnight","GLOBAL",1)
Global("C0SireneAnomen2","GLOBAL",0)~ THEN BANOMEN C0SireneAnomen2
~邪——伊尔梅特信徒，如果你真是的话。我要问你一个问题，关于你的信仰。你真相信每个人都配得怜悯吗？~ [C0BLANK]
DO ~SetGlobal("C0SireneAnomen2","GLOBAL",1)~
== BC0SIRE2 ~配得……？不是每个人，不。可那些真心想走回光里、想救赎自己的人……是的，我相信他们配得。~
== BANOMEN ~哼。若容我说，你们这一派太宽恕了。就算一个人选择回到正道，他过往的行径仍须受审判。~
== BC0SIRE2 ~为一个已经做成的事去定罪一个人，能得什么？难道没有理由去宽恕，并引他们走上更好的路？~
== BANOMEN ~宽恕？对那些对人类犯下罪行的人，你怎么宽恕？~
== BC0SIRE2 ~并非每个行恶的人都是自愿行恶的，阿诺门。许多人心里沉重。~
== BANOMEN ~那我问你：你真相信一个改过的人是真想赎罪吗？~
== BANOMEN ~不。他们不想。他们背离旧路，只是因为那样对他们更方便，而不是去面对自己的罪。他们做这事纯粹出于自私的理由。对这样的贱类，有什么理由施以怜悯？~
== BC0SIRE2 ~你对人心抱着一副愤世的看法，阿诺门。我不能同意。~
== BANOMEN ~只是一副现实的看法。你的信仰建在天真与无知之上。若人人都像你这样信，邪恶的势力转眼就会得胜。邪恶一露头就必须受惩罚，不容二想。~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!Global("AnomenIsKnight","GLOBAL",1)
!Global("AnomenIsNotKnight","GLOBAL",1)
Global("C0SireneAnomen3","GLOBAL",0)~ THEN BANOMEN C0SireneAnomen3
~我问你，呃，塞琳。你打过许多小仗吗？讨伐邪恶势力的圣战？~ [C0BLANK]
DO ~SetGlobal("C0SireneAnomen3","GLOBAL",1)~
== BC0SIRE2 ~我曾与恶人交战并将其击败，可是……没有你说得那么宏大。~
== BANOMEN ~嗯。真令人失望。~
== BC0SIRE2 ~那你呢，阿诺门？你面对邪恶的经验多吗？~
== BANOMEN ~自然。讨伐丘陵巨人的圣战、巨魔山脉的野兽、西斯里西安帝国的入侵……只要骑士团征召执行任务，我总是第一批应召的人之一。~
== BC0SIRE2 ~听起来确实很了不起。~
== BANOMEN ~的确。多年来，我在上位者面前一次又一次证明了自己。如你所见，我丝毫不比任何人差。~
== BC0SIRE2 ~你说的「任何人」是真心的，还是指我？~
== BANOMEN ~哼。你尽可自行领会。~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("KillSaerk","GLOBAL",2)
!Global("AnomenIsKnight","GLOBAL",1)
!Global("AnomenIsNotKnight","GLOBAL",1)
Global("C0SireneAnomen1","GLOBAL",1)
Global("C0SireneAnomen2","GLOBAL",1)
Global("C0SireneAnomen3","GLOBAL",1)
Global("C0SireneAnomen4","GLOBAL",0)~ THEN BC0SIRE2 C0SireneAnomen4
~你还好吗，阿诺门？~ [C0BLANK]
DO ~SetGlobal("C0SireneAnomen4","GLOBAL",1)~
== BANOMEN ~这与你何干？~
== BC0SIRE2 ~我在担心你的处境。你父亲那番恶毒的话……连我听着都难以咽下。我无法想象你当时是什么感受。~
== BANOMEN ~那是你无法理解的苦味。我们就到此为止吧。~
== BC0SIRE2 ~不……我想我确实无法理解。我从来不知道自己的家人是谁。~
== BANOMEN ~我……我明白了。~
== BANOMEN ~我很惊讶，以我待你的方式，你竟会显出这样的关切。我……不习惯这样的同情，即使来自骑士团里的同僚。你的信仰要求你这么做吗？~
== BC0SIRE2 ~有几分……可我对你的关切不止于此。当我看见你离开家宅时的表情……那让我极不舒服。我必须确认你没事。~
== BANOMEN ~也许……也许我看错你了，伊尔梅特信徒。~
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("AnomenIsKnight","GLOBAL",1)
Global("C0SireneAnomen4","GLOBAL",0)~ THEN BC0SIRE2 C0SireneAnomen5
~我想该道一声恭喜了，阿诺门……不，阿诺门爵士。~ [C0BLANK]
DO ~SetGlobal("C0SireneAnomen4","GLOBAL",1)~
== BANOMEN ~多谢你，女士。终于实现了多年来渴求的目标，这感觉真好，而知道自己配得上它，更是如此。~
== BC0SIRE2 ~你确实配得上，我的朋友。~
== BANOMEN ~真的，这……这是全新的体验，也让我对事物有了不同的看法。我明白我过去算不上最明智的人，我想我从前对你说的话很伤人，也不配我。我真心求你原谅。~
== BC0SIRE2 ~你没有什么可道歉的，阿诺门爵士。那些话我并非没听过，我已经原谅你了。~
== BANOMEN ~你太宽厚了。我……说实话，我很高兴。我曾怕你会……嫉妒。~
== BC0SIRE2 ~嫉妒？你为何会这么想？~
== BANOMEN ~我……我觉得我必须再道一次歉，这回是为我接下来要暗示的事提前道歉。我知道，你也渴望那授予我的同一种荣誉。~
== BANOMEN ~女士，你是真正骑士的典范，可受封的却是我这个曾困在自己妄想里的莽撞傲慢的少年。即便现在，我也怀疑自己是否真配得上……~
== BC0SIRE2 ~啊……你说的是这个。不，我不嫉妒，我的朋友。可我真心感激你这样看我。我远没有你说的那么完美……~
== BANOMEN ~的确，没有人没有缺陷。可我愿意在将来做个例子，说明即使像我这样有缺陷的人也能实现梦想。别灰心，我的朋友。~
== BC0SIRE2 ~你变得明智了，阿诺门。也许有一天，我也……~
== BANOMEN ~我相信你的那一天会到来的，女士。~
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("AnomenIsNotKnight","GLOBAL",1)
Global("C0SireneAnomen4","GLOBAL",0)~ THEN BC0SIRE2 C0SireneAnomen5
~……~ [C0BLANK]
DO ~SetGlobal("C0SireneAnomen4","GLOBAL",1)~
== BANOMEN ~你那傲慢的目光没逃过我的眼，娘们！你像别人一样，也有轻蔑或嘲笑的话要给我吗？那就说吧！~
== BC0SIRE2 ~我不信你会愿意听我说的任何话，在你做出那些事之后。~
== BANOMEN ~我做出的事？你竟敢评判我？~
== BC0SIRE2 ~不比你评判自己、评判你为何失去了所珍视之物更过分。~
== BANOMEN ~我所珍视的一切，都在骑士团——那些背信的狗——背弃我时失去了。~
== BC0SIRE2 ~不是骑士团，阿诺门，而是你自己背叛了自己，背叛了你曾代表的一切。你跌得多深，竟看不清真相……~
== BANOMEN ~你懂什么真相，伊尔梅特信徒？这难道也是你那宝贝「职责」的一部分，来纠缠一个堕落的人？笑吧，若这能让你满足，该死的伪君子！~
== BC0SIRE2 ~我不会那样做，阿诺门。对你来说还不算太晚，只要你能再看一眼光。~
== BANOMEN ~让你的话噎死你吧，魔物。我再不想听！~
== BC0SIRE2 ~你像个孩子似的。你可想过，你妹妹若看见你这副样子会说什么？~
== BANOMEN ~够了！闭嘴，该死的！~
EXIT

// Cernd

CHAIN 
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
AreaType(FOREST)
Global("C0SireneCernd1","GLOBAL",0)~ THEN BC0SIRE2 C0SireneCernd1
~*啊——啊——啊嚏！*~ [C0BLANK]
DO ~SetGlobal("C0SireneCernd1","GLOBAL",1)~
== BCERND ~有什么事吗，塞琳？你莫非对什么植物过敏？~
== BC0SIRE2 ~不，没什么。也许是风里的什么东西，仅此而已。~
== BCERND ~是的，正是花粉飞扬、新芽萌发的时节。不过几个月，新花便会在旧花凋亡之处开放，循环不息。自然的和谐便是如此。~
== BC0SIRE2 ~这确实很美，瑟恩德，虽然我不像你那样为之着迷。~
== BCERND ~可惜。像你这样的人，若能有些和谐，会好得多，我想。~
== BC0SIRE2 ~我不确定我领会得了你的暗示……你若想提我的血统，瑟恩德，那我建议现在就结束这场谈话。~
== BCERND ~我其实并非在说你的血统。你也许不属于自然的循环，可那不是我意。我说的失衡在你的心里。你在动摇，仿佛在怀疑前方的路是清明还是浑浊，怀疑自己为身边的人做得够不够……~
== BCERND ~而最重要的是，你怀疑自己是否配得上你的角色。只要这类念头缠着你，和谐便无法存在。你得在这上面下功夫。~
== BC0SIRE2 ~我……~
== BCERND ~我说错了吗？~
== BC0SIRE2 ~不……你没说错，瑟恩德。原谅我。我显然低估了你的智慧。~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneCernd2","GLOBAL",0)~ THEN BCERND C0SireneCernd2
~自然的和谐确实是美丽之物。但愿有更多人能真正领会。~ [C0BLANK]
DO ~SetGlobal("C0SireneCernd2","GLOBAL",1)~
== BC0SIRE2 ~你常谈和谐，瑟恩德，可我并不像你那样真正理解它。你是如何达到那样宁静的境界的？~
== BCERND ~哦，这比看起来简单得多。当你真正体验自然的全部，从美到身边的气息，你便获得某种……沉静的氛围绕身，走到哪里都带着它。~
== BC0SIRE2 ~我……想试着培养这样的东西，如果你肯教我。~
== BCERND ~当然。虽然路上远非学习的佳处，可仍有可行的门径。何不从冥想开始？~
== BC0SIRE2 ~冥想？~
== BCERND ~这很像祈祷，我明白你对此已经熟悉。你得学会放松心神，把念头清空。起初也许觉得难，可很快就会变得自然。~
== BC0SIRE2 ~我明白了……我会尽力。~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneCernd2","GLOBAL",1)~ THEN BCERND C0SireneCernd3
~怎么样？你的练习进展如何？~ [C0BLANK]
DO ~SetGlobal("C0SireneCernd2","GLOBAL",2)~
== BC0SIRE2 ~我……我做不到，瑟恩德。我试了，真的，可无论我多希望，我都无法清空思绪与情感。~
== BCERND ~嗯。~
== BC0SIRE2 ~也许是因为我的血。失衡就在我的存在本身。我怀疑我永远做不到。原谅我。我觉得我辜负了你，瑟恩德。~
== BCERND ~不，不。也许这样反倒最好。~
== BC0SIRE2 ~你说什么？~
== BCERND ~我只是字面意思。宁静适合某些人，不适合另一些人。看来你属于后者。这没什么不对。~
== BC0SIRE2 ~可是，我——~
== BCERND ~啊，不过还有一件事我想说。我不认为这与你的血统有关。~
== BCERND ~我反倒怀疑，我的法子失效，是因为你心里有些念头、也许是记忆，是你不想忘掉的，无论有意还是无意。可你没法把这些念头唤到明处，对吧？~
== BC0SIRE2 ~不……不，我不能。我常试着，可……仿佛我的心拒绝承认它们。这让我不安。~
== BCERND ~那么我要劝你，终究不要强迫自己清空心神。反不如把力气用在让这些潜藏的念头清晰起来。我可以从我的林苑里取些香来助你，如果你愿意。~
== BC0SIRE2 ~你真是慷慨，瑟恩德。也许我会接受你的提议。~
EXIT

// Edwin

CHAIN
IF ~InParty("Edwin")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneEdwin1","GLOBAL",0)~ THEN BC0SIRE2 C0SireneEdwin1
~命运真有副残酷的幽默感。所有与我分道的人里，你是最不愿再见到的几张面孔之一。~ [C0BLANK]
DO ~SetGlobal("C0SireneEdwin1","GLOBAL",1)~
== BEDWIN ~我向你保证，我也有同感。（我唯一可能与这娘们分享的念头……）~
== BC0SIRE2 ~眼下我们是盟友，可我会紧盯你。你加入时的情形，让人难以信任你。我警告你，法师，你若存半点背信之念，你会后悔。~
== BEDWIN ~哼，说得好像我在乎你的审视。你这么快就忘了，我此前已宣誓效忠<CHARNAME>？只要报酬丰厚，你就没什么可怕的……目前。~
== BC0SIRE2 ~那我们就无话可说了。~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneEdwin2","GLOBAL",0)~ THEN BEDWIN C0SireneEdwin2
~嗯。失望，真是失望。我得说，魔崽子，你没达到我对你的期望，虽然那期望本就低得可怜。你竟还活着，是万世的谜题。~ [C0BLANK]
DO ~SetGlobal("C0SireneEdwin2","GLOBAL",1)~
== BC0SIRE2 ~我不喜欢你居高临下的口气，艾德温，尤其是在没头没尾的时候。我冒犯你了吗？~
== BEDWIN ~你在许多方面冒犯我，可那无关紧要。我只是好奇，你那邪恶的血是否给了你什么本领，让你比<CHARNAME>身边其余那些猿猴更有用些。~
== BEDWIN ~眼下来看，我大失所望。你没显出任何特殊能力。连最轻微的炼狱之力都没有。你确定你真是魔物所生，而不只是一个变形法术出了岔子的倒霉受害者？~
== BC0SIRE2 ~你的话已接近侮辱，可我已习惯从你嘴里听到这类东西。我会忍。~
== BEDWIN ~（该死！我以为那一定能激出反应。）我只关心这一点：你当真没有任何源自血统的显著力量？~
== BC0SIRE2 ~那不是你该知道的，艾德温。我无意动用血中的力量。我有伊尔梅特赐予的恩典，那就够了。~
== BEDWIN ~（嗯，算不上肯定，可目前我也只能问到这么接近了。我继续观察。）~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneEdwin3","GLOBAL",0)~ THEN BEDWIN C0SireneEdwin3
~那么，魔崽子，你可考虑过我们的讨论？你血里必定有些力量，值得花力气引出来。我甚至愿意拨出一些宝贵时间来帮忙。（不过最好有报酬，若这事终究徒劳无功……）~ [C0BLANK]
DO ~SetGlobal("C0SireneEdwin3","GLOBAL",1)~
== BC0SIRE2 ~……~
== BEDWIN ~怎么样？一个「是」或「否」就够了，应该不超过你那有限的心智容量。答了便罢。~
== BC0SIRE2 ~你是个危险的人，艾德温。~
== BEDWIN ~嗯？对，对。我完全明白。（她总算察觉了！）可眼下，我更想看看你血统里有哪些未开采的潜能。（也许还够我利用一番，嗯……）~
== BC0SIRE2 ~你的话有毒……我以前听过这类话，只是都在我自己的念头里。你想在我心里点起的这份渴望，去承认我的力量……我曾认识它，也滥用过它。我无论如何都不愿它回来。~
== BEDWIN ~你那些孩子气的信念在此无关。力量就是一切，以及驾驭它的强韧意志。（我本人就是活例。）~
== BC0SIRE2 ~我曾被力量诱惑过，艾德温。我不会再沦为它的猎物。~
== BEDWIN ~可惜。~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneEdwin4","GLOBAL",0)~ THEN BEDWIN C0SireneEdwin4
~呀啊啊！又失败了！这副该死的形体抗拒一切驱散它的尝试！~ [C0BLANK]
DO ~SetGlobal("C0SireneEdwin4","GLOBAL",1)~
== BC0SIRE2 ~……~
== BEDWIN ~什么？！怎么了，魔崽子？难道我也得受你那目光的屈辱？~
== BC0SIRE2 ~我——我又盯着看了吗，艾德温？我，呃，道歉。你现在的……处境只是让我好奇。~
== BEDWIN ~哼。好，好，这一回我就当没看见，现在别烦我……等等！你说「又」？！你一直在看我，女人？~
== BC0SIRE2 ~我劝你放低声音。我不想让这些话被人当众嚷出来听见。~
== BEDWIN ~呸！我得受这诅咒已经够羞耻了，再多一点又何妨？~
EXIT

// HaerDalis

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneHaerDalis1","GLOBAL",0)~ THEN BHAERDA C0SireneHaerDalis1
~你对诸位面了解多少，我的犄角苍鹰？~ [C0BLANK]
DO ~SetGlobal("C0SireneHaerDalis1","GLOBAL",1)~
== BC0SIRE2 ~怕是不多。尽管我血管里有那种血，无论出身还是教养，我都实实在在是个主物质界之人。~
== BHAERDA ~随你说。不过我不过是好奇，因为我分明能感觉到巴托之触落在你身上。~
== BC0SIRE2 ~巴托，九层地狱……有人告诉我，我的血统可以追溯到那里。这念头并不让我安心。~
== BHAERDA ~你竟这样想，真是可惜。巴托并非那样难以容身之地，只要你有心玩弄权术，又能让那些魔物恩主觉得你足够有趣。~
== BC0SIRE2 ~你在巴托演出过，海尔达利？当真？~
== BHAERDA ~（笑）我若说谎，愿痛苦女士将我击倒。是的，巴托的魔鬼们喜欢我们讽刺他们的对手。当然，这很危险，可危险中自有刺激。台上一次失手，或观众不满，就会让你迅即与熵之女士相会。~
== BC0SIRE2 ~你真是个怪人，海尔达利。你这样追忆那些事，我都不知该不该当真。可是……（笑）我承认，你身上有种特别的魅力。~
== BHAERDA ~（鞠躬）我活着就是为了取悦……直到虚无将我们尽数收去的那一天。~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneHaerDalis2","GLOBAL",0)~ THEN BHAERDA C0SireneHaerDalis2
~塞琳，我勇敢的苍鹰，你的神情阴沉得像虚无本身。要我为你奏一曲吗？~ [C0BLANK]
DO ~SetGlobal("C0SireneHaerDalis2","GLOBAL",1)~
== BC0SIRE2 ~那倒是个愉快的消遣。可你今天要演什么，我倒想知道。~
== BHAERDA ~当然是我为你挑的曲子。啊，可别告诉我，我想猜。~
== BC0SIRE2 ~随你，虽然我怕这会是个难玩的游戏。~
== BHAERDA ~嗯，那么也许是一首你故乡的歌？你秀美的容貌明显是科米尔人的，那么也许是这首……？~
== BC0SIRE2 ~……不，怕是不熟。我年幼就成了孤儿，在北方长大，所以对科米尔文化所知甚少。~
== BHAERDA ~那么给这倒霉的诗人一点提示？~
== BC0SIRE2 ~好罢。我在剑湾以北、尚未到深水城的一个法伦北方村庄长大。这对你够了吗？~
== BHAERDA ~嗯，不好办，可若我没弄错，你一定知道这首……「嗯——哼——嗯——哼」……（吹口哨）~
== BC0SIRE2 ~……啊！那首歌……~
== BHAERDA ~（笑）大成功！这小调是否拨动了熟悉的弦？~
== BC0SIRE2 ~我的抚养人……教会里那位卡米拉修女，在我小时候给我唱过这首摇篮曲。我还记得其中几句……~
== BHAERDA ~既如此，也许你愿意把这首歌唱完，嗯？~
== BC0SIRE2 ~是的，我愿意。（微笑）谢谢你，海尔达利。~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneHaerDalis3","GLOBAL",0)~ THEN BHAERDA C0SireneHaerDalis3
~那么，亲爱的，你觉得我的演出如何？~ [C0BLANK]
DO ~SetGlobal("C0SireneHaerDalis3","GLOBAL",1)~
== BC0SIRE2 ~你的音乐很美，海尔达利，可其中有些……令人不安的东西。~
== BHAERDA ~哦？请务必说说。~
== BC0SIRE2 ~你那样频繁地歌唱熵、悲剧与不可避免的终结，可你当真不信更光明的未来吗？~
== BHAERDA ~是的，你们这些理想主义的主物质界人似乎挺喜欢圆满结局，可你能否认这多重宇宙——尽管看似无边——终将归于虚无吗？~
== BC0SIRE2 ~我不能否认，可我也无法像你那样理解事物。~
== BHAERDA ~那好，一个简单的比方就够了。想象一对夫妻，许下誓言，互许永恒的欢愉。可他们的生命不也注定终结，肉体不也注定衰老枯萎？~
== BC0SIRE2 ~是的……确实如此。可你似乎让那终结的念头吞没了你。这期间难道没有可得的欢愉吗？~
== BHAERDA ~当然有。可你们这些主物质界人似乎拼尽全力抗拒踏入虚无的念头。我却拥抱它。~
== BC0SIRE2 ~那是你的权利，可从毁灭的念头里寻欢……令人不安。~
== BHAERDA ~你现在也许这样想，可我毫不怀疑，当你的终结到来时，你会优雅地接受它。~
== BC0SIRE2 ~也许吧，可眼下……我更愿在我生命里找到意义。我希望在此期间能有你的友谊，即使我们无法彼此理解。~
== BHAERDA ~友谊也如万物一样会死，可是……是啊，何乐不为？~
EXIT

// Imoen

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneImoen1","GLOBAL",0)
Global("C0SirenePartyBG1","GLOBAL",1)~ THEN BC0SIRE2 C0SireneImoen1
~我很遗憾你必定经历过那些苦难，爱蒙。若有什么我能为你做的，我会做。~ [C0BLANK]
DO ~SetGlobal("C0SireneImoen1","GLOBAL",1)~
== BIMOEN2 ~谢谢。可我现在没事了……嗯，不算没事，可你懂我意思。~
== BC0SIRE2 ~是的。说真的，自从我们分开，我一直想念你那爱闹的性子。见你这副样子，我很痛心。~
== BIMOEN2 ~没关系。给我点时间，我会回到从前那个我的。我保证。~
== BC0SIRE2 ~我希望如此。我们会把你复原的，爱蒙。我保证。~
== BIMOEN2 ~我也想念你，你知道的。你总是那么好说话……每次我把烦心事告诉你，我总觉得肩上卸下一大担子……~
== BC0SIRE2 ~是的，我怀念那些时光。我也非常想念你……你的明亮在过去给了我最需要的支撑。~
== BIMOEN2 ~你介意我们回到那样的相处吗？我想我比从前更需要它。~
== BC0SIRE2 ~（微笑）当然，爱蒙。~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneImoen2","GLOBAL",0)~ THEN BIMOEN2 C0SireneImoen2
~嘿。你在干什么？~ [C0BLANK]
DO ~SetGlobal("C0SireneImoen2","GLOBAL",1)~
== BC0SIRE2 ~什——哦，爱蒙。没什么。~
== BIMOEN2 ~真的？你背后藏着东西。来吧，你知道我好奇。你拿的什么？给我看看，给我看看！~
== BC0SIRE2 ~没什么。只是……一些傻东西。~
== BIMOEN2 ~哎，可你知道我最爱傻东西了！来吧，姐姐。让我瞧瞧！~
== BC0SIRE2 ~*脸红*不，真的，爱蒙，我觉得你最好别多问。就当帮我个忙。~
== BIMOEN2 ~*呸！*好吧！扫兴鬼。~
== BC0SIRE2 ~谢谢你，爱蒙。~
== BIMOEN2 ~抢啦！~
== BC0SIRE2 ~什——不！~
== BIMOEN2 ~哈！抓到了。看看我们这儿有什么……嗯？一本书？~
== BIMOEN2 ~等等，这……这是本言情小说！而且……对，就是那种特别肉麻的。嘻嘻，我不知道你还喜欢这种东西。~
== BIMOEN2 IF ~Global("C0SireneRomanceActive","GLOBAL",2)~ THEN ~哦，也许是因为你和<CHARNAME>……~
== BC0SIRE2 ~*叹气*真的，爱蒙，你真是没法对付。现在你笑够了，能还给我了吗？~
== BIMOEN2 ~好吧好吧。我玩够了……暂时。~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneImoen3","GLOBAL",0)~ THEN BIMOEN2 C0SireneImoen3
~嘿，塞琳。好久没见你读书了。怎么了？~ [C0BLANK]
DO ~SetGlobal("C0SireneImoen3","GLOBAL",1)~
== BC0SIRE2 ~*叹气*有什么用呢，爱蒙？我的秘密已经暴露了。你只会没完没了地取笑我。~
== BIMOEN2 ~哎，你真觉得我会那样？~
== BC0SIRE2 ~……会。~
== BIMOEN2 ~*叹气*好吧，你赢了。可是……真的。对不起。我只是想稍微逗逗你。就这样。~
== BC0SIRE2 IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~不，爱蒙，别道歉。说实话，我很高兴。我很久没见你这么活泼了。~
== BC0SIRE2 IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~不，爱蒙，别道歉。说实话，我很高兴。我非常想念你这个样子。~
== BIMOEN2 IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~嘿嘿，是啊，我想也是。真有趣，我以前一直是这样。意识到自己变了这么多，感觉很奇怪。~
== BIMOEN2 IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~嘿嘿，是啊，我想也是。就跟从前一样，是吧？~
== BC0SIRE2 ~见你这么快乐，我很高兴。我愿付出一切让你一直这样，即使你得拿我开玩笑。~
== BIMOEN2 ~哎，谢谢。不过我保证，以后不再拿你喜欢言情小说这事取笑你了，保证。~
== BIMOEN2 ~有一个条件。~
== BC0SIRE2 ~什么？~
== BIMOEN2 ~你得在睡前读给我听。就像大姐会做的那样。~
== BC0SIRE2 ~……~
== BIMOEN2 ~怎么了？~
== BC0SIRE2 ~……果然如此。你也喜欢言情小说，对不对？~
== BIMOEN2 ~*脸红*才——才没有！你——你为什么会这么想？只是……从前老「胀肚」在烛堡给我读睡前故事。我怀念那些日子。~
== BC0SIRE2 ~（笑）你骗不了我，爱蒙。现在我知道你的秘密了。不过是的，我很乐意。~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneImoen4","GLOBAL",0)
HPPercentLT("Imoen2",75)~ THEN BIMOEN2 C0SireneImoen4
~哎哟！这是我最后一次——*哎哟！*玩这种把戏……哎哟哎哟，真刺痛！别弄了！~ [C0BLANK]
DO ~SetGlobal("C0SireneImoen4","GLOBAL",1)~
== BC0SIRE2 ~这只是药膏，爱蒙。你还得再忍一会儿，然后我才能给你缠绷带。~
== BC0SIRE2 ~可我必须问，你当时在想什么，竟那样去招惹敌人？你本可能送命的。~
== BIMOEN2 ~哦，嗯……我想我是想打得更像你一点。~
== BC0SIRE2 ~这一点也不好笑，爱蒙。你在战斗里绝不能这样鲁莽。<CHARNAME>和我……若失去你，我们会心碎的。~
== BIMOEN2 ~*撅嘴*伪君子。~
== BC0SIRE2 ~你说什么？~
== BIMOEN2 IF ~Global("C0SireneRomanceActive","GLOBAL",2)~ THEN ~对不起。我想我说得有点过了。可你自己也做同样的事，不是吗？而我知道，你若死了，<CHARNAME>和我，尤其是<CHARNAME>，会……~
== BIMOEN2 IF ~!Global("C0SireneRomanceActive","GLOBAL",2)~ THEN ~对不起。我想我说得有点过了。可你自己也做同样的事，不是吗？而我知道，你若死了，我会……~
== BC0SIRE2 ~够了，爱蒙。我要你答应，再也不做这种事。作为回报，我也向你承诺，我们谁都不会死，所以别再谈这些了。~
== BIMOEN2 ~好吧，我懂了。可你不会抛下我死掉吧？答应我？~
== BC0SIRE2 ~我答应。~
EXIT

// Jaheira

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SirenePartyBG1","GLOBAL",1)
Global("C0SireneJaheira1","GLOBAL",0)~ THEN BJAHEIR C0SireneJaheira1
~见你安好真好，塞琳。以你爱冒险的性子，我怕我们在博德之门就已见你最后一面了。~ [C0BLANK]
DO ~SetGlobal("C0SireneJaheira1","GLOBAL",1)~
== BC0SIRE2 ~是的，虽然我但愿情形不是这样……我本希望再见卡立德一面。~
== BJAHEIR ~我想他，可我不愿总是提起令人痛苦的回忆。我只能从祈祷他安息中寻得慰藉。~
== BC0SIRE2 ~他安息了，贾希拉，我确信。我也会向伊尔梅特祈求他安好。~
== BJAHEIR ~我很领情，可这是我宁愿独自做的事。当然，我无意冒犯。~
== BC0SIRE2 ~若你宁愿如此。可你若需要我作伴，我一直都在。~
EXIT

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneJaheira2","GLOBAL",0)~ THEN BC0SIRE2 C0SireneJaheira2
~神明啊，我的头……~ [C0BLANK]
DO ~SetGlobal("C0SireneJaheira2","GLOBAL",1)~
== BJAHEIR ~怎么了，塞琳？你看着不舒服。你哪里受伤了吗？~
== BC0SIRE2 ~不……至少据我所知没有伤口。可我头疼，而且觉得昨晚根本没睡。~
== BJAHEIR ~别动，等一下。啊……我想我知道缘由了。你近来做过噩梦吗？~
== BC0SIRE2 ~做过……近来比平常更频繁。~
== BJAHEIR ~我怕你开始感到战斗对你心神的损耗了。这些事需要时间愈合，不过我能缓解一点疼痛。拿着这个。~
== BC0SIRE2 ~这些是草药？气味好强……哦！我已经觉得疼痛在消退了。~
== BJAHEIR ~休息时把这小袋垫在头下。若不见效，再来找我。~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneJaheira2","GLOBAL",1)~ THEN BJAHEIR C0SireneJaheira3
~你今天脸色红润，塞琳。睡得好吗？~ [C0BLANK]
DO ~SetGlobal("C0SireneJaheira2","GLOBAL",2)~
== BC0SIRE2 ~是的。我昨夜做了个极美的梦。多谢你的草药，贾希拉。~
== BJAHEIR ~记得按正确的分量用。过量会起反效果，或者更糟，让你长睡不醒。~
== BC0SIRE2 ~是……~
== BJAHEIR ~你心神飘忽。若是草药让你松懈，那我只好把它们收回。~
== BC0SIRE2 ~对不起，贾希拉。只是……~
== BC0SIRE2 IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~我梦见了我们在剑湾的冒险。真奇怪，那些回忆如今竟如此愉快。~
== BC0SIRE2 IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~可是……回想起来，那时和现在不也一样吗？我们每天都杀人，正如如今。我每夜想起那些被我们杀死的人，他们缠着我……~
== BJAHEIR IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~我明白了。那就是你噩梦的源头，是吗？~
== BC0SIRE2 IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~是的。我闭上眼，看见的全是血和尸体。我本以为击败萨瑞沃克就能结束这一切，可是……~
== BC0SIRE2 IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~我觉得自己可悲，贾希拉。我本以为经历了那么多杀戮，这事会变得容易些。可它没有。我怕我的软弱让我不配作伊尔梅特的斗士。~
== BJAHEIR IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~……~
== BJAHEIR IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~塞琳。~
== BC0SIRE2 IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~什么事？~
== BJAHEIR IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~有这样念头的并不只你一个。我第一次遇见卡立德时，他在许多方面也是这样。他……每次被迫杀人都会受影响。~
== BJAHEIR IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~他常向我倾诉，而我会斥责他，以至于他学会了在我面前藏起来，可我怀疑那些念头从未离开他的心里。~
== BC0SIRE2 IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~真的？我从没想过。我从没见过卡立德在战斗中犹豫，尽管他厌恶战斗。那很鼓舞人。~
== BJAHEIR IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~我说的是实话。你若认为有良心让你更软弱，那我建议你先去问问自己的常识，再来找我。~
== BC0SIRE2 IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~我明白了。谢谢你，贾希拉。~
== BC0SIRE2 IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~我在想，我用这个是否正当。从前我梦见那些被我杀死的人，如今那些梦没了，我在想，我是否为了自私的目的除去痛苦，而背弃了伊尔梅特的教诲。~
== BC0SIRE2 IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~也许我终究该把这些草药还回去。~
== BJAHEIR IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~这太荒唐了。若你的休息被噩梦搅扰，白天你还能做什么？让自己保持健康，好去保护同伴，这算自私之举吗？~
== BC0SIRE2 IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ THEN ~我想确实如此。原谅我有这样的念头。~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SirenePartyBG1","GLOBAL",1)
Global("C0SireneJaheira4","GLOBAL",2)
HPPercentLT("C0Sirene",50)~ THEN BJAHEIR C0SireneJaheira4
~你又再一次不顾必要地鲁莽与死亡调情。你就这么渴望死亡，以至于不顾性命地扑向敌人？~ [C0BLANK]
DO ~SetGlobal("C0SireneJaheira4","GLOBAL",3)~
== BC0SIRE2 ~我不愿死，贾希拉，可我宁愿舍命，也不愿因我的怯懦让另一个人倒下。~
== BJAHEIR ~愚蠢的念头。你若是因自己的鲁莽倒下，又怎么去护住任何人？~
== BC0SIRE2 ~我不会让那种事发生。~
== BJAHEIR ~是，可万一呢？~
== BC0SIRE2 ~……~
== BJAHEIR ~怎么？~
== BC0SIRE2 ~我……不知道。可我知道犹豫曾让别人付出极大代价，而没能护住他们是我的过错。我不能让同样的事再发生。~
== BJAHEIR ~那若你的行止导致你过早死亡呢？~
== BC0SIRE2 ~若真到那一步，那……我算是尽了职责。~
== BJAHEIR ~*叹气*你似乎铁了心要固执。那就随你吧。你还年轻。也许随着时间，你会明白你的命与任何人的命一样宝贵。~
EXIT

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("JaheiraNotHarper","GLOBAL",1)
Global("C0SireneJaheira5","GLOBAL",0)~ THEN BC0SIRE2 C0SireneJaheira5
~贾希拉，我……我不知道该说什么。想到你竟为<CHARNAME>……为我们的缘故舍弃竖琴手的位置。我无话可说。~ [C0BLANK]
DO ~SetGlobal("C0SireneJaheira5","GLOBAL",1)~
== BJAHEIR ~这事不必绕弯子，塞琳。你若不赞同我的行止，尽可当众说出来，只要你乐意。~
== BC0SIRE2 ~不，我——我不是那个意思。说实话，我钦佩你的决定。我知道那大概不是容易做的决定。~
== BJAHEIR ~你这就错了。虽然我做选择时也许犹豫过，可那是唯一正确的选择。若有需要，我还会再做一次。~
== BC0SIRE2 ~那么……你不后悔离开竖琴手？~
== BJAHEIR ~我没有抛弃同伴，塞琳，并非真的抛弃。我虽舍弃了在他们当中的位置，可我这样做正是因为那才是竖琴手的正道。也许你还不明白这一点，可假以时日你会明白的。~
== BC0SIRE2 IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ ~是的……也许你说得对。~
== BC0SIRE2 IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ ~我相信我对此的理解比你以为的更深，贾希拉……而我相信你所做的没错。~
EXIT

// Jan

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneJan1","GLOBAL",0)~ THEN BJAN C0SireneJan1
~那么，你身上有点魔鬼的血，嗯，姑娘？这让我想起我母亲那边的三表兄，兰巴。~ [C0BLANK]
DO ~SetGlobal("C0SireneJan1","GLOBAL",1)~
== BC0SIRE2 ~你的表兄有魔物祖先？~
== BJAN ~不，不完全是。我表兄兰巴是个颇有名气的法师，你看。他觉得法术对家族生意有益，果然，他的芜菁园是你见过最好的。他种的芜菁比我脑袋还大。他是你在法伦任何角落都找得到的最富有的詹森，这是实情。~
== BC0SIRE2 ~我看不出这跟……任何事有什么关系。~
== BJAN ~你等着瞧。兰巴遇到的事是场可怕的悲剧。他的竞争对手大多很嫉妒他，而他知道。所以，为防他们对他的宝贝生计使坏，他召来一个深坑魔物，签下千年契约，保护他的园子不受任何可能的破坏者侵扰。那魔物发现自己在看守一片芜菁田时，当然暴怒。可你若签了魔鬼的契约，双方谁都脱不了身。~
== BC0SIRE2 ~哦。天哪。那不可能有好结果。~
== BJAN ~确实。偏巧兰巴的妻子，一位名叫米莉·詹森的可爱花朵，看上了她丈夫召来的那个深坑魔物。起初只是芜菁园里愉快的长谈。然后她忽然有了身孕，兰巴心碎了。他把那魔物逐回九层地狱，烧平了自己的芜菁园，然后消失了。家族里没人知道他出了什么事，可这对家族是巨大的损失。~
= ~至于米莉，她那个坎比翁儿子生来红皮，头顶还长着小角。我猜那小子若还活着，如今该跟你差不多年纪了。~
== BC0SIRE2 ~扬，这故事……真让人不安。请原谅我要尽快把它忘掉。~
EXIT

// Keldorn

CHAIN 
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneKeldorn1","GLOBAL",0)
Global("C0SirenePartyBG1","GLOBAL",1)
!Global("DomainPaladinBattle","GLOBAL",2)~ THEN BC0SIRE2 C0SireneKeldorn1
~终于见到您真是荣幸，凯尔登爵士。阿詹提斯对您推崇备至。~ [C0BLANK]
DO ~SetGlobal("C0SireneKeldorn1","GLOBAL",1)~
== BKELDOR ~那你一定是塞琳了。荣幸的是我，小姑娘。阿詹提斯对你格外热心地称赞。我很少见他把别人捧得这么高，尤其是在书信里。~
= ~说实话，我很惊讶像你这样年轻的人竟已踏上圣武士之路，并如此忠诚地坚守。~
== BC0SIRE2 ~并不像您说的那么了不起，先生。虽然我的血统让事情……更难些，我想。~
== BKELDOR ~我得承认，当我收到阿詹提斯详述他剑湾之行成果的信时，看到他提到你的形貌，我很惊讶。~
= ~我的许多同僚以为那是他想开玩笑，可我了解他。看来他十分担心，若你有一天来到骑士团，会受到怎样的对待。~
== BC0SIRE2 ~（微笑）我真心感激他。阿詹提斯还好吗，大人？我已好几个月没见他了，可惜在我到骑士团之前他就离开了阿斯卡特拉。~
== BKELDOR ~唉，自那小子通过考验、走自己的路之后，我就没见过他。我希望骑士身份没冲昏他的头。那小子一向没耐性。~
== BC0SIRE2 ~（笑）看来他变化不大。我真想他。~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneKeldorn2","GLOBAL",0)~ THEN BKELDOR C0SireneKeldorn2
~我承认我对受苦圣战者所知甚少。能跟我讲讲你们这一派吗，塞琳？~ [C0BLANK]
DO ~SetGlobal("C0SireneKeldorn2","GLOBAL",1)~
== BC0SIRE2 ~除了我自己多年的服事，我能讲的不多，凯尔登爵士。我从没遇见过同派的另一个人。~
== BKELDOR ~真的？我记得你提过，你年轻时生活在伊尔梅特的信徒当中。没有别的圣武士吗？~
== BC0SIRE2 ~没有，先生。虽然圣武士也在伊尔梅特的信众之中，可我们很稀少，因为我们大体上是个和平的教派。我是个……例外。~
== BKELDOR ~是什么让你成了例外？~
== BC0SIRE2 ~我年轻时脾气火爆，先生。我的血让我与其他孩子疏远，他们因此敌视我。~
== BKELDOR ~孩子有时很残忍。我的女儿们也受过同样的对待，说来令人难过。~
== BC0SIRE2 ~最终我受不了了，于是打了一架。我并不为此自豪。~
== BKELDOR ~可祭司们觉得习武的使命能约束你。明智的选择。~
== BC0SIRE2 ~我并不总这样觉得，先生。我常觉得自己不配以这样的身份服事伊尔梅特。~
== BKELDOR ~别怀疑自己，孩子。让过去留在过去，让你的未来行止决定你是否配得。~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneKeldorn3","GLOBAL",0)~ THEN BKELDOR C0SireneKeldorn3
~你在伊尔梅特的教会服事多久了？~ [C0BLANK]
DO ~SetGlobal("C0SireneKeldorn3","GLOBAL",1)~
== BC0SIRE2 ~依我记忆，至今八年。与您数十年的服事相比，不过微末。~
== BKELDOR ~是的，可决定骑士价值的是奉献，不是年岁，塞琳。~
== BC0SIRE2 ~若说奉献，凯尔登爵士，那我可不敢与您争。~
== BKELDOR ~哈！你给我的赞誉超过我应得的，孩子。你过往里必定有些事能让你自豪地讲述。~
== BC0SIRE2 ~*叹气*确有一件事，先生，可我想到它时，感到的不是自豪。您知道铁暴君吗？~
== BKELDOR ~知道，海岸大路那一带有名的奴隶领主。若我没记错，他叫阿萨多。他的恐怖统治在去年以他的死结束了，不是吗？~
== BC0SIRE2 IF ~OR(2) PartyHasItem("c0sw2h") PartyHasItem("c0sw2h2")~ THEN ~是的。因为我杀了他。这把剑……曾是他的。~
== BC0SIRE2 IF ~!PartyHasItem("c0sw2h") !PartyHasItem("c0sw2h2")~ THEN ~是的。因为我杀了他。~
== BKELDOR ~真的？若果真如此，那你当然值得称赞。很少人能在这样年轻时成就这么多。~
== BC0SIRE2 ~不，先生。赢了那一场的不是我的技艺，而是运气，以及他的傲慢，救了我的命。~
== BKELDOR ~你什么意思？~
== BC0SIRE2 ~我……不愿谈这件事，先生。只说那不是我最自豪的时刻，而那一战的疤至今还在。~
EXIT

CHAIN 
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneKeldorn4","GLOBAL",0)
Global("LadyMaria","GLOBAL",5)~ THEN BC0SIRE2 C0SireneKeldorn4b
~您看上去比以往更快活了，凯尔登爵士。~ [C0BLANK]
DO ~SetGlobal("C0SireneKeldorn4","GLOBAL",1)~
== BKELDOR ~我为何不快活？我的心从没有过这样轻，仿佛卸下了一副重担。~
== BC0SIRE2 ~是，我不怀疑。只是……我从没见过您这样……满足。~
== BKELDOR ~是的，也许确实如此。我们这一行里值得满足的事少得可怜。可自从玛丽亚与我和解，我们的烦恼就显得远了。我很久没有过这样的感觉了。~
== BC0SIRE2 ~我希望，若我有一天有了家……我也能感受到同样的东西。~
== BKELDOR ~别担心，塞琳。你还年轻，前头有一整段人生。而懂得不重犯我的错……你会比这老糊涂更早体会到同样的喜乐。~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneKeldorn5","GLOBAL",0)
Global("C0SirenePartyBG1","GLOBAL",1)
Global("DomainPaladinBattle","GLOBAL",2)~ THEN BKELDOR C0SireneKeldorn5
~你显得筋疲力尽，塞琳。没休息好吗？~ [C0BLANK]
DO ~SetGlobal("C0SireneKeldorn5","GLOBAL",1)~
== BC0SIRE2 ~我睡不着，凯尔登爵士。我闭上眼，就看见我的朋友阿詹提斯躺在地上死去。那是桩大罪。~
== BKELDOR ~是的，是桩罪，可不是我们的，孩子。过错在于那欺瞒了我们所有人的邪恶。~
== BC0SIRE2 ~也许吧，可终究是我的剑促成了他的终结，先生。我怎能不想他？~
== BKELDOR IF ~!Dead("Firkra02")~ THEN ~我们会让造成他不义之死的邪恶受到制裁，塞琳。你不必为阿詹提斯的死感到自责。~
== BKELDOR IF ~Dead("Firkra02")~ THEN ~害死阿詹提斯的恶龙已经倒下了，塞琳，那些被不义杀害的人已经得到复仇。你不必为过去的事感到愧疚。~
== BC0SIRE2 ~这……还不够，先生。可我仍感激您的宽慰。~
EXIT

CHAIN 
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneKeldorn6","GLOBAL",0)
!Alignment("C0Sirene",LAWFUL_GOOD)~ THEN BC0SIRE2 C0SireneKeldorn6
~我一直没听到您的想法，凯尔登爵士……是我的行止让您如此不快吗？~ [C0BLANK]
DO ~SetGlobal("C0SireneKeldorn6","GLOBAL",1)~
== BKELDOR ~倒也不是。我……不会因你的决定责怪你，尽管我不能赞同。服事你的神该被视为神圣的荣誉，不该轻易舍弃。~
== BC0SIRE2 ~那并非容易的决定，先生，可是……尽管我有遗憾，我相信我现在走的这条路。~
== BKELDOR ~你若没有疑虑，那我便不再评判你。可为了你好，我仍要给你一些中肯的劝告。~
== BC0SIRE2 ~我在听，先生。~
== BKELDOR ~走正道……有许多方式。我还没瞎到否认这一点。可一颗善心必须以信念与对某项事业的忠诚来淬炼。若偏离这一点，只信自己所认定的对，那就会成为暴君。~
== BKELDOR ~你还年轻……傲慢还没在你身上长成。我劝你听我的话，好让它永远长不出来。~
== BC0SIRE2 ~我……明白了。我会的，先生。只有一件事我必须求您——尽管有我的行止，我还能有您的友谊吗？~
== BKELDOR ~是的……我只希望你能仔细想过，你的选择对你自己意味着什么。~
EXIT

// Korgan

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneKorgan1","GLOBAL",0)~ THEN BC0SIRE2 C0SireneKorgan1
~科根，除了杀戮，你还从别的事里得到乐趣吗？~ [C0BLANK]
DO ~SetGlobal("C0SireneKorgan1","GLOBAL",1)~
== BKORGAN ~这算什么傻问题，嗯，女人？当然有！~
== BC0SIRE2 ~我不是说那些表面的东西。我亲眼见过你的种种纵情，虽然并不情愿，可你在战场上时……不一样。仿佛你在战斗里失去了人性。~
== BKORGAN ~嘿，嘿嘿，这话也许你说对了，女人，这可是头一回。好麦酒、娘们和金子都不错，可一把沾血的斧头才是我的真爱，头等要紧。~
== BC0SIRE2 ~你能这么轻描淡写地谈这种事，科根？你的良心从不影响你吗？~
== BKORGAN ~不。~
== BC0SIRE2 ~当真？~
== BKORGAN ~你自己也是个杀手，女人，别不认。科根对那些敢挡他斧头的蠢货毫无悔意。就算我脑子里有个小声音说别的，它也被我敌人的惨叫和斧头劈开他们骨头的声音盖过去了。~
== BKORGAN ~啊，看战场上那片红雾……那才是我活着的意义。这就是生活之道，姑娘，你最好趁还能享受就享受，哈哈！~
== BC0SIRE2 ~你真是个令人作呕的存在，科根。我们说得够多了。~
EXIT

// Mazzy

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneMazzy1","GLOBAL",0)~ THEN BC0SIRE2 C0SireneMazzy1
~你过得好吗，玛兹女士？~ [C0BLANK]
DO ~SetGlobal("C0SireneMazzy1","GLOBAL",1)~
== BMAZZY ~请别这样，塞琳，不必这么拘礼。我就是玛兹。~
== BC0SIRE2 ~可是……~
== BMAZZY ~不，请别。我知道你是好意，可被人这样称呼让我不自在。我不是真正的骑士，不配这样的称号。~
== BC0SIRE2 ~若……若你希望如此。很抱歉冒犯了你。~
== BMAZZY ~你一点也没冒犯我。不过，若没有别的要紧事，也许我们俩都该专心赶路了。~
EXIT

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneMazzy2","GLOBAL",0)~ THEN BC0SIRE2 C0SireneMazzy2
~（低声）「痛苦自牺牲而来。忍耐自痛苦而来。力量自忍耐而来。愿伊尔梅特赐我勇气，为所爱之人舍命，也赐我力量去忍耐。」~ [C0BLANK]
DO ~SetGlobal("C0SireneMazzy2","GLOBAL",1)~
== BMAZZY ~又在祈祷，塞琳？我得说，我钦佩你的虔诚。~
== BC0SIRE2 ~哦，你好，玛兹女士。希望我没打扰你。~
== BMAZZY ~当然没有。而且如我先前所说，不必这样正式地称呼我。~
== BC0SIRE2 ~原谅我。只是……跟你说话时，我觉得自己不配。~
== BMAZZY ~不配？请别这样，塞琳，不必这样想。你作为骑士的受人敬重，并不比我少。~
== BC0SIRE2 ~是的，可是……~
== BMAZZY ~不，别再说下去。我承认我起初有过疑虑，可亲眼见你对你神的虔诚，已经抹去了我可能有的一切怀疑。我不怨你正当赢得你的圣武士身份，我更希望我们以平等的身份相待。~
== BC0SIRE2 ~这对我意义重大，玛兹女——我是说，玛兹。我希望将来我们能互相倚靠。~
== BMAZZY ~确实。我本想为阿佛瑞恩、为我失去的朋友们做我自己的祈祷。你愿意陪我坐一会儿吗？~
== BC0SIRE2 ~那是我的荣幸。~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneMazzy3","GLOBAL",0)~ THEN BMAZZY C0SireneMazzy3
~我的朋友，自从我们第一战起，有个问题一直在我心里。我在战斗中观察过你，你和我一样是讲究巧劲的战士。你可曾受过弓箭的训练？~ [C0BLANK]
DO ~SetGlobal("C0SireneMazzy3","GLOBAL",1)~
== BC0SIRE2 ~是的……年轻时短暂练过。我没能坚持下来。~
== BMAZZY ~为何不能？除非我大错特错，你在这方面有天分。我练弓这么多年，我想我比多数人更清楚。~
== BMAZZY ~这技法很难，可我觉得你天生就是这块料。你若愿意，我很想教你。~
== BC0SIRE2 ~不，玛兹……也许我该解释一下。~
== BC0SIRE2 ~我年轻时确实练过弓。我甚至一度熟练到能去打猎。可那是在我开始作为伊尔梅特信徒受训之前。~
== BC0SIRE2 ~自从我接受了这一派关于牺牲与殉道的教义……我便相信，要真正护住别人，我必须成为他们不屈的壁垒。于是我下定决心，再也不持弓。~
== BMAZZY ~啊……我想我现在明白了。原谅我，我的朋友，这么坚持，却没完全弄懂你的动机。你选择兵器的理由令人敬佩。~
== BC0SIRE2 ~别道歉，玛兹。我知道你一心为我好。而且说实话，我怀疑我无论如何也比不上你的弓术。~
== BMAZZY ~哈哈！你太抬举我了。~
== BC0SIRE2 ~不过真的，我相信这样最好。我们的战斗风格彼此契合得恰到好处。我们在战场上是一对劲旅。~
== BMAZZY ~确实如此，我的朋友。确实如此。~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneMazzy4","GLOBAL",0)~ THEN BMAZZY C0SireneMazzy4
~这对你来说艰难吗，我的朋友？~ [C0BLANK]
DO ~SetGlobal("C0SireneMazzy4","GLOBAL",1)~
== BC0SIRE2 ~你指什么，玛兹？~
== BMAZZY ~我指你作为伊尔梅特斗士的角色。我无法想象这对你是轻松的一生，若你容我这么说。~
== BC0SIRE2 ~不……不，并不轻松。我确实经历过许多不信任与偏见。~
== BMAZZY ~你让我对自己的处境有了些新的看法……尽管我过去面对过针对我种族的种种居高临下之言，我仍……算是被接受，姑且这么说，而且在我以剑与弓证明自己之后，再没有蠢到继续为难我的人。可是……我无法想象你的处境。~
== BC0SIRE2 ~是的，也许这世界永远不会接纳我……可善良的男人和女人接纳了我。有<CHARNAME>，还有你……我的朋友。~
== BMAZZY ~我相信还会有更多。不过来吧，我们俩都愁够了。说些快活的事吧。~
== BC0SIRE2 ~也许这样最好。~
EXIT

CHAIN 
IF ~InParty("Mazzy")
InParty("Valygar")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneMazzy6","GLOBAL",0)~ THEN BC0SIRE2 C0SireneMazzy5
~玛兹……你和瓦里格之间有什么不和吗？~ [C0BLANK]
DO ~SetGlobal("C0SireneMazzy6","GLOBAL",1)~
== BMAZZY ~什么？我不确定你在暗示什么，塞琳。~
== BC0SIRE2 ~你近来把许多注意力放在他身上。不该我来多问，可我偶尔听见他在你听不到的地方嘟囔。~
== BMAZZY ~他在嘟囔？嗯……也许我近来对他要求多了些。我还不习惯有个扈从，而他从不直接跟我抱怨。~
== BC0SIRE2 ~瓦里格，做扈从？当真？~
== BMAZZY ~嗯……我本以为他是绝佳的人选。他技艺娴熟、有担当、可信……而我觉得他需要些陪伴。这是增进同伴间情谊的好法子，我原这么想。~
== BC0SIRE2 ~（微笑）你也许说得对，可我怕他只是在顺着你，或是不想让你失望。你有时会相当……坚持。~
== BMAZZY ~绝不会！……你真这样想？我其实从没考虑过……可我不能直接问他，那样不妥。~
== BC0SIRE2 ~那么也许我该去跟他说……我会向他保证你是好意。~
== BMAZZY ~那我非常感激。~
EXIT

// Minsc

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneMinsc1","GLOBAL",0)
Global("C0SirenePartyBG1","GLOBAL",1)~ THEN BMINSC C0SireneMinsc1
~啊，与战友重逢总是令人欢喜的日子，塞琳！瞧布布多兴奋，想到又能在你身边作战！~ [C0BLANK]
DO ~SetGlobal("C0SireneMinsc1","GLOBAL",1)~
== BC0SIRE2 ~是的，我也很高兴再见到你，明斯克。我非常想念你的陪伴。~
== BMINSC ~这让明斯克眼眶湿了，布布也是，虽然我们看不见。布布说，他原怕塞琳离开我们后会孤独，现在不怕了！~
== BC0SIRE2 ~真的，能又置身朋友之中我很高兴。我只希望……迪娜希尔也在。~
== BMINSC ~是的……迪娜希尔的死是我最大的耻辱。我的失败让我蒙羞。~
== BC0SIRE2 ~我明白，明斯克，真的。我也没能护住别人。有时我甚至希望……希望倒下的是我。~
== BMINSC ~明斯克很懂这种感觉。我本愿自豪地以我的命换迪娜希尔的命，可是……~
== BC0SIRE2 ~不，别再说下去，我的朋友。已成的事就已成定局。现在剩下的，只有护住还活着的人。~
== BMINSC ~还有复仇！明斯克不见迪娜希尔得报此仇，绝不罢休！~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneMinsc2","GLOBAL",0)
HPPercentLT("Minsc",75)~ THEN BMINSC C0SireneMinsc2
~唉，明斯克流血了！可这些伤会变成疤，而它们带来骄傲！我们又胜利了，我的朋友！~ [C0BLANK]
DO ~SetGlobal("C0SireneMinsc2","GLOBAL",1)~
== BC0SIRE2 ~是的，明斯克。你打得很好，一如往常。有你在战场上伴我，我觉得自己也受了激励，要打得更狠。~
== BMINSC ~布布说塞琳也有很多疤。你一定像明斯克一样，经历过许多战斗。~
== BC0SIRE2 ~我和你并没有那么大不同，明斯克。我以为他人的缘故流血为荣，好让他们免受那份痛。~
== BMINSC ~好目标！可是……明斯克担心，这对小小的塞琳来说也许太重了。~
== BC0SIRE2 ~也许确实太重。我毫不怀疑有一天我会以职责之名倒下。可……到那一天，我唯一的遗憾会是我没能多救一些人。我的生命也许自出生起就被诅咒，可我会坚持下去，看看它究竟有没有价值。~
== BMINSC ~这样的话只有真正的英雄才说得出来！好好记住，布布。能在你身边作战，是明斯克最大的快乐，我的朋友！~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneMinsc3","GLOBAL",0)~ THEN BMINSC C0SireneMinsc3
~明斯克有个问题要问我们的朋友塞琳。~ [C0BLANK]
DO ~SetGlobal("C0SireneMinsc3","GLOBAL",1)~
== BC0SIRE2 ~什么问题，明斯克？~
== BMINSC ~布布说塞琳伤得很重。可明斯克在我们的朋友身上看不见任何伤。明斯克很不明白，为什么布布说你受伤了。~
== BC0SIRE2 ~……~
== BC0SIRE2 ~布布还跟你说了什么，我的朋友？~
== BMINSC ~没有了，可他告诉明斯克，该跟你好好长谈一次，谈谈你为什么受伤——是「心」，不是「硬」，谢谢你，布布——是谈心的长谈。~
== BC0SIRE2 ~我明白了……原来是这件事。不，明斯克，我没有受伤，可谢谢你的关心。确实有痛，但那痛在里面。~
== BMINSC ~伤在里面？这下明斯克完全糊涂了。~
== BC0SIRE2 ~不，明斯克，那痛不是实体。它只是一种感受，跟你自己的失落相似……我感觉到的就是这个。~
== BMINSC ~明斯克为失去迪娜希尔非常难过。你是说你一直都很难过吗？哦，不！那太可怕了！明斯克有时难过到想把心挖出来，好让那难过消失。他不能让朋友们也有同样的感受！~
== BC0SIRE2 ~别担心，明斯克。说出来会让它……好一些。也许这就是布布让你来跟我说话的原因。谢谢你。~
== BMINSC ~这是布布的主意。所以明斯克觉得你该谢他。~
== BC0SIRE2 ~（笑）好罢。谢谢你，布布。~
EXIT

// Nalia

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneNalia1","GLOBAL",0)~ THEN BNALIA C0SireneNalia1
~塞琳，你是伊尔梅特的信徒。你帮过很多不幸的人吗？~ [C0BLANK]
DO ~SetGlobal("C0SireneNalia1","GLOBAL",1)~
== BC0SIRE2 ~凡我力所能及的，我都帮，娜莉亚。虽然……确实有许多人生活在贫困中。~
== BNALIA ~我在城里跟伊尔梅特的祭司们谈过许多。我不属于这一信仰，可我敬重它的信徒。可是……我不知道伊尔梅特信徒也有圣武士。你们这一信仰要战士做什么？~
== BC0SIRE2 ~说实话，几乎不需要。伊尔梅特的教士大体上厌恶暴力。然而……有时那是无法避免的。~
== BNALIA ~我能理解。可你们的信仰并不常诉诸于此，对吧？你们不是首先为他人寻求怜悯吗？~
== BC0SIRE2 ~是的，我们相信人人都有救赎的可能，只要他们真心愿意。这很少容易，可那些真能为自己的行止悔恨的人，罪可以被赦免。~
== BNALIA ~*叹气*你说得好像很容易。可我不会相信，看我认识的那些人……~
== BC0SIRE2 ~娜莉亚？~
== BNALIA ~什么？哦，算了。也许我们改天再谈完这个。~
EXIT

CHAIN 
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneNalia2","GLOBAL",0)~ THEN BC0SIRE2 C0SireneNalia2
~自我们上次谈过，我想了很多，娜莉亚。你相信真有人天生不可能为善吗？~ [C0BLANK]
DO ~SetGlobal("C0SireneNalia2","GLOBAL",1)~
== BNALIA ~*叹气*说实话？我没想过。你先前的话让我停顿了一下，可是……我的经验说有。~
== BC0SIRE2 ~真的？你愿意跟我说一个吗？~
== BNALIA IF ~!Global("RoenalConvict","GLOBAL",1)~ THEN ~嗯，就说我的……唉，「未婚夫」，伊萨亚。他不只是被惯坏的混小子，我还知道他过去干过可怕的事。而且还有人比他更坏。~
== BNALIA IF ~Global("RoenalConvict","GLOBAL",1)~ THEN ~嗯，你见过伊萨亚。你也知道他都干了什么，可我知道还有别人一样坏，甚至更坏。~
== BC0SIRE2 ~更坏？我——我几乎无法想象。~
== BNALIA ~我起初也无法。父亲不喜欢谈这些，尤其在我面前，可我在关起的门后听过一些事。社会上的贵族不比罪犯好，用平民的劳作填满自己的口袋。真恶心。~
== BNALIA ~他们也不觉得这有什么不对。要说的话，他们还*引以为傲*。他们在人前那副高高在上的样子，炫耀自己的财富与势力……我甚至无法想象他们会做哪怕一件好事。~
== BC0SIRE2 ~这确实可怕，娜莉亚，我同意。可我们俩又能做什么？~
== BNALIA ~*叹气*我想什么也做不了。可也许有一天……~
EXIT

// Valygar

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneValygar1","GLOBAL",0)~ THEN BVALYGA C0SireneValygar1
~无论我们走到哪里，魔法都像瘟疫一样缠着我们。这不让你担忧吗？~ [C0BLANK]
DO ~SetGlobal("C0SireneValygar1","GLOBAL",1)~
== BC0SIRE2 ~你常谈魔法的邪恶，瓦里格。你不相信是心怀恶意的人在滥用魔法吗？~
== BVALYGA ~我不觉得这有区别。~
== BC0SIRE2 ~可你总该相信世上存在心怀善意的法师吧？~
== BVALYGA ~也许。可谁能说得准，他们追寻更多力量的过程中何时就被腐蚀了？~
== BC0SIRE2 ~我看得出你是凭经验在说，我的朋友。你认识这样一个人吗？~
== BVALYGA ~我母亲是个法师。我像任何男孩爱母亲那样爱她，可她真正爱的只有魔法。它把她扭曲到我再认不出她。~
== BC0SIRE2 ~我很遗憾。她现在在哪里？~
== BVALYGA ~她和我父亲都成了污秽的不死之物。留下我去结束他们的痛苦，让他们的身体安息。那记忆至今缠着我。~
== BC0SIRE2 ~太可怕了……我无法想象你被迫做这种事有多痛苦。~
== BVALYGA ~这是我家族的诅咒，塞琳。魔法给我的人生带来的只有悲伤。除了邪恶之力，还有什么会在这么多人身上造出这样的疯狂？~
== BC0SIRE2 ~我……不知道。我仍不能完全同意你的看法，可我理解你的意思。~
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneValygar2","GLOBAL",0)
HPPercentLT("Valygar",50)~ THEN BC0SIRE2 C0SireneValygar2
~瓦里格，你受伤了！~ [C0BLANK]
DO ~SetGlobal("C0SireneValygar2","GLOBAL",1)~
== BVALYGA ~我注意到了。~
== BC0SIRE2 ~这不是说笑的事。你为什么不立刻来找我？~
== BVALYGA ~我能自己处理伤口，塞琳。我是游侠，不是无助的孩子。你的本事该用在别人身上。~
== BC0SIRE2 ~我的职责是对一切受苦之人，而这也包括你，我的朋友。我坚持你待着别动，让我给你治伤。~
== BVALYGA ~（叹气）随你。~
== BC0SIRE2 ~这伤比我想的更重……原谅我，瓦里格，这可能有点刺痛。~
== BVALYGA ~*闷哼*~
DO ~ForceSpell("Valygar",PALADIN_LAY_ON_HANDS)~
== BC0SIRE2 ~……好了。眼下这样就行。你的耐痛力惊人……多数人会痛得叫出来。~
== BVALYGA ~我受过更重的。~
== BC0SIRE2 ~这我相信，看过你身上那些旧伤之后。我真不敢相信你会把这么可怕的伤藏起来。等我们扎营，我会好好处理它们。~
== BVALYGA ~可是……（叹气）你不会接受拒绝的，对吧？好吧……我期待着。~
== BVALYGA ~还有……谢谢你。~
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneValygar3","GLOBAL",0)~ THEN BC0SIRE2 C0SireneValygar3
~我能求你一件事吗，瓦里格？~ [C0BLANK]
DO ~SetGlobal("C0SireneValygar3","GLOBAL",1)~
== BVALYGA ~什么事？~
== BC0SIRE2 ~若你允许，我想与你对练。你的剑术是我见过无人能及的，我觉得我能从你的技法中学到东西。~
== BVALYGA ~……~
== BVALYGA ~……不。~
== BC0SIRE2 ~可是——~
== BVALYGA ~我不是教头。我的剑从来都是杀人用的。我这辈子从没训练过别人。~
== BC0SIRE2 ~就没有办法让你改变主意吗？~
== BVALYGA ~除非你准备好把命押上去。再问之前，先仔细想清楚。~
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneValygar3","GLOBAL",1)~ THEN BC0SIRE2 C0SireneValygar4
~我已经下定决心了，瓦里格。~ [C0BLANK]
DO ~SetGlobal("C0SireneValygar3","GLOBAL",2)~
== BVALYGA ~你这回又想要什么，塞琳？~
== BC0SIRE2 ~我仔细想过你对我说的话，尽管……不，正因为你的话，我再来求你——训练我。~
== BVALYGA ~你真把自己的命看得这么轻？就算你不看重，我也仍要拒绝。我无意伤你。~
== BC0SIRE2 ~不，恰恰相反。你先前的话让我重新思考我为何想向你学，而我不得到一个答复是不会回来的。~
== BVALYGA ~……我在听。~
== BC0SIRE2 ~我知道我求的很多，冒的险也很大。可我需要你以杀我的意图与我交手，好让我能倾全力去守护。唯有如此，我才可能变得更强。~
== BVALYGA ~我想这有道理，可你若失败了呢？代价就是死。那你必须守护的人又怎么办？~
== BC0SIRE2 ~这风险我必须承担。我过去太……犹豫了。如今这样的我，救不了我想救的所有人。我希望你能在这方面帮我，我的朋友。~
== BVALYGA ~嗯。~
DO ~SetGlobalTimer("C0SireneValygarTimer","GLOBAL",ONE_WEEK)~
== BVALYGA ~好。你赢了，塞琳。可别说我没警告过你。我不会留手。~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneValygar4","GLOBAL",0)
Alignment("C0Sirene",LAWFUL_GOOD)~ THEN BVALYGA C0SireneValygar5
~在我们所有人当中，你是我能敬重的一个，塞琳。~ [C0BLANK]
DO ~SetGlobal("C0SireneValygar4","GLOBAL",1)~
== BC0SIRE2 ~谢谢你，瓦里格，可你凭什么敬重我？我既没有你的战斗技艺，也没有你对自己事业的执着。~
== BVALYGA ~你的血统里有黑暗的力量，可你像我一样，无论它多诱人都不肯动用。这一点上我们相似。~
== BC0SIRE2 ~我明白了……所以你觉得我对自身炼狱之血的抗拒让我配得敬重，我的朋友？知道这个让我安心。~
== BVALYGA ~我见过太多法师，发现一点力量的火花便为培养它而迷失了自己。可我们俩生来都带着那火花，谁都没有选择去滋养它。我想我们该为此自豪。~
== BC0SIRE2 ~也许确实如此。~
EXIT

// Viconia

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SirenePartyBG1","GLOBAL",1)
Global("C0SireneViconia","GLOBAL",0)~ THEN BC0SIRE2 C0SireneViconia1
~险些被活活烧死……维康尼亚，尽管我们彼此为敌，我仍为发生的事感到难过。~ [C0BLANK]
DO ~SetGlobal("C0SireneViconia","GLOBAL",1)~
== BVICONI ~这是你想来嘲弄我吗，jalil？我不要你的怜悯。帮我们俩一个忙，去对别人做你那副假惺惺的样子。~
== BC0SIRE2 ~我给的并非怜悯，维康尼亚。~
== BVICONI ~不是？我记得，塞琳，你厌恶我。你不会把你那所谓的慈悲给我，我也不想要。~
== BC0SIRE2 ~维康尼亚——~
== BVICONI ~继续演这场戏没有意义。我对你的胡话毫无兴趣，魔血。别烦我。~
EXIT

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneViconia2","GLOBAL",0)~ THEN BC0SIRE2 C0SireneViconia3
~你信任我吗，维康尼亚？~ [C0BLANK]
DO ~SetGlobal("C0SireneViconia2","GLOBAL",1)
RealSetGlobalTimer("C0SireneViconiaRestTimer","GLOBAL",2700)~
== BVICONI ~什么？你又在胡说些什么，jalil？~
== BC0SIRE2 ~就是我说的：你信任我吗，不是作为朋友，而是作为同伴，在你需要时出手相助？~
== BVICONI ~需要你？我不需要像你这样自命清高的人。我们是利益上的盟友，能维持多久就多久。~
== BC0SIRE2 ~你一生中从没信任过任何人吗，维康尼亚？连<CHARNAME>也没有？~
== BVICONI ~你该记住这一课，jalil：卓尔的语言里没有「信任」这个词。信任就是向别人示弱，而示弱很快就会招来死亡。~
== BC0SIRE2 ~除非你所信任的人愿意护住你。~
== BVICONI ~如我先前所说，信任是给蠢人和死人的。而你要明白：我两样都不会成为。~
EXIT

// Sirene/Viconia 2

CHAIN
IF ~Global("C0SireneViconiaRest","GLOBAL",2)~ THEN BC0SIRE2 C0SireneViconia2
~维康尼亚，你还没领你那份饭。在这儿。~ [C0BLANK]
DO ~SetGlobal("C0SireneViconiaRest","GLOBAL",3)
SetGlobal("C0SireneViconia2","GLOBAL",2)~
== BVICONI ~这是什么糊糊，jalil？你真指望我吃这个？~
== BC0SIRE2 ~这是昨天剩的炖菜，维康尼亚。你当时似乎还挺喜欢。~
== BVICONI ~显然它放坏了。光这气味就冒犯我。拿走。~
== BC0SIRE2 ~你若真这么恨我，维康尼亚，那就直说。不必这样奚落我。~
== BVICONI ~哦？我真有这么好懂？显然我得学着更小心地掩饰情绪。~
== BC0SIRE2 ~要吃就吃，不吃就罢，维康尼亚。我只是在照顾你。~
== BVICONI ~这就是你表现……你们地表人管它叫什么？怜悯？慈悲？呸。对卓尔来说，这些东西根本是一回事。软弱的德行。~
== BVICONI ~你自称在「照顾」我？嘲弄我的人正是你，elg'caress。你的行止不过是怜悯。我唾弃你的怜悯，你若指望感激，那你就什么也得不到。~
== BC0SIRE2 ~……~
== BVICONI ~嗯……你眼里的怒火烧得像火焰，elg'caress。你是要从内部把自己烧尽吗？那可真有趣。~
== BC0SIRE2 ~*砰！*~
== BVICONI ~哦天。真是浪费。我没想到你会发这种孩子气的脾气。~
== BC0SIRE2 ~我受够了。饿死吧，维康尼亚，如果你宁愿如此。我会记得不再帮你的忙。~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneViconia2","GLOBAL",2)~ THEN BVICONI C0SireneViconia4
~你以为你在做什么？~ [C0BLANK]
DO ~SetGlobal("C0SireneViconia2","GLOBAL",3)~
== BC0SIRE2 ~你在说什么，维康尼亚？~
== BVICONI ~你心里清楚。上一战里你替我挨的那一下，本来是冲着我的。你本可以让我死。~
== BC0SIRE2 ~我不会的。护住站在我身边的人是我的职责。~
== BVICONI ~尽管我们上次说话时我那样辱骂你？我清楚记得你说过不再帮我「任何忙」。~
== BC0SIRE2 ~你若以为我会为一场口角小气到让你去死，维康尼亚，我怕你误会我了。~
== BVICONI ~显然我误会了。你真是个怪人。~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneViconia2","GLOBAL",3)~ THEN BVICONI C0SireneViconia5
~jalil——我是说，塞琳。我要跟你说话。~ [C0BLANK]
DO ~SetGlobal("C0SireneViconia2","GLOBAL",4)~
== BC0SIRE2 ~你，主动来找我说话，维康尼亚？我在听。~
== BVICONI ~我向你认输。我原以为你待我的方式不过是居高临下的怜悯。那……已经变了。~
== BC0SIRE2 ~那么，你终于明白我并不怜悯你？~
== BVICONI ~别把我的话当成道歉。我对你的看法没有变。你那所谓的德行总有一天会害死你。可是……我还没骄傲到不肯承认自己错在哪里。~
== BVICONI ~你和我经历过相似的事。你也许是个鲁莽天真的蠢货，可你不是伪君子。我想我们没那么不同。~
== BC0SIRE2 ~随你怎么看我，维康尼亚。我们是盟友，只要这关系还在，我就会这样待你。~
EXIT

// Yoshimo

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneYoshimo1","GLOBAL",0)~ THEN BC0SIRE2 C0SireneYoshimo1
~你离家很远了，吉野。你为何要远行至此？~ [C0BLANK]
DO ~SetGlobal("C0SireneYoshimo1","GLOBAL",1)~
== BYOSHIM ~当然是冒险。名声、财富与荣耀。还需要什么？~
== BC0SIRE2 ~真就这些？没有任何特别的目的，就来到这么陌生的地方，看来很奇怪。~
== BYOSHIM ~我是个爱冒险的人，亲爱的塞琳。有些经历在书本与故事的安全里是说不透的。必须亲眼去看！~
== BC0SIRE2 ~是的……这一点我很明白。~
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneYoshimo2","GLOBAL",0)~ THEN BC0SIRE2 C0SireneYoshimo2
~多跟我讲讲卡拉图。那听起来是个美丽的国度。~ [C0BLANK]
DO ~SetGlobal("C0SireneYoshimo2","GLOBAL",1)~
== BYOSHIM ~我怕言语不足以形容我故乡的奇景，可我还是会尽力，我的朋友。你想知道什么？~
== BC0SIRE2 ~凡你愿意讲的。我对卡拉图所知只有一点，都来自史书。它听起来几乎……太神秘了，不像是真的。~
== BYOSHIM ~是的，在这些地方，卡拉图的传说被浪漫化得更多。可其中也有真实。比如那美，就再真实不过。~
== BC0SIRE2 ~全部吗？连樱花树也是？~
== BYOSHIM ~尤其是樱花树。~
== BC0SIRE2 ~我只见过图画……我真希望我能亲眼看看。~
== BYOSHIM ~嘿。那你最好赶快，塞琳，那些树一年只开一次，而花期很快就要到了。啊，我唯一的遗憾是我自己看不到那美丽的粉色花海。~
== BC0SIRE2 ~（笑）你这坏家伙，吉野。你让我满脑子都是狂野的幻想。我怕我很快就会在梦里想象你的故乡了。~
== BYOSHIM ~可这样的梦不正是最好的梦吗？（眨眼）~
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneYoshimo3","GLOBAL",0)~ THEN BC0SIRE2 C0SireneYoshimo3
~你觉得你有朝一日会回家吗，吉野？~ [C0BLANK]
DO ~SetGlobal("C0SireneYoshimo3","GLOBAL",1)~
== BYOSHIM ~当然！我连想都不会想到死，除非再看一眼卡拉图。~
== BC0SIRE2 ~你说得这么肯定。我羡慕……~
== BYOSHIM ~你呢，我的朋友？你想再见你的故乡吗？~
== BC0SIRE2 ~我……说实话，我不知道。我当然想过，可是……~
== BYOSHIM ~啊，你不必再说。我猜你的记忆并不全是愉快的，对吧？~
== BC0SIRE2 ~有些是。可不是那个缘故。就算我回去，也不太可能有人在等着。~
== BYOSHIM ~也许吧，可人们说心安之处即是家。也许你只是还没找到你的心之所安，我的朋友。~
== BC0SIRE2 ~你也许说得对。无论如何，谢谢你陪我说话，吉野。~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneYoshimo1","GLOBAL",1)
Global("C0SireneYoshimo2","GLOBAL",1)
Global("C0SireneYoshimo3","GLOBAL",1)
Global("C0SireneYoshimo4","GLOBAL",0)~ THEN BYOSHIM C0SireneYoshimo4
~我跟你讲了许多我故乡的事，塞琳。也许你肯赏光，讲一个你自己的故事？~ [C0BLANK]
DO ~SetGlobal("C0SireneYoshimo4","GLOBAL",1)~
== BC0SIRE2 ~我的过去没什么值得讲的，吉野。~
== BYOSHIM ~一点也没有？那不可能。就算最寻常的人也该有有趣的故事可以分享。~
== BC0SIRE2 ~真的，很少。我想……我可以跟你讲讲我的信仰，若你不嫌闷。~
== BYOSHIM ~当然。伊尔梅特的教士我格外感兴趣。~
== BC0SIRE2 ~好罢。等有机会，我会把能讲的都讲给你。~
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneYoshimo4","GLOBAL",1)
Global("C0SireneYoshimo5","GLOBAL",0)~ THEN BC0SIRE2 C0SireneYoshimo5
~吉野……~ [C0BLANK]
DO ~SetGlobal("C0SireneYoshimo5","GLOBAL",1)~
== BYOSHIM ~啊，你找到了我的背包，我的朋友塞琳。多谢你。~
== BC0SIRE2 ~是的，说到这个……原谅我，吉野，我捡起它时不小心，里面的东西撒出来了。对不起。~
== BYOSHIM ~嗯，你担心的不是我东西的安全，而是你发现的某样东西，对吧？~
== BC0SIRE2 ~是的……是那枚吊坠。~
== BYOSHIM ~是的……我想，所有人里，你会认得它。~
== BC0SIRE2 ~我不知道你向伊尔梅特祈祷，吉野。你为什么不告诉我？~
== BYOSHIM ~啊，别误会，我的朋友。说实话，这吊坠不是我的，是我故乡一位友善的相识的。算是件护身符。当然，我偶尔也祈祷，可我不是哭泣之神的真正信徒。~
== BC0SIRE2 ~真的？那你随身带着这样的纪念物倒很奇怪。这不像你。~
== BYOSHIM ~哎呀，我真吃惊，塞琳！你不相信连我这样的浪子也可能背着几副担子吗？~
== BC0SIRE2 ~不，我完全不是那个意思。只是……你不像是会受苦的那种人。~
== BYOSHIM ~我有很多秘密，亲爱的，而我只把少数几个挂在袖子上。也许……也许有一天你会发现更多。~
EXIT