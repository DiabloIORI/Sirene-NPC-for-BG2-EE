// SoA

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneFoundling1","GLOBAL",0)~ THEN L#FOUB C0SireneFoundling1
~你这人真奇怪。你为什么这么想死？~
DO ~SetGlobal("C0SireneFoundling1","GLOBAL",1)~
== BC0SIRE2 ~我听不懂你在说什么，Foundling。有话直说。~
== L#FOUB ~打架时我一直看着你——只要我们当中谁有危险，你总会上去护着，哪怕拿自己的命冒险。你不怕死吗？~
== BC0SIRE2 ~我也想说自己不怕战死，可……我说不出口。~
== L#FOUB ~那你为什么还这么做？~
== BC0SIRE2 ~出于职责。我以伊尔梅特神圣武士的誓言守护无辜者。~
== L#FOUB ~“职责”……我以前听你说过这个词。可有什么意义？你欠这些所谓的“无辜者”什么？~
== BC0SIRE2 ~这不是我欠他们什么。与那些因我未能保护而倒下的人在我心头压下的愧疚相比，我对死亡的恐惧根本算不了什么。~
== L#FOUB ~你的想法让我费解。在影界，每个生物都只为自己。为别人牺牲自己这种念头……根本不存在。~
== BC0SIRE2 ~是啊，可你已经不在那个世界了，Foundling。也许在这个世界……你会明白真正做人意味着什么。~
EXIT

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneFoundling2","GLOBAL",0)~ THEN L#FOUB C0SireneFoundling2
~跟我说说你这位“伊尔梅特”。你为什么侍奉他？你能得到什么好处？~
DO ~SetGlobal("C0SireneFoundling2","GLOBAL",1)~
== BC0SIRE2 ~有些事的意义，比单纯的所得更深。~
== L#FOUB ~真的？那侍奉你的神，你一点回报都得不到？~
== BC0SIRE2 ~这要看你把什么算作回报吧……想到自己承受苦痛是为了让别人活下去，我便心安。对我来说，这就够了。~
== L#FOUB ~你简直不可理喻……你为什么做这些？我知道你身上流着邪魔之血，人们因此怕你……你不恨他们吗？你不更希望他们受苦吗？~
== BC0SIRE2 ~绝无此事！我若真这么想，便和玷污我血脉的邪恶没什么两样。~
== L#FOUB ~你眼神刚才变了一下……你生气了？~
== BC0SIRE2 ~*叹气* 不，我没有，Foundling。我仍不确定你的话是不是有意冒犯，但这种念头我连想都不能想。我觉得我俩都把这场对话忘掉最好。~
== L#FOUB ~随你便。~
EXIT

// ToB

CHAIN
IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("L#Fou",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
Global("C0SireneFoundlingToB","GLOBAL",0)~ THEN L#FOU25B C0SireneFoundlingToB
~你还活着。~
DO ~SetGlobal("C0SireneFoundlingToB","GLOBAL",1)~
== BC0Sir25 ~是啊，我还活着……让你意外了？~
== L#FOU25B ~说不好。你确实很强——这点我不否认。可每次你挺身涉险救人，我都想知道这会不会是最后一次……但你还是在这儿。你怎么做到的？~
== BC0Sir25 ~保护与我并肩作战的人……这就是我活下去的意志。虽说我的命不值什么，可我必须活着，才能守护我珍视的人。~
== L#FOU25B ~那……包括我吗？~
== BC0Sir25 ~当然包括，Foundling。~
== L#FOU25B ~这样啊。~
== BC0Sir25 ~若你不介意我问……知道这些，你心里是什么感觉？~
== L#FOU25B ~我不知道……很奇妙。要我说的话……在你身边我没那么紧绷了。~
EXIT