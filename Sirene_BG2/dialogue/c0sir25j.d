BEGIN C0SIR25J

// Volo's obligatory interjection in Saradush.

EXTEND_TOP SARVOLO 9 #2
+ ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Global("C0SireneRomanceActive","GLOBAL",2) Alignment("C0Sirene",LAWFUL_GOOD)~ + ~跟我讲讲塞琳。~ + C0SireneVoloBio1
+ ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Global("C0SireneRomanceActive","GLOBAL",2) !Alignment("C0Sirene",LAWFUL_GOOD)~ + ~跟我讲讲塞琳。~ + C0SireneVoloBio2
+ ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneRomanceActive","GLOBAL",2)~ + ~跟我讲讲塞琳。~ + C0SireneVoloBio3
END

CHAIN SARVOLO C0SireneVoloBio1
~虽然她的血脉或许是副可怕的重担，可谁都无法怀疑，受苦圣战者的塞琳已成为有史以来行走诸国度最伟大的伊尔梅特斗士之一。她的信念鼓舞着所有人。~
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~您真是文字上的艺术家，沃罗大师。我很荣幸。~
EXTERN SARVOLO 9

CHAIN SARVOLO C0SireneVoloBio2
~虽然她的血脉或许是副可怕的重担，可谁都无法怀疑，这位出人意料的巾帼英雄塞琳已成为有史以来行走诸国度最伟大的善之力之一。她的信念鼓舞着所有人。~
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~您真是文字上的艺术家，沃罗大师。我很荣幸。~
EXTERN SARVOLO 9

CHAIN SARVOLO C0SireneVoloBio3
~从烈火淬出的友谊到爱恋，<CHARNAME>与塞琳的结合是值得万世传颂的故事。诸国度从未有过一对恋人这般深情相许。~
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~您真是文字上的艺术家，沃罗大师。我很荣幸。~
EXTERN SARVOLO 9

// Solar, final interjections at the Throne of Bhaal and <CHARNAME>'s choice for the romanced protagonists.

// non-romanced

I_C_T FINSOL01 27 C0SireneSolarFriend1
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Global("C0SireneRomanceActive","GLOBAL",2)~ THEN ~路已到尽头，我的朋友，可最后这几步得你自己走。无论你的选择是什么……这一路上能有你为伴为友，是我的荣幸。~
END

// romanced, Sirene and PC talk before the choice

EXTEND_BOTTOM FINSOL01 27
IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneRomanceActive","GLOBAL",2) Global("C0SireneSolarPers","GLOBAL",0)~ DO ~SetGlobal("C0SireneSolarPers","GLOBAL",1)~ EXTERN C0SIR25J C0SireneSolarPers
END

CHAIN C0SIR25J C0SireneSolarPers
~……~
= ~我……我不知道什么话才能让你满意，<CHARNAME>。我们历尽这么多才来到这里……而现在，我必须面对我们永远分离的可能。这太难以承受……~
END
++ ~我绝不会把你丢下，塞琳。~ EXTERN C0SIR25J C0SireneSolarPers1.1
++ ~先别失去希望。毕竟我还没做选择。~ EXTERN C0SIR25J C0SireneSolarPers1.1
++ ~对不起。我想取代我父亲的位置……而那意味着我必须离开你。~ EXTERN C0SIR25J C0SireneSolarPers1.1

CHAIN C0SIR25J C0SireneSolarPers1.1
~即使早知道这一刻会来，我也没能准备得足够。除了我的爱，我再没有别的能给你。与你能触及的力量相比，这不过微末，我知道……~
= ~可是……我这一生都靠信念活着，所以现在……现在我要把信念放在你身上，<CHARNAME>。就这一回，我要自私一次，相信你会选我。~
= ~无论这趟旅程尽头会发生什么，<CHARNAME>，我希望你知道……我的爱一直属于你。即使我化为尘土，我的心仍将属于你。~
END
COPY_TRANS FINSOL01 27

// romanced, PC chooses to leave

EXTEND_BOTTOM FINSOL01 29
IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneRomanceActive","GLOBAL",2) Global("C0SireneSolarLeave","GLOBAL",0)~ DO ~SetGlobal("C0SireneSolarLeave","GLOBAL",1)~ EXTERN C0SIR25J C0SireneSolarLeave
END

EXTEND_BOTTOM FINSOL01 30
IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneRomanceActive","GLOBAL",2) Global("C0SireneSolarLeave","GLOBAL",0)~ DO ~SetGlobal("C0SireneSolarLeave","GLOBAL",1)~ EXTERN C0SIR25J C0SireneSolarLeave
END

EXTEND_BOTTOM FINSOL01 31
IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneRomanceActive","GLOBAL",2) Global("C0SireneSolarLeave","GLOBAL",0)~ DO ~SetGlobal("C0SireneSolarLeave","GLOBAL",1)~ EXTERN C0SIR25J C0SireneSolarLeave
END

CHAIN C0SIR25J C0SireneSolarLeave
~那么这真是永别了……我希望你在永恒的生命里不会忘记我，我的爱，因为我会把你的记忆珍藏到我生命的尽头。~
END
COPY_TRANS FINSOL01 29

// romanced, PC chooses to stay

EXTEND_BOTTOM FINSOL01 32
IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneRomanceActive","GLOBAL",2) Global("C0SireneSolarStay","GLOBAL",0)~ DO ~SetGlobal("C0SireneSolarStay","GLOBAL",1)~ EXTERN C0SIR25J C0SireneSolarStay
END

CHAIN C0SIR25J C0SireneSolarStay
~你……你选了我？~
END
++ ~当然是我。~ EXTERN C0SIR25J C0SireneSolarStay1.1
++ ~我情愿选你一千次。~ EXTERN C0SIR25J C0SireneSolarStay1.1
++ ~是啊。我们会一起走到我们凡世生命的尽头。~ EXTERN C0SIR25J C0SireneSolarStay1.1

CHAIN C0SIR25J C0SireneSolarStay1.1
~我……我连做梦都不敢……~
= ~无论将来如何……我都不会让你后悔这个选择。此生与来世皆然……我向你发誓。~
= ~我爱你，<CHARNAME>……我这样……这样爱你……~
END
++ ~（吻她）~ EXTERN C0SIR25J C0SireneSolarStay1.2
++ ~我也爱你，塞琳。~ EXTERN C0SIR25J C0SireneSolarStay1.2

CHAIN C0SIR25J C0SireneSolarStay1.2
~谢谢你……~
COPY_TRANS FINSOL01 32

// Sirene's Gorion Wraith sequence.

EXTEND_BOTTOM HGWRA01 18
IF ~Global("C0SireneRomanceActive","GLOBAL",2) InParty("C0Sirene") See("C0Sirene") Alignment("C0Sirene",LAWFUL_GOOD)~ EXTERN HGWRA01 C0SireneWraith1
END

EXTEND_BOTTOM HGWRA01 18
IF ~Global("C0SireneRomanceActive","GLOBAL",2) InParty("C0Sirene") See("C0Sirene") !Alignment("C0Sirene",LAWFUL_GOOD)~ EXTERN HGWRA01 C0SireneWraith2
END

CHAIN HGWRA01 C0SireneWraith1
~那你注定要给你所爱之人带来的痛苦呢？这个你称作「塞琳」的提夫林。~
== C0SIR25J ~痛苦？你错了，葛立安，因为<CHARNAME>的爱带给我的只有幸福，不是痛苦。~
EXTERN HGWRA01 24

CHAIN HGWRA01 C0SireneWraith2
~那你注定要给你所爱之人带来的痛苦呢？这个你称作「塞琳」的提夫林，被她自己的神弃绝。~
== C0SIR25J ~痛苦？你错了，葛立安，因为<CHARNAME>的爱带给我的只有幸福，不是痛苦。~
EXTERN HGWRA01 24

EXTEND_BOTTOM HGWRA01 24
IF ~Global("C0SireneRomanceActive","GLOBAL",2) Alignment("C0Sirene",LAWFUL_GOOD)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("C0SWRA1")~ EXIT
END

EXTEND_BOTTOM HGWRA01 24
IF ~Global("C0SireneRomanceActive","GLOBAL",2) !Alignment("C0Sirene",LAWFUL_GOOD)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("C0SWRA2")~ EXIT
END

BEGIN C0SLOVE1 

CHAIN 
IF ~Global("C0SireneWraithSpirit1","GLOBAL",0)~ THEN C0SLOVE1 C0SireneWraithSpirit1
~你好，塞琳。~
DO ~SetGlobal("C0SireneWraithSpirit1","GLOBAL",1)~
== C0SIR25J ~你——你是谁？~
== C0SLOVE1 ~你不认得我了吗？这张曾叫你「女儿」的脸？~
== C0SIR25J ~「女儿」？不，你绝不可能是……~
== C0SLOVE1 ~我是蕾娜，你的母亲。你有我的眼睛，孩子。哦，我多希望能活着看见它们……~
== C0SIR25J ~母亲？你……你真是我母亲？~
== C0SLOVE1 ~是的，亲爱的……哦，看见我的孩子长大，这给我多少喜悦。我唯一的遗憾是没能活着把你养大。~
== C0SIR25J ~我……我也曾渴望那个。我曾最渴望的就是那个。~
== C0SLOVE1 ~还不算太晚，塞琳。你仍可以加入我们。艾德瑞克和我等你等得太久了，等那个被残酷命运夺走的女儿。在来世，我们可以重新成为一家人。~
== C0SIR25J ~……不……不，那已经太晚了。原谅我……母亲。我的位置在这里，和<CHARNAME>一起。~
== C0SLOVE1 ~我明白了。~
== C0SLOVE1 ~那么，特萨蒙终究说对了。你本该替我去死的。~
== C0SIR25J ~什——什么？~
== C0SLOVE1 ~你哥哥从没告诉过你吗？关于我怎样在咱们家烧塌时把你抱出来，把你交给他，而屋梁压断了我性命的那件事？~
== C0SLOVE1 ~我现在后悔了。~
== C0SIR25J ~母亲……~
== C0SLOVE1 ~我不是你母亲。你不是我女儿。你不过是个杀人凶手。~
== C0SIR25J ~不，母亲！我……我对你的牺牲感激不尽，也悔恨不尽。虽然我从不知你，我却一直希望能认识你。我发誓！~
== C0SLOVE1 ~……~
= ~我当年被培养成法师，就像你哥哥一样。你知道么？若不是跟艾德瑞克跑了，我本可以活得长久快乐，力量随我驱使。一切都因为我想要你。~
== C0SLOVE1 ~我曾那样深切地渴望把你抱在怀里爱你，塞琳，而现在看看那份爱把我变成了什么。~
== C0SIR25J ~不……求你……别说这种话！~
== C0SLOVE1 ~那份爱如今死了，正如我一样。如今只剩下恨。恨那个导致我死的孩子。就是你。~
== C0SLOVE1 ~我看着你，只看见杀了我的人。我的灵魂得不到安息，塞琳，即使在来世也一样。全都因为你……我最大的错误。~
== C0SIR25J ~不！我……我太对不起了，母亲！求你，让它停下！~
END 
++ ~住手！她对你的遭遇没有责任！~ EXTERN HGWRA01 25
++ ~住手，葛立安！她不该受这个！~ EXTERN HGWRA01 25
++ ~够了！我不许这继续下去！~ EXTERN HGWRA01 25 
+ ~CheckStatGT(Player1,16,WIS)~ + ~别信它，塞琳！那是谎言！~ EXTERN HGWRA01 25 

BEGIN C0SLOVE2

CHAIN 
IF ~Global("C0SireneWraithSpirit1","GLOBAL",0)~ THEN C0SLOVE2 C0SireneWraithSpirit1
~嘿……我们又见面了，妹妹。~
DO ~SetGlobal("C0SireneWraithSpirit1","GLOBAL",1)~
== C0SIR25J ~特萨蒙？不，这是骗局。我亲手杀了你。~
== C0SLOVE2 ~也许吧。可我仍在这里，说明你心里有一部分为我杀你而悔恨，无论你怎样否认。~
== C0SIR25J ~你为什么回来？死还不够了结你的恨吗？你的记忆非得缠着我，直到我生命尽头？~
== C0SLOVE2 ~记忆？是的……也许我就是这个。你犯下的一切罪行的区区影子。~
== C0SIR25J ~我没犯过罪。~
== C0SLOVE2 ~是吗？你珍爱的伊尔梅特不是抛弃了你吗，就为你谋杀自己亲族的罪？~
== C0SIR25J ~我……无论我们流着什么血，你都不是我的亲族。那天我杀的是一个塔罗娜信徒。~
== C0SLOVE2 ~嘿……我就知道会这样。我们血脉的叛徒，德布里尔家族的受咒之子，公然否认自己的血脉。这让你心里充满自豪吗，塞琳？~
== C0SIR25J ~不，我不想再听了。滚回你爬出来的地狱去，幽灵！~
== C0SLOVE2 ~母亲、父亲、我自己……如今都只剩灰。我们死是为了让你活。因你而死！~
== C0SIR25J ~这——这不是……我——~
== C0SLOVE2 ~你躲不开这冷酷的真相，塞琳。若我的灵魂永不得安息，那我就用你的罪疚缠住你，直到永恒。你，本该是你去死！~
== C0SIR25J ~不——不！我不听这些恶毒的谎言！我不听！~
END
++ ~住口，特萨蒙！她不该为你遭遇的事负责！~ EXTERN HGWRA01 25
++ ~住手，葛立安！她不该受这个！~ EXTERN HGWRA01 25
++ ~够了！我不允许这事继续！~ EXTERN HGWRA01 25 
+ ~CheckStatGT(Player1,16,WIS)~ + ~别信他，塞琳！这是谎言！~ EXTERN HGWRA01 25 

// Cespenar

EXTEND_BOTTOM BOTSMITH 4
  IF ~PartyHasItem("C0SS1H1")~ THEN GOTO CESPENAR1
END
  
APPEND BOTSMITH
  IF ~~ THEN BEGIN CESPENAR1 SAY ~哦哦，亮闪闪的剑！是天界来的，嗯？……哎哟！好烫！~
    IF ~PartyHasItem("C0SS1H1")
        !PartyHasItem("C0SCOMP1")~ THEN GOTO CESPENAR2
    IF ~PartyHasItem("C0SS1H1")
        PartyHasItem("C0SCOMP1")~ THEN GOTO CESPENAR3
  END
  
  IF ~~ THEN BEGIN CESPENAR2 SAY ~看见柄上的洞吗？应该在某个合适的地方镶颗宝石。我知道让它更强的配方，可你没有对的宝石，所以没有配方。~
    IF ~~ THEN GOTO CESPENARNO
  END
  
  IF ~~ THEN BEGIN CESPENAR3 SAY ~看见柄上的洞吗？天界之眼宝石该镶在那儿。我知道让剑更强的配方。给我一万五千金币，我就能做出把敌人烧成灰的剑。听起来不错吧？~
    IF ~PartyGoldLT(15000)~ THEN REPLY ~我没有那么多金币。~ GOTO CESPENARNO
    IF ~PartyGoldGT(14999)~ THEN REPLY ~听起来不错。就做吧。~ DO ~SetGlobal("C0CelestialFireUpgrade","GLOBAL",1)
												SetGlobal("C0CelestialFireCraft","GLOBAL",1)
                                                 TakePartyGold(15000)
                                                 DestroyGold(15000)
                                                 TakePartyItemNum("C0SS1H1",1)
                                                 DestroyItem("C0SS1H1")
                                                 TakePartyItemNum("C0SCOMP1",1)
                                                 DestroyItem("C0SCOMP1")~ GOTO 11
    IF ~~ THEN REPLY ~现在不行。还有别的吗？~ GOTO CESPENARNO
  END

  IF WEIGHT #-1 ~GlobalGT("C0CelestialFireCraft","GLOBAL",0)~ THEN BEGIN CESPENAR4 SAY ~好好享受！现在塞斯佩纳尔回去干活了，哦是的！好多好东西要找，好多要收集！~ [BOTSM10]
    IF ~~ THEN DO ~SetGlobal("C0CelestialFireCraft","GLOBAL",0)~ EXIT
  END

  IF ~~ THEN BEGIN CESPENARNO SAY ~那塞斯佩纳尔继续找，好吗？~
   COPY_TRANS BOTSMITH 4
  END
END


// Various non-essential interjection for ToB.

I_C_T SARMIST 0 C0SireneSARMIST
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~以伊尔梅特之名，这样压倒性的邪恶气息……这是什么存在？！~
END 

I_C_T SARVAM01 2 C0SireneSARVAM012
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~你这类东西不懂怜悯，也不会得到怜悯。~
END

I_C_T2 SARSPIR 0 C0SireneSARSPIR0
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~这个灵魂……不知怎的，他锁在这世上，而且不是自愿的。若我们要帮他，就必须再找到他。~
END

I_C_T2 ORPHAN1 1 C0SireneORPHAN11
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>！把可怜的孩子吓成那样实在不该！~
END

I_C_T AMTGEN01 0 C0SireneAMTGEN010
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~神明啊，这不可能……~
END 

I_C_T AMSAEMON 0 C0SireneSaemon
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~看来命运真有副古怪的幽默感。我们又撞上这个恶棍了。~
END 

I_C_T HGNYA01 29 C0SireneHGNYA0129
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~她的慈悲随她的心一起回来了……尽管她犯下那样可怕的事，我不敢想我们得做什么。~
END

I_C_T BALTH 6 C0SireneBalth6
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~真奇怪，他对这事竟这么不情愿，<CHARNAME>，考虑到五人组对这镇子的威胁。~
END

I_C_T AMASANA 1 C0SireneAMASANA1
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~像她这样善良的灵魂不该得这样的结局，<CHARNAME>。可我们能插手而不流血吗？~
END

I_C_T2 AMMONK01 3 C0SireneAMMONK013
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~不，我不能站在一旁任这不义发生，<CHARNAME>！~ DO ~Attack("ammonk01")~
END

INTERJECT AMCLER01 4 C0SireneAMCLER014
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~不必道谢，先生。我只希望我们能帮得更多。~
EXTERN AMCLER01 5

I_C_T AMCLER01 6 C0SireneAMCLER016
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>，我不敢替你做决定，可是……我们总归能匀出点什么吧。~
END

I_C_T BALTH 20 C0SireneBalth20
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我——我怕他没说谎，<CHARNAME>。他的话听着是真的……那意味着我们一直以来都被骗了。~
END

I_C_T BAERIE25 154 C0SireneBAERIE25154
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~哦！比我预想的早。我在家乡帮过接生。我有点紧张，可是……请让我帮忙。~
END

I_C_T BAERIE25 159 C0SireneBAERIE25159
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~多美的孩子……你真是蒙福，<CHARNAME>。~
END

// Watcher's Keep interjections, ToB

I_C_T GORCAMB 0 C0SireneGORCAMB0
== GORCAMB IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~嗯……不过也许我最初的判断不准。这一个身上有股明显的……巴托气息。~
== C0SIR25J IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ ~你看错了。炼狱之血也许流在我脉中，可我的灵魂属于伊尔梅特。~
== C0SIR25J IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ ~你看错了。炼狱之血也许流在我脉中，可我不是地狱的存在。~
== GORCAMB ~我明白了。你在主物质界人当中过惯了。非常有意思。~
END

I_C_T4 GORDEMO 1 C0SireneImprisonedOneMet1
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~我们……我们并不孤单，<CHARNAME>。我不知道该怎么看，可我的血与力量似乎都在回应这个……存在。是善是恶，我说不上。~
END

I_C_T GORODR1 35 C0SireneGORODR135
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~你的信仰变成什么样了，竟这样轻易舍弃职责？就算<CHARNAME>肯施仁慈，你还有胆量面对海姆吗？~
END

I_C_T GORCHR 0 C0SireneGORCHR0
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~一见这生物，我的血就翻涌，<CHARNAME>。它说的话一个字都别信。~
END

I_C_T GORCAR 15 C0SireneGORCAR15
== C0SIR25J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~他也许是个可鄙的人，<CHARNAME>，可他如今毫无防备。给他仁慈吧。~
END

// Watcher's Keep interjections, SoA

I_C_T GORCAMB 0 C0SireneGORCAMB0
== GORCAMB IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~嗯……不过也许我最初的判断不准。这一个身上有股明显的……巴托气息。~
== C0SIRE2J IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ ~你看错了。炼狱之血也许流在我脉中，可我的灵魂属于伊尔梅特。~
== C0SIRE2J IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ ~你看错了。炼狱之血也许流在我脉中，可我不是地狱的存在。~
== GORCAMB ~我明白了。你在主物质界人当中过惯了。非常有意思。~
END

I_C_T4 GORDEMO 1 C0SireneImprisonedOneMet1
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~我们……我们并不孤单，<CHARNAME>。我不知道该怎么看，可我的血与力量似乎都在回应这个……存在。是善是恶，我说不上。~
END

I_C_T GORODR1 35 C0SireneGORODR135
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~你的信仰变成什么样了，竟这样轻易舍弃职责？就算<CHARNAME>肯施仁慈，你还有胆量面对海姆吗？~
END

I_C_T GORCHR 0 C0SireneGORCHR0
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~一见这生物，我的血就翻涌，<CHARNAME>。它说的话一个字都别信。~
END

I_C_T GORCAR 15 C0SireneGORCAR15
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~他也许是个可鄙的人，<CHARNAME>，可他如今毫无防备。给他仁慈吧。~
END

APPEND C0SIR25J

// ToB friendship talks, LG

// 1

IF ~Global("C0SireneTalkToB","GLOBAL",2) Alignment("C0Sirene",LAWFUL_GOOD)~ LG1
SAY ~以伊尔梅特之名……我见过整座整座的城市陷于苦难，可是……亲眼见它，从不曾变得更易承受。~ [C0BLANK]
= ~这些无辜者没有谁该得这样的命运。这里发生的邪恶……必须被制止。~
++ ~而且会被制止的，相信我。~ + LG1.1
++ ~你觉得我们能救他们吗？我还不是神。~ + LG1.2
++ ~眼下我更关心怎么从这烂摊子里脱身。~ + LG1.3
END

IF ~~ LG1.1
SAY ~内有邪恶，外有邪恶。只要两者尚存，这城就会受苦。我向伊尔梅特求指引，可我得到的只有疑问……~
= ~我只能相信你知道该怎么做，<CHARNAME>。你领我们走到如今。我对你有信心。~
++ ~我们会尽力而为，可是……我没法保证这就够。~ + LG1.4
++ ~我也会犯错。我没有你想的那么了不起。~ + LG1.5
++ ~这些人受苦与我何干？这跟我没关系。~ + LG1.6
END

IF ~~ LG1.2
SAY ~我们必须做点什么，<CHARNAME>。只有我们能做。~
IF ~~ + LG1.1
END

IF ~~ LG1.3
SAY ~我们不能就这样不管这些人，<CHARNAME>？哪怕只有一丝相助的机会也不行。~
IF ~~ + LG1.1
END

IF ~~ LG1.4
SAY ~我只能希望。你已从地狱本身为我们带来过一次胜利。~
IF ~~ + LG1.7
END

IF ~~ LG1.5
SAY ~也许吧，可你比我认识的任何人都强。这一点我知道是真的。若我对你没信心，那就再没有人了。~
IF ~~ + LG1.7
END

IF ~~ LG1.6
SAY ~再想想。我求你。是巴尔之子把这些人带进这场灾祸的。他们需要一个巴尔之子来救他们。~
IF ~~ + LG1.7
END

IF ~~ LG1.7
SAY ~伊尔梅特一直引我信任你的领导、你的能力。这一回……赌注比以往任何时候都大。我们必须成功。~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1)~ EXIT
END

// 2

IF ~Global("C0SireneTalkToB","GLOBAL",4) Alignment("C0Sirene",LAWFUL_GOOD)~ LG2
SAY ~我们终结了一个极其可怕的威胁，可是……代价是什么？~ [C0BLANK]
= ~萨拉杜什……没了。它的民众被屠杀。我怎会没能预见到这个？~
= ~这是一场胜利，可是……也是一场失败。知道这一点，我无法感到宽慰。~
++ ~我知道。我也觉得难受。~ + LG2.1
++ ~那不是我们的错。~ + LG2.1
++ ~我们还能多做些什么？~ + LG2.1
END

IF ~~ LG2.1
SAY ~若我们早一点打赢，也许就能救下他们所有人。也许……~
= ~不，这样自败的念头没有意义。至少……他们的灵魂可以得到安息。不会再有性命丧失……至少不会因这件事。~
= ~而且……如今我们知道还有更多。更多像亚加苏拉那样的存在，力量与残暴都不输他。那意味着还会有许多人受苦……~
= ~我们必须终结这一切，<CHARNAME>。无数性命系于我们。~
++ ~我知道。我们已在尽全力。~ + LG2.2
++ ~别说了。你只会让我更难受。~ + LG2.3
++ ~现在我顾不上他们。我得先顾自己。~ + LG2.4
END

IF ~~ LG2.2
SAY ~我只希望这就够了。我向伊尔梅特祈求这就够了。~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1)~ EXIT
END

IF ~~ LG2.3
SAY ~置之不理对谁都没好处，<CHARNAME>……可你说得对。对不起。~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1)~ EXIT
END

IF ~~ LG2.4
SAY ~在这整件事里，你与被杀的人一样是受害者，<CHARNAME>。若你不肯为他们做，那就为你自己做。~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1)~ EXIT
END

// 3

IF ~Global("C0SireneTalkToB","GLOBAL",6) Alignment("C0Sirene",LAWFUL_GOOD)~ LG3
SAY ~「痛苦自牺牲而来。忍耐自痛苦而来。力量自忍耐而来。愿伊尔梅特赐我勇气，为所爱之人舍命，也赐我力量去忍耐。」~ [C0BLANK]
++ ~我有一阵子没听你念这些话了。~ + LG3.1
++ ~今天够长了，塞琳。去歇一歇。~ + LG3.2
++ ~你能快点弄完吗？我想睡了。~ + LG3.0
END

IF ~~ LG3.0
SAY ~别担心，<CHARNAME>，我马上就完。~
= ~（她又低声念了几句，才回到自己的铺盖上。）~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ LG3.1
SAY ~是的，我有一阵没祈祷了。我一直……心不在焉。~
IF ~~ + LG3.3
END

IF ~~ LG3.2
SAY ~到时候再说，<CHARNAME>。我只是……需要这个。~
IF ~~ + LG3.3
END

IF ~~ LG3.3
SAY ~随着时间推移，我们的战斗只会越来越难。我需要提醒自己我在为什么而战。~
++ ~你在为什么而战？~ + LG3.4
++ ~我可以加入你吗？~ + LG3.5
++ ~嗯，我觉得你该趁能休息时休息。~ + LG3.0
END

IF ~~ LG3.4
SAY ~为你，当然……我的朋友。~
IF ~~ + LG3.6
END

IF ~~ LG3.5
SAY ~你当然可以。我一直喜欢有你作伴。~
IF ~~ + LG3.6
END

IF ~~ LG3.6
SAY ~我已决定了，<CHARNAME>……当你不再需要我时，就是我加入修会中我的兄弟姐妹们的时候了，就在泰提尔这里。~
= ~也许他们会接纳我。也许不会。可我不该再害怕与他们相见。~
++ ~我觉得这是个好主意。~ + LG3.7
++ ~这一切结束后，你不肯留下来陪我吗？~ + LG3.8
++ ~如果那是你想要的。~ + LG3.7
END

IF ~~ LG3.7
SAY ~因为有你的支持，<CHARNAME>，我可以自豪地称自己是受苦圣战者真正的骑士。我曾怀疑过自己的价值……但再不会了。~
= ~无论你成为凡人还是神明，你永远拥有我的友谊与忠诚。这是我向你许诺的。虽然我们会分道扬镳，我会记得我们一起走过的旅程。~
= ~可这一切结束之前还有一段路要走。好好休息，<CHARNAME>。明天，我们离终点更近一步。~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ LG3.8
SAY ~我不能说我不受诱惑，<CHARNAME>，可我这一生还有些事没做完。这是其中一件。~
IF ~~ + LG3.7
END

// ToB friendship talks, CG

// 1

IF ~Global("C0SireneTalkToB","GLOBAL",2) !Alignment("C0Sirene",LAWFUL_GOOD)~ CG1
SAY ~我们又一次被抛进混乱之中。这从不让你烦心吗，我的朋友？~ [C0BLANK]
++ ~不，不太会。我已经习惯杀人了。~ + CG1.1
++ ~我不去想它。我只是往前走。~ + CG1.2
++ ~我更愿意专心带我们脱身。走吧。~ + CG1.0
END

IF ~~ CG1.0
SAY ~是的，你说得对。那就改日。~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1)~ EXIT
END

IF ~~ CG1.1
SAY ~说实话，我也想过。这是个令人作呕的念头。~
IF ~~ + CG1.3
END

IF ~~ CG1.2
SAY ~我想那也算一种应对方式。我只希望能像你一样。~
IF ~~ + CG1.3
END

IF ~~ CG1.3
SAY ~可是尽管这一切都是违背你意愿地抛到你身上的，你却不设法回避。你正面迎上。你……并非真的乐在其中，对吧？~
++ ~这问题真怪。你是在问我是不是享受这一切杀戮？~ + CG1.4
++ ~不，我当然不是。~ + CG1.5
++ ~也许我确实享受。毕竟杀戮在我血里。~ + CG1.6
++ ~相信我，若能由我决定，我现在就会逃离这一切。~ + CG1.7
END

IF ~~ CG1.4
SAY ~哦。我在你眼里真是那样吗？我道歉。~
= ~可是……我想知道。不是要评判，只是……想理解。我相信我足够了解你，看得出你不只是一个巴尔之子。~
++ ~我真说不上。那*你*享受这个吗？~ + CG1.8
++ ~我恨这一切。打斗、杀戮、把我违背意愿地拖来拖去的魔法……~ + CG1.5
++ ~也许我确实。就一点点。~ + CG1.6
END

IF ~~ CG1.5
SAY ~那很好……我正开始担心……不是说我怀疑你，<CHARNAME>。若我怀疑你，我就是个糟糕的朋友了。~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1)~ EXIT
END

IF ~~ CG1.6
SAY ~真的？那么……我会当心，<CHARNAME>。我不愿看见像你这样的朋友变得……不如你现在的样子。~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1)~ EXIT
END

IF ~~ CG1.7
SAY ~可你做不到。~
++ ~我知道。~ + CG1.9
++ ~可这样盼望是错的吗？~ + CG1.10
END

IF ~~ CG1.8
SAY ~不。我不享受。~
= ~若说我有什么满足，那就是确保邪恶被终结。我对自己必须做的事毫无快意。~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1)~ EXIT
END

IF ~~ CG1.9
SAY ~*叹气*你不该过这样艰难的一生，<CHARNAME>。~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1)~ EXIT
END

IF ~~ CG1.10
SAY ~不。不，不是这样。你不该过这样艰难的一生，<CHARNAME>。~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1)~ EXIT
END

// 2

IF ~Global("C0SireneTalkToB","GLOBAL",4) !Alignment("C0Sirene",LAWFUL_GOOD)~ CG2
SAY ~萨拉杜什陷落了……可至少亚加苏拉不再活着制造更多惨剧。至少这一点是福。~ [C0BLANK]
++ ~可我仍忍不住想，我们辜负了那些人。~ + CG2.1
++ ~不幸的是，这只是我们忧虑的开端。~ + CG2.2
++ ~没时间想这些。我们该走了。~ + CG2.0
END

IF ~~ CG2.0
SAY ~当然。~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1)~ EXIT
END

IF ~~ CG2.1
SAY ~若我们救不了他们，至少我们为他们报了仇……而且若我们没来，他们早就注定灭亡。也许这真是我们能成就的极限。~
IF ~~ + CG2.3
END

IF ~~ CG2.2
SAY ~是的，你说得对。想到还有别人，与我们至今击败的巴尔之子一样强，甚至更强……这难以相信，可我知道我们会成功。~
IF ~~ + CG2.3
END

IF ~~ CG2.3
SAY ~我为萨拉杜什倒下的人哀悼……在这整件事里他们是无辜的，可这场战争毁了他们。只一个人，带着他的神血，就造成了这么大的毁灭。~
= ~这让我愤怒，<CHARNAME>。击败亚加苏拉对许多人是好事，可这一战只留给我苦涩。它会消退吗？~
++ ~若消退了，我会告诉你。~ + CG2.4
++ ~就算不消退，你也只能咬牙忍着。~ + CG2.4
++ ~你为什么问我这个？我们走吧。~ + CG2.0
END

IF ~~ CG2.4
SAY ~无论这感觉会持续多久……只要它还在，我就要确保像五人组那样的存在不能再活着威胁任何无辜者。~
= ~我们该走了，<CHARNAME>。敌人在等我们，而我的剑在等他们。~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1)~ EXIT
END

// 3

IF ~Global("C0SireneTalkToB","GLOBAL",6) !Alignment("C0Sirene",LAWFUL_GOOD)~ CG3
SAY ~我的斗篷……我奉献给伊尔梅特的象征。这就像与一位老友分别。~ [C0BLANK]
= ~（她悲伤地望着旁边的火）~
++ ~你——你在做什么？~ + CG3.1
++ ~你真要把它烧了？~ + CG3.1
++ ~（什么也不做）~ + CG3.0
END

IF ~~ CG3.0
SAY ~（在犹豫拦住她之前，塞琳把斗篷送进火焰，它纯白的颜色慢慢烧成焦黑。）~
= ~后悔已经太迟了。~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ CG3.1
SAY ~我曾把它当作骄傲的标志，<CHARNAME>。如今我不再是伊尔梅特的斗士，它……它再没有意义了。~
= ~这是我早该做的事，可是……我舍不得放手。~
++ ~那就别放。若它如今没有意义，那就给它新的意义。~ + CG3.2
++ ~可你就这样烧了它？你这么恨你从前的职责？~ + CG3.3
++ ~那就毁掉它。你现在是个自由的女人了。~ + CG3.0
END

IF ~~ CG3.2
SAY ~（她停下，展开斗篷，把它举在面前。）~
= ~真奇怪……从前它对我意味着许多。骄傲、信念、痛苦、悔恨……如今我看着它，却不确定该感受什么。~
= ~也许你说得对。我不必这么快斩断联系，即使如今我已是个不同的人。谢谢你的帮助，我的朋友。~
IF ~~ DO ~IncrementGlobal("C0SireneTalkToB","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ CG3.3
SAY ~我不恨它，<CHARNAME>，那是我曾……仍为之自豪的一生。可是……像许多事物一样，我必须足够坚强把它留在身后。~
= ~若我连这个都舍不得放下，那我还怎么走现在的路？不，我必须烧了它。~
++ ~我想你说得对。那就烧了吧。~ + CG3.0
++ ~不，我觉得你不必。你曾给过它意义。你可以再给一次。~ + CG3.2
END

// ToB lovetalks

// Lovetalk 1

IF ~Global("C0SireneToBLovetalk","GLOBAL",2)~ b1
SAY ~我本以为深入地狱之后，我们至少能有一刻喘息。看来连这个也得不到。~ [C0BLANK]
= ~我们又到了这里，<CHARNAME>。这让你烦心吗？~
++ ~是。我以为我至少能有一阵不再冒险了。~ + b1.1
++ ~不太会。这才是我的归处——在路上把靴子弄脏。~ + b1.1
++ ~也许我们改天再谈。我现在心里事太多。~ + b1.0
END

IF ~~ b1.0
SAY ~是的，当然。我只是以为你会喜欢谈话带来的分心。我并不渴望回到这种生活，可你若必须如此，那我就跟着你。~
= ~我在你身边，我的爱，现在与永远。~
IF ~~ DO ~IncrementGlobal("C0SireneToBLovetalk","GLOBAL",1)~ EXIT
END

IF ~~ b1.1
SAY ~我知道你的旅程还没结束，可当我得知我们要离开时，我……我失望了。我以为终于该是我们安宁相守的时候了。~
= ~我们仍会有那个机会的，对吧，<CHARNAME>？你和我，在另一个地方的某处，从此幸福地生活？~
+ ~Gender(Player1,MALE)~ + ~也许还会有几个孩子。我想我会喜欢那样。~ + b1.2
+ ~Gender(Player1,FEMALE)~ + ~也许还会有几个孩子。我想我会喜欢那样。~ + b1.3
++ ~我相信我们会的。~ + b1.4
++ ~谁知道呢？什么都可能发生。~ + b1.4
++ ~我不知道。我或许得在众神之中取代巴尔的位置。~ + b1.5
END

IF ~~ b1.2
SAY ~我从没把自己想过作母亲。我一直把我的血当作诅咒，不愿把它加在别人身上……可和你在一起，我……我想那会值得。~
IF ~~ + b1.4
END

IF ~~ b1.3
SAY ~我们甚至可以一起办一所孤儿院，像我的教会抚养我那样抚养别人。我会喜欢那样。~
IF ~~ + b1.4
END

IF ~~ b1.4
SAY ~（叹气）这都只是痴心妄想。更要紧的是我们得赶快把你命运的最后一段了结。~
= ~那么……我希望那终于是我们相守的时候。~
IF ~~ DO ~IncrementGlobal("C0SireneToBLovetalk","GLOBAL",1)~ EXIT
END

IF ~~ b1.5
SAY ~我……我一直试着不去想那种可能。想到你从我生命里消失，比我能想象的任何事都更糟。~
= ~若那真是注定之事，<CHARNAME>，那么……你会想要那样吗？~
++ ~抛下你？一百万年也不会。~ + b1.6
++ ~我不想要那样。我想做凡人。~ + b1.6
++ ~是的。我会。~ + b1.7
END

IF ~~ b1.6
SAY ~那么你至少给了我一点可盼的东西。那就够了。~
IF ~~ + b1.4
END

IF ~~ b1.7
SAY ~我明白了……那么也许我们该……结束我们之间的一切，这样我不会给你留下任何负担。~
= ~这不是我想要的，<CHARNAME>，可你想要什么，比……比什么都重要。~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END

// Post-Saradush

IF ~Global("C0SireneToBLovetalk","GLOBAL",4)~ b2
SAY ~（塞琳在你身旁歇下时，你听见急促的呼吸，接着是一声尖利的抽气。）不——不！~ [C0BLANK]
++ ~做噩梦了？~ + b2.1
++ ~（握住她的手）~ + b2.1
++ ~（装作睡着）~ + b2.0
END

IF ~~ b2.0
SAY ~（透过半睁的眼，你看见塞琳朦胧的身影坐起，双手捧着脸。）~
= ~（她最终又躺下了，不过你怀疑她今晚还能不能睡着。）~
IF ~~ DO ~IncrementGlobal("C0SireneToBLovetalk","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ b2.1
SAY ~<CHARNAME>？……是个可怕的噩梦。抱歉扰了你的休息。~
++ ~你还好吗？~ + b2.2
++ ~你梦见什么了？~ + b2.3
++ ~嗯，明天还有漫长的一天，尽量多休息吧。~ + b2.4
END

IF ~~ b2.2
SAY ~不……我没有。~
IF ~~ + b2.3
END

IF ~~ b2.3
SAY ~萨拉杜什……被烧成平地，它的民众被屠杀。它没有犯任何罪，<CHARNAME>，可它因巴尔之子而陷落。知道这个，我怎能安歇？~
++ ~你没看见那城被毁，可我看得出它仍深深影响着你。~ + b2.5
++ ~我知道。我对此的感受和你一样糟。~ + b2.6
++ ~那跟我们无关，塞琳。你不必为此自责。~ + b2.6
END

IF ~~ b2.4
SAY ~你先睡吧，我的爱。我……我需要醒着一会儿。也许整夜。~
IF ~~ DO ~IncrementGlobal("C0SireneToBLovetalk","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ b2.5
SAY ~更糟的是我没能亲眼看见萨拉杜什陷落，<CHARNAME>。我只有自己想象那些人死去的念头，而我毫无力量救他们……~
IF ~~ + b2.7
END

IF ~~ b2.6
SAY ~我知道发生的事不怪我们，可是……我在想我们是否还能多做些什么，也许能救下那些无辜者……~
IF ~~ + b2.7
END

IF ~~ b2.7
SAY ~我们击败了亚加苏拉，确保他的邪恶再不能威胁谁，这很好，可是……这不像胜利。说实话，远不像。~
++ ~别担心。等我们击败这整个「五人组」，我们就真正赢了。~ + b2.8
++ ~我们已尽了全力。这一点我可以向你保证。~ + b2.8
++ ~歇一歇吧。我们明早再继续。~ + b2.10
END

IF ~~ b2.8
SAY ~（她轻轻点头）我……觉得好一些了。谢谢你听我说，<CHARNAME>。你该歇一歇了。~
++ ~（把她揽进怀里，解开她内衫的系带）~ + b2.11
++ ~你也是。~ + b2.10
++ ~（回去睡吧。）~ + b2.10
END

IF ~~ b2.10
SAY ~（塞琳起身前稍稍前倾吻了你一下。）我需要一点时间理清思绪。好好休息。~
IF ~~ DO ~IncrementGlobal("C0SireneToBLovetalk","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ b2.11
SAY ~<CHARNAME>……<CHARNAME>，我觉得现在不是时候——~
++ ~你压力太大了。这会有帮助，我保证。~ + b2.12
++ ~也许你说得对。现在不是时候。~ + b2.10
END

IF ~~ b2.12
SAY ~（她叹了口气，却轻轻点头，伸手去解你的衣裳作为回应。她把自己交给你，任你全然拥住她。）~
= ~（片刻之后，当你们都松弛下来、心满意足时，她安睡在你怀里。）~
IF ~~ DO ~IncrementGlobal("C0SireneToBLovetalk","GLOBAL",1) RestParty()~ EXIT
END

// Sirene's talk after Gorion Wraith:

IF ~Global("C0SireneWraithSpirit1","GLOBAL",2)~ b3
SAY ~邪恶的幽灵……竟想这样折磨我的心智。对这样堕落……这样毫无悔意的存在，没有仁慈可言。拿我的疑虑当武器来击打我……只有魔物才做得出这种事！~ [C0BLANK]
++ ~对不起。~ DO ~SetGlobal("C0SireneWraithSpirit1","GLOBAL",3)~ + b3.1
++ ~别信其中任何一个字。那全是残酷的玩笑。~ DO ~SetGlobal("C0SireneWraithSpirit1","GLOBAL",3)~ + b3.2
++ ~那幽灵也许说中了什么。~ DO ~SetGlobal("C0SireneWraithSpirit1","GLOBAL",3)~ + b3.3
END

IF ~~ b3.1
SAY ~你……你没有什么可道歉的，<CHARNAME>。这些事发生都不怪你。它……它怪我……~
IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ + b3.4
IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + b3.5
END

IF ~~ b3.2
SAY ~是么？我自己都不确定。~
IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ + b3.4
IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + b3.5
END

IF ~~ b3.3
SAY ~不……不！我不能相信那个！若我把那幽灵的毒语当作真相，那我曾坚持的一切……我所……~
IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ + b3.4
IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + b3.5
END

IF ~~ b3.4
SAY ~我……我这一生都遵循伊尔梅特的指引，可我记起的不是我的功业，而是我的失败……那些至今缠着我的疑虑。~
IF ~~ + b3.6
END

IF ~~ b3.5
SAY ~我……我为了寻自己相信的道路，舍弃了我曾相信的一切。可是……我显然还没摆脱疑虑。~
IF ~~ + b3.6
END

IF ~~ b3.6
SAY ~那……那幽灵用我自己的自我怀疑羞辱了我，<CHARNAME>。我很羞愧承认，可是……若我心里没有那份软弱，这一切都不会发生。~
++ ~我们都有疑虑，塞琳。你并不因此就低人一等。~ + b3.7
++ ~你不知道。它本可以扭曲任何话，只为伤你。~ + b3.8
++ ~我能说什么？也许你说得对。~ + b3.9
END

IF ~~ b3.7
SAY ~我……我知道，<CHARNAME>，可我的软弱本可能导致我丧命，甚至更糟……你的性命，若非你的意志赢了那一场。我不能让那样的事再发生。~
IF ~~ + b3.9
END

IF ~~ b3.8
SAY ~也许吧，可即使如此，难道不是我自己给了它最残酷地伤我的武器？即使知道那生物的邪恶本性，我也不能免去自己的责。~
IF ~~ + b3.9
END

IF ~~ b3.9
SAY ~我……我不能再想这件事了，<CHARNAME>。容许我的疑虑几乎毁掉我们俩，这是我的过错……而我无法原谅自己。~
IF ~~ EXIT
END

// Fourth lovetalk

IF ~Global("C0SireneToBLovetalk","GLOBAL",6)~ b4
SAY ~我——我希望我先前的软弱没让你忧心，<CHARNAME>。我……现在好多了，多亏你。~ [C0BLANK]
++ ~我很高兴。我当时很为你担心。~ + b4.1
++ ~那不是软弱，塞琳。没人能因为你那样的反应说你是弱者。~ + b4.2
++ ~你确定吗？你若不好，我愿意做任何事来帮你。~ + b4.3
END

IF ~~ b4.1
SAY ~自从遇上那邪恶的幽灵，我一直在想……想我父母究竟遭遇了什么。~
= ~我对发生的事几乎一无所知。有时，我相信我梦见过它……我看见可能发生之事的影像，可我的心理解不了它们。~
= ~我想，在我心底某处，我早已画出我所相信发生的事……我所相信我母亲对我的看法。那些幽灵就是拿这个来折磨我。~
++ ~可那不是真正发生的事。你现在完全相信这一点了吗？~ + b4.4
++ ~你父母可能为你舍弃了性命，可那是因为他们爱你。你不该因此怀疑任何人。不是他们，更绝不是你自己。~ + b4.5
++ ~我觉得你该继续想下去。你的方向是对的。~ + b4.5
END

IF ~~ b4.2
SAY ~我知道，<CHARNAME>。现在我明白了。~
IF ~~ + b4.1
END

IF ~~ b4.3
SAY ~不，不，真的，没关系。我已经想通了。~
IF ~~ + b4.1
END

IF ~~ b4.4
SAY ~是的，我——我确实相信。~
IF ~~ + b4.5
END

IF ~~ b4.5
SAY ~我必须敬重我母亲救我性命的牺牲……而那意味着要活得充分，并且……自由地去爱。继续背着这份愧疚，是对他们的不敬。~
= ~（微笑）我想我父母会喜欢你的，<CHARNAME>。我虽从未认识他们，可是……他们会认可这个给我生命中带来如此多喜悦的<PRO_MANWOMAN>。~
= ~也许在某种意义上，那邪恶的幽灵终究做了些好事。它坚定了我的决心。~
= ~啊……不，那不对。是*你*为我做到的，我的爱。你又一次把我从我自己手里救了出来。~
++ ~是你自己做到的。我只是推了你一把，推向正确的方向。~ + b4.6
++ ~我希望你从今往后能不必背着那副重担生活。~ + b4.6
++ ~为你，什么都行，我的爱。~ + b4.6
END

IF ~~ b4.6
SAY ~我想我蒙的福比我知道的更多。我被父母救下，被伊尔梅特抚养培育，如今……又被你所爱。~
= ~我怎么可能还对我的人生有什么疑虑？~
IF ~~ DO ~IncrementGlobal("C0SireneToBLovetalk","GLOBAL",1)~ EXIT
END

// Second rest lovetalk

IF ~Global("C0SireneToBLovetalk","GLOBAL",8)~ b5
SAY ~这是个安静的夜。~ [C0BLANK]
++ ~你说得对。~ + b5.1
++ ~趁能享受就享受吧。~ + b5.1
++ ~我更喜欢白天。我们睡吧。~ + b5.1
END

IF ~~ b5.1
SAY ~（她双臂抱住膝盖，发着抖）~
= ~我——我想问你，<CHARNAME>，你是否愿意……哦，该死，言语满足不了我不得不……~
= ~（她话说到一半停住，带着几乎压抑不住的渴望看了你一会儿，然后扑向你，把你推倒在床铺上，吻你的脖颈、咬你的耳朵。）~
++ ~哇——哇！你怎么了？~ + b5.2
++ ~（回应她的挑逗）~ + b5.3
++ ~不，停下。我现在没那个心情。~ + b5.4
END

IF ~~ b5.2
SAY ~嘘。这事早该来了，我的爱。趁这一刻还在，好好享受。~
IF ~~ + b5.3
END

IF ~~ b5.3
SAY ~（她急切地扯去你的衣裳，然后同样褪去自己的。她羞怯地笑着——对她来说不常见的表情。）~
= ~今晚我属于你，随你怎么用，<CHARNAME>。我希望……你不会让我失望。~
IF ~~ DO ~IncrementGlobal("C0SireneToBLovetalk","GLOBAL",1) RestParty()~ EXIT
END 

IF ~~ b5.4
SAY ~好——好吧，<CHARNAME>。我不能强求于你。也许我们今晚该分开睡。好好休息。~
IF ~~ DO ~IncrementGlobal("C0SireneToBLovetalk","GLOBAL",3) RestParty()~ EXIT
END

// Post-rest talk
IF ~Global("C0SireneToBLovetalk","GLOBAL",10)~ b6
SAY ~我希望你睡得还好，<CHARNAME>。~ [C0BLANK]
++ ~你笑得像只偷了奶的猫。我猜这说明你喜欢我们共度的这一夜？~ + b6.1
++ ~哦，绝对喜欢。~ + b6.1
++ ~你昨夜……不一样。是好的那种不一样。~ + b6.1
END

IF ~~ b6.1
SAY ~我以为你需要点什么把心思从近来的事上挪开。这个，我觉得你会喜欢……因为我确实喜欢。~
+ ~Alignment("C0Sirene",LAWFUL_GOOD)~ + ~昨夜真美妙。尤其是你用神力让我们能再来一轮的时候。~ + b6.2
+ ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + ~昨夜真美妙。尤其是你那个火焰手掌的把戏，真添趣味。~ + b6.2
++ ~我很感动，可你真的不必为我做这个。只要有你，就足够了。~ + b6.3
++ ~那真不错。我们再来一次？~ + b6.4
++ ~我们出发吧。不能让我的兄弟姐妹们久等，对吧？~ + b6.5
END

IF ~~ b6.2
SAY ~（脸红）那……嗯，我不知道那念头是怎么来的。我当时……太过兴奋了。~
IF ~~ + b6.5
END

IF ~~ b6.3
SAY ~为我们，我的爱……我是为我们做的。你的欢愉……就是我的欢愉。正如你的痛也是我的痛。~
IF ~~ + b6.5
END

IF ~~ b6.4
SAY ~（微笑）也许改夜再说。若把我们昨夜做的一切再来一遍，我……*咳*怀疑我们俩之后都走不稳路。~
IF ~~ + b6.5
END

IF ~~ b6.5
SAY ~我们继续走吧？怕是要回到战场了。我迫不及待想再一次离开它们。如今更是加倍。~
IF ~~ DO ~IncrementGlobal("C0SireneToBLovetalk","GLOBAL",1)~ EXIT
END 

// Abazigal and Sendai defeated

IF ~Global("C0SireneFourFive","GLOBAL",1)~ b7
SAY ~阿巴齐加尔和森代……我们最后的敌人，都倒下了。我们……我们胜利了。~ [C0BLANK]
++ ~还没有。还剩一个敌人。~ + b7.1
++ ~你听起来像是不敢相信。~ + b7.2
++ ~我跟你说过我们会赢。~ + b7.3
++ ~是的，「我们」胜利了。我们一起做到的。~ + b7.3
END

IF ~~ b7.1
SAY ~我知道，<CHARNAME>，只是……~
IF ~~ + b7.3
END

IF ~~ b7.2
SAY ~不，恰恰相反……~
IF ~~ + b7.3
END

IF ~~ b7.3
SAY ~（忽然，她丢下武器，跑上前抱住你，轻声笑着）~
= ~我……我从没怀疑过你，<CHARNAME>。我知道我们会胜利。你从没让任何人失望。没让我失望，也没让你自己失望。这是你的胜利，<CHARNAME>。~
++ ~我——我不能说我*从没*失败过……不过，是啊。~ + b7.4
++ ~不，我的爱，这是我们的胜利。~ + b7.4
++ ~（尴尬地拍拍她的背）~ + b7.4
END

IF ~~ b7.4
SAY ~我们走了这么远，<CHARNAME>，我几乎不能相信我们会在现在失败。终点这么近了……~
= ~（她与你分开时，你注意到她眼里有泪——是喜悦的泪，不是悲伤。）~
= ~我现在就能看见我们，在不远的将来……我们能成的，<CHARNAME>。我知道。~
IF ~~ DO ~IncrementGlobal("C0SireneFourFive","GLOBAL",1)~ EXIT
END

// ToB, final challenge, killing the Ravager, romance only

IF ~Global("C0SireneChallenge5","GLOBAL",1)~ b9
SAY ~就快到最后了，不是吗？~ [C0BLANK]
++ ~是啊。~ + b9.1
++ ~对梅莉珊而言。不是对我们。~ + b9.1
++ ~是的。现在动手吧。~ + b9.1
END

IF ~~ b9.1
SAY ~那么我想我不能再拖下去了……~
= ~（她深吸一口气，才继续说。）~
= ~……你愿意……娶我吗，<CHARNAME>？~
++ ~什——什么？！~ + b9.2
++ ~你真是在向我求婚？~ + b9.2
++ ~我愿意。~ + b9.4
END

IF ~~ b9.2
SAY ~当然不是现在。可等我们胜利之后——而我们会的，我的爱——我要你娶我。~
++ ~我没想到你对这事这么有把握。~ + b9.3
++ ~我愿意，塞琳。~ + b9.4
++ ~我不确定……~ + b9.5
END

IF ~~ b9.3
SAY ~这不像我，我知道。可是……我想这事想得太久了。不知道你的答复，我没法继续。~
++ ~你不必再说别的。我也想向你求婚，从很久很久以前就想。等这一切结束，我们就结婚。~ + b9.4
++ ~嗯，你就那样直接说出来，把我打了个措手不及，可如今我缓过来了……是的。我答应。~ + b9.4
++ ~我不确定……~ + b9.5
++ ~不，塞琳。对不起。我爱你，我会永远陪着你，可婚姻是我不想要的东西。~ + b9.6
END

IF ~~ b9.4
SAY ~谢谢你……~
IF ~PartyHasItem("c0sring")~ + b9.4a
IF ~!PartyHasItem("c0sring")~ + b9.9
END

IF ~~ b9.4a
SAY ~（你注意到塞琳手中一闪的光，她抬手给你看那枚她母亲的婚戒）~
= ~我想留到这一刻用……我知道这只是形式，向你求这个也有点难为情，可是……你愿意给我这份荣幸吗？~
++ ~当然……我亲爱的妻子。~ + b9.9
++ ~（把戒指戴在她指上）~ + b9.9
END

IF ~~ b9.5
SAY ~为何……你为何犹豫，我的爱？你……不和我一样的心意吗？~
++ ~对不起，塞琳。我爱你，可我就是不想要这份承诺。~ + b9.6
++ ~我已决定。我要在天上取代我父亲的位置。~ + b9.7
++ ~原谅我。我一直不想说，可……我对你已没有感情了。~ + b9.8
++ ~别在意。你做出那种眼神时……*叹气*好吧。我答应。~ + b9.4
++ ~忘了我刚才说的。我再没有比娶你更愿意的事了。~ + b9.4
END

IF ~~ b9.6
SAY ~我明白了……这不是我想要的答复，可我会接受。但别以为你能这么容易逃开我。总有一天我会让你改变主意。~
= ~（她微笑，然后吻你。）~
= ~如今我再不会有遗憾。无论喜与悲，我们已结为一体。谢谢你……我的爱。~
IF ~~ DO ~SetGlobal("C0SirenePropose","GLOBAL",1) SetGlobal("C0SireneChallenge5","GLOBAL",2)~ EXIT
END

IF ~~ b9.7
SAY ~*叹气*我本希望你不会这么说。你有这个权利，若那真是你的愿望，我不会拦你。~
= ~可是……我会继续希望。希望到时候我能让你改变主意。~
= ~（她前倾吻你。）~
= ~无论如何……还有时间。等我们从这些重担里解脱……那时也许我们能决定未来究竟如何。~
IF ~~ DO ~SetGlobal("C0SireneChallenge5","GLOBAL",2)~ EXIT
END

IF ~~ b9.8
SAY ~我——我明白了。我……我本希望我们会永远在一起，可是……~
= ~不。我不再说这个了。我们……我们该继续前进。~
IF ~~ DO ~SetGlobal("C0SireneChallenge5","GLOBAL",2)
SetGlobal("C0SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ b9.9
SAY ~（她前倾吻你。）~
= ~如今我再不会有遗憾。无论喜与悲，我们已结为一体。谢谢你……我的爱。~
IF ~~ DO ~SetGlobal("C0SirenePropose","GLOBAL",1) SetGlobal("C0SireneChallenge5","GLOBAL",2)~ EXIT
END

// Temple of Ilmater

IF ~Global("C0SireneIlmaterTemple","GLOBAL",1)~ temple
SAY ~<CHARNAME>，能把你的地图借我一会儿吗？~ [C0BLANK]
++ ~当然。给你。~ + temple1
++ ~你要它做什么？~ + temple2
END

IF ~~ temple1
SAY ~谢谢。是的……跟我听说的一样。~
= ~这区域里有个村子，地图上标着那里有座伊尔梅特的小教堂。我……想去看看，若我们有时间。~
++ ~你为什么不早说？~ + temple3
+ ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + ~可你不再是伊尔梅特的圣武士了。~ + temple4
++ ~我想若有机会，我们可以顺路去看看。~ + temple5
++ ~现在不行。我们手头有要紧事。~ + temple6
END

IF ~~ temple2
SAY ~有件事我需要……确认一下。不会太久。~
++ ~当然。拿去吧。~ + temple1
++ ~如果你一定要去。~ + temple1
END

IF ~~ temple3
SAY ~我没想到会被带到偏偏是这个地方。我先前甚至不知道我们在哪儿，可如今我知道了，我想去看看。~
IF ~~ + temple5
END

IF ~~ temple4
SAY ~是的，可我仍把自己视为信徒，即使我已不再蒙伊尔梅特的眷顾。这……会让我心里安稳些。~
IF ~~ + temple5
END

IF ~~ temple5
SAY ~不急。这不是要紧事，只是我有空时想求你的一个方便。你愿意去时告诉我，我带我们去。~
IF ~~ DO ~SetGlobal("C0SireneIlmaterTemple","GLOBAL",2)~ EXIT
END

IF ~~ temple6
SAY ~确实如此。不过等我们有时间，也许你可以考虑一下？你若改变主意，告诉我，我带我们去。~
IF ~~ DO ~SetGlobal("C0SireneIlmaterTemple","GLOBAL",2)~ EXIT
END

IF ~Global("C0SireneIlmaterTemple","GLOBAL",3)~ temple.0
SAY ~哦……~ [C0BLANK]
IF ~~ DO ~SetGlobal("C0SireneIlmaterTemple","GLOBAL",4) ClearAllActions() StartCutSceneMode() StartCutScene("c0scut4")~ EXIT
END

IF ~Global("C0SireneIlmaterTemple","GLOBAL",4)~ temple.1
SAY ~当我得知这里有一座我能去致敬的伊尔梅特神殿时，这……*这*并不是我预想的样子。~ [C0BLANK]
++ ~你预想的是什么？~ + temple.2
++ ~真没想到。看来这地方早就塌了。~ + temple.3
++ ~这里什么都没有。白跑一趟。~ + temple.4
END

IF ~~ temple.2
SAY ~我……不知道。我知道它陈旧了，可我以为这里也许还有人，然而一个也没有。不，等等……~
IF ~~ + temple.4
END

IF ~~ temple.3
SAY ~也许是巴尔之子战争把这教堂毁了。又或者它早已荒废，只是没人费心来……等等。~
IF ~~ + temple.4
END

IF ~~ temple.4
SAY ~奇怪……神殿已塌，可……这地面受过祝福，而且是不太久之前。有人来过这里。~
= ~这教堂周围也许有什么东西。我们该四处看看，<CHARNAME>。~
IF ~~ DO ~SetGlobal("C0SireneIlmaterTemple","GLOBAL",5)~ EXIT
END

IF ~Global("C0SireneHolyBook","GLOBAL",1)~ holybook
SAY ~那……那是伊尔梅特教会的圣书。每个初入教者至少都记得信条。等等……还有别的。~ [C0BLANK]
= ~我明白了……这些页上写着伊尔梅特祭司的仪轨，<CHARNAME>，类似于神术。~
= ~这些是伊尔梅特赐给他的苦痛承载者的，用来……操纵痛苦。把痛苦从一个人身上转移到另一个人身上，使身体坚硬以更能忍耐，甚至把痛苦加于他人……~
= ~这对教会是件宝贵的物品，<CHARNAME>。祭司们为什么会把它留在这里？~
++ ~也许不是他们留的。也许是后来有人放在这里的。~ + holybook1
+ ~Alignment("C0Sirene",LAWFUL_GOOD)~ + ~你能用得上它吗？~ + holybook2
+ ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + ~你能用得上它吗？~ + holybook3
END

IF ~~ holybook1
SAY ~是的……也许就是那个祝福了此地的人。也许他们是想让人找到它……或是为了保护它不落入歹人之手。~
IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ + holybook2
IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + holybook3
END

IF ~~ holybook2
SAY ~我也许能用上其中一些仪轨，可是……我不是祭司。它们在我手里不会有在真正苦痛承载者手里的力量。有些太复杂，我根本用不了。~
IF ~~ + holybook4
END

IF ~~ holybook3
SAY ~（她摇头）这些仪轨需要与神的联结才能取用其力，而我已经没有了。我用不了这本书……可也许别的祭司能。~
IF ~~ + holybook4
END

IF ~~ holybook4
SAY ~虽然这趟比我预想的差，可终究有些好处。也许这本书将来能帮上我们。~
= ~给我一点时间，在离开前让我在祭坛前向伊尔梅特祈祷，<CHARNAME>……等等！有人来了！~
IF ~~ DO ~SetGlobal("C0SireneHolyBook","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c0scut5")~ EXIT
END

IF ~Global("C0SireneBandits","GLOBAL",1)~ bandits
SAY ~劫掠者，强盗。看来他们一直埋伏着，等有人来取出伊尔梅特信徒留在这里的东西。~
= ~*叹气*对不起，<CHARNAME>。这本该只是短暂的消遣。我希望我们能到一个安宁的地方，从必须面对的战斗里稍作喘息，可看来无论走到哪里都躲不开它们。~
++ ~我很领情你的用心，即使没成。~ + bandits1
++ ~我们现在该怎么办？~ + bandits1
++ ~走吧。我们最好回去处理巴尔之子的事。~ + bandits1
END

IF ~~ bandits1
SAY ~也许有一天人们会回来，这地方会重新建起，我只能希望。看着这样的地方倾颓、湮没……真可惜。~
IF ~Alignment("C0Sirene",LAWFUL_GOOD)~ + bandits2
IF ~!Alignment("C0Sirene",LAWFUL_GOOD)~ + bandits3
END

IF ~~ bandits2
SAY ~稍等，<CHARNAME>。离开前我该以伊尔梅特的祝福使这片土地圣化。它不该再被打扰。~
IF ~~ DO ~SetGlobal("C0SireneBandits","GLOBAL",2)
	StartCutsceneMode()
	FadeToColor([20.0],0)
	Wait(2)
	PlaySound("CAS_P03")
	AddExperienceParty(10000)
	CreateVisualEffectObject("icprayi",Myself)
	FadeFromColor([20.0],0)
	EndCutSceneMode()~ EXIT
END

IF ~~ bandits3
SAY ~我担心就这样把这地方留着，可我怕我也无能为力。我们该走了，<CHARNAME>，免得给这圣地招来更多威胁。~
IF ~~ DO ~SetGlobal("C0SireneBandits","GLOBAL",2) AddExperienceParty(10000)~ EXIT
END

// Post-aunt talk

IF ~Global("C0SireneMeetsAunt","GLOBAL",3)~ aunt
SAY ~谢谢你让我有时间陪我姑母，<CHARNAME>。我听到了那样……奇妙的故事。~
= ~我很高兴知道我的家族还有人活着、还在意我，可同时……知道我的父母爱我，而残酷的命运把他们拆散，我——我……~
+ ~Global("C0SireneRomanceActive","GLOBAL",2)~ + ~（抱她）~ + aunt1
+ ~!Global("C0SireneRomanceActive","GLOBAL",2)~ + ~（抱她）~ + aunt2
++ ~你现在想让我叫你什么？塞琳，还是蕾妮？~ + aunt3
++ ~好了，这话题够了。我们还有事要做。~ + aunt4
END

IF ~~ aunt1
SAY ~谢——谢谢你，我的爱。我的家人都没了……不，不完全对。我还有你。你是我有过最接近家人的存在。~
IF ~~ + aunt5
END

IF ~~ aunt2
SAY ~谢——谢谢你，<CHARNAME>。我的家人都没了……可知道身边还有个朋友，这很好。~
IF ~~ + aunt5
END

IF ~~ aunt3
SAY ~对你而言，我始终是塞琳，<CHARNAME>。那永远不会变。~
IF ~~ + aunt5
END

IF ~~ aunt4
SAY ~（她拭去眼角的泪，点头。）~
IF ~~ + aunt6
END

IF ~~ aunt5
SAY ~知道我没有被憎恶、没有被抛弃，这就够了……我觉得仿佛一副我不知存在的重担如今卸下了。而现在……~
= ~（她带着泪笑低头看着母亲的婚戒。）~
= ~我……我知道她会认可如今的我。她会希望我陪你走到这趟旅程的尽头。~
IF ~~ + aunt6
END

IF ~~ aunt6
SAY ~带路吧，<CHARNAME>。我会紧跟在你身后。~
IF ~~ DO ~SetGlobal("C0SireneMeetsAunt","GLOBAL",4)~ EXIT
END

// Sirene-initiated flirts

// Flirts for Sirene, C0SireneRomanceActive=2

IF ~Global("C0SireneFlirtToB","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ flirt3
SAY ~（塞琳走近你时，眼里满是温暖。）~ [C0BLANK]
IF ~RandomNum(15,1)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f1
IF ~RandomNum(15,2)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f2
IF ~RandomNum(15,3)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f3
IF ~RandomNum(15,4)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f4
IF ~RandomNum(15,5)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f5
IF ~RandomNum(15,6)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f6
IF ~RandomNum(15,7)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f7
IF ~RandomNum(15,8)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f8
IF ~RandomNum(15,9)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f9
IF ~RandomNum(15,10)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f10
IF ~RandomNum(15,11)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f11
IF ~RandomNum(15,12)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f12
IF ~RandomNum(15,13)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f13
IF ~RandomNum(15,14)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f14
IF ~RandomNum(15,15) TimeOfDay(NIGHT)~ DO ~RealSetGlobalTimer("C0SireneFlirtTimerToB","GLOBAL",2500) SetGlobal("C0SireneFlirtToB","GLOBAL",0)~ + f15
END

IF ~~ f1
SAY ~（她轻抚你的大腿，也许是有意用触碰撩拨你）~
IF ~~ EXIT
END

IF ~~ f2
SAY ~爱真是美丽的事物，<CHARNAME>。而你是我的爱的对象，这就更好了。~
IF ~~ EXIT
END

IF ~~ f3
SAY ~（她走近，从背后抱住你。）~
= ~有时我在想，这一切结束后我还能不能这样抱着你……可在那一刻到来之前，让我趁还能享受时享受这些时刻。~
IF ~~ EXIT
END

IF ~~ f4
SAY ~（她牵起你的手，带你跳起舞蹈的起手几步，然后停下笑出声。）~
= ~我忍不住，<CHARNAME>。我希望有一天我们能好好地跳一支。~
IF ~~ EXIT
END

IF ~~ f5
SAY ~（她低头看自己的盔甲。）我曾以为我穿它是为了保护自己。如今我知道它真正是为了保护你，我的爱。~
IF ~~ EXIT
END

IF ~~ f6
SAY ~从前，我看着你时，血会暖我的脸颊。如今我不再有那种感觉了……因为我不再怀疑我对你的爱，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ f7
SAY ~（她把你拉近，开始亲昵地抚弄你）你让我非常庆幸我没有立下贞洁誓，<CHARNAME>。（笑）这种事真奇怪。~
IF ~~ EXIT
END

IF ~~ f8
SAY ~我们会成功的，我的爱。我保证。~
IF ~~ EXIT
END

IF ~~ f9
SAY ~我近来……试着多学了些烹饪。希望我上次做的饭还过得去。~
++ ~你做的什么都好看。~ + f9a
++ ~我确实尝得出进步。~ + f9b
++ ~继续练下去。你很快就会成大厨。~ + f9c
END

IF ~~ f9a
SAY ~这可不行。毕竟若不说实话，我怎么能进步？~
IF ~~ EXIT
END

IF ~~ f9b
SAY ~哦，那好。我还以为对你来说太寡淡了。~
IF ~~ EXIT
END

IF ~~ f9c
SAY ~（笑）我严重怀疑……不过你既然这么说。~
IF ~~ EXIT
END

IF ~~ f10
SAY ~我梦想有个可爱的人，梦想了那么久……我从没想过那个人会是你，<CHARNAME>。~
= ~也不是说我有什么遗憾。~
IF ~~ EXIT
END

IF ~~ f11
SAY ~（她双手捧住你的脸，前倾吻你，热烈而深情。这样的自信出自她身上，令人意外。）~
IF ~~ EXIT
END

IF ~~ f12
SAY ~你……和我。今晚……~
IF ~~ EXIT
END

IF ~~ f13
SAY ~（她牵起你的手，把一块巧克力塞进你手里。）吃吧，<CHARNAME>。你会好受些，我保证。~
IF ~~ EXIT
END

IF ~~ f14
SAY ~她轻轻触碰你的脸，描摹你面部的轮廓。~
IF ~Gender(Player1,MALE)~ + f14a
IF ~Gender(Player1,FEMALE)~ + f14b
END

IF ~~ f14a
SAY ~你真俊美，我的爱。我仍惊讶像你这样的人竟能属于我。~
IF ~~ EXIT
END

IF ~~ f14b
SAY ~你真美，我的爱。我仍惊讶像你这样的人竟能属于我。~
IF ~~ EXIT
END

IF ~~ f15
SAY ~夜也许黑，可我无所畏惧，因为你是我的光……我的爱。~
IF ~~ EXIT
END

// Player-initiated dialogue, ToB. Again, in the bottom of the file, and, again, no flirting for the final battle, AR6200.

IF ~IsGabber(Player1) AreaCheck("AR6200")~ PPID0
SAY ~<CHARNAME>，这是你命运的最后一战。让我们了结它。~
IF ~~ EXIT
END

IF ~IsGabber(Player1) !Global("C0SireneRomanceActive","Global",2)~ C0SirenePID    			
SAY ~你需要我吗，<CHARNAME>？~ [C0SIR015]
+ ~Global("C0SireneIlmaterTemple","GLOBAL",2)
OR(8)
AreaCheck("AR3000")
AreaCheck("AR5200")
AreaCheck("AR5202")
AreaCheck("AR5203")
AreaCheck("AR6000")
AreaCheck("AR6100")
AreaCheck("AR6300")
AreaCheck("AR6400")~ + ~我想去你提过的那座神殿。~ + gotemple
+ ~RandomNum(4,1)~ + ~你近来如何？~ + p1.1
+ ~RandomNum(4,2)~ + ~你近来如何？~ + p1.2
+ ~RandomNum(4,3)~ + ~你近来如何？~ + p1.3
+ ~RandomNum(4,4)~ + ~你近来如何？~ + p1.4
++ ~我能问你一个问题吗？~ + questions
+ ~Global("C0SireneShutUp","GLOBAL",0)~ + ~塞琳，我希望你暂时别跟我说话。~ DO ~SetGlobal("C0SireneShutUp","GLOBAL",1)~ + again
+ ~Global("C0SireneShutUp","GLOBAL",1)~ + ~我挺想念跟你说话的。你想聊随时都可以来找我。~ DO ~SetGlobal("C0SireneShutUp","GLOBAL",0)~ + again
++ ~我觉得你的声音有点不对劲。~ + stringfix
++ ~不，算了。~ EXIT
END

IF ~IsGabber(Player1) Global("C0SireneRomanceActive","Global",2)~ C0SireneRomancePID    			
SAY ~（你走近时，塞琳微笑。）我在你身边。~ [C0SIR016]
+ ~Global("C0SireneIlmaterTemple","GLOBAL",2)
OR(8)
AreaCheck("AR3000")
AreaCheck("AR5200")
AreaCheck("AR5202")
AreaCheck("AR5203")
AreaCheck("AR6000")
AreaCheck("AR6100")
AreaCheck("AR6300")
AreaCheck("AR6400")~ + ~我想去你提过的那座神殿。~ + gotemple
+ ~Global("C0SireneRomanceActive","GLOBAL",2)~ + ~（调情）~ + flirt
+ ~RandomNum(4,1)~ + ~你近来如何？~ + p1.1
+ ~RandomNum(4,2)~ + ~你近来如何？~ + p1.2
+ ~RandomNum(4,3)~ + ~你近来如何？~ + p1.3
+ ~RandomNum(4,4)~ + ~你近来如何？~ + p1.4
++ ~我能问你一个问题吗？~ + questions
+ ~Global("C0SireneShutUp","GLOBAL",0)~ + ~塞琳，我希望你暂时别跟我说话。~ DO ~SetGlobal("C0SireneShutUp","GLOBAL",1)~ + again
+ ~Global("C0SireneShutUp","GLOBAL",1)~ + ~我挺想念跟你说话的。你想聊随时都可以来找我。~ DO ~SetGlobal("C0SireneShutUp","GLOBAL",0)~ + again
++ ~我觉得你的声音有点不对劲。~ + stringfix
++ ~算了。~ EXIT
END

// Visit temple of Ilmater

IF ~~ gotemple
SAY ~是的，当然。你若愿意，我们现在就可以去。~
++ ~带路吧。~ + gotemple2
++ ~也许现在不行。~ EXIT
END

IF ~~ gotemple2
SAY ~跟我来。路挺远的。~
IF ~~ DO ~StartCutSceneMode()
FadeToColor([30.0],0)
Wait(4)
ActionOverride(Player1,LeaveAreaLUA("c0sir3","",[1362.547],W))
ActionOverride(Player2,LeaveAreaLUA("c0sir3","",[1414.549],W))
ActionOverride(Player3,LeaveAreaLUA("c0sir3","",[1482.548],W))
ActionOverride(Player4,LeaveAreaLUA("c0sir3","",[1349.610],W))
ActionOverride(Player5,LeaveAreaLUA("c0sir3","",[1416.608],W))
ActionOverride(Player6,LeaveAreaLUA("c0sir3","",[1490.609],W))
FadeFromColor([30.0],0)
EndCutSceneMode()~ EXIT
END

// Flirt Menu

IF ~~ flirt
SAY ~什么事？~ [C0SIR017]
+ ~RandomNum(4,1)~ + ~（吻她）~ + r1.1
+ ~RandomNum(4,2)~ + ~（吻她）~ + r1.2
+ ~RandomNum(4,3)~ + ~（吻她）~ + r1.3
+ ~RandomNum(4,4)~ + ~（吻她）~ + r1.4
+ ~RandomNum(4,1)~ + ~（抚她的脸）~ + r2.1
+ ~RandomNum(4,2)~ + ~（抚她的脸）~ + r2.2
+ ~RandomNum(4,3)~ + ~（抚她的脸）~ + r2.3
+ ~RandomNum(4,4)~ + ~（抚她的脸）~ + r2.4
+ ~RandomNum(4,1)~ + ~（牵她的手）~ + r3.1
+ ~RandomNum(4,2)~ + ~（牵她的手）~ + r3.2
+ ~RandomNum(4,3)~ + ~（牵她的手）~ + r3.3
+ ~RandomNum(4,4)~ + ~（牵她的手）~ + r3.4
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
+ ~RandomNum(4,1)~ + ~（请她吃巧克力）~ + f9.1
+ ~RandomNum(4,2)~ + ~（请她吃巧克力）~ + f9.2
+ ~RandomNum(4,3)~ + ~（请她吃巧克力）~ + f9.3
+ ~RandomNum(4,4)~ + ~（请她吃巧克力）~ + f9.4
+ ~RandomNum(4,1)~ + ~今晚我要你。~ + r4.1
+ ~RandomNum(4,2)~ + ~今晚我要你。~ + r4.2
+ ~RandomNum(4,3)~ + ~今晚我要你。~ + r4.3
+ ~RandomNum(4,4)~ + ~今晚我要你。~ + r4.4
+ ~RandomNum(4,1)~ + ~我爱你。~ + r5.1
+ ~RandomNum(4,2)~ + ~我爱你。~ + r5.2
+ ~RandomNum(4,3)~ + ~我爱你。~ + r5.3
+ ~RandomNum(4,4)~ + ~我爱你。~ + r5.4
+ ~RandomNum(4,1)~ + ~（挑逗地把身体贴向她）~ + r7.1
+ ~RandomNum(5,1)~ + ~（挑逗地把身体贴向她）~ + r7.1
+ ~RandomNum(5,2)~ + ~（挑逗地把身体贴向她）~ + r7.2
+ ~RandomNum(5,3)~ + ~（挑逗地把身体贴向她）~ + r7.3
+ ~RandomNum(5,4)~ + ~（挑逗地把身体贴向她）~ + r7.4a
+ ~RandomNum(5,4)~ + ~（挑逗地把身体贴向她）~ + r7.4b
+ ~RandomNum(5,5)~ + ~（挑逗地把身体贴向她）~ + r7.5
+ ~RandomNum(4,1)~ + ~（抚她的大腿）~ + r8.1
+ ~RandomNum(4,2)~ + ~（抚她的大腿）~ + r8.2
+ ~RandomNum(4,3)~ + ~（抚她的大腿）~ + r8.3
+ ~RandomNum(4,4)~ + ~（抚她的大腿）~ + r8.4
+ ~Global("C0SireneStopFlirting","GLOBAL",0)~ + ~塞琳，我真的很喜欢你，可我需要专心。请别跟我调情了。~ DO ~SetGlobal("C0SireneStopFlirting","GLOBAL",1)~ + noflirt
+ ~Global("C0SireneStopFlirting","GLOBAL",1)~ + ~我怀念你的关注，塞琳。你想调情就来吧。~ DO ~SetGlobal("C0SireneStopFlirting","GLOBAL",0)~ + yesflirt
++ ~塞琳，我知道我们近来走得很近，可我现在得告诉你……我希望我们只做朋友，仅此而已。~ + breakup
++ ~不，没什么。~ EXIT
END


IF ~~ again
SAY ~好吧。~
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
SAY ~（听见你的话，你看见她眼里的渴望。）~
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


// Questions

IF ~~ questions
SAY ~当然。你想问什么就问。~
+ ~NumInPartyAliveGT(2)~ + ~我想问你一位同伴的事。~ + companions
++ ~再想想，我没什么想问的。~ EXIT
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
+ ~InParty("Sarevok") Alignment("Sarevok",MASK_EVIL)~ + ~你觉得萨瑞沃克怎么样？~ + sarevok
+ ~InParty("Sarevok") !Alignment("Sarevok",MASK_EVIL)~ + ~你觉得萨瑞沃克怎么样？~ + sarevok2
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
SAY ~我们几乎没有共同之处，可我仍觉得与她有种亲近。~
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

IF ~~ sarevok
SAY ~关于他，我怀疑你不会想听我要说的话。~
IF ~~ EXIT
END

IF ~~ sarevok2
SAY ~你近来跟他谈得很多，<CHARNAME>。我想你比我更了解他。~
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