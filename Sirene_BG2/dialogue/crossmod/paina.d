CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("C0Paina",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SirenePaina1","GLOBAL",0)~ THEN BC0SIRE2 C0SirenePaina1
~我们俩在这世上都是边缘人，Pai'Na。~
DO ~SetGlobal("C0SirenePaina1","GLOBAL",1)~
== BC0Paina ~你若以为能在我俩之间找到共同点，圣骑士，那可要大失所望了。~
== BC0SIRE2 ~我知道你把我俩视作对立面。可说实话，我对你并无敌意。我看得出你坚硬的外表下受着孤独的煎熬。~
== BC0Paina ~我从没觉得孤独。我的蜘蛛就是我需要的全部朋友。~
== BC0SIRE2 ~Pai'Na……我知道孤独是什么滋味。掩饰它只会让你更痛苦。~
== BC0Paina ~你何必在乎？~
== BC0SIRE2 ~因为我是伊尔梅特的仆人，更因为我真心想做你的朋友，Pai'Na。我在你眼中看到一种与我相似的孤独，只是被你的骄傲掩饰着……~
== BC0Paina ~哦，闭嘴，别烦我！我……我不想听你这些废话。~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("C0Paina",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SirenePaina2","GLOBAL",0)~ THEN BC0SIRE2 C0SirenePaina2
~你的站姿不对。~
DO ~SetGlobal("C0SirenePaina2","GLOBAL",1)~
== BC0Paina ~什么？~
== BC0SIRE2 ~挥杖时，杖的重量会让你站不稳。把杖借我，我演示给你看。~
== BC0Paina ~我不需要你教。~
== BC0SIRE2 ~我以前练过一点杖法。让我教你。~
== BC0Paina ~不。我不想被人教。我有蜘蛛和魔法护着自己。要是我在战场上还得抡这根木棍，那就说明你没尽到自己的职责。~
== BC0SIRE2 ~也许你说得对。可万一我真的战死，你怎么办？~
== BC0Paina ~我会活下去。我最擅长活命。~
== BC0SIRE2 ~不必这么固执。我只教你些基本招式。我只想帮你，别无他意。~
== BC0Paina ~我说了我不想要……（叹气）好吧。你演示。~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("C0Paina",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SirenePaina3","GLOBAL",0)
AreaType(FOREST)~ THEN BC0SIRE2 C0SirenePaina2
~看树后的太阳，Pai'Na。这阳光多温暖、多宜人。~
DO ~SetGlobal("C0SirenePaina3","GLOBAL",1)~
== BC0Paina ~哼。~
== BC0SIRE2 ~你不欣赏自然之美吗，Pai'Na？我还以为远离城市你会更自在。~
== BC0Paina ~我更喜欢蜘蛛的样子。这片树林……比起文明社会的污糟还算好，可它太……太亮、太花哨了。~
== BC0SIRE2 ~是因为你的卓尔血统，还是你的成长经历？~
== BC0Paina ~我不知道，也不在乎。你要是还想平安自在，*就别*叫我卓尔。~
== BC0SIRE2 ~我……抱歉。我不是有意冒犯……如果这能让你好受些，Pai'Na，我明白那种滋味。~
== BC0Paina ~...~
== BC0Paina ~啐。这种话我听得太多，早就不会动气了。只是别再提。~
EXIT
