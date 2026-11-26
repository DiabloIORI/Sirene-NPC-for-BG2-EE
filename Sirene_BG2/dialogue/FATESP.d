EXTEND_BOTTOM FATESP 6 #9
+ ~!Dead("C0Sirene") !InMyArea("C0Sirene") Global("C0SireneSummoned","GLOBAL",0) !Alignment(Player1,MASK_EVIL)~ + ~把茜琳带来给我，那个提夫林殉道者。~
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("C0Sire25",[1999.1228],0) 
SetGlobal("C0SireneSummoned","GLOBAL",1)~ GOTO 8
+ ~!Dead("C0Sirene") !InMyArea("C0Sirene") Global("C0SireneSummoned","GLOBAL",0) !Alignment(Player1,MASK_EVIL)~ + ~把我爱的人带来，茜琳，伊尔玛特的圣武士。~
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
SetGlobal("C0SireneRomanceActive","GLOBAL",2)
CreateCreature("C0Sire25",[1999.1228],0) 
SetGlobal("C0SireneSummoned","GLOBAL",1)~ GOTO 8
+ ~!Dead("C0Sirene") !InMyArea("C0Sirene") Global("C0SireneSummoned","GLOBAL",0) !Alignment(Player1,MASK_EVIL)~ + ~把茜琳带来给我，那个提夫林前殉道者。~
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
CreateCreature("C0Sire25",[1999.1228],0)
ActionOverride("C0Sirene",SetGlobal("LosePaladin","LOCALS",1))
SetGlobal("C0SireneSummoned","GLOBAL",1)~ GOTO 8
+ ~!Dead("C0Sirene") !InMyArea("C0Sirene") Global("C0SireneSummoned","GLOBAL",0) !Alignment(Player1,MASK_EVIL)~ + ~把我爱的人带来，茜琳。~
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
SetGlobal("C0SireneRomanceActive","GLOBAL",2)
CreateCreature("C0Sire25",[1999.1228],0)
ActionOverride("C0Sirene",SetGlobal("LosePaladin","LOCALS",1))
SetGlobal("C0SireneSummoned","GLOBAL",1)~ GOTO 8
END
