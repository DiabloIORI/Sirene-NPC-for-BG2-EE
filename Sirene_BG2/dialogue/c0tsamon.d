BEGIN C0TSAMON

CHAIN IF WEIGHT #-1
~Global("C0SireneTsamon","GLOBAL",0)~ THEN C0TSAMON C0SireneTsamon1
~好啊，好啊……你终究来了。我还在想你有没有这个胆量，伊尔玛特的茜琳。~
DO ~SetGlobal("C0SireneTsamon","GLOBAL",1)~
== C0SIRE2J ~我照你吩咐来了，塔洛娜信徒。现在我要你给答案。~
== C0TSAMON ~是吗？若那些答案不如你所愿呢？若我一一列出你犯下的罪，那些以你的存在为代价的死呢？~
== C0SIRE2J ~你……你是谁？~
== C0TSAMON ~我叫特萨蒙·德布里尔·索恩港……不过我猜这名字对你毫无意义。~
== C0SIRE2J ~特萨蒙……？你说得好像认识我，可你的名字和脸我都不熟。我做了什么招来你的恨？~
== C0TSAMON ~我知道你许多事，茜琳。毕竟……你我流着同样的血。~
== C0SIRE2J ~你——？！你是……~
== C0TSAMON ~是的。我是特萨蒙，贵族德布里尔家族莱娜之子。我们的母亲。~
== C0SIRE2J ~若你说的是真的，那你为什么叫我来？即使我们是兄妹，我是伊尔玛特的仆人，你是塔洛娜的。单凭信仰我们就是敌人。~
== C0TSAMON ~也许吧。可要知道，我找你是为了我自己的目的，不是为了我的主神。你来这里很蠢，可我为此谢你……因为我的复仇即将结果。~
== C0SIRE2J ~“你的复仇”……？你在说什么？~
== C0TSAMON ~你不知道？那你那位同伴呢？<PRO_HESHE>知道你罪行的全貌吗？那么，<CHARNAME>，巴尔之子？你自己说。~
END
++ ~我不知道你在胡扯什么，可你若对茜琳有意见，就是对我有意见。~ EXTERN C0TSAMON tsa1.1
+ ~Global("C0SireneRomanceActive","GLOBAL",2)~ + ~茜琳是我的挚爱，我不会容忍你诽谤她。~ EXTERN C0TSAMON tsa1.2
++ ~无论茜琳过去做过什么，她对我都是可贵的同伴，你说什么都改变不了。~ EXTERN C0TSAMON tsa1.1
++ ~话够多了。你若想跟我们打，就动手吧。~ EXTERN C0TSAMON tsa1.3

CHAIN C0TSAMON tsa1.1
~无所谓。我也许给了你退出了这场家庭重聚的机会，可看来你无意如此。可惜。你会为我妹妹的罪而死。~
EXTERN C0TSAMON tsa1.4

CHAIN C0TSAMON tsa1.2
~你说你*爱*她？哦，无知的蠢货……~
EXTERN C0TSAMON tsa1.4

CHAIN C0TSAMON tsa1.3
~如你所愿。你就跟我妹妹一起为她的罪受苦吧！~
EXTERN C0TSAMON tsa1.4

CHAIN C0TSAMON tsa1.4
~说话的时候结束了。我现在就要复仇，茜琳！~
== C0SIRE2J ~等等，特萨蒙！没理由这么做！你为什么这样迫切要我的死？~
== C0TSAMON ~到坟墓里跟我们的母亲一起去寻答案吧。你很快就去找她。现在尝尝塔洛娜的邪恶瘴气，愿你们的灵魂在无底深渊里翻滚！~
END
IF ~~ DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("c0tsamo2")~ EXIT

CHAIN IF WEIGHT #-1
~Global("C0SireneTsamon","GLOBAL",1) Global("Defeat","LOCALS",1)~ THEN C0TSAMON C0SireneTsamon2
~嘿，厉害……看来我终究低估了你，妹妹。那好罢。我不会求饶——你若下得了手，就把我送去与母亲在死后相聚。~
DO ~SetGlobal("C0SireneTsamon","GLOBAL",2)~
== C0SIRE2J ~……~
== C0TSAMON ~太懦弱，下不了最后一击，是吧？你自认是伊尔玛特的追随者？那就结束我的痛苦。~
== C0SIRE2J ~我不明白。你若真是我的兄弟，那为什么……为什么要做这一切？~
== C0TSAMON ~为什么？因为我要复仇。为我们父母为让你活下来而死那天复仇。~
== C0SIRE2J ~你在说什么？他们为什么死？告诉我！~
== C0TSAMON ~你是我最大的错误，茜琳。我本该救母亲，在那天那些无知、*可鄙*的人类放火烧死她之前……~
== C0TSAMON ~我们家乡的村民从不信任我们的母亲和我，因为我们高贵的血脉里有巴托地狱的血。当你出生，你可见的血脉为人所知……那些猪猡中最坏的，在偏见与恐惧中，放火烧了我们的家……我听见母亲痛苦的*尖叫*……那是我带着还是婴儿的你逃走时的最后记忆。~
== C0TSAMON ~我本可以救他们两个，惩罚那些害我们的渣滓……可他们死了，把你交给了我。我把你带到彻里姆巴沼泽，在那里我本该杀了你……可我的软弱压倒了我。~
== C0SIRE2J ~这是……~
== C0TSAMON ~我以为你死了。我对那些杀死我们父母的怪物施行了复仇，多年享受着脆弱的安宁假象，直到塔洛娜告知我你还活着。你是我的失败活生生的提醒……我不能容许它继续存在。~
== C0SIRE2J ~不……*这*就是你这样恨我的原因？~
== C0TSAMON ~……够了。我再没有力量与你对抗，茜琳。加之我违背了塔洛娜的命令，她再不会眷顾我……死会是种恩赐。我不要你的怜悯，妹妹。快点杀了我，也许这恨意终能与我同死。~
== C0SIRE2J ~我……~
== IMOEN2J IF ~InParty("Imoen2")~ THEN ~来吧，茜琳，就看看他。你真觉得他该死吗？~
== AERIEJ IF ~InParty("Aerie")~ THEN ~他……他看起来那么可怜……可他也敬拜一个邪恶女神。我分不清什么才是对的……~
== KORGANJ IF ~InParty("Korgan")~ THEN ~哼。这有什么难的，嗯？我杀我父亲时一点不后悔。捅了他就完事。~
== VICONIJ IF ~InParty("Viconia")~ THEN ~这蠢货真以为血亲关系能救他？在卓尔社会里杀亲是常事。了结他，jalil，你若不想显得软弱。~
== RASAADJ IF ~InParty("Rasaad")~ THEN ~我知道杀自己亲族是什么滋味。你也许不认识他，可他的血会永远染在你的良心上，茜琳。~
== NEERAJ IF ~InParty("Neera")~ THEN ~天啊，我知道他差点杀了我们，可他看起来太惨了。我要是你，我不确定下得了手。~
== KELDORJ IF ~InParty("Keldorn")~ THEN ~记住你信仰的信条，茜琳。即使他敬拜塔洛娜，他的心也并非全然不纯。你若真信他该得怜悯，那就饶了他。~
== MAZZYJ IF ~InParty("Mazzy")~ THEN ~仔细想，我的朋友。击败一个敌人与处死一个无力反抗的人，是两回事。~
END
IF ~GlobalGT("C0SireneFaith","GLOBAL",5)~ EXTERN C0SIRE2J a1.1
IF ~!GlobalGT("C0SireneFaith","GLOBAL",5) !GlobalLT("C0SireneFaith","GLOBAL",-5)~ EXTERN C0SIRE2J a1.2
IF ~GlobalLT("C0SireneFaith","GLOBAL",-5)~ EXTERN C0SIRE2J a1.3

CHAIN C0SIRE2J a1.1
~我不会杀一个无力反抗的人，更不会杀我的亲族。若我这么做，伊尔玛特绝不会原谅我。虽然我不认识你，我不会击倒你，兄弟。~
== C0TSAMON ~不！该死，茜琳！你的怜悯是你能施加的最大残忍！~
== C0SIRE2J ~你也许这么想，可是……我祈祷有一天这能治好你心中的恨。可你若第二次带着复仇之心来找我……那我就满足你对死的渴望。~
== C0SIRE2J ~再会，特萨蒙。我希望我们再见时，我能真正叫你一声兄弟。~
== C0TSAMON ~嘿，我明白了……那就这样吧。好罢……再会，妹妹。也许我们*真会*再见。~
DO ~ActionOverride("C0TSAMON",ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT

CHAIN C0SIRE2J a1.2
~什么……我该怎么办，<CHARNAME>？~
END
IF ~GlobalGT("C0SireneFaith","GLOBAL",-1)~ EXTERN C0SIRE2J a1.4
IF ~GlobalLT("C0SireneFaith","GLOBAL",0)~ EXTERN C0SIRE2J a1.5

CHAIN C0SIRE2J a1.3
~你既这样迫切求死，特萨蒙……那我就不拦你。你身为塔洛娜信徒的罪，加上谋害我，已足以定你的罪。~
= ~伊尔玛特是慈悲的神，不会为此原谅我。可是……该由我用自己的手决定什么才是对的。~
= ~再会，兄弟。~
== C0TSAMON ~嘿……原来就这样结束了……~
DO ~ClearAllActions() StartCutsceneMode() StartCutscene("c0tsamo3")~ EXIT

CHAIN C0SIRE2J a1.4
~知道了他做这一切的理由，我……我恨不起来他。若我击倒他，我就背叛了伊尔玛特的教导……~
= ~可是……我很矛盾。我有一部分真相信他该死，我该在此刻了结他。什么……什么才是对的决定？~
END
++ ~这个选择我不能替你做，茜琳。~ EXTERN C0SIRE2J a1.6
++ ~你自己说过。你若真不信他该死，那就放他走。我怀疑他如今威胁不了任何人。~ EXTERN C0SIRE2J a1.7
+ ~!Global("C0SireneRomanceActive","GLOBAL",2)
OR(3)
CheckStatGT(Player1,17,INT)
CheckStatGT(Player1,17,WIS)
CheckStatGT(Player1,17,CHR)~ + ~我觉得你该处死他。他不仅是塔洛娜信徒，还刚想杀我们。谁能说他不会再试一次？~ EXTERN C0SIRE2J a1.8
+ ~!Global("C0SireneRomanceActive","GLOBAL",2)
CheckStatLT(Player1,18,INT)
CheckStatLT(Player1,18,WIS)
CheckStatLT(Player1,18,CHR)~ + ~我觉得你该处死他。他不仅是塔洛娜信徒，还刚想杀我们。谁能说他不会再试一次？~ EXTERN C0SIRE2J a1.9
+ ~Global("C0SireneRomanceActive","GLOBAL",2)
OR(3)
CheckStatGT(Player1,14,INT)
CheckStatGT(Player1,14,WIS)
CheckStatGT(Player1,14,CHR)~ + ~我觉得你该处死他。他不仅是塔洛娜信徒，还刚想杀我们。谁能说他不会再试一次？~ EXTERN C0SIRE2J a1.8
+ ~Global("C0SireneRomanceActive","GLOBAL",2)
CheckStatLT(Player1,15,INT)
CheckStatLT(Player1,15,WIS)
CheckStatLT(Player1,15,CHR)~ + ~我觉得你该处死他。他不仅是塔洛娜信徒，还刚想杀我们。谁能说他不会再试一次？~ EXTERN C0SIRE2J a1.9

CHAIN C0SIRE2J a1.5
~我相信他该为所做的事去死。他已被复仇彻底吞没，而作为塔洛娜信徒，他的罪也该死。~
= ~可是……若我选择抛弃怜悯，伊尔玛特不会善待我。若我杀死自己的亲族，我怀疑我还能在他眼中赎清自己。~
END
++ ~这个选择我不能替你做，茜琳。~ EXTERN C0SIRE2J a1.6
++ ~你是说若你选择杀他，你就会抛弃你的圣武士身份？~ EXTERN C0SIRE2J a1.12
++ ~你说得对。他企图杀我们，该死。了结他，茜琳。~ EXTERN C0SIRE2J a1.7
+ ~!Global("C0SireneRomanceActive","GLOBAL",2)
OR(3)
CheckStatGT(Player1,13,INT)
CheckStatGT(Player1,13,WIS)
CheckStatGT(Player1,13,CHR)~ + ~不，茜琳。别这样。我也被迫杀过我的兄弟，最后它没给我带来任何安宁。代价太大……你会后悔一辈子。~ EXTERN C0SIRE2J a1.10
+ ~!Global("C0SireneRomanceActive","GLOBAL",2)
CheckStatLT(Player1,14,INT)
CheckStatLT(Player1,14,WIS)
CheckStatLT(Player1,14,CHR)~ + ~不，茜琳。别这样。我也被迫杀过我的兄弟，最后它没给我带来任何安宁。代价太大……你会后悔一辈子。~ EXTERN C0SIRE2J a1.11
+ ~Global("C0SireneRomanceActive","GLOBAL",2)~ + ~不，茜琳。别这样。我也被迫杀过我的兄弟，最后它没给我带来任何安宁。代价太大……你会后悔一辈子。~ EXTERN C0SIRE2J a1.10

CHAIN C0SIRE2J a1.6
~那么……我会相信自己的决定，做我认为对的事。~
END
IF ~GlobalGT("C0SireneFaith","GLOBAL",-4)~ EXTERN C0SIRE2J a1.1
IF ~GlobalLT("C0SireneFaith","GLOBAL",-3)~ EXTERN C0SIRE2J a1.3

CHAIN C0SIRE2J a1.7
~是的……你的话里有真理。我知道我该做什么……~
END
IF ~GlobalGT("C0SireneFaith","GLOBAL",-1)~ EXTERN C0SIRE2J a1.1
IF ~GlobalLT("C0SireneFaith","GLOBAL",0)~ EXTERN C0SIRE2J a1.3

CHAIN C0SIRE2J a1.8
~也许……也许你说得对。~
EXTERN C0SIRE2J a1.3

CHAIN C0SIRE2J a1.9
~……不，<CHARNAME>。尽管有疑虑，我不会背叛伊尔玛特的教导。~
EXTERN C0SIRE2J a1.1

CHAIN C0SIRE2J a1.10
~可是……不，你说得对。我让感情蒙蔽了判断。为此我不该背弃伊尔玛特。~
EXTERN C0SIRE2J a1.1

CHAIN C0SIRE2J a1.11
~是的，可不是你教我做出自己的选择吗？我心里明白……我不能让这个人活着。~
EXTERN C0SIRE2J a1.3

CHAIN C0SIRE2J a1.12
~我……我确信会的。虽然这人远非无辜，可他无力反抗……而他心里的苦不是死能治的。若我现在击倒他……我就犯了伊尔玛特眼中的大罪。~
= ~知道这些，我忍不住犹豫。我一生遵循伊尔玛特的教导……可这一次，我自己的意愿与我的信仰相冲。~
END
++ ~我明白了……那我不能告诉你该怎么做。这决定你必须自己做。~ EXTERN C0SIRE2J a1.6
++ ~那就杀了他。你若真相信那是对的，就动手。~ EXTERN C0SIRE2J a1.7
+ ~OR(3)
CheckStatGT(Player1,15,INT)
CheckStatGT(Player1,15,WIS)
CheckStatGT(Player1,15,CHR)~ + ~不，茜琳。别这样。我也被迫杀过我的兄弟，最后它没给我带来任何安宁。代价太大……你会后悔一辈子。~ EXTERN C0SIRE2J a1.10
+ ~CheckStatLT(Player1,16,INT)
CheckStatLT(Player1,16,WIS)
CheckStatLT(Player1,16,CHR)~ + ~不，茜琳。别这样。我也被迫杀过我的兄弟，最后它没给我带来任何安宁。代价太大……你会后悔一辈子。~ EXTERN C0SIRE2J a1.11
