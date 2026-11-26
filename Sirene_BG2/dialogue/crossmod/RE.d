// Romantic Encounters

APPEND C0SIRE2J

// Ada

IF WEIGHT #-1 ~Global("C0SireneREAda","GLOBAL",1)~ Ada
SAY ~看来你任由自己的私欲支配了自己，<CHARNAME>。希望你和那位混乱祭司的幽会值得。~ [C0BLANK]
++ ~我不知道你在说什么。~ DO ~SetGlobal("C0SireneREAda","GLOBAL",2)~ + Ada1
++ ~听着，我犯了个错，行了吧？翻篇吧。~ DO ~SetGlobal("C0SireneREAda","GLOBAL",2)~ + Ada2
++ ~我怎么做，与你无关。~ DO ~SetGlobal("C0SireneREAda","GLOBAL",2)~ + Ada3
END

IF ~~ Ada1
SAY ~我不傻，<CHARNAME>。就算这地方再嘈杂，也掩不住那……算了。我们该走了。~
IF ~~ EXIT
END

IF ~~ Ada2
SAY ~但愿我能释怀，<CHARNAME>。我不会因此记恨你，可……我劝你和这类人打交道时小心些。有些人想要的不止……算了。~
IF ~~ EXIT
END

IF ~~ Ada3
SAY ~是啊，你尽可随心所欲，但我……劝你今后挑调情对象时更谨慎些。~
IF ~~ EXIT
END

// Anishai

IF WEIGHT #-1 ~Global("C0SireneREAnishai","GLOBAL",1)~ Anishai
SAY ~那真是这条计策必不可少的一环吗，<CHARNAME>？你就不怕她趁你虚弱时动手？还是你——~ [C0BLANK]
= ~*叹气* 这件差事我从一开始就心存疑虑，可如今比起继续演下去，我倒情愿把这些强盗一个个都杀了。~
= ~我们继续吧，<CHARNAME>。我向伊尔玛特祈祷，希望能彻底忘掉这件令人不快的事。~
IF ~~ DO ~SetGlobal("C0SireneREAnishai","GLOBAL",2)~ EXIT
END

// Aran

IF WEIGHT #-1 ~Global("C0SireneREAran","GLOBAL",1)~ Aran
SAY ~你看起来很满足，<CHARNAME>。影主想必备下了一顿丰盛的夜宴。~ [C0BLANK]
++ ~真的挺不错。~ DO ~SetGlobal("C0SireneREAran","GLOBAL",2)~ + Aran1
++ ~你不赞成？~ DO ~SetGlobal("C0SireneREAran","GLOBAL",2)~ + Aran2
++ ~呃，还行吧。~ DO ~SetGlobal("C0SireneREAran","GLOBAL",2)~ + Aran1
END

IF ~~ Aran1
SAY ~嗯。~
++ ~你听上去不太高兴。你是担心我吗？~ + Aran2
++ ~我们走吧。~ EXIT
END

IF ~~ Aran2
SAY ~不……嗯，也许你选择和一个强盗共度私密夜晚时，我确实有点担心你。但我得承认，到目前为止他对我们还算客气。~
= ~而且……影主确实很有魅力，你想和他相处，我也不能怪你……我还一度以为自己得等你一整夜。~
++ ~哎呀，你这话听着都快吃醋了，茜琳。~ + Aran3
++ ~你知道，你要是有意思，我随时可以撮合你们俩……~ + Aran3
++ ~随便吧。我们还有事要办。~ EXIT
END

IF ~~ Aran3
SAY ~我……*脸红* 不，你一定是误会我了。这事能不提吗？~
IF ~~ EXIT
END

// Bjornin

IF WEIGHT #-1 ~Global("C0SireneREBjornin","GLOBAL",1)~ Bjornin
SAY ~我看见 布宁 大人从旁边走过。你一定费了不少功夫安抚他，<CHARNAME>。他看上去再满意不过了。~ [C0BLANK]
+ ~!Global("RE_BjorninSex","GLOBAL",1)~ + ~是啊……*脸红*~ DO ~SetGlobal("C0SireneREBjornin","GLOBAL",2)~ + Bjornin1
+ ~!Global("RE_BjorninSex","GLOBAL",1)~ + ~你知道的还不到一半。~ DO ~SetGlobal("C0SireneREBjornin","GLOBAL",2)~ + Bjornin1
+ ~Global("RE_BjorninSex","GLOBAL",1)~ + ~是啊……*脸红*~ DO ~SetGlobal("C0SireneREBjornin","GLOBAL",2)~ + Bjornin2
+ ~Global("RE_BjorninSex","GLOBAL",1)~ + ~你知道的还不到一半。~ DO ~SetGlobal("C0SireneREBjornin","GLOBAL",2)~ + Bjornin3
++ ~你要是觉得被冷落了，我也可以同样待你……~ DO ~SetGlobal("C0SireneREBjornin","GLOBAL",2)~ + Bjornin4
+ ~Global("C#Bjorni_HaveMetBefore","LOCALS",1) !Global("C0SirenePartyBG1","GLOBAL",1)~ + ~再见到他真好。~ DO ~SetGlobal("C0SireneREBjornin","GLOBAL",2)~ + Bjornin5
+ ~Global("C#Bjorni_HaveMetBefore","LOCALS",1) Global("C0SirenePartyBG1","GLOBAL",1)~ + ~再见到他真好。~ DO ~SetGlobal("C0SireneREBjornin","GLOBAL",2)~ + Bjornin6
++ ~这事根本不值一提。~ DO ~SetGlobal("C0SireneREBjornin","GLOBAL",2)~ EXIT
END

IF ~~ Bjornin1
SAY ~我本想问你做了什么让他这么安心，可……我觉得还是不说为妙。~
IF ~~ EXIT
END

IF ~~ Bjornin2
SAY ~看你的举动，我想最好还是别追问细节。~
IF ~~ EXIT
END

IF ~~ Bjornin3
SAY ~不，而且我猜自己也不想知道。*叹气* 你有时真让人招架不住，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ Bjornin4
SAY ~我……想我还是算了，<CHARNAME>。承蒙抬举，可……我不觉得我的伤痕会像 布宁 的那样讨你喜欢。~
IF ~~ EXIT
END

IF ~~ Bjornin5
SAY ~这么说这不是你和他第一次见面？我得问，你们俩是不是……不，算了。当我没说。~
IF ~~ EXIT
END

IF ~~ Bjornin6
SAY ~是啊，能见到这样一位英勇的骑士还在人世，真好。不过看来你和他的关系与上次相比变化很大。~
IF ~~ EXIT
END

// Chanelle

IF WEIGHT #-1 ~Global("C0SireneREChanelle","GLOBAL",1)~ Chanelle
SAY ~你气色不错，<CHARNAME>。那位女仆……把你照料得很好。~ [C0BLANK]
++ ~呃，对。~ DO ~SetGlobal("C0SireneREChanelle","GLOBAL",2)~ + Chanelle1
+ ~Gender(Player1,FEMALE)~ + ~别这么不自在。女仆伺候女主人，有什么奇怪的？~ DO ~SetGlobal("C0SireneREChanelle","GLOBAL",2)~ + Chanelle2
+ ~Gender(Player1,MALE)~ + ~别这么不自在。女仆伺候男主人，有什么奇怪的？~ DO ~SetGlobal("C0SireneREChanelle","GLOBAL",2)~ + Chanelle3
+ ~Global("RE_ChanelleSex","GLOBAL",1)~ + ~是啊……关键就在“伺候”这个词。~ DO ~SetGlobal("C0SireneREChanelle","GLOBAL",2)~ + Chanelle4
++ ~好吧。咱们这就走。~ DO ~SetGlobal("C0SireneREChanelle","GLOBAL",2)~ + Chanelle0
END

IF ~~ Chanelle0
SAY ~是、是啊……当然。~
IF ~~ EXIT
END

IF ~~ Chanelle1
SAY ~你看上去……不太一样。~
++ ~不必这么看得发呆。我洗了个澡就这么奇怪？~ + Chanelle5
++ ~随便。走吧。~ + Chanelle0
END

IF ~~ Chanelle2
SAY ~不、不，我想不至于。只是……我听到笑声时，忍不住想是不是……~
++ ~等等，你在偷听我？~ + Chanelle7
++ ~呃，这事咱们就翻篇吧……~ + Chanelle0
END

IF ~~ Chanelle3
SAY ~我……我说不好，<CHARNAME>。这种事在贵族中很常见吗？若是，那……~
++ ~这座要塞里男仆不多，所以我让 香奈尔 伺候我。有问题吗？~ + Chanelle2
++ ~什么？~ + Chanelle6
++ ~听着，不过是一次清白的沐浴。就到此为止，好吗？~ + Chanelle0
END

IF ~~ Chanelle4
SAY ~唔……我想你如今身为领主，自有你的……特权，可这样使唤你的仆人，是否合乎情理，我拿不准……~
++ ~喂，别这么说。我只是洗了个澡，行了吧？~ + Chanelle5
++ ~总之，站在这儿瞎猜也没意义。走吧。~ + Chanelle0
END

IF ~~ Chanelle5
SAY ~我在意的不是沐浴，而是那个，呃，独处。你和一位美貌少女一同消失，难免让我猜想……~
++ ~什么？~ + Chanelle6
++ ~慢、慢着，茜琳。~ + Chanelle0
END

IF ~~ Chanelle6
SAY ~诸神在上，我这是在说什么？太难为情了。请别理我，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ Chanelle7
SAY ~我、我……不，我是说……诸神在上，我不是有意的，<CHARNAME>，我发誓！~
++ ~嗯哼。~ EXIT
++ ~你内心还真有不轨的一面，茜琳。我佩服。~ + Chanelle8
++ ~下次你何不直接进来和我一起？~ + Chanelle8
END

IF ~~ Chanelle8
SAY ~我、唔，求、求你了，<CHARNAME>，别再逗了。一次能承受的难为情就这么多。~
= ~咱、咱们能翻篇了吗？~
IF ~~ EXIT
END

// Desharik

IF WEIGHT #-1 ~Global("C0SireneREDesharik","GLOBAL",1)~ Desharik
SAY ~发生了什么，<CHARNAME>？告诉我你没让那个卑劣之徒碰你。~ [C0BLANK]
+ ~Global("RE_DesharikSex","GLOBAL",1)~ + ~（撒谎）不，我没有。~ DO ~SetGlobal("C0SireneREDesharik","GLOBAL",2)~ + Desharik1
+ ~!Global("RE_DesharikSex","GLOBAL",1)~ + ~不，我没有。~ DO ~SetGlobal("C0SireneREDesharik","GLOBAL",2)~ + Desharik2
+ ~Global("RE_DesharikSex","GLOBAL",1)~ + ~我让他碰了，而且我喜欢。~ DO ~SetGlobal("C0SireneREDesharik","GLOBAL",2)~ + Desharik3
+ ~Global("RE_DesharikSex","GLOBAL",1)~ + ~是恶心，可我总得想办法把我们弄进 禁魔监狱。~ DO ~SetGlobal("C0SireneREDesharik","GLOBAL",2)~ + Desharik4
++ ~这与你何干，茜琳？~ DO ~SetGlobal("C0SireneREDesharik","GLOBAL",2)~ + Desharik5
++ ~（不理会她）~ DO ~SetGlobal("C0SireneREDesharik","GLOBAL",2)~ EXIT
END

IF ~~ Desharik1
SAY ~你否认，可那海盗眼里的神情告诉我的不是这样。~
IF ~~ + Desharik4
END

IF ~~ Desharik2
SAY ~我……明白了。我信你，<CHARNAME>，说实话，我松了口气。~
IF ~~ EXIT
END

IF ~~ Desharik3
SAY ~我以为……你会更有尊严些，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ Desharik4
SAY ~无论你怎么看自己，<CHARNAME>，你仍是个有尊严的女子。如此轻易地委身……我知道你不该如此。本可以有别的办法。~
IF ~~ EXIT
END

IF ~~ Desharik5
SAY ~没什么……可我想知道。不过你若不愿说……那我尊重你的意愿。~
IF ~~ EXIT
END

// Eldoth

IF WEIGHT #-1 ~Global("C0SireneREEldoth","GLOBAL",1)~ Eldoth
SAY ~我……昨晚经过你房门，<CHARNAME>，听见里面有人声。你不是一个人，对吗？~ [C0BLANK]
+ ~Global("C0SirenePartyBG1","GLOBAL",1)~ + ~是 亚多士。我们就着酒聊了几句。~ DO ~SetGlobal("C0SireneREEldoth","GLOBAL",2)~ + Eldoth1
+ ~!Global("C0SirenePartyBG1","GLOBAL",1)~ + ~是 亚多士。我们就着酒聊了几句。~ DO ~SetGlobal("C0SireneREEldoth","GLOBAL",2)~ + Eldoth2
+ ~Global("C0SirenePartyBG1","GLOBAL",1)~ + ~你在偷听？~ DO ~SetGlobal("C0SireneREEldoth","GLOBAL",2)~ + Eldoth1
+ ~!Global("C0SirenePartyBG1","GLOBAL",1)~ + ~你在偷听？~ DO ~SetGlobal("C0SireneREEldoth","GLOBAL",2)~ + Eldoth2
++ ~无可奉告。~ DO ~SetGlobal("C0SireneREEldoth","GLOBAL",2)~ EXIT
END

IF ~~ Eldoth0
SAY ~当然。抱歉……是我越界了。~
IF ~~ EXIT
END

IF ~~ Eldoth1
SAY ~我就觉得那声音耳熟。~
IF ~~ + Eldoth2
END

IF ~~ Eldoth2
SAY ~你……你没让他上你的床，对吧？~
+ ~Global("RE_EldothSex","GLOBAL",1)~ + ~不，有。~ + Eldoth3
+ ~!Global("RE_EldothSex","GLOBAL",1)~ + ~没有，当然没有。~ + Eldoth4
+ ~Global("RE_EldothSex","GLOBAL",1)~ + ~（撒谎）没有，当然没有。~ + Eldoth5
++ ~这不关你的事。~ + Eldoth0
END

IF ~~ Eldoth3
SAY ~*叹气* 我……就知道会是这样。~
IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ EXIT
IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ + Eldoth6
END

IF ~~ Eldoth4
SAY ~那……那就好。我始终没法信任他。~
IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ EXIT
IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ + Eldoth6
END

IF ~~ Eldoth5
SAY ~是吗？我……但愿能信你。~
IF ~!Global("C0SirenePartyBG1","GLOBAL",1)~ EXIT
IF ~Global("C0SirenePartyBG1","GLOBAL",1)~ + Eldoth6
END

IF ~~ Eldoth6
SAY ~你我都了解 亚多士，<CHARNAME>。他对 史姬 的所作所为堪称卑劣；若非有你在一旁领着，我多半早把他砍了。~
= ~你该明白，他对你的心思毫不单纯。陪他玩那些花样不会有好结果。~
= ~*叹气* 这事到此为止。你做什么是你的私事，我不该多问。~
IF ~~ EXIT
END

// Garren

IF WEIGHT #-1 ~Global("C0SireneREGarren","GLOBAL",1)~ Garren
SAY ~风矛大人昨晚和你一同回来后，看起来开心了许多。但愿你给了他慰藉。~ [C0BLANK]
+ ~Global("RE_GarrenSex","GLOBAL",1)~ + ~你比自己想的更说中了。~ DO ~SetGlobal("C0SireneREGarren","GLOBAL",2)~ + Garren1
+ ~Global("RE_GarrenSex","GLOBAL",1)~ + ~呃……“慰藉”。对。~ DO ~SetGlobal("C0SireneREGarren","GLOBAL",2)~ + Garren1
+ ~Global("RE_GarrenSex","GLOBAL",1)~ + ~他一生很苦。我觉得他需要些鼓励。~ DO ~SetGlobal("C0SireneREGarren","GLOBAL",2)~ + Garren1
+ ~!Global("RE_GarrenSex","GLOBAL",1)~ + ~他一生很苦。我觉得他需要些鼓励。~ DO ~SetGlobal("C0SireneREGarren","GLOBAL",2)~ + Garren2
+ ~!Global("RE_GarrenSex","GLOBAL",1)~ + ~我不喜欢你那说法。我们只是说说话，仅此而已。~ DO ~SetGlobal("C0SireneREGarren","GLOBAL",2)~ + Garren4
++ ~下次再跟你细说。~ DO ~SetGlobal("C0SireneREGarren","GLOBAL",2)~ EXIT
END

IF ~~ Garren1
SAY ~我不知道你对他说了什么，可从分别前他望你的眼神看得出，你补上了他心中缺失的某样重要东西。~
++ ~听着，茜琳，我——~ + Garren3
++ ~呃，行。就当是这样吧。~ EXIT
END

IF ~~ Garren2
SAY ~你有一颗慈悲之心，<CHARNAME>。也许正因如此，别人才会被你吸引，就像我当初一样。~
IF ~~ EXIT
END

IF ~~ Garren3
SAY ~别说了，<CHARNAME>。我不想知道。~
IF ~~ EXIT
END

IF ~~ Garren4
SAY ~我……抱歉。我不是有意那样暗示。~
IF ~~ EXIT
END

// Hendak

IF WEIGHT #-1 ~Global("C0SireneREHendak","GLOBAL",1)~ Hendak
SAY ~韩达克 很钦佩你，<CHARNAME>。他是个正直的人，但愿你待他不差。~ [C0BLANK]
++ ~他的青睐让我受宠若惊。离开他会让人难过。~ + Hendak1
++ ~你听着都像嫉妒了。你倒希望我也这样待你？~ + Hendak2
++ ~这事我不想谈。~ EXIT
END

IF ~~ Hendak1
SAY ~我……明白，<CHARNAME>。这种滋味我很清楚。~
IF ~~ EXIT
END

IF ~~ Hendak2
SAY ~我可没这么说。不过……倒也不排斥。~
IF ~~ EXIT
END

// Ilona

IF WEIGHT #-1 ~Global("C0SireneREIlona","GLOBAL",1)~ Ilona
SAY ~那位商人款待得十分慷慨。我很久没从陌生人那里受过这么热情的接待了。~ [C0BLANK]
+ ~Global("RE_IlonaSex","GLOBAL",1)~ + ~嗯？哦，对。你说得对。~ DO ~SetGlobal("C0SireneREIlona","GLOBAL",2)~ + Ilona1
+ ~!Global("RE_IlonaSex","GLOBAL",1)~ + ~嗯？哦，对。你说得对。~ DO ~SetGlobal("C0SireneREIlona","GLOBAL",2)~ + Ilona2
++ ~也许我们改天可以再受用他的慷慨。~ DO ~SetGlobal("C0SireneREIlona","GLOBAL",2)~ + Ilona2
++ ~没空扯这个。走吧。~ DO ~SetGlobal("C0SireneREIlona","GLOBAL",2)~ EXIT
END

IF ~~ Ilona1
SAY ~……我本想问那位少女昨晚为何进了你房间，可我猜你不会跟我说实话。我、我希望你别养成这个习惯，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ Ilona2
SAY ~不过我在想，你求的是商人的感激，还是他女儿的？不，原谅我。这么暗示有失身份。~
IF ~~ EXIT
END

// Jarlaxle

IF WEIGHT #-1 ~Global("C0SireneREJarlaxle","GLOBAL",1)~ Jarlaxle
SAY ~*叹气* 在这么危险的地方，跟着这么危险的人也这样？说真的，<CHARNAME>，我拿你怎么办才好？~ [C0BLANK]
++ ~哦，得了。这种机会你会放过？~ DO ~SetGlobal("C0SireneREJarlaxle","GLOBAL",2)~ + Jarlaxle1
++ ~我忍不住。他长得很漂亮。而且他的头……锃亮。~ DO ~SetGlobal("C0SireneREJarlaxle","GLOBAL",2)~ + Jarlaxle2
++ ~那你本可以一起上。我敢说他不会拒绝两位美貌卓尔女子。~ DO ~SetGlobal("C0SireneREJarlaxle","GLOBAL",2)~ + Jarlaxle3
++ ~嘻嘻。~ DO ~SetGlobal("C0SireneREJarlaxle","GLOBAL",2)~ EXIT
END

IF ~~ Jarlaxle1
SAY ~我至少会先顾及一下我们身在何处，可……唉。~
IF ~~ EXIT
END

IF ~~ Jarlaxle2
SAY ~*叹气*~
IF ~~ EXIT
END

IF ~~ Jarlaxle3
SAY ~……不。不，我不可能。也请你别再往我脑子里塞这种下作画面。~
IF ~~ EXIT
END

// Lais

IF WEIGHT #-1 ~Global("C0SireneRELais","GLOBAL",1)~ Lais
SAY ~我注意到你昨晚离开了住处，<CHARNAME>。你没睡好吗？~ [C0BLANK]
++ ~别担心我。我睡得挺好。~ DO ~SetGlobal("C0SireneRELais","GLOBAL",2)~ + Lais1
++ ~我有点心绪不宁，就去森林里走了走。~ DO ~SetGlobal("C0SireneRELais","GLOBAL",2)~ + Lais1
++ ~其实我是去见客栈里那个可爱的精灵女孩了。~ DO ~SetGlobal("C0SireneRELais","GLOBAL",2)~ + Lais2
END

IF ~~ Lais1
SAY ~嗯……明白了。不管怎样，你有什么心事，我都能帮。~
IF ~~ EXIT
END

IF ~~ Lais2
SAY ~哦……原来如此。我还当你又被梦魇缠上了。不过……算了，我不该问你这一夜怎么过的。翻篇吧。~
IF ~~ EXIT
END

// Laran

IF WEIGHT #-1 ~Global("C0SireneRELaran","GLOBAL",1)~ Laran
SAY ~你和那个年轻侍从待了很久，<CHARNAME>。我不太敢问，可你是不是……勾引了他？~ [C0BLANK]
++ ~是又怎样？~ DO ~SetGlobal("C0SireneRELaran","GLOBAL",2)~ + Laran1
++ ~嗯，算是吧。他这么好的对象，没法拒绝。~ DO ~SetGlobal("C0SireneRELaran","GLOBAL",2)~ + Laran1
++ ~我忍不住！你看见那小伙子了吗？~ DO ~SetGlobal("C0SireneRELaran","GLOBAL",2)~ + Laran1
++ ~没有，我没看见。别再问我。~ DO ~SetGlobal("C0SireneRELaran","GLOBAL",2)~ EXIT
END

IF ~~ Laran1
SAY ~这种行径……不是我期待你做出的事，<CHARNAME>。趁他之危？那太残忍了。~
++ ~你也在瞟他。你以为我没注意到？~ + Laran2
++ ~也许是。可我发誓，他完全是自愿的！~ + Laran3
++ ~你只是嫉妒我从没这样待过你。~ + Laran2
END

IF ~~ Laran2
SAY ~我……不知道你在说什么，<CHARNAME>。就当我们从没聊过这个。~
IF ~~ EXIT
END

IF ~~ Laran3
SAY ~住口。我不想听这个。~
IF ~~ EXIT
END

// Mekrath

IF WEIGHT #-1 ~Global("C0SireneREMekrath","GLOBAL",1)~ Mekrath
SAY ~我信不过那个法师。可他给了你所求之物，便让我们清净了……你从他那儿学到很多吗？~ [C0BLANK]
++ ~哦，是的。学到不少。~ DO ~SetGlobal("C0SireneREMekrath","GLOBAL",2)~ + Mekrath1
++ ~谈不上。挺无聊的，就跟葛立安的课一样。~ DO ~SetGlobal("C0SireneREMekrath","GLOBAL",2)~ + Mekrath1
++ ~你不会懂的。你又不是法师。~ DO ~SetGlobal("C0SireneREMekrath","GLOBAL",2)~ EXIT
END

IF ~~ Mekrath1
SAY ~哦，我……明白了。~
= ~...~
= ~我想知道细节吗？~
++ ~不想。~ EXIT
++ ~才不！~ EXIT
++ ~半点都不想。~ EXIT
++ ~那要看。你对裸体宁芙已经了解多少了？~ + Mekrath2
END

IF ~~ Mekrath2
SAY ~什、*咳* 也许我还是不问为妙。~
IF ~~ EXIT
END

// Rebecca

IF WEIGHT #-1 ~Global("C0SireneRERebecca","GLOBAL",1)~ Renal
SAY ~那位女巫跟你说了什么，<CHARNAME>？她真看到了你的未来？~ [C0BLANK]
++ ~她说……我会死，然后再回来。我至今不明白那是什么意思。~ DO ~SetGlobal("C0SireneRERebecca","GLOBAL",2)~ + Rebecca1
++ ~信我，你不会想知道的。~ DO ~SetGlobal("C0SireneRERebecca","GLOBAL",2)~ EXIT
+ ~Global("RE_RebeccaSex","GLOBAL",1)~ + ~这是我和她之间的事。别的也一样。~ DO ~SetGlobal("C0SireneRERebecca","GLOBAL",2)~ EXIT
END

IF ~~ Rebecca1
SAY ~哦。我还指望她告诉你些更欢喜的事。比如你和……~
= ~*咳* 不管怎样，倘若她真预见了你的死亡，我只盼我们能证明她看错了。~
IF ~~ EXIT
END

// Renal Bloodscalp

IF WEIGHT #-1 ~Global("C0SireneRERenal","GLOBAL",1)~ Renal
SAY ~你在流血，<CHARNAME>！我怎么会没注意到……让我看看！~ [C0BLANK]
++ ~没事，不要紧。我……昨晚出了点意外。~ DO ~SetGlobal("C0SireneRERenal","GLOBAL",2)~ + Renal1
++ ~是 雷纳尔 弄的。他来看过我。~ DO ~SetGlobal("C0SireneRERenal","GLOBAL",2)~ + Renal2
++ ~（让她处理伤口，但不予回应）~ DO ~SetGlobal("C0SireneRERenal","GLOBAL",2)~ + Renal1
++ ~（抽开）我没事。~ DO ~SetGlobal("C0SireneRERenal","GLOBAL",2)~ EXIT
END

IF ~~ Renal1
SAY ~你该来找我。我受不了看你受伤，<CHARNAME>。你对我太重要了。~
IF ~~ EXIT
END

IF ~~ Renal2
SAY ~你让那个危险的强盗进了你的房间？你……你疯了吗？~
= ~求你，别再做这种事。若是事先知道，我会毫不犹豫地杀了他。我向你保证。~
IF ~~ EXIT
END

// Ribald Barterman

IF WEIGHT #-1 ~Global("C0SireneRERibald","GLOBAL",1)~ Ribald
SAY ~原谅我的好奇，<CHARNAME>，可我注意到我们去冒险者集市的次数比往常多了。你常跟着 里巴尔德 进后屋，却从不带什么出来。我承认我……好奇你在里面做什么。~ [C0BLANK]
++ ~呃……你还是不知道为好。~ DO ~SetGlobal("C0SireneRERibald","GLOBAL",2)~ + Ribald1
++ ~你想知道，下次何不跟我一起进去？我敢说 里巴尔德 一定会给你备上极好的东西。~ DO ~SetGlobal("C0SireneRERibald","GLOBAL",2)~ + Ribald2
++ ~我跟 里巴尔德 去……缓解一下冒险的压力。到此为止吧。~ DO ~SetGlobal("C0SireneRERibald","GLOBAL",2)~ + Ribald3
++ ~不关你的事，茜琳。~ DO ~SetGlobal("C0SireneRERibald","GLOBAL",2)~ EXIT
END

IF ~~ Ribald1
SAY ~这……并不能让我安心，不过你这么说了。~
IF ~~ EXIT
END

IF ~~ Ribald2
SAY ~我……连自己猜想的那层意思是不是真的都不想知道。你说话开始像……我认识的一位老友。我太清楚这是要往哪去了。~
IF ~~ EXIT
END

IF ~~ Ribald3
SAY ~是啊……我们确实可以到此为止。我觉得这样最好。~
IF ~~ EXIT
END

// Saemon Havarian

IF WEIGHT #-1 ~Global("C0SireneRESaemon","GLOBAL",1)~ Saemon
SAY ~我真惊讶你竟信得过那个强盗，愿意和他独处。你忘了他对我们做过的一切？~ [C0BLANK]
++ ~得了。*他*其实没造成那么大伤害。严格说来。~ DO ~SetGlobal("C0SireneRESaemon","GLOBAL",2)~ + Saemon1
++ ~我没忘。可他太有魅力，让人抗拒不了。就当我是个软弱的女人吧。~ DO ~SetGlobal("C0SireneRESaemon","GLOBAL",2)~ + Saemon2
++ ~这话到此为止，茜琳。~ DO ~SetGlobal("C0SireneRESaemon","GLOBAL",2)~ EXIT
END

IF ~~ Saemon1
SAY ~除了给我们下药、把我们丢给你的死敌摆布？是谁把你的灵魂从胸腔里撕扯出去的？我若是和那恶徒同处一室，袖里必会藏一把刀，绝不会少。~
IF ~~ + Saemon3
END

IF ~~ Saemon2
SAY ~这不是玩笑，<CHARNAME>！万一他再给你下药，替艾瑞尼卡斯除掉你呢？谁知道他是不是还在为后者卖命？万一——~
IF ~~ + Saemon3
END

IF ~~ Saemon3
SAY ~*叹气* 原谅我。我……为我们的处境恼怒，也比以往更担心你的安危。你……多加小心，<CHARNAME>。~
IF ~~ EXIT
END

// Sheri

IF WEIGHT #-1 ~Global("C0SireneRESheri","GLOBAL",1)~ Sheri
SAY ~你舞跳得不错，<CHARNAME>。你和那位女吟游诗人配合得十分默契。~ [C0BLANK]
++ ~你嫉妒了，茜琳？~ DO ~SetGlobal("C0SireneRESheri","GLOBAL",2)~ + Sheri1
++ ~下次我倒想让你陪我跳。~ DO ~SetGlobal("C0SireneRESheri","GLOBAL",2)~ + Sheri2
++ ~说实话，我只是随大流。我不会跳舞。~ DO ~SetGlobal("C0SireneRESheri","GLOBAL",2)~ + Sheri3
++ ~没空扯这个。~ DO ~SetGlobal("C0SireneRESheri","GLOBAL",2)~ EXIT
END

IF ~~ Sheri1
SAY ~我是吗？我都快认不出自己了……也许我嫉妒你舞跳得好。又或者是那位女诗人的美貌……~
IF ~~ + Sheri4
END

IF ~~ Sheri2
SAY ~我……说不好，<CHARNAME>。我的舞艺远不及那位女诗人，恐怕会让你失望。~
++ ~你说得倒像我在乎这个。~ + Sheri4
++ ~总之，记在心里，好吗？~ + Sheri4
++ ~也许你说得对。~ EXIT
END

IF ~~ Sheri3
SAY ~总之，你俩站在一起赏心悦目。~
++ ~你听着像在吃醋。~ + Sheri1
++ ~我觉得要是你陪我跳，那画面只会更美。~ + Sheri3
++ ~随便。翻篇吧。~ EXIT
END

IF ~~ Sheri4
SAY ~（茜琳沉吟片刻，随即摇了摇头，像是要把思绪甩开）~
= ~没空在这胡扯，<CHARNAME>。算了。~
IF ~~ EXIT
END

// Talak

IF WEIGHT #-1 ~Global("C0SireneRETalak","GLOBAL",1)~ talak
SAY ~（你回来时，茜琳的脸因厌恶而扭曲，以她现在的模样，十分骇人。）~ [C0BLANK]
= ~我不知道是什么附了你的身，<CHARNAME>。你竟接受了那卑劣邪魔的提议？沉溺于这种……荒淫之中？~
= ~（她摇头）或许这副形态并不如我以为的那样是幻象。我只盼等一切尘埃落定，你再也不会做这种事。~
IF ~~ EXIT
END

// Isabelle

IF WEIGHT #-1 ~Global("C0SireneREIsabelle","GLOBAL",1)~ Isabelle
SAY ~那盾女简直像换了个人。和你说话前她还拘谨，事后脸上却几乎焕着喜悦的光。但愿我也有这样的力量，替人分担重担。~ [C0BLANK]
++ ~信我，这没那么难。~ DO ~SetGlobal("C0SireneREIsabelle","GLOBAL",2)~ + Isabelle1
++ ~等有空了，要我演示给你看吗？~ DO ~SetGlobal("C0SireneREIsabelle","GLOBAL",2)~ + Isabelle2
++ ~我的招数可不能外传。~ DO ~SetGlobal("C0SireneREIsabelle","GLOBAL",2)~ EXIT
END

IF ~~ Isabelle1
SAY ~分别时你看着很伤感。你被那位姑娘吸引了？~
= ~我不会怪你，她……确实很美。（咳嗽）倒、倒不是我在吃醋。~
IF ~~ EXIT
END

IF ~~ Isabelle2
SAY ~我……愿意看看，不过你这么一说，我倒好奇这演示都包含什么了。~
= ~也许……将来你可以演示给我看。~
IF ~~ EXIT
END

// Anne (will break romance)

IF WEIGHT #-1 ~Global("C0SireneREAnne","GLOBAL",1)~ Anne
SAY ~卑劣……我原以为你不至于做出这种恶心事，<CHARNAME>。看来是我看错了你。~ [C0BLANK]
++ ~茜琳，我——~ DO ~SetGlobal("C0SireneREAnne","GLOBAL",2)~ + Anne1
++ ~可是——~ DO ~SetGlobal("C0SireneREAnne","GLOBAL",2)~ + Anne1
++ ~我不——~ DO ~SetGlobal("C0SireneREAnne","GLOBAL",2)~ + Anne1
END

IF ~~ Anne1
SAY ~不。你的谎话我一句都不想听。恐怕我再也无法用从前的眼光看你了。~
IF ~~ DO ~SetGlobal("C0SireneRomanceActive","GLOBAL",3) SetGlobal("C0SireneShutUp","GLOBAL",1)~ EXIT
END

// Cernd

IF WEIGHT #-1 ~Global("C0SireneRECernd","GLOBAL",1)~ Cernd
SAY ~瑟恩今天像换了个人。他格外腼腆，尤其是看你的时候。~ [C0BLANK]
+ ~Global("RE_CerndSex","GLOBAL",1)~ + ~我们昨晚同床共枕了。感觉……不太一样。~ DO ~SetGlobal("C0SireneRECernd","GLOBAL",2)~ + Cernd1
++ ~也许他喜欢我。谁知道呢？~ DO ~SetGlobal("C0SireneRECernd","GLOBAL",2)~ + Cernd2
++ ~（耸肩，避开回答）~ DO ~SetGlobal("C0SireneRECernd","GLOBAL",2)~ EXIT
END

IF ~~ Cernd1
SAY ~哦，我……明白了。也许我探问你的私事太深了，<CHARNAME>。就当我什么都没说……~
IF ~~ EXIT
END

IF ~~ Cernd2
SAY ~我确实好奇……他总是那么睿智而疏离。想不到他还有更……有人情味的一面。~
IF ~~ EXIT
END

// Captain Cernick

IF WEIGHT #-1 ~Global("C0SireneRECernick","GLOBAL",1)~ Cernick
SAY ~我不是想多打听，<CHARNAME>，可……你有没有察觉那位船长看上你了？~ [C0BLANK]
++ ~你知道他打的什么主意？~ + Cernick1
++ ~是的，我知道。~ + Cernick2
++ ~不，我不知道。他真有这意思？~ + Cernick2
++ ~这事我不想谈。~ EXIT
END

IF ~~ Cernick1
SAY ~我……我确实看出来了。他眼神里有种渴望……我太熟悉那种眼神了。~
IF ~~ + Cernick2
END

IF ~~ Cernick2
SAY ~我无权问你和他说了什么，可他若有勇气说出真心……我敬佩他这一点。我自己恐怕没那么容易做到……~
IF ~~ EXIT
END

END