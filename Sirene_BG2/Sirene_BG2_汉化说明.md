# Sirene NPC for BG2:EE 汉化说明

## 1. 模组信息

- 模组名：Sirene NPC for BG2:EE
- 作者：Artemius_I
- 类型：BG2:EE 圣武士 NPC 模组（含 SoA / ToB 恋爱线）
- 内容：主线剧情对话、恋爱线（表白、日常互动、亲密场景）、伊尔梅特信仰线、兄弟特萨蒙（T'samon）复仇线、波迪（Bodhi）终战与伊尔梅特复活剧情，以及与艾黎、爱蒙、阿诺门、瑟恩德、艾德温、海尔达利、贾希拉、扬、凯尔登、科根、玛兹、明斯克、娜莉亚、妮拉、派娜、拉萨德、维康尼亚、瓦里格、吉野、伊薇特、费德、弃儿、格蕾雅的 crossmod banter。
- 另含 EE 扩展内容：多恩（Dorn）、赫克萨特（Hexxat）、妮拉（Neera）、拉萨德（Rasaad）的专属冲突/对话。

## 2. 汉化范围

本模组的文字**绝大部分内嵌在 `dialogue\*.d` 的脚本里**，与 tra 型模组不同：

| 位置 | 情况 | 处理 |
| --- | --- | --- |
| `dialogue\` 下 20 个 `.d` | 19 个含文本块，共 **4373 个文本块 / 364,544 字符** | 就地替换 `~…~` 内文，逐文件留 `.bak` |
| `c0scler8.d` | 仅 14 字节，内容为 `BEGIN C0SCLER8`，无任何文本 | 未改动 |
| `tra\english\sirene.tra` | 仅 3 条日志（`@100001`–`@100003`，波迪终战日志） | 复制为 `tra\schinese\sirene.tra` 并译出，编号一致 |
| `tra\schinese\` | 目录原先存在但为空 | 已新建 `sirene.tra` |
| `Sirene_BG2.tp2` | 已声明 `LANGUAGE ~Schinese~ ~schinese~ ~%MOD_FOLDER%/tra/schinese/sirene.tra~` | **未改动** |

说明：tp2 里的 `AUTO_TRA ~%MOD_FOLDER%/translations/%s~` 指向的 `translations\` 目录在本模组中并不存在，因此该行实际加载不到任何文件；真正决定文本的是 `dialogue\*.d`，这也是必须直接改源码的原因。

### 各文件文本块数

| 文件 | 块数 | 文件 | 块数 |
| --- | --- | --- | --- |
| c0sire2j.d | 2063 | c0sireEE.d | 141 |
| c0sir25j.d | 745 | c0scler1.d | 97 |
| bc0sire2.d | 632 | c0tsamon.d | 84 |
| bc0sir25.d | 215 | c0sire2.d | 80 |
| c0scleo.d | 71 | c0sireng.d | 63 |
| c0sire2p.d | 55 | c0sgirl.d | 50 |
| c0sire25.d | 25 | c0sir25p.d | 19 |
| c0smess.d | 16 | c0sraid.d | 7 |
| c0snote.d | 5 | FATESP.d / c0scler2.d | 4 / 4 |

其中 3 个文本块是纯触发器表达式（如 `!GlobalLT("C0SireneFaith","GLOBAL",-5)`、`!GlobalGT(...)`），属脚本逻辑，**保持英文原样未替换**，以免破坏条件判断。

## 3. 编码与换行

- `dialogue\*.d`：**UTF-8 无 BOM + CRLF**，与 EET 的 `lang\zh_CN\dialog.tlk` 要求一致。
- `tra\schinese\sirene.tra`：**UTF-8 无 BOM + CRLF**。
- 原文件为纯 ASCII/UTF-8，脚本按 UTF-8 解码后替换、再以 UTF-8 无 BOM 写出，未做 ANSI 转换（WeiDU 不做自动转码，转 ANSI 会引发 `LEXER ERROR … invalid character`）。
- 未添加 `HANDLE_CHARSETS`、未改 tp2：本模组靠直接读取 UTF-8 源文件即可正常工作。

## 4. 术语表（与已交付的 Sirene BG1 汉化保持一致）

| 英文 | 中文 |
| --- | --- |
| Sirene | 塞琳 |
| Ilmater / The Crying God / The Broken God | 伊尔梅特 / 哭泣之神 / 残破之神 |
| Ilmatari / Martyrs of the Suffering | 受苦圣战者 |
| Holy Warriors of Suffering | 受苦圣战武士 |
| tiefling | 提夫林 |
| Helm | 海姆 |
| Lathander / Morninglord | 兰森德尔 / 晨光之主 |
| Kelemvor | 凯兰沃 |
| Wall of the Faithless | 无信者之墙 |
| Fugue Plane | 亡者之境 |
| Talona / Talonite | 塔罗娜 / 塔罗娜信徒 |
| Sune | 苏妮 |
| Selûne | 塞露涅 |
| Baator / Nine Hells / Abyss | 巴托 / 九层地狱 / 深渊 |
| Underdark / Veldrin | 幽暗地域 / 维尔德林 |
| T'samon (De'bryll) Thornhaven | 特萨蒙·（德布里尔·）索恩港 |
| Cail / Ashera | 凯尔 / 阿谢拉 |
| Theodore | 西奥多 |
| Asador | 阿萨多尔 |
| Athkatla / Amn / Tethyr / Coast Way | 阿斯卡特拉 / 安姆 / 泰瑟 / 海岸大道 |
| Candlekeep / Beregost / Sword Coast | 烛堡 / 贝雷戈斯特 / 剑湾 |
| Order of the Radiant Heart | 光辉之心骑士团 |
| Copper Coronet / Slums District | 铜冠旅店 / 贫民区 |
| Cowled Wizards / Shadow Thieves | 蒙面法师 / 影贼 |
| Rhynn Lanthorn | 琳恩提灯 |
| Irenicus / Bodhi / Imoen / Aerie | 艾瑞尼卡斯 / 波迪 / 爱蒙 / 艾黎 |
| Anomen / Cernd / Edwin / Haer'Dalis | 阿诺门 / 瑟恩德 / 艾德温 / 海尔达利 |
| Jaheira / Jan / Keldorn / Korgan / Mazzy | 贾希拉 / 扬 / 凯尔登 / 科根 / 玛兹 |
| Minsc / Nalia / Neera / Pai'Na / Rasaad | 明斯克 / 娜莉亚 / 妮拉 / 派娜 / 拉萨德 |
| Viconia / Valygar / Yoshimo / Sarevok | 维康尼亚 / 瓦里格 / 吉野 / 萨瑞沃克 |
| Dorn / Hexxat / Fade / Foundling / Gleya / Yvette | 多恩 / 赫克萨特 / 费德 / 弃儿 / 格蕾雅 / 伊薇特 |
| Gorion / Alorgoth / Ulgoth's Beard / Cloud Peaks | 葛立安 / 阿洛戈斯 / 乌尔格斯之须 / 云峰 |
| Marsh of Chelimber / Castle Dasaajk | 凯林伯沼泽 / 达萨吉克城堡 |
| Turmish | 图米什 |

卓尔语词汇 `jalil`（伙伴）、`abbil`（朋友）、`elg'caress`（地表人）保留原文，以保留维康尼亚的口吻。

## 5. 保留不译

- 13 个文本占位符原样保留：`<CHARNAME>`、`<PRO_LADYLORD>`、`<PRO_LORDLADY>`、`<PRO_MANWOMAN>`、`<PRO_HESHE>`、`<PRO_HISHER>`、`<PRO_HIMHER>`、`<PRO_BROTHERSISTER>`、`<PRO_SIRMAAM>`、`<LADYLORD>`、`<DAYNIGHTALL>`、`<DAYNIGHT>`、`<MONTHNAME>`。
- 所有脚本关键字与结构：`CHAIN` / `IF` / `THEN` / `SAY` / `REPLY` / `++` / `==` / `=` / `EXIT` / `DO` / `EXTERN` / `RESPONSE #`，以及 `SetGlobal`、`LeaveParty`、`EscapeArea`、`Global(...)`、`InParty(...)` 等动作块与触发器，一字未动。
- `.ids` 引用、物品/法术 resref（如 `c0sring`、`c0sw2h`）保持原样。

## 6. 校验记录

| 项 | 结果 |
| --- | --- |
| 文件齐备 | 20 个 `.d`：19 个已改 + `c0scler8.d`（空壳）未改；`tra\schinese\sirene.tra` 已建 |
| 无 BOM | 全部通过（`.d` 与 `.tra` 均为 UTF-8 无 BOM） |
| UTF-8 可解码 | 全部通过 |
| 换行 | 已改文件全部纯 CRLF，无裸 LF、无 `\r\r` |
| `@N` 总数 | `.d` 内 12 处（c0sire2j.d 10、c0sire2p.d 2），与英文版逐一同数 |
| `@N` 编号集合 | 与英文版逐一相同（原版本身有两处重复引用 `@100002`、`@100003`，属作者写法，未改动） |
| `@N` 不重复 | 与英文版重复情况完全一致 |
| `~` 总数 | 19 个文件逐个与 `.bak` 完全相同（块结构未增删） |
| 译文残留英文 | 0（仅剩上述占位符、保留原名与卓尔语） |
| `.bak` 备份 | 19 个文件均生成 `*.d.bak` |

## 7. 备注

- 本模组属「代码内嵌汉化」，按惯例只在直接改写源码的文件（19 个 `.d`）留 `.bak`，`tra\schinese\` 为新增文件无需备份。
- 安装时选择 `Schinese` 语言组件即可；模组组件的安装顺序（主组件、头像子组件、职业子组件）与原版一致，汉化不影响安装。
- 与其它 NPC 模组的 crossmod 仍由游戏内 `InParty(...)` 判断是否触发，不需要预先安装对应角色模组即可正常编译；只是没装对应角色时那些 banter 不会出现。
- 翻译底本：英文原文 `dialogue\*.d` 与 `tra\english\sirene.tra`；文本块由脚本按 `~…~` 枚举、按「含拉丁词且不含脚本关键字」筛选后逐块对应替换，替换后重新校验块数量与 `~` 总数，确保编号未漂移。
