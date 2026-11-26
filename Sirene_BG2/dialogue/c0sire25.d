BEGIN C0SIRE25

IF ~Global("C0SireneSummoned","GLOBAL",1) !Global("C0SireneRomanceActive","GLOBAL",2)~ b1
SAY ~我……我在哪里？~ [C0BLANK]
++ ~没事。是我把你召来的。~ DO ~SetGlobal("C0SireneSummoned","GLOBAL",2)~ + b1.1
++ ~欢迎来到我私人的袖珍位面，茜琳。~ DO ~SetGlobal("C0SireneSummoned","GLOBAL",2)~ + b1.1
END

IF ~~ b1.1
SAY ~<CHARNAME>？是你把我带到这里来的？那倒让我放心了。~
= ~很抱歉我与你分了道。我本该料到你可能再次需要我的助力。你若愿意，我听候差遣。~
++ ~当然。~ + b1.2
++ ~还不是时候。~ + b1.3
END

IF ~~ b1.2
SAY ~是的……很高兴又回到你身边。~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ b1.3
SAY ~真的？如你所愿，我的朋友。我等你。~
IF ~~ DO ~MoveToPointNoInterrupt([1717.1717]) Face(0)~ EXIT
END

IF ~Global("C0SireneSummoned","GLOBAL",1) Global("C0SireneRomanceActive","GLOBAL",2)~ b2
SAY ~<CHARNAME>！再见到你我太高兴了。你把我留在索丹尼斯拉就走了，那很吓人。我试着找你，可是……~ [C0BLANK]
= ~我们……我们在哪里？<CHARNAME>……这又是无底深渊吗？~
++ ~不完全是。这是我自己的袖珍位面。~ DO ~SetGlobal("C0SireneSummoned","GLOBAL",2)~ + b2.1
END

IF ~~ b2.1
SAY ~我明白了……那我们分开的这些时候，我大概错过了许多。~
= ~让我们一起离开这地方……还有，求你，别再丢下我。~
++ ~当然。~ + b1.2
++ ~还不是时候。~ + b2.3
END

IF ~~ b2.3
SAY ~可——好吧。我信你。只是求你回到我身边。~
IF ~~ DO ~MoveToPointNoInterrupt([1717.1717]) Face(0)~ EXIT
END

IF ~Global("C0SireneSummoned","GLOBAL",2) !Global("C0SireneRomanceActive","GLOBAL",2)~ b3a
SAY ~在这里等并不能让我安心，我的朋友。我想离开这里，在你的身边。~ [C0BLANK]
++ ~那就加入我。~ + b1.2
++ ~再等一会儿。~ + b3.1
END 

IF ~Global("C0SireneSummoned","GLOBAL",2) Global("C0SireneRomanceActive","GLOBAL",2)~ b3b
SAY ~我不愿你独自面对危险，却把我留在这里，<CHARNAME>。求你，我的爱，带上我。~ [C0BLANK]
++ ~好。~ + b3.2
++ ~还不是时候。~ + b3.1
END 

IF ~~ b3.1
SAY ~（叹气）好罢。~
IF ~~ EXIT
END

IF ~~ b3.2
SAY ~谢谢你。~
IF ~~ DO ~JoinParty()~ EXIT
END