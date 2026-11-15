APPEND C0SIRE2J

IF WEIGHT #-1 ~Global("C0SireneDGBeggar","GLOBAL",1)~ beggar
SAY ~太可怕了……我知道我们当时无能为力，可他竟被逼到走投无路、陷入疯狂……~ [C0BLANK]
= ~能不能……你先往前走一会儿，<CHARNAME>。我想为这可怜人的灵魂祈祷。~
IF ~~ DO ~SetGlobal("C0SireneDGBeggar","GLOBAL",2)~ EXIT
END

IF WEIGHT #-1 ~Global("C0SireneDeepGardens","GLOBAL",2)~ dg1
SAY ~这世界真奇怪……这里的一切都和我们所知的世界不同。几乎像一场梦。~ [C0BLANK]
++ ~嗯，这很可能就是一场梦。~ + dg1.1
++ ~我知道。既叫人害怕，又引人入胜。~ + dg1.2
++ ~我们必须离开这里。~ + dg1.3
END

IF ~~ dg1.1
SAY ~或许吧……可我觉得它不止于此。~
IF ~~ + dg1.4
END

IF ~~ dg1.2
SAY ~是啊，我也有同感……若非亲眼所见，我绝不会想象得出竟有这样一个色彩斑斓的世界。~
IF ~~ + dg1.4
END

IF ~~ dg1.3
SAY ~我知道。我们该想着脱身，可……我还是忍不住对这地方好奇。~
IF ~~ + dg1.4
END

IF ~~ dg1.4
SAY ~仿佛一场梦被化作了现实。这些超现实的色彩，如同绘在画布上，滋养着这些奇异的人、塑造着他们……其中有种奇妙的和谐。~
= ~可……我在这里完全像个外人，仿佛并不属于这里。仿佛我们的每一个举动都会改变这地方的一切，就像在画上添一抹新的颜色……~
++ ~你说话开始像这里的人了。~ + dg1.5
++ ~我明白你的意思。~ + dg1.5
++ ~也许是你想多了。~ + dg1.5
END

IF ~~ dg1.5
SAY ~也许我开始理解这世界的法则了。它美丽，却脆弱。我想，即便我们回到自己的世界，我和这地方都不会再和从前一样。~
= ~不过这事我已经想得够久了。脱身才是头等大事。你带路……我跟在你身后。~
IF ~~ DO ~SetGlobal("C0SireneDeepGardens","GLOBAL",3)~ EXIT
END

END