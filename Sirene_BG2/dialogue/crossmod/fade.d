// SoA

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("E3Fade",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneFade1","GLOBAL",0)~ THEN BE3Fade C0SireneFade1
~……*凝视*~
DO ~SetGlobal("C0SireneFade1","GLOBAL",1)~
== BC0SIRE2 ~你一直盯着我，是有什么缘故吗，Fade？有话就直说。~
== BE3Fade ~我也想直说。可实话说——我还信不过你。~
== BC0SIRE2 ~我……明白了。我能做些什么赢得你的信任吗？~
== BE3Fade ~也许吧。我承认，你这模样很有说服力。这种骗子我见得多了，可你的虔诚看着不像装的。不过……我还没完全信服。你身上的气味让人很难信你。~
== BC0SIRE2 ~我的……气味？~
== BE3Fade ~对。你身上有九层地狱的味道。想必是你血脉带来的。~
== BC0SIRE2 ~我不明白。没错，我流着下层位面的血，可……这就是你信不过我的唯一原因？~
== BE3Fade ~我对你个人并无成见……至少目前没有。可就像魔鬼与恶魔彼此憎恶一样，讨厌你也是我的天性。你或许最终能证明自己值得信任……但我会盯着你。~
EXIT

CHAIN
IF ~InParty("BE3Fade")
See("BE3Fade")
!StateCheck("E3Fade",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneFade2","GLOBAL",0)~ THEN BC0SIRE2 C0SireneFade2
~我知道你还在盯着我，Fade。咱们能不能像盟友那样当面谈谈？~
DO ~SetGlobal("C0SireneFade2","GLOBAL",1)~
== BE3Fade ~……好吧。你想怎样？~
== BC0SIRE2 ~我只是想了解你。是什么让你这么警惕地盯着我，Fade？即便我并非自己所说的那样，你也该知道我不会对你构成威胁。~
== BE3Fade ~行。对你或许不是，可……~
== BC0SIRE2 ~你是怕我会威胁到 <CHARNAME>？~
== BE3Fade ~倒不是直接针对我。我几乎已经相信你真是神圣圣骑士，可经验告诉我，与下层位面的牵连迟早会找上门。哪怕你无意为恶，仍是个风险。~
== BC0SIRE2 ~我血管里或许流着地狱之血，Fade，可我在主物质位面出生长大。我能有什么牵连？~
== BE3Fade ~谁知道呢。我每天都无数次提防身后。建议你也一样。~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("E3Fade",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneFade3","GLOBAL",0)~ THEN BE3Fade C0SireneFade3
~这些伤痕……你身上真多。它们让我想起……酷刑。你以前当过奴隶吗？~
DO ~SetGlobal("C0SireneFade3","GLOBAL",1)~
== BC0SIRE2 ~奴隶？不……我熬过许多磨难，但万幸不包括这一种。我的伤痕是在保护他人的战斗中落下的。~
== BE3Fade ~你说这话时那么坦然，我信得过你……也许你真就是表面看上去的样子。~
== BC0SIRE2 ~谢谢。可怎么说起这个了，Fade？你也经历过类似的磨难吗？~
== BE3Fade ~没有。我的伤痕来自抗拒和求生的意志。这辈子我救过多少人，可说不上。~
== BC0SIRE2 ~想开始永远不晚，Fade。我看得出你有恻隐之心，哪怕你想藏起来。你加入 <CHARNAME> 一行，不也是因为这个？~
== BE3Fade ~*耸肩* 是奉命行事。不过你也许不全说错。~
EXIT

CHAIN
IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneFade4","GLOBAL",0)~ THEN BC0SIRE2 C0SireneFade4
~你的纹饰很美。~
DO ~SetGlobal("C0SireneFade4","GLOBAL",1)~
== BE3Fade ~啊？你说这些？~
== BC0SIRE2 ~对，就是这些。像是画师一笔一笔精心描出来的。~
== BE3Fade ~这个……我不知该说什么。算是抬举我了吧。可你该知道……我对……那个没兴趣，你懂的。~
== BC0SIRE2 ~我懂。我只是夸夸你，毕竟你在我面前仍有些不自在。希望没弄巧成拙。~
== BE3Fade ~没事，无妨。我也留意到你的纹饰了。你背上那处挺好看。~
== BC0SIRE2 ~什、*脸红* 什么？你怎么知道那一处？~
== BE3Fade ~*眨眼* 忘了我是干什么的了？打听这些就是我的本职。~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("E3Fade",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneFade5","GLOBAL",0)~ THEN BE3Fade C0SireneFade5
~希望你别误会，我觉得你能当上圣骑士真不容易。~
DO ~SetGlobal("C0SireneFade5","GLOBAL",1)~
== BC0SIRE2 ~这在你眼里真这么奇怪？说到底，我是被培养成这个角色的。~
== BE3Fade ~你是被养大走上这条路的？那倒不算奇怪。我只是想象不出自己……像你这样。信什么教的人。~
== BC0SIRE2 ~你没有信仰吗，Fade？~
== BE3Fade ~...~
== BC0SIRE2 ~抱、抱歉。我不是想说教压人。~
== BE3Fade ~……在我长大的地方，信仰这个概念根本不存在。在无底深渊里，权力与纵欲是仅有的永恒。~
== BC0SIRE2 ~我……明白了。可你现在不是好过些了吗？~
== BE3Fade ~我……不知道。我从没认真想过。~
== BE3Fade ~我是说，我感激公会为我做的一切。我有了能称作家的地方，有了能称作朋友的人——尽管我信不过他们。可……有时我仍觉得自己被利用着，就像从前我不过是个奴隶时一样。~
== BC0SIRE2 ~你觉得侍奉神明也是一回事吗？觉得自己不过是件被利用的工具？~
== BE3Fade ~被人操控的经历，我几辈子都受够了。我不会再给自己添这副担子。~
EXIT

// ToB

CHAIN
IF ~InParty("E3Fade")
See("E3Fade")
!StateCheck("E3Fade",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneFadeToB","GLOBAL",0)~ THEN BC0Sir25 C0SireneFadeToB
~上一场仗给人印象很深，我觉得。~
DO ~SetGlobal("C0SireneFadeToB","GLOBAL",1)~
== BE3Fad25 ~是啊，确实。~
== BC0SIRE2 ~你打得不错，Fade。战斗中有你替我断后，让人安心。~
== BE3Fad25 ~谢了。你……也不赖。我被围住时你还出手帮我，哪怕那会危及你自己。这份情我记着。~
== BC0SIRE2 ~我只是对任何朋友都会这么做。~
== BE3Fad25 ~朋友，呵。一开始……我对你可算不上友善。你真把我当朋友？~
== BC0SIRE2 ~当然。我知道你的天性让你反感我，Fade，但我不怪你。~
== BE3Fad25 ~不，我已经不那么想了。我愿意和你做朋友。不过……你确定这样没关系？毕竟我是贼，你是圣骑士。我俩天生算不得友好。~
== BC0SIRE2 ~你或许是个贼，可你心地不坏，Fade，这一点你一次又一次证明了。和你结交朋友，我毫无顾虑。~
== BE3Fad25 ~行，只要你日后不后悔，我没意见。~
EXIT