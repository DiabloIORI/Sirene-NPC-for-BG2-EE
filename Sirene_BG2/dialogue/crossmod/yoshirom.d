APPEND C0SIRE2J

IF WEIGHT #-1 ~Global("C0SireneYoshiRom","GLOBAL",1)~ a1
SAY ~<CHARNAME>……~ [C0BLANK]
= ~我知道言语无法安慰你。但我向你保证……我们会报仇的。为了善最……也为了你。~
IF ~~ DO ~SetGlobal("C0SireneYoshiRom","GLOBAL",2)~ EXIT
END

END