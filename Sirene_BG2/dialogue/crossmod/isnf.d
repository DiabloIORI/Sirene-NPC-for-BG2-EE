I_C_T ISNFXOR 19 C0SireneISNFXOR19
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~我……我觉得我们像是闯入了别人的私密之事，<CHARNAME>。~
END

I_C_T ISNFXOR 121 C0SireneISNFXOR121
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~不……奥里恩大师，您不能说出这种话……！~
END

I_C_T ISNFXEN 0 C0SireneISNFXEN0
== C0SIRE2J IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~诸神在上，多么可怖的生物。可它的形体又隐约让我想起伊尔梅特圣者的化身——饱受折磨、陷于苦痛之中。它或许不只是一头不死怪物。~
END

APPEND C0SIRE2J

IF WEIGHT #-1 ~Global("C0SireneISNFIncomplete","GLOBAL",1)~ a1
SAY ~我知道当时别无选择，可……亲手了结这个人的性命，我仍不由得感到羞愧。~ [C0BLANK]
= ~即便走到那一步，他心中也没有恶意，只有悲伤与痛苦。这个人为了奥里恩和他的妻子，献出了自己的一切。我们……我们所做的，是对的吗？~
++ ~你也看到他变成了什么样子，塞琳。这已是我们能做的最仁慈的事。~ + a2
++ ~我也不想杀他。~ + a3
++ ~只要他交出研究成果，我们本不必走到这一步。~ + a4
++ ~我不知道。~ + a5
END

IF ~~ a2
SAY ~是啊……或许这正是他一直所求的。~
IF ~~ + a5
END

IF ~~ a3
SAY ~可……我们还能怎么做？一个人要受多少苦，才会把死亡当成唯一的出路？~
IF ~~ + a5
END

IF ~~ a4
SAY ~但这值得吗，<CHARNAME>？或许……或许有些界限凡人本就不该跨越。这个……这个人就是明证。~
IF ~~ + a5
END

IF ~~ a5
SAY ~被判处永世漂泊、被人遗忘，唯有死在他人手中才得解脱……愿伊尔梅特宽恕我，可我希望自己永远不必以这样的方式牺牲。~
= ~我无比希望能忘掉这一切恐怖，<CHARNAME>，但恐怕永远忘不了。我们快离开这里吧，别再打扰他的安息之地。~
IF ~~ DO ~SetGlobal("C0SireneISNFIncomplete","GLOBAL",2)~ EXIT
END
END
