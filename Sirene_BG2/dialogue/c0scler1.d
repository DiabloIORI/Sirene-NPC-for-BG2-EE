BEGIN C0SCLER1

CHAIN IF WEIGHT #-1
~Global("C0SireneDaeron","GLOBAL",0)~ THEN C0SCLER1 encounter1
~你很好地承受了你的苦难，在这卑微仆人的眼中证明了自己配得。你的坚韧已取悦了哭泣之神。~
DO ~SetGlobal("C0SireneDaeron","GLOBAL",1)~
== C0SCLER3 ~*咳*赞——赞美忍耐者，愿他引我走过那……那将来的诸多试炼。~
== C0SCLER1 ~很好。你可以走了。~
== C0SCLER3 ~可——可是……~
== C0SCLER2 ~恕我打扰，达埃隆尊者……可我们有客人。~
== C0SCLER1 ~什么——啊。别担心，侍僧们，我代我们说话。向你们致意，旅人们。~
END
++ ~也向您致意。是什么让你们来到这里？~ EXTERN C0SCLER1 encounter2
++ ~你们是谁？~ EXTERN C0SCLER1 encounter2

CHAIN C0SCLER1 encounter2
~我们是伊尔梅特的信徒，陌生人。我是达埃隆，安姆伊尔梅特教会的大祭司……前大祭司……如今可悲地堕落了。~
== C0SIRE2J ~堕落？您这话什么意思，兄弟？~
== C0SCLER1 ~嗯？你佩戴着伊尔梅特的标志，可我不认得你的脸。~
== C0SIRE2J ~哦。原谅我……我是塞琳，属受苦圣战者修会。很高兴见到您，尊敬的兄弟。~
== C0SCLER1 ~你是修会的骑士？嗯哼，他们仍兴旺着，这很好。我从前也属这个修会。~
== C0SIRE2J ~真的？那么按理您是我的上级了。我师从修会的马克·莫里斯爵士。您知道他吗，先生？~
== C0SCLER1 ~马克……是的，一个好人，虽然有时太软了些。不必拘礼，斗士。我退出那种生活已许多年了，而且……如今我已无权拥有任何头衔。我不过是个朝圣者。~
== C0SIRE2J ~是的，您说我们在安姆的教会堕落了……您那是什么意思？~
== C0SCLER1 ~那是桩极不幸的事。我们的神殿敌人不多，可面对确有的敌人，护住自己的法子更少。伊尔梅特的神殿被我们世上的死敌洛维亚特信徒袭击并洗劫。你看见的这些侍僧……就是我们祭司团仅存的人。~
== C0SIRE2J ~什么？！哦，神明啊……~
END
++ ~我们能做些什么来帮忙吗？~ EXTERN C0SCLER1 encounter3
++ ~那么……你们就这样掉头逃到别的国去？~ EXTERN C0SCLER1 encounter4
++ ~那这里的这个人呢？他也属你们修会吗？~ EXTERN C0SCLER1 encounter5

CHAIN C0SCLER1 encounter3
~你们的善心我们十分感激，可我们不能向你们求这种事。我们信仰的信条是施予援手，而非受人之援。~
= ~不……我们会继续前往别的国度，在那里我们的信仰仍兴旺，再从那里重新开始。~
EXTERN C0SCLER1 encounter5

CHAIN C0SCLER1 encounter4
~我们本行不是战士，陌生人。我虽曾是个骑士，可我战斗的日子已经过去了。~
= ~就算我有当年的年岁与精力，我也不能叫我的信众为了已经失去的东西去赴死。把这一切抛下，是我们唯一能做的。~
EXTERN C0SCLER1 encounter5

CHAIN C0SCLER1 encounter5
~这人是最近才被引入伊尔梅特信仰的。你们遇见我们时所见的，就是这件事。~
= ~他自愿舍弃俗世的财产，成为哭泣之神的信徒，并将随我们上路。~
END
+ ~OR(2) CheckStatGT(Player1,14,INT) CheckStatGT(Player1,14,WIS)~ + ~是这样吗？真奇怪……对一个以无私与慈善自矜的信仰来说，这听起来可疑得很像敲诈。~ EXTERN C0SIRE2J encounter6
+ ~Class(Player1,PALADIN_ALL)~ + ~你的话听着真诚，可有些地方对不上……不知为何，愧疚的影子罩着你。你在说谎，达埃隆兄弟。~ EXTERN C0SIRE2J encounter6
+ ~OR(2) Class(Player1,THIEF_ALL) Class(Player1,BARD_ALL)~ + ~哦，别胡扯了。任何浪子都看得出这场面究竟是什么。分明就是敲诈！~ EXTERN C0SIRE2J encounter6
++ ~我明白了。那你们继续吧。一路顺风。~ EXTERN C0SCLER3 encounter7

CHAIN C0SIRE2J encounter6
~<CHARNAME>！与我……说话时请慎言！~
EXTERN C0SCLER3 encounter7

CHAIN C0SCLER3 encounter7
~尊——尊者！我……我必须说话！~
== C0SCLER1 ~这既不是时候，也不是地方，侍僧，我建议你——~
== C0SCLER3 ~这……这个人，这个*骗子*，根本不是信仰的真信徒。他——他遇见我时，我受了伤、快要死了，他把我强征入伊尔梅特教会，把我所有的一切都当作我「入教」的一部分！~
== C0SIRE2J ~什么……这是怎么回事？~
== C0SCLER3 ~这——这一切都是真的，我以众神之名发誓！我……我别无选择，只能陪着演这场*闹剧*，否则他就把我扔在路上等死！~
= ~你——你是他自称信奉的那位神的斗士，所以我求你，尊者，将他绳之以法！~
== C0SIRE2J ~这……这个人说的是真的吗，兄弟？~
END
++ ~冷静，塞琳。让这个人自己说。~ EXTERN C0SCLER1 encounter8
++ ~我建议你仔细想清楚怎么回答。毕竟，你的命悬在一线。~ EXTERN C0SCLER1 encounter8
++ ~若不是这样，那这人显然神志不清，需要立刻救治。~ EXTERN C0SCLER1 encounter8
++ ~我几乎要佩服了。我没想到你们这种人还有这一手。~ EXTERN C0SCLER1 encounter8

CHAIN C0SCLER1 encounter8
~……我看再瞒不住实情了。是的，这人说的是真话。~
== C0SIRE2J ~那么……你并非你自称的伊尔梅特真信徒？~
== C0SCLER1 ~我自称的一切我都是，不多也不少。然而，这是……艰难时世，我们的处境需要……非常手段。~
== C0SIRE2J ~非常到去抢无辜的人，背弃你们誓言服事的对象？你疯了！~
== C0SCLER1 ~在安姆这片腐败之地，我们的信仰曾是希望与德行的根基。光辉之心骑士团或可自称如此，可他们受贵族束缚，不过是立在台上的雕像。我不能让这片土地被毁掉我们的邪恶夺去。~
== C0SCLER1 ~我们必须重建。然而，单凭我们对伊尔梅特的虔诚，永远给不了我们真正需要的东西。那些被我们引入修会的人……他们明白这一点。~
END
++ ~他们明白了，还是你把这份「明白」打进了他们脑袋里？~ EXTERN C0SIRE2J encounter9
++ ~你竟然还想为自己的行止辩解？你让我恶心。~ EXTERN C0SIRE2J encounter9
++ ~真可悲。命悬一线了，你就拼命抓稻草。我们干脆把他们全杀了，塞琳。~ EXTERN C0SIRE2J encounter9

CHAIN C0SIRE2J encounter9
~你的行止……无可宽恕，达埃隆尊者。真的，我很痛心……像你这样的人竟堕落到这个地步。~
= ~虽然我们的修会慈悲为怀，你的罪……却不能任其存在。你必须为你的行止受审判。~
== C0SCLER1 ~……~
== C0SCLER1 ~若你意欲让我为所做之事付出代价，那我愿服从你的判决，斗士。然而，我求你饶过我的信众作为回报。他们不该为我命令他们做的事受责。~
== C0SIRE2J ~你竟为他们这样轻易接受自己的命运？~
== C0SCLER1 ~我的侍僧只是遵从我的命令。也许你是受哭泣之神引导来惩罚我的罪，而不是他们的。~
== C0SCLER1 ~我对死亡没什么可惧，可这些祭司每一个都还能在一生中行许多善，不该得到这样残酷的结局。我愿代他们所有人受罚。~
== C0SIRE2J ~我……~
== C0SIRE2J ~我不知道该怎么办，<CHARNAME>。我的职责要求我照尊敬的兄弟所求去做……可这是个难做的决定。我以领队与朋友的身份，求你想想。~
END
++ ~这人身上还剩下一点荣誉。处死他，但让其余的人活。他们该有机会赎清自己。~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",-1)~ EXTERN C0SIRE2J encounter10
+ ~CheckStatGT(Player1,16,CHR)~ + ~不管他们的意图如何，他们仍明知故犯地滥用身份去抢别人。他们谁都不配活。~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",-4)~ EXTERN C0SIRE2J encounter11
+ ~CheckStatLT(Player1,17,CHR)~ + ~不管他们的意图如何，他们仍明知故犯地滥用身份去抢别人。他们谁都不配活。~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",-1)~ EXTERN C0SIRE2J encounter0
+ ~CheckStatGT(Player1,14,CHR)~ + ~放他们走，塞琳。他们迟早会得到应有的下场。~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",-2)~ EXTERN C0SIRE2J encounter12
+ ~CheckStatLT(Player1,15,CHR)~ + ~放他们走，塞琳。他们迟早会得到应有的下场。~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",-1)~ EXTERN C0SIRE2J encounter0
++ ~这判决不该由你来做。这些人该把自己交给这片土地的法律。~ EXTERN C0SIRE2J encounter13
++ ~我手痒想打一场好架。我们干脆把他们全处死。~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",-1)~ EXTERN C0SIRE2J encounter0

CHAIN C0SIRE2J encounter0
~不……这一点我不能同意你，<CHARNAME>。我看别无选择……我会亲自执行你的判决，达埃隆。~
== C0SCLER1 ~随你。可在你尽职责之前，斗士，我必须告诉你……我不后悔我的行止，而我站在审判前时，也会对伊尔梅特大人说同样的话。~
== C0SIRE2J ~…… ……很好。安然地去吧。~
END
IF ~~ DO ~SetGlobal("C0SireneDaeronExecute","GLOBAL",1)
		  AddExperienceParty(5000)
		  ClearAllActions()
		  StartCutsceneMode()
		  StartCutscene("C0SCUT1")~ EXIT

CHAIN C0SIRE2J encounter10
~是的，你说得对……若尊敬的兄弟愿意牺牲自己，那么……这就是该做的事。我会亲自执行你的判决，达埃隆。~
== C0SCLER1 ~随你。可在你尽职责之前，斗士，我必须告诉你……我不后悔我的行止，而我站在审判前时，也会对伊尔梅特大人说同样的话。~
== C0SIRE2J ~…… ……很好。安然而去吧。~
END
IF ~~ DO ~SetGlobal("C0SireneDaeronExecute","GLOBAL",1)
		  AddExperienceParty(5000)
		  ClearAllActions()
		  StartCutsceneMode()
		  StartCutscene("C0SCUT1")~ EXIT
		  
CHAIN C0SIRE2J encounter11
~那是……~
= ~我绝不会想到这样严厉的判决，可是……这些人的罪无法否认。也许……也许你说得对。~
== C0SCLER1 ~你不能在考虑这个，斗士。你的行止会让你跟我一样成为背信者！~
== C0SIRE2J ~不，兄弟。虽然这么做让我痛苦，你们所有人都必须为你们的行止赎罪。原谅我们……~
== C0SCLER1 ~疯了！你是受苦圣战者修会的耻辱，女人！若非要如此，我们就战到最后一兵一卒！侍僧们，跟我来！~
END
IF ~~ DO ~SetGlobal("C0SireneDaeronKill","GLOBAL",1)
		  Enemy()
		  ActionOverride("C0SCLER2",Enemy())
		  ActionOverride("C0SCLER3",Enemy())
		  ActionOverride("C0SCLER4",Enemy())
		  ActionOverride("C0SCLER5",Enemy())
		  ActionOverride("C0SCLER6",Enemy())
		  ActionOverride("C0SCLER7",Enemy())
		  ActionOverride("C0SCLER8",EscapeArea())
		  ReputationInc(-2)~ EXIT
		  
CHAIN C0SIRE2J encounter12
~任这种事这样过去似乎不对……可我下不了手处死我的长辈。我……我会饶你一命，达埃隆尊者。但我希望你思量你的行止，并且……有朝一日回到伊尔梅特真正的信道上。~
== C0SCLER1 ~嗯。也许吧。无论你怎么看我们，斗士，我们都万分感激你。我们就此安然离去。~
END
IF ~~ DO ~SetGlobal("C0SireneDaeronLeave","GLOBAL",1)
		  AddExperienceParty(2000)
		  ClearAllActions()
		  StartCutsceneMode()
		  StartCutscene("C0SCUT2")~ EXIT
		  
CHAIN C0SIRE2J encounter13
~是的，你说的是实话，<CHARNAME>……我无权亲手审判这些人。我的职责确实要求我把这些人交给应有的审判。你接受吗，达埃隆兄弟？~
== C0SCLER1 ~法律不会善待我们的罪。你的话虽有道理，可我不会让我的侍僧为我受苦。如我所说，斗士——要我的命就拿去，但饶过其余的人，别让他们落个注定灭亡的下场。~
END
+ ~CheckStatGT(Player1,15,CHR)~ + ~达埃隆，你真把自己骗到相信这是对所有相关者最好的办法？你「救」这些人，反而会毁了他们。你若还剩一点荣誉，就该知道这是唯一正确的做法。~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",3)~ EXTERN C0SCLER1 encounter14
+ ~CheckStatGT(Player1,15,WIS)~ + ~也许吧。可你不是蠢人，达埃隆——你知道这比你的信众不受法律制裁而面临的任何结局都仁慈得多。他们过去的罪迟早会追上他们。~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",3)~ EXTERN C0SCLER1 encounter14
++ ~我看说服不了你。该怎么做就做吧，塞琳。~ DO ~IncrementGlobal("C0SireneFaith","GLOBAL",-1)~ EXTERN C0SIRE2J encounter10

CHAIN C0SCLER1 encounter14
~你……你说得对。~
= ~真的，我……我羞愧。也许我偏离得比我想的更远。~
= ~看来我老了，也痴了。我那样坚信我支持的事业是对的，相信目的能正当化手段，以至于忘了我曾作为我神骑士所追求的一切……~
== C0SIRE2J ~请……别绝望，兄弟。你若真信仰伊尔梅特，那就信他的慈悲。你若真心悔恨你的行止，那这不必是你的终点。~
== C0SCLER1 ~是的，斗士。我们会……照你所说，把自己交给光辉之心骑士团受审。若我们的罪需要血，那么……那就是我们必须接受的。这才是伊尔梅特的正道。~
END
++ ~我们怎么确定你会照你说的做？~ EXTERN C0SCLER1 encounter15
++ ~我相信他们会慈悲，只要你们显出真心的悔意。~ EXTERN C0SCLER1 encounter15
++ ~是，是，现在你们能走了吗？~ EXTERN C0SCLER1 encounter15

CHAIN C0SCLER1 encounter15
~我们向你发誓，以伊尔梅特之名，以我一度作为受苦圣战者、作为哭泣之神信徒所拥有的荣誉，我们必将此生与来世为我的行止求赎。若我们言而不实，愿众神将我们击倒。~
== C0SIRE2J ~我相信你的誓言。愿你得到安宁，兄弟，无论什么命运等着你。再会。~
== C0SCLER1 ~再会，斗士。请收下这件我们旧神殿的法器，作为信仰的信物……我想我不再需要它了。~
END
IF ~~ DO ~GiveItem("c0sbrac","C0Sirene")
		  AddExperienceParty(15000)
		  SetGlobal("C0SireneDaeronRedeem","GLOBAL",1)
		  ClearAllActions()
		  StartCutsceneMode()
		  StartCutscene("C0SCUT3")~ EXIT

BEGIN C0SCLER3