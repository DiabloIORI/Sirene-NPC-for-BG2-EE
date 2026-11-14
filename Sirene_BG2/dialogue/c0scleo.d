BEGIN C0SCLEO

CHAIN IF ~!See("C0Sirene")~ THEN C0SCLEO a0
~我……怕是不认识你，我的<PRO_LORDLADY>。我对你而言什么都不是……请让我继续祈祷。~
EXIT

CHAIN 
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneMeetsAunt","GLOBAL",0)~ THEN C0SCLEO a1
~蕾娜……？不，这不可能。你的灵魂是来接我了吗？我——我还没准备好。~
DO ~SetGlobal("C0SireneMeetsAunt","GLOBAL",1)~
== C0SIR25J ~我……我怕你把我认成别人了，好心的女人。我不知道你在说什么……~
== C0SCLEO ~不是蕾娜？不，我现在看出来了。你更年轻，可你跟她长得多么像……啊！~
== C0SIR25J ~什——什么事？~
== C0SCLEO ~你……你是蕾娜的女儿。神明啊，你跟她太像了！~
== C0SIR25J ~蕾娜……？你是谁？~
== C0SCLEO ~我是克蕾奥，亲爱的……你的姑母。~
== C0SIR25J ~你是我……我母亲的姐妹？~
== C0SCLEO ~是你父亲的，亲爱的，可蕾娜对我来说就像姐妹一样。我不敢相信你还活着！~
== C0SCLEO ~过来。让我看看你。~
== C0SIR25J ~我不敢相信。你真是……我的家人？~
== C0SCLEO ~是啊，亲爱的。天哪，我还记得抱着你的样子，那时你还是个婴孩。那是我离开你们村子的前一天。~
== C0SCLEO ~我记得听说你家被烧成平地时，我以为我也会死……我再也撑不下去。而现在你就在这里……~
== C0SIR25J ~那么你真是……求你了，姑母，跟我讲讲我的家人！~
== C0SCLEO ~好——好吧，亲爱的，让我先定定神。这一切太震撼了……在这儿陪我坐一会儿，我给你讲讲我亲爱的哥哥艾德瑞克。只要你有时间，你想听多久我就讲多久。~
== C0SIR25J ~<CHARNAME>，我——我想花些时间陪我姑母。我必须多了解我的家人……你能给我一天时间吗？~
END
++ ~当然。你需要多久就多久。~ EXTERN C0SIR25J a1.1
++ ~我们一天后来接你。~ EXTERN C0SIR25J a1.1
++ ~我仍需要你的帮助，塞琳。~ EXTERN C0SIR25J a1.2

CHAIN C0SIR25J a1.1
~谢谢你。一天，我只求一天。~
DO ~LeaveParty() ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() SetGlobalTimer("C0SireneAuntTimer","GLOBAL",ONE_DAY)
MoveToPoint([446.279]) Wait(1) FaceObject("C0SCLEO")~ EXIT 

CHAIN C0SIR25J a1.2
~很抱歉现在要离开你，<CHARNAME>，可是……我需要这段时间。求你，我只要一天。~
DO ~LeaveParty() ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() SetGlobalTimer("C0SireneAuntTimer","GLOBAL",ONE_DAY)
MoveToPoint([446.279]) Wait(1) FaceObject("C0SCLEO")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneAuntStory","GLOBAL",0) Global("C0SireneMeetsAunt","GLOBAL",1) !GlobalTimerExpired("C0SireneAuntTimer","GLOBAL")~ THEN C0SCLEO b0
~祭司们给你起名塞琳，可你不知道你父母给你起的名字，对吧，亲爱的？~
DO ~IncrementGlobal("C0SireneAuntStory","GLOBAL",1)~
== C0SIR25P ~不，我……我不知道。~
== C0SCLEO ~他们给你起名蕾妮，孩子，随艾德瑞克和我自己的母亲。可我知道我这样叫你一定让你不自在。~
== C0SIR25P ~我不介意，姑母。至少不介意你这么叫。我知道那个名字对你一定意义重大。~
== C0SCLEO ~随你喜欢，亲爱的。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneAuntStory","GLOBAL",1) Global("C0SireneMeetsAunt","GLOBAL",1) !GlobalTimerExpired("C0SireneAuntTimer","GLOBAL")~ THEN C0SCLEO b1
~……然后你母亲打开门，艾德瑞克就在那儿，一手拎着一只兔子！~
DO ~IncrementGlobal("C0SireneAuntStory","GLOBAL",1)~
== C0SIR25P ~（笑）然后呢？母亲还在生气吗？~
== C0SCLEO ~哦，她费了好大劲装出恼怒的样子，可其实她跟你一样心软，亲爱的。她早就原谅他了。他也知道。~
== C0SIR25P ~她听起来是个很好的人……~
== C0SCLEO ~她是的，亲爱的。现在，我再给你讲一个故事……~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneAuntStory","GLOBAL",2) Global("C0SireneMeetsAunt","GLOBAL",1) !GlobalTimerExpired("C0SireneAuntTimer","GLOBAL")~ THEN C0SCLEO b2
~你知道吗，你真是你母亲的翻版，亲爱的。我第一次见你时，你可把我吓了一跳。~
DO ~IncrementGlobal("C0SireneAuntStory","GLOBAL",1)~
== C0SIR25P ~我——对不起，克蕾奥姑母。~
== C0SCLEO ~不，不。没关系。如今我找到了你，比什么时候都高兴。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneAuntStory","GLOBAL",3) Global("C0SireneMeetsAunt","GLOBAL",1) !GlobalTimerExpired("C0SireneAuntTimer","GLOBAL")~ THEN C0SCLEO b3
~你父亲艾德瑞克，嗯……他娶了你母亲之后，作为村子游侠的名声受了些损。有些迷信的人担心她迷住了他。~
DO ~IncrementGlobal("C0SireneAuntStory","GLOBAL",1)~
== C0SIR25P ~那你呢，姑母？你也那样想吗？~
== C0SCLEO ~我？不，神明在上，不会。你若见过他们某些夜里吵架的样子，就不会那么想了。~
== C0SIR25P ~他们……吵架？他们在一起不快乐吗？~
== C0SCLEO ~我想私奔并不是蕾娜期待的那种童话。可他们彼此深爱，这一点我向你保证。*叹气*只恨他们没能活到你长大……~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneAuntStory","GLOBAL",4) Global("C0SireneMeetsAunt","GLOBAL",1) !GlobalTimerExpired("C0SireneAuntTimer","GLOBAL")~ THEN C0SCLEO b4
~你父母会为你骄傲的，亲爱的。他们一定在天上对你微笑。~
DO ~IncrementGlobal("C0SireneAuntStory","GLOBAL",1)~
== C0SIR25P ~他们究竟是怎么相遇的，姑母？我想你还没跟我讲过那个故事。~
== C0SCLEO ~嗯，你母亲当时正被培养成法师，你看。她说她讨厌这事，而当她假装独自修习时，就锁上门、跳窗出去，躲进林子里。~
== C0SCLEO ~你父亲就是在那样的时候遇上她的。他从狼口下救了她，还是从强盗手里？我记不清了，亲爱的，对不起。可无论如何，我想他们最终相爱了。~
== C0SIR25P ~我想在那之后，母亲逃进林子就不止一个理由了。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneAuntStory","GLOBAL",5) Global("C0SireneMeetsAunt","GLOBAL",1) !GlobalTimerExpired("C0SireneAuntTimer","GLOBAL")~ THEN C0SCLEO b6
~你的同母异父哥哥不常来。你出生前他就离开村子，去某位法师的塔里求学。~
DO ~IncrementGlobal("C0SireneAuntStory","GLOBAL",1)~
== C0SIR25P ~他父亲是……一位贵族，不是吗？~
== C0SCLEO ~没错。蕾娜在跟你父亲私奔之前，曾嫁给一位贵族，你看。她跟他不如跟艾德瑞克亲近，可她说她仍在意他。我在想，若那个人还活着，她会不会答应私奔……~
== C0SIR25P ~那么……我的哥哥，特萨蒙？他不喜欢我父亲吗？~
== C0SCLEO ~哦，他每次来，他们肯定要吵上许多。不过我相信他仍敬重你父亲。若他受得了乡下的生活，我确信他会留下来的。~
== C0SCLEO ~那孩子后来怎么了，我倒想知道？~
== C0SIR25P IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~我确信他还在世上……某个地方。~
== C0SIR25P IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~他……死了，克蕾奥姑母。~
== C0SCLEO IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ THEN ~*叹气*好人总是早死。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneAuntStory","GLOBAL",6) Global("C0SireneMeetsAunt","GLOBAL",1) !GlobalTimerExpired("C0SireneAuntTimer","GLOBAL")~ THEN C0SCLEO b7
~你父母的遭遇……太让人心碎了。我到今天还梦见那件事。蕾娜和我哥哥……~
DO ~IncrementGlobal("C0SireneAuntStory","GLOBAL",1)~
== C0SIR25P ~特萨蒙说……他说他们是别的村民杀的。说火是他们放的。~
== C0SCLEO ~那是意外，亲爱的。一场悲惨的意外，可终究是意外。那天发生的事，谁都不该受责。~
== C0SIR25P ~那么……那些人并非真的恨我母亲？~
== C0SCLEO ~哦，他们当然有戒心，可村民们仍爱着艾德瑞克。可那时袭击村子的旱灾……让人害怕。~
== C0SCLEO ~你看，他们先怪你哥哥。等他回去继续求学，他们就把注意力转向你母亲。~
== C0SCLEO ~可我知道，无论他们多绝望，都不会让艾德瑞克受苦。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneAuntStory","GLOBAL",7) Global("C0SireneMeetsAunt","GLOBAL",1) !GlobalTimerExpired("C0SireneAuntTimer","GLOBAL")~ THEN C0SCLEO b8
~你觉得你有朝一日会来看我吗，亲爱的？我在深水城附近有亲人，离你长大的地方不远。我们会乐意接纳你。~
== C0SIR25P ~我——我很愿意，克蕾奥姑母，可我先得履行对<CHARNAME>的职责。~
== C0SCLEO ~我明白，亲爱的。不过你该找个时候来打个招呼。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneMeetsAunt","GLOBAL",1) GlobalTimerExpired("C0SireneAuntTimer","GLOBAL")~ THEN C0SCLEO c1
~好了，我想我要说的就这些。你的朋友来接你了，而我也真该继续北上的旅程了。~
DO ~SetGlobal("C0SireneMeetsAunt","GLOBAL",2)~
== C0SIR25P ~克蕾奥姑母，我……~
== C0SCLEO ~好了，亲爱的……求你，别哭。~
== C0SCLEO ~若情形不同，我最愿意的就是有机会跟你坐下来，谈上一整周，看看你长成了什么样，可你眼前有一桩沉重的任务，不是吗？我明白。~
== C0SCLEO ~拿着，孩子。这枚戒指是你母亲的。蕾娜死后我一直留着它，可它该属于你。就当是一份礼物，补上失去你之后这些年。~
DO ~GiveItemCreate("c0sring","C0Sirene",1,1,0)~
== C0SIR25P ~谢——谢谢你，姑母……再会了。我会非常想念你。~
DO ~SetGlobal("C0SireneToBKickedOut","GLOBAL",0) JoinParty()~
== C0SCLEO ~再会，亲爱的。愿神明看顾你。~
EXIT