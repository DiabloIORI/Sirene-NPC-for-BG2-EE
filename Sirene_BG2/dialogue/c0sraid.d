BEGIN C0SRAID

CHAIN IF WEIGHT #-1 ~Global("C0SireneZalorne","GLOBAL",0)~ THEN C0SRAID a1
~那么，那些符文底下藏着的就是这本旧书？交出来，女人。~
DO ~SetGlobal("C0SireneZalorne","GLOBAL",1)~
== C0SIR25J ~毁掉这礼拜堂的是你们吗？~
== C0SRAID ~这不关你的事。只说一句：我们已在暗处观察这废墟许多夜了，等一个能取出藏着的东西的人。交出来，否则我们就从你手里抢。~
== C0SIR25J ~你们想夺一件伊尔玛特圣物？你们没有这个权利。~
== C0SRAID ~我们人数占优，女人。你没法从我们手里护住它。你打开那祭坛时，防着我们的结界就破了。你无处可躲。~
== C0SIR25J ~该做什么就做吧。这本书你们拿不到。~
== C0SRAID ~蠢货。那就为你的傲慢付出代价吧！~
DO ~Enemy()
ActionOverride("C0SRAID1",Enemy())
ActionOverride("C0SRAID2",Enemy())
ActionOverride("C0SRAID3",Enemy())
ActionOverride("C0SRAID4",Enemy())
ActionOverride("C0SRAID5",Enemy())
ActionOverride("C0SRAID6",Enemy())
ActionOverride("C0SRAID7",Enemy())
ActionOverride("C0SRAID8",Enemy())
ActionOverride("C0SRAID9",Enemy())~ EXIT