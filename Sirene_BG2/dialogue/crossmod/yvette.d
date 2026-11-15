// SoA

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("YxYve",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneYvette1","GLOBAL",0)~ THEN YXYVEB C0SireneYvette1
~塞琳女士，你为什么总是神情这么严肃？我觉得你笑起来很美。你该多笑笑。~
DO ~SetGlobal("C0SireneYvette1","GLOBAL",1)~
== BC0SIRE2 ~我也想，可……我这辈子值得一笑的事实在太少。~
== YXYVEB ~抱歉。我只是想夸夸你的容貌。你把脸藏在兜帽下真可惜……尤其是你的头发。这颜色让我想起淑妮女神本人。~
== BC0SIRE2 ~谢谢你的心意，Yvette，可……我谈不上美貌。我的血是污浊的。我是个怪物。~
== YXYVEB ~请别这么说自己。你无法选择自己的出身，却仍成了一名圣武士。我真的很敬佩这一点。~
== BC0SIRE2 ~还不只是这个。我怕自己因职责留下的伤痕已经毁了我。~
== YXYVEB ~若是光荣得来的伤痕，也可以是美丽的。我觉得你的伤痕正证明你勇敢无私，不该为此羞愧。~
== BC0SIRE2 ~Yvette……（笑）很少有人像你这么乐观。真心谢谢你。~
== YXYVEB ~呵呵，你脸红了。不过能终于让你笑出来，我很高兴。~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("YxYve",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneYvette2","GLOBAL",0)~ THEN YXYVEB C0SireneYvette2
~说真的，塞琳女士，如果你在我的神职人员中长大，我想你会成为一名出色的淑妮之心卫士。~
DO ~SetGlobal("C0SireneYvette2","GLOBAL",1)~
== BC0SIRE2 ~你真这么认为吗，Yvette？恐怕我对爱与美的道知之甚少……~
== YXYVEB ~呵呵，那不碍事。毕竟我当初对自己的信仰也记得不多。即便我这样，淑妮女神还是接纳了我。~
== YXYVEB ~总之，我敢说你的容貌会让我教团的人羡慕。人们说，像你这样红发绿眸的人，是受火发夫人赐福的。~
== BC0SIRE2 ~这不一样，Yvette。我的容貌源于邪魔之血，不是女神的赐福。~
== YXYVEB ~我觉得你对自己太苛刻了，女士。无论你的血统从何而来，你仍能把它活成美丽的东西。~
== BC0SIRE2 ~是啊，也许吧……可这类事我连想都还没想过。~
== YXYVEB ~我知道，你总惦记着保护我们。但要是你改变主意，我非常乐意帮你。~
EXIT

// ToB

CHAIN
IF ~InParty("YxYve")
See("YxYve")
!StateCheck("YxYve",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneYvetteToB","GLOBAL",0)~ THEN BC0SIR25 C0SireneYvetteToB
~打扰一下，Yvette，你最近比往常沉静许多。有什么心事吗？~
DO ~SetGlobal("C0SireneYvetteToB","GLOBAL",1)~
== YXYV25B ~不、不，塞琳女士。没什么值得你操心的。~
== BC0SIR25 ~你若有烦恼，Yvette，那就与我有关。我们毕竟是朋友。~
== YXYV25B ~谢谢你安慰我，可……这事真不值得一提。~
== BC0SIR25 ~你嘴上这么说，脸色却不是这样，Yvette。你像是在受着煎熬。请告诉我怎么了。~
== YXYV25B ~真……没什么。我只是有点压力大。你要是想帮我……今晚能陪我一起祈祷吗？我想有人陪着。~
== BC0SIR25 ~当然，Yvette。只要你需要，每晚都可以。~
EXIT