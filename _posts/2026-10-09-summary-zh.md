---
layout: default
title: "Horizon Summary: 2026-10-09 (ZH)"
date: 2026-10-09
lang: zh
---

> 从 73 条内容中筛选出 11 条重要资讯。

---

**科技新闻**
1. [ThinkingBox-Bench：507 个有状态工作流重复 20 次评测智能体可靠性](#item-tech-news-1) ⭐️ 8.0/10
2. [llama.cpp b11513 优化 CUDA top-k 算法选择](#item-tech-news-2) ⭐️ 7.0/10
3. [Whistle：16.9 MB 语音转文字模型引发热议](#item-tech-news-3) ⭐️ 7.0/10
4. [用 LED 灯丝制作柔性“霓虹”T 恤](#item-tech-news-4) ⭐️ 7.0/10
5. [OpenAI 封禁俄伊两起 AI 影响行动](#item-tech-news-5) ⭐️ 7.0/10
6. [OpenAI 年化收入被指少报约 200 亿美元](#item-tech-news-6) ⭐️ 7.0/10
7. [美政府以欺诈为由暂停微软绿卡申请资格](#item-tech-news-7) ⭐️ 7.0/10
8. [SpaceX 拟收购全美低频段频谱许可证](#item-tech-news-8) ⭐️ 7.0/10
9. [Anthropic 推出开源漏洞扫描服务 OSS Scanner](#item-tech-news-9) ⭐️ 7.0/10

**科技博客**
1. [自建 Matrix 服务器替代 Discord 的实践](#item-tech-blog-1) ⭐️ 6.0/10
2. [天线插头里的 DOOM 电视游戏机](#item-tech-blog-2) ⭐️ 5.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [ThinkingBox-Bench：507 个有状态工作流重复 20 次评测智能体可靠性](https://www.reddit.com/r/MachineLearning/comments/1x17shf/thinkingbox_solving_an_agent_task_once_vs_solving/) ⭐️ 8.0/10

微软作者团队发布了 ThinkingBox-Bench，一个针对有状态业务工作流的智能体评测基准，包含零售、旅行/酒店、汽车保险、数字银行内部 IT、咨询 IT/HR 五个领域的 507 个策略条件化工作流。每个任务从相同的干净后端状态出发独立执行 20 次，每个模型共 10,140 次试验，评分依据终态后端状态与副作用是否匹配目标状态，而非执行轨迹，477 个任务仅按状态评分，30 个还检查最终回复的一项窄属性。基准同时报告 pass@1、pass@20 和 all-20 三个指标，发现模型在“发现能力”和“可重复性”上的排名几乎相反：Kimi-K3 至少成功一次的比例最高（93.89%，476/507），但 20 次全对仅 13.41%（68/507）；Claude Opus 5 发现率较低（79.09%）但全对率高达 47.53%（241 个任务）；Qwen3.8-27B 分别为 89.35% 和 7.50%。在 12 个模型、121,680 次有效试验的回顾性消融中，79,853 次未通过可执行检查，其中 67.24% 仍干净终止、调用了状态变更工具且无最终工具错误，说明仅凭完成式代理指标会误判为成功。作者强调任务是合成重建的企业工作流模式而非生产流量，all-20 是固定试验预算下的观测计数而非未来可靠性保证，模拟用户为固定 LLM 且原始轨迹未公开。

reddit · r/MachineLearning · /u/tuhin\_k · 10月9日 00:50

**「背景」** LLM 智能体评测长期依赖单次运行的成功率或轨迹匹配，难以反映在真实后端系统中反复执行时结果是否稳定正确。有状态工作流要求智能体在多次交互后让数据库等后端达到指定终态，而“任务完成”的表述可能掩盖错误、缺失或多余的状态变更。ThinkingBox-Bench 通过重复执行和终态评分来区分一次成功与持续成功，并公开论文、代码、数据集及 Hugging Face OpenEnv 环境供他人复现。

**「影响」** 该基准表明，仅按 pass@20 或单次成功率排名的智能体可靠性榜单可能与按 all-20 排名的结果几乎相反，因此面向企业有状态工作流选型的团队应同时关注重复成功率而非只看发现能力。由于原始轨迹未公开且任务是合成重建，其结论仍需在真实生产流量中进一步验证。

**标签**: `#agent evaluation`, `#benchmark`, `#LLM agents`, `#reliability`, `#stateful workflows`

---

<a id="item-tech-news-2"></a>
### [llama.cpp b11513 优化 CUDA top-k 算法选择](https://github.com/ggml-org/llama.cpp/releases/tag/b11513) ⭐️ 7.0/10

llama.cpp 发布构建 b11513，主要改进 CUDA 后端的 top-k 算法选择。该版本用基于行的网格 radix select 取代 CUB 的逐行 DeviceTopKKernel，并通过 GGML\_CUDA\_TOPK\_RADIX\_MIN\_ROWS 控制启用；在 qwen4exp 的 34,816 tokens 工作负载上，top-k 从 1,671,253 次内核启动、5,761.8 ms 降至 2,329 次、941.8 ms。新实现按形状选择算法：短行用 bitonic，多行长行用 radix select，单行长行用 DeviceTopK 或 CUB argsort，阈值可在构建时覆盖。此外，radix select 改为分块处理行以限制暂存内存，bitonic 路径保留分块，HIP 与 MUSA 沿用旧阈值，并在 test-backend-ops 中新增 bitonic/radix 交叉点的性能用例。

github · github-actions\[bot\] · 10月8日 19:18

**「背景」** top-k 是 LLM 推理中采样等环节常用的 GPU 算子，需要在每行中选出最大的若干元素。此前 CUDA 后端依赖 CUB 的逐行 DeviceTopKKernel，在行数很多时会触发大量内核启动，带来明显开销。该版本引入 radix select 并依据张量形状切换算法，以降低启动次数和延迟。

**「影响」** 使用 CUDA 后端并运行大规模 top-k（如长上下文、多行采样）的用户可获得显著的内核启动与延迟下降，但收益取决于行数与形状，单行或短行场景仍走原有路径。

**标签**: `#llama.cpp`, `#CUDA`, `#GPU kernels`, `#LLM inference`, `#performance optimization`

---

<a id="item-tech-news-3"></a>
### [Whistle：16.9 MB 语音转文字模型引发热议](https://cactuscompute.com/blog/whistle) ⭐️ 7.0/10

Cactus Compute 发布了名为 Whistle 的语音转文字（STT）模型，体积仅 16.9 MB，主打在设备端运行。该项目在 Hacker News 上获得 578 分和 130 条评论，讨论集中在准确率与功能完整性上。一位评论者用 170 条消息做对比测试，1.7B 参数的 Qwen ASR 正确识别 168 条，而 Whistle 仅 70 条，差距明显；另有评论者指出错误率偏高，且演示未展示边说边出文字的流式输出，而这被其视为通用实时 STT 应用的关键功能。也有用户将 Whistle 用于本地化改造 Echo Show 并接入 Home Assistant，说明其在特定场景下仍有实用价值。

hackernews · gmays · 10月8日 16:59 · [社区讨论](https://news.ycombinator.com/item?id=50008427)

**「背景」** Whistle 是 Cactus Compute 于 2026 年 10 月 2 日发布的开源语音转文本模型，面向手机、可穿戴设备、机器人、智能家居、汽车和微控制器等本地运行场景。整个模型是单个 16.9 MB 文件，无需依赖、无需 GPU，在 CPU 上运行，并与该公司的 Needle 模型共用同一 C++ 引擎、容器和量化方案。其基准数据由公司自行报告，实际表现仍需在真实硬件和音频条件下检验。

**「影响」** 对于需要在手机、可穿戴设备、机器人、智能家居、汽车和微控制器上本地运行语音识别的开发者，Whistle 以单个 16.9 MB 文件、纯 CPU 无依赖运行的方式降低了部署门槛，但社区实测显示其准确率明显低于 1.7B Qwen ASR 等较大模型，且缺少流式输出，因此更适合对体积和离线要求极高、可接受精度折衷的场景。

**「社区讨论」** 评论者普遍认可小体积带来的本地部署价值，但质疑其准确率：有人实测 170 条消息中 Whistle 仅对 70 条，远低于 1.7B Qwen ASR 的 168 条，并认为对比中遗漏了其他更大的开源模型。多位用户强调缺少流式输出是通用实时转写应用的关键短板，也有人分享用 ESP32 加浏览器端 Parakeet 做本地转写的经验，以及为中风后口齿不清的老人配置语音输入的助残用例。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://cactuscompute.com/blog/whistle">Whistle: Speech to Text in 16.9 MB | Cactus</a></li>
<li><a href="https://huggingface.co/Cactus-Compute/whistle">Cactus-Compute/whistle · Hugging Face</a></li>
<li><a href="https://runtimewire.com/article/cactus-whistle-16-9mb-local-speech-model">Cactus Compute releases a 16.9MB speech model for local CPUs</a></li>
<li><a href="https://cactuscompute.com/blog/whistle">Whistle: Speech to Text in 16.9 MB | Cactus</a></li>

</ul>
</details>

**标签**: `#speech-to-text`, `#on-device ML`, `#model efficiency`, `#open source`, `#ASR benchmarks`

---

<a id="item-tech-news-4"></a>
### [用 LED 灯丝制作柔性“霓虹”T 恤](http://scottbezek.blogspot.com/2026/10/making-flexible-neon-t-shirt-with-leds.html) ⭐️ 7.0/10

一位创客在博客中分享了用低压 LED 灯丝制作柔性“霓虹”T 恤的过程，并加入了 PWM 动画、闪烁和渐亮效果。该项目使用低压 LED 灯丝，与需要高压驱动的 EL（电致发光）线形成对比，后者在制作可穿戴设备时存在安全隐患。评论者指出，市面上一些类似产品使用 2 节 AA 电池却能达到 240V 电压，导致意外触电，而 LED 灯丝的 24V 驱动电压则安全得多。讨论还澄清了 LED 灯丝与 EL 线并非同一种技术。

hackernews · scottbez1 · 10月8日 16:37 · [社区讨论](https://news.ycombinator.com/item?id=50008047)

**「背景」** LED 灯丝是一种可弯曲的细长发光元件，与常见的 EL 冷光线（EL wire）在原理上不同：EL 线需要专用逆变器提供高电压、高频率电流才能发光，而 LED 灯丝由低压直流驱动。EL 线在穿戴应用中存在安全隐患，其边缘往往没有充分绝缘，驱动电压较高，容易造成电击。

**「影响」** 对可穿戴电子开发者而言，该项目的核心价值在于用低电压 LED 灯丝替代需要高压驱动的 EL 线，从而降低穿戴时的触电风险；评论区中有人提到从 2 节 AA 电池供电的类似产品上被 240V 电击，也有人因 EL 胶带边缘未绝缘而放弃制作，说明这一安全差异是实际工程选择中的关键考量。

**「社区讨论」** 评论者普遍认可 PWM 动画效果，并围绕安全性展开讨论：有人分享 EL 线/EL 胶带因边缘未绝缘、需高压驱动而带来触电风险，甚至 2 节 AA 电池就能产生 240V 电压；相比之下，LED 灯丝的 24V 驱动被认为更安全。也有评论者询问 LED 灯丝是否等同于 EL 线，表明两者容易混淆。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.youtube.com/watch?v=gHA4YIpTNY4">Flexible Filament LEDs - YouTube</a></li>
<li><a href="https://www.drive2.ru/l/6179755/">EL-Wire Часть 1. Теория и первые впечатления — Lada... | DRIVE2</a></li>

</ul>
</details>

**标签**: `#hardware`, `#LED`, `#wearables`, `#maker`, `#electronics`

---

<a id="item-tech-news-5"></a>
### [OpenAI 封禁俄伊两起 AI 影响行动](https://openai.com/index/disrupting-ai-enabled-false-front-operations/) ⭐️ 7.0/10

OpenAI 宣布封禁两个利用 ChatGPT 的隐蔽影响行动。俄罗斯行动疑似通过冒用身份控制拉美一个“研究平台”，传播损害乌克兰声誉及影响当地政治的虚假内容，被 OpenAI 评为影响行动突破量表第 5 类，这是其开始报告以来首次给出该最高等级。伊朗行动以 7 个“记者”人设向全球中小网络媒体投稿，并批量生成社交媒体评论，被评为第 4 类，产出近 100 篇署名文章。两起行动均结合传统手段与 AI，部分内容已进入主流媒体。

telegram · zaihuapd · 10月8日 15:52

**「背景」** OpenAI 定期发布威胁报告，披露并封禁滥用其 AI 服务的隐蔽影响行动，并为此建立了“影响行动突破量表”以评估行动的复杂程度。此次披露的俄罗斯行动被评为其报告史上首个第 5 类（最高级别），伊朗行动则为第 4 类。OpenAI 指出，这些行动在结构上更接近 AI 时代之前传统的影响行动，只是借助 AI 简化了部分工作流程；伊朗行动的“记者”人设与俄罗斯军事情报机构曾使用的假记者“Alice Donovan”存在相似之处。

**「影响」** 对平台与媒体而言，此次披露表明 AI 生成的署名文章和评论已能进入主流媒体与社交平台，内容审核与来源核验压力上升；OpenAI 首次将俄罗斯行动评为第 5 类，也意味着其威胁评估框架开始用于更高等级的隐蔽影响行动。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://openai.com/index/disrupting-ai-enabled-false-front-operations/">Disrupting AI-enabled “false front” operations | OpenAI</a></li>
<li><a href="https://openai.com/index/disrupting-malicious-uses-of-ai-influence-campaign-russia/">Disrupting a new covert influence campaign from Russia - OpenAI</a></li>
<li><a href="https://www.straitstimes.com/world/united-states/openai-says-iran-russia-influence-ops-busted">OpenAI says Iran, Russia influence ops busted - The Straits Times</a></li>
<li><a href="https://openai.com/index/disrupting-ai-enabled-false-front-operations/">Disrupting AI-enabled “false front” operations | OpenAI</a></li>
<li><a href="https://www.npr.org/2026/10/08/nx-s1-5995576/openai-russia-iran-influence-operations-chatgpt">OpenAI bans Russian, Iranian accounts over influence efforts ...</a></li>
<li><a href="https://thehill.com/policy/technology/6137774-openai-bans-iran-russia-influence-operations/">OpenAI disrupts major Iranian, Russian influence operations</a></li>

</ul>
</details>

**标签**: `#AI safety`, `#influence operations`, `#OpenAI`, `#platform integrity`, `#misinformation`

---

<a id="item-tech-news-6"></a>
### [OpenAI 年化收入被指少报约 200 亿美元](https://www.ft.com/content/b66a9858-f8fb-46cb-b506-44bfe26fca2a?syn-25a6b1a6=1) ⭐️ 7.0/10

投资者获得的财务文件显示，OpenAI 在 9 月底的年化收入接近 500 亿美元，比此前广泛报道的约 700 亿美元少约 200 亿美元。这一差异可能削弱市场对 AI 需求增长的乐观预期。报道指出，口径不同是部分原因：Anthropic 计入通过 AWS、谷歌云等云伙伴销售的收入，而 OpenAI 未计入。OpenAI 拒绝置评。该消息来自《金融时报》，尚无独立核实。

telegram · zaihuapd · 10月8日 17:22

**「背景」** 年化收入（annualized revenue）是将某一时期（如单月或单季）的收入按比例折算为全年口径的指标，常用于衡量高速增长的非上市科技公司规模。OpenAI 作为 ChatGPT 的开发商，其收入增速被广泛视为衡量生成式 AI 商业需求的重要风向标，此前市场普遍引用的数字约为 700 亿美元。此次投资者获得的财务文件显示其 9 月底年化收入接近 500 亿美元，差异部分源于统计口径不同：Anthropic 计入通过 AWS、谷歌云等云伙伴销售的收入，OpenAI 则未计入。

**「影响」** 若该财务口径属实，市场对 OpenAI 及整体 AI 需求增长的预期可能被下调，投资者评估 AI 公司估值时将更关注收入确认口径（是否计入云伙伴销售）而非单一营收数字。由于 OpenAI 拒绝置评且数据来自未经独立核实的投资者文件，这一差异的最终影响仍存在不确定性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.ft.com/content/b66a9858-f8fb-46cb-b506-44bfe26fca2a?syn-25a6b1a6=1">OpenAI annualised revenues $20bn less than previously signalled</a></li>
<li><a href="https://www.ft.com/content/c49f7d52-4b43-4dc9-b21b-a61e8756152f?syn-25a6b1a6=1">Financial TimesFirstFT: OpenAI&#x27;s $20bn annualised revenue gap</a></li>
<li><a href="https://finance.yahoo.com/technology/article/openais-annualized-revenue-20-billion-lower-than-prior-investor-estimates-174058048.html?fr=sycsrp_catchall">OpenAI&#x27;s annualized revenue $20 billion lower than prior ...</a></li>
<li><a href="https://techcrunch.com/2026/10/08/openais-revenue-is-reportedly-20-billion-less-than-previously-projected/">OpenAI’s revenue is reportedly $20 billion less than ...</a></li>

</ul>
</details>

**标签**: `#OpenAI`, `#AI industry`, `#revenue`, `#financial reporting`, `#AI market`

---

<a id="item-tech-news-7"></a>
### [美政府以欺诈为由暂停微软绿卡申请资格](https://apnews.com/article/h1b-visa-program-vance-microsoft-e7b3a407f822702b269ee277d21343ea) ⭐️ 7.0/10

特朗普政府宣布暂停微软参与外籍劳工绿卡申请项目，指控其存在欺诈行为。副总统万斯在发布会上表示，微软去年裁员 6000 名美国员工，却获得 6300 份 H-1B 签证和近 3000 张绿卡，是“利用该系统最多的公司”。万斯指责微软先发布虚假招聘广告、证明招不到美国工人，再以外籍劳工替换美国员工。微软尚未对此作出回应。万斯还点名哈佛、耶鲁、MIT 等九所大学，称其涉嫌滥用 J-1 签证项目。

telegram · zaihuapd · 10月9日 00:00

**「背景」** H-1B 是美国面向专业技术外籍劳工的非移民工作签证，绿卡则是永久居留身份；许多科技公司通过 H-1B 引进员工后再为其申请绿卡。特朗普政府此前已推动对该签证体系进行改革，包括对签证收费，理由是认为现行制度让企业得以排挤美国本土员工、转而雇用外籍劳工。此次暂停微软参与绿卡申请项目，正是这一政策收紧背景下的最新动作。

**「影响」** 微软被暂停参与外籍劳工绿卡申请项目，直接影响其持 H-1B 签证员工申请永久居留的路径；移民律师建议微软、Adobe 等被点名科技公司的 H-1B 员工寻求法律咨询并确认自身身份状态。由于微软尚未回应且细节未获证实，具体影响范围仍存在不确定性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.youtube.com/watch?v=OZJiZPNCPYA">Trump administration is suspending Microsoft from the H - 1 B green ...</a></li>
<li><a href="https://www.nytimes.com/2026/10/08/us/politics/microsoft-visas-green-cards.html">Trump Administration Suspends Microsoft From Green Card ...</a></li>
<li><a href="https://www.nbcnews.com/politics/trump-administration/microsoft-suspended-green-cards-h-1b-visa-j-1-visa-vance-rcna602314">The Trump administration is suspending Microsoft from a green ...</a></li>
<li><a href="https://www.theguardian.com/technology/2026/oct/08/jd-vance-microsoft-visa-workers-green-card-suspension">Microsoft suspended from applying for green cards ... | The Guardian</a></li>
<li><a href="https://www.businessinsider.com/immigration-lawyers-microsoft-adobe-green-card-perm-program-10-2026">Immigration Lawyers Weigh in on Microsoft &#x27;s Visa... - Business Insider</a></li>

</ul>
</details>

**标签**: `#immigration-policy`, `#tech-industry`, `#H-1B`, `#Microsoft`, `#labor-market`

---

<a id="item-tech-news-8"></a>
### [SpaceX 拟收购全美低频段频谱许可证](https://x.com/SpaceX/status/2108291133025698301) ⭐️ 7.0/10

SpaceX 宣布一项协议，拟收购覆盖全美的低频段频谱许可证组合，为 Starlink 成为美国主要移动运营商铺路。公司表示，将这批频谱与 Gen2 星座结合后，Starlink Mobile 可让美国民众无论身处何地都能获得高速移动宽带。该公告未披露交易金额、频谱具体频段、卖方身份、监管审批流程及时间表等细节。

telegram · zaihuapd · 10月9日 01:04

**「背景」** 低频段频谱（如 800 MHz）波长较长、穿透力强、覆盖范围广，是移动运营商建设广覆盖网络的关键资源。Starlink Mobile 是 SpaceX 面向手机直连（direct-to-device）的星座，与提供宽带互联网的 Starlink 星座相互独立。据媒体报道，SpaceX 此次是从 Grain Management 手中收购其全美 800 MHz 频谱组合，消息公布后 AT&amp;T、Verizon、T-Mobile 等现有运营商股价一度下跌。

**「影响」** 该交易消息公布后，AT&amp;T、Verizon 和 T-Mobile 的股价应声下跌，显示市场认为 Starlink 直接进入美国移动通信市场将对现有运营商构成实质竞争压力。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.bloomberg.com/news/articles/2026-10-08/spacex-to-acquire-low-band-spectrum-for-mobile-phone-service">SpaceX Acquires Nationwide Spectrum License to Boost Starlink ...</a></li>
<li><a href="https://www.satellitetoday.com/connectivity/2026/10/08/spacex-moves-to-acquire-nationwide-low-band-spectrum-for-starlink-mobile/">SpaceX Moves to Acquire Nationwide Low - Band Spectrum for...</a></li>
<li><a href="https://digg.com/world-business/nxmsjrie">SpaceX spectrum deal hits shares of AT&amp;T, Verizon and T- Mobile ...</a></li>
<li><a href="https://www.cnbc.com/2026/10/08/spacex-spectrum-license-att-verizon-tmobile.html">SpaceX spectrum license hammers shares of AT&amp;T, Verizon and T ...</a></li>

</ul>
</details>

**标签**: `#SpaceX`, `#Starlink`, `#spectrum`, `#telecom`, `#satellite-internet`

---

<a id="item-tech-news-9"></a>
### [Anthropic 推出开源漏洞扫描服务 OSS Scanner](https://www.anthropic.com/research/launching-opt-in-vuln-finding-service-for-open-source) ⭐️ 7.0/10

Anthropic 宣布推出 OSS Scanner，这是一项面向符合条件的开源项目、免费且自愿接入的漏洞扫描服务，报告由 Claude 等模型生成，不经人工审核，包含漏洞复现步骤、漏洞说明，并在可能时提供补丁建议，因此可能存在错误。Anthropic 表示，过去半年该服务发现逾 2.9 万个候选漏洞，其中约 6000 个经过人工审查；在早期测试的 97 个高危或严重漏洞中，有 85 个符合其披露流程要求。符合条件的项目核心维护者可通过提交 GitHub PR 申请接入。

telegram · zaihuapd · 10月9日 02:00

**「背景」** OSS Scanner 是 Anthropic 面向开源生态推出的自愿接入漏洞扫描服务，其经验来自此前使用 Claude 开展漏洞挖掘的 Project Glasswing。该服务由 Anthropic 最强的模型对加入项目的代码仓库进行定期安全扫描，且不收取费用。

**「影响」** 符合条件的开源项目核心维护者可提交 GitHub PR 申请接入，获得由 Claude 模型定期生成的漏洞报告，但该服务定位为补充性发现来源，不替代维护者审查、现有扫描工具或负责任披露流程。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.anthropic.com/research/launching-opt-in-vuln-finding-service-for-open-source">An opt-in vulnerability-finding service for open-source ...</a></li>
<li><a href="https://github.com/anthropics/oss-scanner">GitHub - anthropics/oss-scanner</a></li>
<li><a href="https://www.anthropic.com/research/launching-opt-in-vuln-finding-service-for-open-source">An opt-in vulnerability-finding service for open - source software</a></li>
<li><a href="https://scalevise.com/resources/anthropic-oss-scanner-ai-open-source-security/">Anthropic OSS Scanner : AI Security Scans for Open Source</a></li>

</ul>
</details>

**标签**: `#open source security`, `#vulnerability scanning`, `#Anthropic`, `#AI for security`, `#Claude`

---

## 科技博客

<a id="item-tech-blog-1"></a>
### [自建 Matrix 服务器替代 Discord 的实践](https://hackaday.com/2026/10/08/lead-a-discord-exodus-with-a-matrix-server/) ⭐️ 6.0/10

rss · Hackaday · 10月8日 14:00

**「背景」** Discord 近期推行年龄验证等不受欢迎的政策，促使一些用户考虑迁移到开源、可自托管的替代方案。作者选择 Matrix 协议，因为它像电子邮件一样是开放标准，服务端 Synapse 和客户端 Element 均可自行部署，且联邦与自托管都是可选项。

**「方案」** 作者用 Proxmox 上的 LXC 容器运行 Synapse，先通过 Cloudflare 隧道让家人朋友用 Element 接入，实现端到端加密的文本和图片聊天。但要匹配 Discord 的语音视频体验，还需额外部署 TURN 和 LiveKit 服务器；由于 ISP 的 NAT 和 Cloudflare 免费层不支持 UDP，他把轻量 TURN 放在租用的 VPS 上，资源密集的 LiveKit 留在本地，并用 WireGuard 打通 VPS 与 Proxmox 容器。流量再经路由器进入独立 VLAN 的 DMZ，由 nginx 管理，最终整个架构涉及六台虚拟机、Cloudflare 和一项付费服务。作者坦言维护负担不小，iPhone 上 Element X 偶发无法发送图片，且他刻意不让服务器联邦，因为家人不需要暴露于公网，而他在 matrix.org 的体验常被加密骗局和冷清聊天室破坏。

**「启示」** 作者认为，尽管自建 Matrix 服务器在隐私和自主性上有吸引力，但其网络与语音视频的运维复杂度远高于 Discord，且联邦和 UI/UX 问题仍是阻碍普通用户迁移的现实门槛。

**标签**: `#matrix`, `#self-hosting`, `#discord-alternative`, `#federation`, `#networking`

---

<a id="item-tech-blog-2"></a>
### [天线插头里的 DOOM 电视游戏机](https://hackaday.com/2026/10/08/the-worlds-smallest-tv-console-plays-doom/) ⭐️ 5.0/10

rss · Hackaday · 10月8日 11:00

**「背景」** 迷你游戏机项目并不少见，但把整台能玩 DOOM 的电视游戏机——连同电池——塞进一个电视天线插头，仍是一个新的尺寸门槛。作者 Jenny List 介绍的这枚由 RayTriangle 制作的装置，利用一种带螺丝端子的天线插头（原本用于把 300 欧姆平衡馈线匹配到 75 欧姆同轴电缆）作为外壳，核心是一块 ESP32-S3，通过蓝牙连接手柄。

**「方案」** 作者重点讲述了电视射频信号是如何生成的：用电阻梯 DAC 产生复合视频信号，并为每种颜色准备相位偏移色度波形的查找表，从而得到质量不错的复合信号；随后以相当老派的方式，把它调制到由 ESP 时钟发生器提供的载波上。硬件分置电池两侧的两块板，用柔性 PCB 相连。作者从视频中看到的结果“有点噪声”，但认为加一点滤波或许可以改善；该设计面向带 VHF 调谐器的 PAL 电视，作者猜测通过一些巧思也能扩展到 UHF 或 NTSC。评论区则围绕数字高清展开：有人提议上 ATSC 全高清，随即被指出 MPEG 压缩需要大得多的算力，也有人提到 ESP32-P4 具备 H.264 硬件编码、且新版 ATSC 支持 H.264，还有人回忆起当年用仅含关键帧的 MPEG 做快速预览的做法。

**「启示」** 作者的核心观点是：在 2026 年通过模拟射频输入玩游戏已不常见，但把整套电视游戏机压缩进如此小的空间，其巧思值得赞赏——真正令人印象深刻的不是性能，而是极致的微型化与信号生成技巧。

**标签**: `#embedded`, `#esp32`, `#retro-gaming`, `#video-signal`, `#hardware-hacking`

---