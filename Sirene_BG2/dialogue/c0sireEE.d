// Dorn conflict
CHAIN IF WEIGHT #-1 ~Global("C0SireneDorn","GLOBAL",2)~ THEN C0SIRE2J C0dorn1
~<CHARNAME>，这个人……~ [C0BLANK]
DO ~SetGlobal("C0SireneDorn","GLOBAL",3)~
== DORNJ ~你想做什么，魔裔？~
== C0SIRE2J ~你清楚我想说什么。别想藏。你也许能对我们的首领瞒住，可瞒不了我。~
= ~你身上带着下层位面的气息。我太熟悉了，恶棍。我拒绝与你并肩同行。~
== DORNJ ~你以为揭出我的力量就能吓住我？我不在乎。你若对我的存在不满，就用你的剑表示。我会乐于把你这懦夫挑在我的剑上。~
END
	++ ~你们两个就不能好好相处吗？~ EXTERN C0SIRE2J C0dorn2
	++ ~对不起，塞琳，可我仍需要多恩。你要做什么就做吧。~ EXTERN C0SIRE2J C0dorn3
	++ ~反正我从来没喜欢过你，多恩。~ EXTERN DORNJ C0dorn4

CHAIN C0SIRE2J C0dorn2
~我既不容他存在，也不容他走掉去害无辜者。像他这样的人不配仁慈或怜悯。~
== DORNJ ~下一个受苦的就是你，圣武士崽子。~
== C0SIRE2J ~拔剑吧，没有灵魂的杂种。~
END
	++ ~对不起，塞琳，可我仍需要多恩。你要做什么就做吧。~ EXTERN C0SIRE2J C0dorn3
	++ ~反正我从来没喜欢过你，多恩。~ EXTERN DORNJ C0dorn4
	++ ~哦，好罢。动手吧。~ EXTERN C0SIRE2J C0dorn5

CHAIN C0SIRE2J C0dorn3
~如你所愿。原谅我必须做的事。愿伊尔梅特怜悯你的灵魂，<CHARNAME>。~
DO ~SetGlobal("C0SireneJoined","GLOBAL",0) LeaveParty() Enemy() Attack("Dorn")~ 
EXIT

CHAIN DORNJ C0dorn4
~那就死吧，假仁假义的蠢货！~
DO ~SetGlobal("DORNPARTY","GLOBAL",0) LeaveParty() Enemy() Attack("C0Sirene")~ 
EXIT

CHAIN C0SIRE2J C0dorn5
~你的审判到了！~ [C0SIR021]
DO ~SetGlobal("C0SireneDornConflict","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneDornConflict","GLOBAL",1)~ THEN C0SIRE2P C0dorn6
~那些在你手里受苦的人已得复仇。~
DO ~SetGlobal("C0SireneDornConflict","GLOBAL",2) JoinParty()~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneDornConflict","GLOBAL",1)~ THEN DORNP C0dorn7
~哈！弱，跟他们所有人一样弱。我确实挺享受。让她烂在那儿吧，<CHARNAME>。~
DO ~SetGlobal("C0SireneDornConflict","GLOBAL",2) JoinParty()~
EXIT

// ToB

CHAIN IF WEIGHT #-1 ~Global("C0SireneDornToB","GLOBAL",2)~ THEN C0Sir25J C0dorntob1
~<CHARNAME>，这个人……~ [C0BLANK]
DO ~SetGlobal("C0SireneDornToB","GLOBAL",3)~
== DORN25J ~你想做什么，魔裔？~
== C0Sir25J ~你清楚我想说什么。别想藏。你也许能对我们的首领瞒住，可瞒不了我。~
= ~你身上带着下层位面的气息。我太熟悉了，恶棍。我拒绝与你并肩同行。~
== DORN25J ~你以为揭出我的力量就能吓住我？我不在乎。你若对我的存在不满，就用你的剑表示。我会乐于把你这懦夫挑在我的剑上。~
END
	++ ~你们两个就不能好好相处吗？~ EXTERN C0Sir25J C0dorntob2
	++ ~对不起，塞琳，可我仍需要多恩。你要做什么就做吧。~ EXTERN C0Sir25J C0dorntob3
	++ ~反正我从来没喜欢过你，多恩。~ EXTERN DORN25J C0dorntob4

CHAIN C0Sir25J C0dorntob2
~我既不容他存在，也不容他走掉去害无辜者。像他这样的人不配仁慈或怜悯。~
== DORN25J ~下一个受苦的就是你，圣武士崽子。~
== C0Sir25J ~拔剑吧，没有灵魂的杂种。~
END
	++ ~对不起，塞琳，可我仍需要多恩。你要做什么就做吧。~ EXTERN C0Sir25J C0dorntob3
	++ ~反正我从来没喜欢过你，多恩。~ EXTERN DORN25J C0dorntob4
	++ ~哦，好罢。动手吧。~ EXTERN C0Sir25J C0dorntob5

CHAIN C0Sir25J C0dorntob3
~如你所愿。原谅我必须做的事。愿伊尔梅特怜悯你的灵魂，<CHARNAME>。~
DO ~SetGlobal("C0SireneJoined","GLOBAL",0) LeaveParty() Enemy() Attack("Dorn")~ 
EXIT

CHAIN DORN25J C0dorntob4
~那就死吧，假仁假义的蠢货！~
DO ~SetGlobal("DORNPARTY","GLOBAL",0) LeaveParty() Enemy() Attack("C0Sirene")~ 
EXIT

CHAIN C0Sir25J C0dorntob5
~你的审判到了！~ [C0SIR021]
DO ~SetGlobal("C0SireneDornConflictToB","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneDornConflict","GLOBAL",1)~ THEN C0Sir25P C0dorn6
~那些在你手里受苦的人已得复仇。~
DO ~SetGlobal("C0SireneDornConflictToB","GLOBAL",2) JoinParty()~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneDornConflict","GLOBAL",1)~ THEN DORN25P C0dorn7
~哈！弱，跟他们所有人一样弱。我确实挺享受。让她烂在那儿吧，<CHARNAME>。~
DO ~SetGlobal("C0SireneDornConflictToB","GLOBAL",2) JoinParty()~
EXIT

// Hexxat

CHAIN IF WEIGHT #-1 ~Global("C0SireneHexxat","GLOBAL",2)~ THEN C0SIRE2J C0hexxatconflict
~站住，吸血鬼。我有几句话要跟你说。~ [C0BLANK]
DO ~SetGlobal("C0SireneHexxat","GLOBAL",3)~
== HEXXATJ ~什么事，我的朋友？~
== C0SIRE2J ~别嘲弄我，怪物。我不是你的朋友。~
== HEXXATJ ~不必这样敌视。我们如今是盟友。~
== C0SIRE2J ~不。我不把你当盟友。若不是因为<CHARNAME>，我第一眼就会终结你的存在。~
== HEXXATJ ~若<CHARNAME>信任我，那也许你也最好同样信任我。~
== C0SIRE2J ~我不会信任一个既无人性也无怜悯的存在，也不会容忍你作伴。拔剑吧。~
== HEXXATJ ~我没兴趣跟你打，圣武士。~
== C0SIRE2J ~那就只有一个办法。<CHARNAME>，要么它走，要么我走。~
END
	++ ~那样的话，我怕你得走了，塞琳。~ EXTERN C0SIRE2J C0hexxatconflict1
	++ ~好。赫克萨特，你得走。~ EXTERN HEXXATJ C0hexxatconflict2

CHAIN C0SIRE2J C0hexxatconflict1
~我原以为你更懂事，<CHARNAME>。好罢。我走。~
DO ~SetGlobal("C0SireneJoined","GLOBAL",0) LeaveParty() EscapeArea()~
EXIT

CHAIN HEXXATJ C0hexxatconflict2
~真可惜。等你明白过来，你知道去哪儿找我。~
DO ~SetGlobal("OHH_hexxatjoined","LOCALS",0)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeAreaMove("AR0406",600,1045,SW)~ 
EXIT

// ToB

CHAIN IF WEIGHT #-1 ~Global("C0SireneHexxatToB","GLOBAL",2)~ THEN C0Sir25J C0hexxatconflicttob
~站住，吸血鬼。我有几句话要跟你说。~ [C0BLANK]
DO ~SetGlobal("C0SireneHexxatToB","GLOBAL",3)~
== HEXXATJ ~什么事，我的朋友？~
== C0SIR25J ~别嘲弄我，怪物。我不是你的朋友。~
== HEXXA25J ~不必这样敌视。我们如今是盟友。~
== C0SIR25J ~不。我不把你当盟友。若不是因为<CHARNAME>，我第一眼就会终结你的存在。~
== HEXXA25J ~若<CHARNAME>信任我，那也许你也最好同样信任我。~
== C0SIR25J ~我不会信任一个既无人性也无怜悯的存在，也不会容忍你作伴。拔剑吧。~
== HEXXA25J ~我没兴趣跟你打，圣武士。~
== C0SIR25J ~那就只有一个办法。<CHARNAME>，要么它走，要么我走。~
END
	++ ~那样的话，我怕你得走了，塞琳。~ EXTERN C0Sir25J C0hexxatconflicttob1
	++ ~好。赫克萨特，你得走。~ EXTERN HEXXA25J C0hexxatconflicttob2

CHAIN C0Sir25J C0hexxatconflicttob1
~我原以为你更懂事，<CHARNAME>。好罢。我走。~
DO ~SetGlobal("C0SireneJoined","GLOBAL",0) LeaveParty() EscapeArea()~
EXIT

CHAIN HEXXA25J C0hexxatconflicttob2
~真可惜。等你明白过来，你知道去哪儿找我。~
DO ~SetGlobal("ohh_hexxatjoined","LOCALS",0)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1788.1148],SE)~ 
EXIT

// Neera

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneNeera1","GLOBAL",0)
!Global("OHN_PLOT","GLOBAL",6)~ THEN BC0SIRE2 C0SireneNeera1
~你做了件好事，妮拉，把这些被放逐的法师聚在一起。~ [C0BLANK]
DO ~SetGlobal("C0SireneNeera1","GLOBAL",1)~
== BNEERA ~他们需要一个家。我没法就看着不管。~
== BC0SIRE2 ~可你知道他们仍会被追捕。他们不能永远留在这里。~
== BNEERA ~我知道。可我已经尽力了！又不是我能跑去塞尔，拿根大棒敲八杖骑士团首领的脑袋，叫他们别来烦我，对吧？~
== BC0SIRE2 ~那你打算怎么办？~
== BNEERA ~我不知道。他们如今相处得很好，我不能就叫他们收拾东西各走各的。那不对。尤其是我们费了那么大力气才把他们聚在一起……~
== BC0SIRE2 ~他们可以一起走。无论如何，成群旅行更安全。~
== BNEERA ~一群法师穿过安姆不会很可疑吗？这样，我们先看红袍法师下一步做什么，若他们又想动我的朋友，我们就一起阻止他们。对吧？~
== BC0SIRE2 ~我当然会帮你，妮拉。护着他们既是你的职责，也是我的。~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneNeera2","GLOBAL",0)
Global("OHN_PLOT","GLOBAL",6)~ THEN BNEERA C0SireneNeera2
~办成了。呼，一天的事。我累坏了。~ [C0BLANK]
DO ~SetGlobal("C0SireneNeera2","GLOBAL",1)~
== BC0SIRE2 ~你该为自己自豪，妮拉。你为这些法师已尽了全力。~
== BNEERA ~谢谢。我心里暖洋洋的。说到这个，我饿死了。~
== BC0SIRE2 ~（微笑）看你成长至今，真是件乐事，我的朋友。~
== BNEERA ~哦，别说了。我都脸红了。我真不习惯这些英雄派头。~
== BNEERA ~（咕噜）~
== BNEERA ~我的肚子又来了。就在我以为不能再尴尬的时候。有吃的吗？~
== BC0SIRE2 ~我也许有点……~
== BNEERA ~你有什么——天啊，巧克力。快给我！~
EXIT

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneNeera2","GLOBAL",1)~ THEN BNEERA C0SireneNeera3
~嘿，塞琳。还有巧克力吗？我的甜牙又在闹了。~ [C0BLANK]
DO ~SetGlobal("C0SireneNeera2","GLOBAL",2)~
== BC0SIRE2 ~还剩一点……给，都拿去吧。~
== BNEERA ~唔——唔！~
== BNEERA ~你知道，我听说有些法师花一辈子想把铅变成金。我若哪天厌倦旅行想安定下来，我想研究把金属变成巧克力。真香。~
== BC0SIRE2 ~（笑）不过我猜狂野魔法会把事情搞复杂。~
== BNEERA ~嗯，是啊。我不想咬一口发现它是……呃，别的东西。呃，其实还是别想的好。恶心。~
== BC0SIRE2 ~你觉得你真会有安定下来的一天吗？~
== BNEERA ~有时会……可话说回来，我在未来看到许多东西。什么都可能发生。~
== BNEERA ~前提是我没在那之前把自己炸飞。~
EXIT

// ToB 

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneNeeraToB1","GLOBAL",0)~ THEN BC0SIR25 C0SireneNeeraToB1
~你今天心情似乎很好，妮拉。~ [C0BLANK]
DO ~SetGlobal("C0SireneNeeraToB1","GLOBAL",1)~
== BNEERA25 ~为什么不呢？天气好，食物充足，我还没遇过一次糟糕的涌流。我就不能享受些小乐趣吗？~
== BC0SIR25 ~当然，可你意识到我们如今的处境比以往更危险吗？~
== BNEERA25 ~嗯，是啊。*严格来说*危险的只是<CHARNAME>，可我明白你的意思。~
== BC0SIR25 ~可即使知道这些，你的心情似乎比以往更开朗。~
== BNEERA25 ~我想是吧。就是……那种感觉，你知道的？很难解释的那种。我就是知道我们能活着熬过去。总有办法。~
EXIT

// Rasaad

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneRasaad1","GLOBAL",0)~ THEN BC0SIRE2 C0SireneRasaad1
~你把你的苦难承得很好，拉萨德……作为一个伊尔梅特信徒，我忍不住敬重你。~ [C0BLANK]
DO ~SetGlobal("C0SireneRasaad1","GLOBAL",1)~
== BRASAAD ~谢谢你，塞琳，可我的苦难并不带给我自豪。~
== BC0SIRE2 ~我能做什么帮你吗？~
== BRASAAD ~不，我的朋友。我不愿让任何人再为我的烦恼添负，他们已负担够多了。~
== BC0SIRE2 ~我不愿看你在痛苦中消磨，拉萨德。真没有什么能让你心安吗？~
== BRASAAD ~只有复仇。~
== BC0SIRE2 ~复仇不会给你安宁，拉萨德。~
== BRASAAD ~若它不能，那就再没有别的能了。~
EXIT

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SirenePartyBG1","GLOBAL",1)
Global("C0SireneRasaad2","GLOBAL",0)~ THEN BC0SIRE2 C0SireneRasaad2
~你记得我们一起沿剑湾旅行吗，拉萨德？乌尔格斯之须和博德之门？~ [C0BLANK]
DO ~SetGlobal("C0SireneRasaad2","GLOBAL",1)~
== BRASAAD ~我记得，不过我尽量不去想云峰。~
== BC0SIRE2 ~……当然。你兄弟的修道院。对不起，拉萨德，我忘了。~
== BRASAAD ~你为什么提这个，塞琳？~
== BC0SIRE2 ~原谅我，我本只想提些较快乐的时光。没想到那段最糟的时刻，是我短视了。~
== BRASAAD ~我不怪你，我的朋友。我们的旅行也有好回忆。也许我们该说那些。~
== BC0SIRE2 ~（微笑）那会是我的荣幸。~
EXIT

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!Global("C0SirenePartyBG1","GLOBAL",1)
Global("C0SireneRasaad2","GLOBAL",0)~ THEN BC0SIRE2 C0SireneRasaad2
~你承着很重的担子，拉萨德，虽然你努力藏着。你肯告诉我吗？~ [C0BLANK]
DO ~SetGlobal("C0SireneRasaad2","GLOBAL",1)~
== BRASAAD ~我不愿把我的担子强加给任何人，尤其不愿给你，我的朋友。你为我们已做得太多。~
== BC0SIRE2 ~那我怕我们僵住了。只要我是伊尔梅特的仆人，我的职责就是替人承担重负。求你，这一点信我。~
== BRASAAD ~……~
== BRASAAD ~我兄弟死在我手里。~
== BC0SIRE2 ~什么？~
== BRASAAD ~他像我一样是塞露涅的信徒。直到他迷失了路……我们再见面时，已是敌人。我……用这双拳头杀了他。~
== BC0SIRE2 ~我……~
== BC0SIRE2 ~原谅我，拉萨德。我太愚蠢傲慢才会问……这是比我所知的任何担子都重的负担。~
== BRASAAD ~这不是你的错，塞琳。可我不想再说它了。~
EXIT

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneRasaad3","GLOBAL",0)
GlobalGT("OHR_PLOT","GLOBAL",5)~ THEN BC0SIRE2 C0SireneRasaad3
~你感觉如何，我的朋友？~ [C0BLANK]
DO ~SetGlobal("C0SireneRasaad3","GLOBAL",1)~
== BRASAAD ~空。全都白费了。尽管我竭尽全力，阿洛戈斯还是逃了。~
== BC0SIRE2 ~是我们的努力，拉萨德。失败是我们所有人的。~
== BRASAAD ~不。你什么都没做错，我的朋友。你肯帮我这一点，意义已超出我所能说。~
== BC0SIRE2 ~不过这不是我偏好的帮法。你现在打算怎么办？~
== BRASAAD ~继续向前。我别无选择。~
== BC0SIRE2 ~总有选择的，拉萨德。与你的骑士团和解吧。他们需要你，正如你需要他们。~
== BRASAAD ~我给骑士团带来的耻辱已无法赎清，塞琳。做了这一切之后我无法面对他们，尽管我很想。~
== BC0SIRE2 ~我不愿见你继续这条自我毁灭的复仇之路。~
== BRASAAD ~只剩复仇了。~
EXIT

// ToB

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneToBRasaad1","GLOBAL",0)~ THEN BC0SIR25 C0SireneToBRasaad1
~我们能谈一会儿吗，我的朋友？~ [C0BLANK]
DO ~SetGlobal("C0SireneToBRasaad1","GLOBAL",1)~
== BRASAA25 ~当然可以。谈什么？~
== BC0SIR25 ~嗯……什么都行。随便什么。~
== BRASAA25 ~只是闲聊？……我都忘了那是什么感觉。~
== BC0SIR25 ~是的，我也忘了。经历了这一切之后，我觉得自己好像忘了怎么跟朋友说话。不是谈战斗或战略，只是……平常的事。~
== BC0SIR25 ~可是……我想把它找回来。无论要多久。~
== BRASAA25 ~那我们结伴走走，直到我们中有一个想出该说什么？~
== BC0SIR25 ~是的，那也很合我的意。~
== BRASAA25 ~那我们就这么做。~
EXIT
