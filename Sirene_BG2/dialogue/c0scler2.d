BEGIN C0SCLER2

IF ~RandomNum(3,1)~ a1
SAY ~向您致意，旅人。愿哭泣之神在看顾你走过试炼与苦难。~
IF ~~ EXIT
END

IF ~RandomNum(3,2)~ a2
SAY ~我不过是伊尔梅特的卑微侍僧，朋友。要事请与达埃隆尊者谈。~
IF ~~ EXIT
END

IF ~RandomNum(3,3)~ a3
SAY ~赞美忍耐者。~
IF ~~ EXIT
END

IF ~Global("C0SireneEncounter","GLOBAL",3)~ b1
SAY ~我们在我们的主伊尔梅特面前犯了罪……我必须为我的行止之重寻求赎罪。再会。~
IF ~~ EXIT
END