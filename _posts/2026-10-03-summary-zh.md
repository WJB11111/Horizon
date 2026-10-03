---
layout: default
title: "Horizon Summary: 2026-10-03 (ZH)"
date: 2026-10-03
lang: zh
---

> 从 61 条内容中筛选出 12 条重要资讯。

---

**科技新闻**
1. [AI 系统在隐藏信息棋类 Stratego 中击败顶尖人类选手](#item-tech-news-1) ⭐️ 8.0/10
2. [Redis 作者 antirez 发布本地 LLM 推理引擎 ds4](#item-tech-news-2) ⭐️ 8.0/10
3. [Greg Kroah-Hartman 剖析 LLM 报告的 79 个内核漏洞](#item-tech-news-3) ⭐️ 8.0/10
4. [Google Research 发布 Cogentic 多智能体数学证明系统](#item-tech-news-4) ⭐️ 8.0/10
5. [用 GLM 5.3 Flash 编码一个月：成本、能耗与模型选择教训](#item-tech-news-5) ⭐️ 7.0/10
6. [拓扑域外泛化：动态系统重建新进展](#item-tech-news-6) ⭐️ 7.0/10
7. [Anthropic 提议澳大利亚以退出机制允许版权作品训练 AI](#item-tech-news-7) ⭐️ 7.0/10
8. [arXiv 自 10 月起每人每月限投 2 篇](#item-tech-news-8) ⭐️ 7.0/10
9. [Claude Code 推出 mods 自定义功能](#item-tech-news-9) ⭐️ 7.0/10
10. [Cloudflare 推出统一可观测性平台](#item-tech-news-10) ⭐️ 7.0/10

**科技博客**
1. [DIY 电子忙碌板：硬件与固件的趣味项目](#item-tech-blog-1) ⭐️ 5.0/10
2. [振动实现非接触式吸附：原理与机器人应用](#item-tech-blog-2) ⭐️ 5.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [AI 系统在隐藏信息棋类 Stratego 中击败顶尖人类选手](https://arstechnica.com/science/2026/10/ai-finally-beat-the-best-stratego-player-in-history-and-did-it-on-a-budget/) ⭐️ 8.0/10

据 Ars Technica 报道，一个 AI 系统在隐藏信息棋盘游戏 Stratego（战略棋）中击败了史上最强的人类玩家，并且学习效率远高于此前的方法。相关研究发表于 Nature（论文编号 s41586-026-11036-y），并在 arXiv 上提供了预印本（2511.07312）。社区评论指出，该系统训练所用的对局数比 DeepMind 2022 年的 DeepNash 少约 34 倍，但最终棋力更强。Stratego 的难点在于双方棋子身份对彼此隐藏，因此最优走法依赖于无法获知的信息，传统的向前搜索难以直接适用。报道标题中“低成本”的说法带有宣传色彩，但该结果本身被视为不完全信息博弈 AI 领域的一项进展。

hackernews · PaulHoule · 10月2日 14:11 · [社区讨论](https://news.ycombinator.com/item?id=49933740)

**「背景」** Stratego 是一款经典的两人棋盘游戏，其核心特点是信息不完全：玩家只能看到自己棋子的身份，对手棋子的具体类型需要靠推理和试探来判断，因此无法像国际象棋那样直接进行完全信息的向前搜索。2022 年，DeepMind 发布了 DeepNash，这是首个从零开始学习、达到人类专家水平的 Stratego 智能体，相关论文为 arXiv:2206.15378，当时被视为该游戏 AI 研究的重要里程碑。此次新系统 Ataraxos 正是在这一基础上取得突破，据估计其训练消耗的算力约为 DeepNash 的五百分之一，自对弈局数约为三十分之一。

**「影响」** 若该结果得到独立验证，它将把不完全信息博弈 AI 的效率基准从 DeepMind 2022 年的 DeepNash 大幅推高——后者当时仅达到人类专家水平，而新系统据称以约 34 分之一的训练对局数击败了史上最强人类选手。这一效率提升可能使隐藏信息搜索方法更易被资源有限的研究团队复现和扩展。

**「社区讨论」** 评论者普遍认为，训练效率的提升（对局数减少约 34 倍）才是这项工作的关键，因为隐藏信息使得“如果我这样走、对手就会那样走”的搜索在原理上难以成立。有人回顾 DeepMind 2022 年宣称“掌握”Stratego 的工作，认为当时并未真正达到超越人类的水平，四年后的新方法才做到了这一点。也有评论者分享了童年玩 Stratego 时对手在棋子上做暗记来“破解”隐藏信息的经历。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.zmescience.com/science/ai-beats-humans-stratego/">This AI Finally Beat the Best Humans at One of the Last Board...</a></li>
<li><a href="https://arxiv.org/abs/2206.15378">[2206.15378] Mastering the Game of Stratego with Model-Free...</a></li>
<li><a href="https://deepmind.google/blog/mastering-stratego-the-classic-game-of-imperfect-information/">Mastering Stratego, the classic game of imperfect information</a></li>
<li><a href="https://www.science.org/doi/10.1126/science.add4679">Mastering the game of Stratego with model-free multiagent ...</a></li>
<li><a href="https://arxiv.org/abs/2206.15378">Mastering the Game of Stratego with Model-Free Multiagent ...</a></li>

</ul>
</details>

**标签**: `#AI`, `#game-playing AI`, `#imperfect-information games`, `#reinforcement learning`, `#research`

---

<a id="item-tech-news-2"></a>
### [Redis 作者 antirez 发布本地 LLM 推理引擎 ds4](https://dwarfstar.sh/) ⭐️ 8.0/10

Redis 创始人 Salvatore Sanfilippo（antirez）发布了本地 LLM 推理引擎 ds4，在 Hacker News 上引发大量讨论。社区已围绕它构建了多种绑定与工具：一位维护者将其 fork 为共享库以便通过 FFI 供其他语言调用，并开发了 Go 工具 ds4go，还加入了 Vision 与 Qwen 支持；另一位开发者受其启发，为 Intel Xe-LP（无 XMX）32GB 笔记本编写了推理引擎 Xenolith，目前仅支持量化 Gemma-4。有评论者指出，ds4 似乎不依赖大内存 Mac，SSD 即可运行，并期待其达到约 50 TPS 的性能表现，但现有讨论中尚无具体吞吐数据。整体而言，这是一个早期阶段但颇具潜力的个人本地 LLM 工具。

hackernews · fibo · 10月2日 18:01 · [社区讨论](https://news.ycombinator.com/item?id=49936575)

**「背景」** ds4（DwarfStar 4）是 Redis 创始人 Salvatore Sanfilippo（antirez）开发的本地大语言模型推理引擎，用 C 语言编写，面向高内存 Mac、CUDA 和 ROCm 机器，支持 Metal、CUDA、ROCm 等后端。它可运行 DeepSeek V4/V4.1 Flash、GLM 5.x 和 Qwen3.8 Flash Next 等模型，涵盖文本与视觉模型，并提供本地 API、CLI 和原生 agent 一体化栈。antirez 此前以创建 Redis 闻名，这一背景使 ds4 在个人本地 LLM 社区获得较高关注。

**「影响」** 对本地 LLM 用户而言，ds4 通过 SSD 流式加载权重，使模型不必完全装入内存即可运行，从而把内存容量从硬性门槛变为速度梯度；其 GitHub 页面称压缩 KV 缓存与快速本地 SSD 让长上下文变得可行，并支持两台 128GB Mac 通过 RDMA 张量并行运行 4-bit DeepSeek Flash 或 GLM 5.3 Flash。外部基准显示 M5 Max 128GB 在 2,048 token 上下文下生成速度为 39.4 TPS，65,536 token 时降至 27.6 TPS，但社区评论中尚无工具调用等具体性能数据。

**「社区讨论」** 社区对 ds4 反响积极，已有共享库 FFI 绑定、Go 工具链以及受其启发的 Intel 集显推理引擎等衍生项目。讨论中的主要疑问集中在工具调用能力和实际吞吐（如是否接近 50 TPS），目前尚无具体性能数据；有用户反馈在 M5 Max 128GB 上长期使用体验良好、速度快且上下文窗口长，但偶尔出现模型遗忘先前内容的情况，怀疑也可能与 agent 框架有关。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://dwarfstar.sh/">DwarfStar 4 (ds4): Local DeepSeek V4.1, Qwen and GLM</a></li>
<li><a href="https://williamcallahan.com/bookmarks/dwarfstar-sh">DwarfStar 4 (ds4): Local DeepSeek V4.1, Qwen and GLM</a></li>
<li><a href="https://github.com/antirez/ds4">antirez/ds4: DeepSeek 4 Flash and PRO local inference engine for...</a></li>
<li><a href="https://github.com/antirez/ds4">GitHub - antirez / ds 4 : DeepSeek 4 Flash and PRO local inference ...</a></li>
<li><a href="https://www.linkedin.com/pulse/open-rebellion-running-weight-models-locally-andrea-guaccio-a9wgf">Local LLM Inference</a></li>
<li><a href="https://runtimewire.com/article/dwarfstar-local-inference-salvatore-sanfilippo">DwarfStar compresses frontier models to run them on local machines</a></li>

</ul>
</details>

**标签**: `#local-llm-inference`, `#open-source`, `#llm-tooling`, `#antirez`, `#personal-ai`

---

<a id="item-tech-news-3"></a>
### [Greg Kroah-Hartman 剖析 LLM 报告的 79 个内核漏洞](https://www.youtube.com/watch?v=NnV_cWeoo5Q) ⭐️ 8.0/10

在 Kernel Recipes 2026 的演讲中，Linux 内核维护者 Greg Kroah-Hartman 分析了名为 Mythos 的 LLM 所报告的 79 个内核漏洞，结论是其中大多数并非真实问题。根据演讲幻灯片，这 79 项报告中有 24 项完全没有细节、仅称“有东西崩溃了”，14 项根本不是 bug，3 项数据纯属编造，15 项已在最新版本中修复（其中 11 项由他人修复、4 项由 Anthropic 修复），只有 20 项确实需要修复，而这 20 项中还有 7 项的前提是“假设存在恶意文件系统镜像”。Kroah-Hartman 指出，Mythos 的做法本质上是模式匹配过去数十年内核开发者的补丁，再将其机制套用到别处，检查是否已普遍修补，且 Anthropic 未对最初修复这些 CVE 的内核开发者给予署名。这一分析引发了对 AI 安全营销与成果归属的讨论。

hackernews · usernomdeguerre · 10月2日 02:51 · [社区讨论](https://news.ycombinator.com/item?id=49929391)

**「背景」** Greg Kroah-Hartman 是 Linux 基金会研究员，负责稳定版 Linux 内核发布，并维护 USB、驱动核心、staging 驱动等子系统。他在 2026 年 Kernel Recipes 大会（9 月 21–23 日于巴黎举行）发表题为“Security in the LLM Age”的演讲，此前他曾发布图表展示每个内核版本修复的 CVE 数量从约 500 个攀升至接近 2000 个。该演讲针对名为 Mythos 的 LLM 所报告的 79 个内核漏洞进行了逐项核查。

**「影响」** 对内核维护者而言，这一案例表明当前 LLM 生成的漏洞报告仍需大量人工甄别，79 份报告中仅 20 份真正需要修复，直接增加了审查负担。对 Anthropic 等厂商来说，未标注原始修复者以及夸大漏洞数量的做法，可能削弱其在 AI 安全议题上的公信力。

**「社区讨论」** 评论者普遍赞赏 Kroah-Hartman 的坦率，认为 79 个漏洞最终只相当于一小时的内核开发工作，与 OpenAI、Anthropic 宣称模型危险到只能限量发布的安全叙事形成强烈反差。也有人指出 Anthropic 未引用最初修复 CVE 的内核开发者，与 OpenAI 此前在引用原创工作上的问题类似；同时有评论认为，尽管 Mythos 目前表现不佳，但针对 Linux 内核专门训练的模型在漏洞发现、分析和修复上仍有提速与提质的空间。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.youtube.com/watch?v=NnV_cWeoo5Q">Kernel Recipes 2026 - Security in the LLM age - YouTube Greg Kroah-Hartman: Mythos&#x27;s 79 Linux kernel bugs came down ... Greg Kroah-Hartman – Security in the LLM Age [video] | Hacker ... Security in the LLM age | Kernel Recipes Greg Kroah-Hartman – Security in the LLM Age [video] Why Linux Kernel CVEs Are Exploding—From ... - howtouselinux AI is finding thousands of bugs in Linux, and maintainers can ...</a></li>
<li><a href="https://cho.sh/mini/news/ai-2/mythos-kernel-bugs">Greg Kroah-Hartman: Mythos&#x27;s 79 Linux kernel bugs came down ...</a></li>
<li><a href="https://news.ycombinator.com/item?id=49929391">Greg Kroah-Hartman – Security in the LLM Age [video] | Hacker ...</a></li>
<li><a href="https://cho.sh/mini/news/ai-2/mythos-kernel-bugs">Greg Kroah-Hartman: Mythos&#x27;s 79 Linux kernel bugs came down ...</a></li>
<li><a href="https://news.ycombinator.com/item?id=49929391">Greg Kroah-Hartman – Security in the LLM Age [video] | Hacker ...</a></li>

</ul>
</details>

**标签**: `#linux-kernel`, `#security`, `#llm`, `#ai-safety`, `#open-source`

---

<a id="item-tech-news-4"></a>
### [Google Research 发布 Cogentic 多智能体数学证明系统](https://arxiv.org/abs/2609.40324v1) ⭐️ 8.0/10

Google Research 公布了一项名为 Cogentic 的研究，提出一套用于自动发现数学证明的多智能体系统。该系统通过“证明—验证”循环运作，让多个独立证明器探索不同方向，并由专门组件进行对抗式验证，将已确认结果存入可持续使用的验证账本。Cogentic 以 Gemini 为基础模型，据称在在线学习、拍卖理论和机制设计领域的 5 个开放问题上产出了新结果，且均由领域专家独立验证，并在配套论文中展开。该消息来自一则简短的 Telegram 帖子，所附 arXiv 标识符疑似有误，且缺乏独立佐证与技术细节，因此上述成果尚无法仅凭该来源完全核实。

telegram · zaihuapd · 10月2日 12:04

**「背景」** 自动定理证明长期依赖形式化系统（如 Lean）与符号计算，但让大语言模型自主探索开放数学问题仍是前沿方向。多智能体编排通过让多个独立证明器并行探索不同路径，并引入对抗式验证来过滤错误，是近年 AI for math 领域应对 LLM 推理不可靠性的常见思路。Cogentic 正是在这一脉络下，将证明发现、验证与结果沉淀整合为可复用的系统。

**「影响」** 若该结果成立，Cogentic 表明基于 Gemini 的多智能体“证明—验证”循环可在在线学习、拍卖理论与机制设计等研究级问题上产出经领域专家独立验证的新结果，从而为 AI 辅助数学与理论计算机科学研究提供一条可复用的自动化路径。不过该结论目前仅来自简要的 Telegram 帖文与配套论文页面，arXiv 标识疑似有误且缺乏独立佐证，实际影响仍需进一步核实。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/html/2609.40324">Cogentic : Multi - Agent Orchestration for Automated Proof Discovery</a></li>
<li><a href="https://academy.dair.ai/papers/cogentic-multi-agent-orchestration-for-automated-proof-discovery-2609.40324?ref=symbolika.ai">Cogentic : Multi - Agent Orchestration for Automated Proof Discovery</a></li>
<li><a href="https://bimsa.net/activity/AI-MatRes/">BIMSA - AI-Assisted Mathematical Research</a></li>
<li><a href="https://arxiv.org/html/2609.40324">Cogentic : Multi-Agent Orchestration for Automated Proof Discovery</a></li>
<li><a href="https://academy.dair.ai/papers/cogentic-multi-agent-orchestration-for-automated-proof-discovery-2609.40324?ref=symbolika.ai">Cogentic : Multi-Agent Orchestration for Automated Proof Discovery</a></li>

</ul>
</details>

**标签**: `#multi-agent systems`, `#automated theorem proving`, `#AI for mathematics`, `#Google Research`, `#LLM reasoning`

---

<a id="item-tech-news-5"></a>
### [用 GLM 5.3 Flash 编码一个月：成本、能耗与模型选择教训](https://wagtail.org/blog/one-month-on-glm-53-flash/) ⭐️ 7.0/10

一位开发者发布了使用 GLM 5.3 Flash 进行一个月编码的实践报告，涵盖成本、能耗与模型选择经验。报告给出的具体数字包括：该模型的使用完全在预算之内，花费约 68 美元，能耗约 4kWh，碳排放约 365 克，其中能源成本仅占总成本的约 1%。作者同时提到一次失误：为原型选错了模型，几乎在一夜之间消耗了 4.5 亿 token、150 美元和 5kWh 能耗，但 MCP 服务器本身运行良好，并产出了可用的能力演示。作者由此强调，在智能体（agentic）开发模式中应谨慎选择模型，认为以更少成本、稍多一点努力也能取得相近结果。

hackernews · ThibWeb · 10月2日 15:29 · [社区讨论](https://news.ycombinator.com/item?id=49934620)

**「背景」** GLM 5.3 是智谱 AI（Z.ai）推出的大规模推理模型，面向复杂软件工程和长周期智能体任务，支持文本输入输出，拥有 100 万 token 的上下文窗口，并在编码能力以及性能与 token 效率的平衡上较 GLM 5.2 有所改进。该模型在编码类别中排名第 104，综合得分为 79/100，定位为深度中英文文本推理、编码与工具编排。当需要更低成本、不同输入支持或更强推理层级时，开发者可能会考虑其他模型。

**「影响」** 对使用 GLM 5.3 Flash 进行智能体原型开发的开发者而言，该报告的核心教训是模型选择失误会带来显著成本：作者因选错模型，一夜之间消耗 4.5 亿 token、150 美元和 5kWh 能源，而他认为以约五分之一的成本即可取得相近结果。同时，该模型在 API 上成本极低且为 MIT 许可的开源权重模型，便于在效果不佳时切换到 DeepSeek V4.1 Flash、Qwen 3.8 Flash 等同类模型。

**「社区讨论」** 评论者对能耗之低感到惊讶，有人用 4kWh 相当于电动车行驶约 15 英里、烧开 10 加仑水来作对比，以回应外界对 AI 数据中心影响的担忧。也有评论者质疑文章对失败原因的分析不够具体，怀疑内容是否由 LLM 生成；另有开发者表示 GLM 5.3 Flash 在处理模糊的小修复任务上表现不错，并借“原型够用但不会日常依赖 AI 产物”的说法讨论“氛围编程”的边界。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://lmmarketcap.com/model/z-ai-glm-5-3">Zhipu AI GLM 5 . 3 - Pricing &amp; Benchmarks 2026 | LM Market Cap</a></li>
<li><a href="https://www.pixmind.io/ai-chat/glm-5-3">Chat with GLM - 5 . 3 | PixMind</a></li>
<li><a href="https://unorouter.com/en/models/zhipu/or-glm-5.3">or- glm - 5 . 3 API pricing, context and examples | UnoRouter</a></li>
<li><a href="https://wagtail.org/blog/one-month-on-glm-53-flash/">One month coding with GLM 5 . 3 Flash | Wagtail CMS</a></li>
<li><a href="https://docs.z.ai/guides/vlm/glm-5.3-flash">GLM - 5 . 3 - Flash /FlashX - Overview - Z. AI DEVELOPER DOCUMENT</a></li>
<li><a href="https://www.youtube.com/watch?v=CpMCYO2oWBI">GLM 5 . 3 Flash (Fully Tested): What do you need to RUN... - YouTube</a></li>

</ul>
</details>

**标签**: `#LLM coding`, `#AI agents`, `#model selection`, `#developer experience`, `#energy efficiency`

---

<a id="item-tech-news-6"></a>
### [拓扑域外泛化：动态系统重建新进展](https://www.reddit.com/r/MachineLearning/comments/1wvwodf/topological_outofdomain_generalization_in/) ⭐️ 7.0/10

一篇发布在 r/MachineLearning 的预印本（arXiv:2606.22969）声称被 NeurIPS 2026 接收，研究动态系统重建（DSR）与时间序列预测（TSF）中的拓扑域外泛化（OODG）问题，即系统跨越分岔点、动力学机制发生改变（如从周期变为混沌）时的预测能力。作者指出，当前最先进的 DSR 与 TSF 模型虽能泛化到新初始条件或统计特性变化的序列，但依赖提取时间模式与统计规律，难以应对气候临界点、癫痫发作、脓毒症等场景中的机制切换。论文从数学上识别出此前分层 DSR 模型无法正确学习并外推控制参数的关键失效模式，并通过特征拆分与物理稀疏先验加以修正。修改后的分层 DSR 模型在训练中未提供控制参数显式信息的情况下，能够正确预测分岔及分岔后的动力学，且方法通用，已在浅层 PLRNN 与 Neural ODE 上测试。由于内容为截断的自我推广摘要，缺少同行评审结果与详细证据，其会议归属与日期无法从现有材料独立核实。

reddit · r/MachineLearning · /u/DangerousFunny1371 · 10月2日 15:25

**「背景」** 动力系统重构（DSR）旨在从时间序列数据中推断生成式代理模型，以捕捉真实数据生成过程的不变（长期）拓扑与统计特性。现有最先进的 DSR 与时间序列预测模型虽能泛化到新的初始条件或统计特性变化的序列，但跨分岔点、即动力学机制发生根本改变时的真正域外预测能力仍然有限，通常需要针对新机制的数据进行微调甚至完全重新训练。该问题在气候系统跨越临界点、大脑从正常状态转入癫痫活动、以及患者发展为脓毒症等场景中具有现实意义。

**「影响」** 若该方法成立，气候、癫痫与脓毒症等跨越临界点的系统或可在无需新工况数据的情况下预测分岔后的动力学，从而减少对微调或完整重训练的依赖。不过该结论目前仅来自预印本，尚待同行评审验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/pdf/2606.22969">Topological Out - of - Domain Generalization in Dynamical Systems ...</a></li>
<li><a href="https://arxiv.org/html/2606.22969">Topological Out - of - Domain Generalization in Dynamical Systems ...</a></li>
<li><a href="https://arxiv.org/abs/2606.22969">[2606.22969] Topological Out - of - Domain Generalization in ...</a></li>
<li><a href="https://arxiv.org/abs/2606.22969">[2606.22969] Topological Out-of-Domain Generalization in ...</a></li>

</ul>
</details>

**标签**: `#machine-learning`, `#dynamical-systems`, `#out-of-domain-generalization`, `#time-series-forecasting`, `#research-paper`

---

<a id="item-tech-news-7"></a>
### [Anthropic 提议澳大利亚以退出机制允许版权作品训练 AI](https://www.theguardian.com/technology/2026/oct/02/anthropic-ai-opt-out-australia-copyright-abc-cannibalisation-of-news) ⭐️ 7.0/10

Anthropic 向澳大利亚政府提议，有条件允许科技公司在“退出”（opt-out）机制下使用澳大利亚受版权保护的作品训练 AI 模型。澳大利亚广播公司（ABC）和 SBS 反对放宽版权规则，要求 AI 公司接受版权、隐私等监管并补偿媒体，ABC 还警告新闻业可能被“蚕食”。澳大利亚政府已排除建立文本和数据挖掘豁免，但仍在讨论其他版权安排。澳大利亚议会人工智能联合委员会将于下周举行听证，Anthropic 和 OpenAI 高管将出席。

telegram · zaihuapd · 10月2日 03:34

**「背景」** 澳大利亚议会人工智能联合委员会正在审议 AI 训练数据相关的版权安排。澳大利亚政府已排除建立文本和数据挖掘豁免，但仍在讨论其他版权方案。Anthropic 与 OpenAI 均已向该委员会提交提案，两家公司都反对要求每份材料单独授权的制度，主张采用“退出”机制。

**「影响」** 若澳大利亚采纳 Anthropic 提出的“退出”机制，AI 公司可在无需逐件授权的情况下使用该国受版权保护的作品训练模型，而 ABC、SBS 等媒体则要求以监管合规和补偿作为放宽版权规则的前提。该议题的走向将直接影响在澳开发或使用训练数据的 AI 从业者的合规成本与数据获取方式，但最终安排仍取决于议会听证及政府决策，尚存不确定性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.neoteo.com/en/anthropic-proposes-an-opt-out-for-ai-training-in-australia">Anthropic ’s Australia AI training opt - out proposal | NeoTeo</a></li>
<li><a href="https://www.theguardian.com/technology/2026/oct/02/anthropic-ai-opt-out-australia-copyright-abc-cannibalisation-of-news">Anthropic pushes for opt - out model for Australian content as ABC ...</a></li>
<li><a href="https://theunum.io/en/news/read/openai-anthropic-propose-ease-ai-training-rules-australia">OpenAI and Anthropic Propose to Ease AI Training | TheUnum</a></li>
<li><a href="https://www.theguardian.com/technology/2026/oct/02/anthropic-ai-opt-out-australia-copyright-abc-cannibalisation-of-news">Anthropic pushes for opt-out model for Australian ... | The Guardian</a></li>
<li><a href="https://theunum.io/en/news/read/openai-anthropic-propose-ease-ai-training-rules-australia">OpenAI and Anthropic Propose to Ease AI Training | TheUnum</a></li>
<li><a href="https://www.yahoo.com/news/world/articles/anthropic-openai-call-australia-relax-075931499.html">Anthropic , OpenAI call for Australia to relax ban on training of AI ...</a></li>

</ul>
</details>

**标签**: `#AI copyright`, `#AI policy`, `#training data`, `#Anthropic`, `#Australia regulation`

---

<a id="item-tech-news-8"></a>
### [arXiv 自 10 月起每人每月限投 2 篇](https://www.huxiu.com/article/4895127.html) ⭐️ 7.0/10

全球最大预印本平台 arXiv 宣布，自 10 月 1 日起每位提交者每个自然月最多提交 2 篇论文，覆盖计算机、数学、物理等全部学科，被拒稿件同样占用当月额度。arXiv 表示，9 月投稿量达 40363 篇，创 35 年新高，其中 AI 分类论文两年增长超过 6 倍，大量低质量 AI 生成论文挤占人工审核资源。新规按实际提交者计算，多作者论文的其余合著者不受影响。

telegram · zaihuapd · 10月2日 06:21

**「背景」** arXiv 是全球最大的预印本平台，主要发布物理学、数学、计算机科学等领域的论文，论文在正式同行评审前即可公开，因此成为 AI 研究快速传播成果的主要渠道。该平台长期依赖志愿者审核员（moderator）对投稿进行把关，而近年来投稿量急剧上升，其中大量低质量、疑似 AI 生成的论文挤占了人工审核资源。arXiv 官方博客称，此次限投是为了更公平地分配志愿者审核时间，并保护论文库免受不当投稿激增的影响。

**「影响」** 新规将直接约束计算机、数学、物理等领域高产研究者的投稿节奏，被拒稿件同样占用当月额度，多作者论文仅计入实际提交者。arXiv 称此举是为应对 AI 生成论文激增、保护志愿者审核资源，但学界对此褒贬不一。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blog.arxiv.org/2026/10/01/updated-rate-limit-policy/">arXiv has updated its rate limit policy for all submitters.</a></li>
<li><a href="https://www.theregister.com/ai-and-ml/2026/10/02/arxiv-imposes-rate-limit-on-paper-submissions-to-stem-the-ai-slop-tide/5300899">ArXiv imposes rate limit on paper submissions to stem the AI ...</a></li>
<li><a href="https://www.timeshighereducation.com/news/arxivs-new-preprint-submission-cap-divides-opinion">arXiv&#x27;s new preprint submission cap divides opinion</a></li>
<li><a href="https://blog.arxiv.org/2026/10/01/updated-rate-limit-policy/">arXiv has updated its rate limit policy for all submitters.</a></li>
<li><a href="https://www.timeshighereducation.com/news/arxivs-new-preprint-submission-cap-divides-opinion">arXiv&#x27;s new preprint submission cap divides opinion</a></li>
<li><a href="https://startupfortune.com/arxiv-now-limits-every-researcher-to-two-paper-submissions-a-month/">arXiv now limits every researcher to two paper submissions a ...</a></li>

</ul>
</details>

**标签**: `#arXiv`, `#preprints`, `#academic publishing`, `#AI research`, `#research policy`

---

<a id="item-tech-news-9"></a>
### [Claude Code 推出 mods 自定义功能](https://claude.com/blog/claude-code-mods) ⭐️ 7.0/10

Anthropic 为 Claude Code 推出 mods 自定义功能，开发者只需少量 TypeScript 代码即可改写提示词、新增界面或替换内置功能。Mods 随插件分发，目前已支持 CLI 和桌面版。Mods 与 Claude Code 拥有相同权限且不设沙箱，官方提醒用户只安装可信来源，同时用户也可让 Claude 自行编写 mods。部分内置功能已改为 mods 形式，官方计划后续迁移更多功能。

telegram · zaihuapd · 10月2日 12:32

**「背景」** Claude Code 是 Anthropic 推出的 AI 编码工具，此前其内置行为与界面由官方统一控制，开发者难以按需调整。Mods 机制让开发者以小型 TypeScript 函数改写提示词、拦截风险命令、添加自定义界面或替换内置功能，从而在不改动官方代码的前提下扩展工具行为。据第三方报道，该功能需要 Claude Code v2.1.287 或更新版本，默认开启，可在 CLI 与桌面版的 Code 分页中使用。

**「影响」** 开发者现在可以用 TypeScript 编写 mods 来改写提示词、拦截风险命令、添加自定义界面或替换内置功能，并随插件分发，从而在不修改 Claude Code 本体的情况下深度定制这一广泛使用的 AI 编码工具。由于 mods 与 Claude Code 权限相同且不设沙箱，安装第三方 mods 会引入与直接运行代码相当的安全风险，官方因此提醒只安装可信来源。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://claude.com/blog/claude-code-mods">Customize Claude Code with mods in... | Claude by Anthropic</a></li>
<li><a href="https://bazaarlink.ai/blog/claude-code-mods-typescript-customize">Claude Code 开放 Mods ：用 TypeScript 改行为、改介面、换功能</a></li>
<li><a href="https://claude.com/blog/claude-code-mods">Customize Claude Code with mods in TypeScript | Claude by ...</a></li>
<li><a href="https://code.claude.com/docs/en/plugins/mods/overview">Mods overview - Claude Code Docs</a></li>
<li><a href="https://claude.dev/mods/">Claude Code mods / claude.dev Blog</a></li>

</ul>
</details>

**标签**: `#Claude Code`, `#Anthropic`, `#AI 编码工具`, `#插件系统`, `#开发者工具`

---

<a id="item-tech-news-10"></a>
### [Cloudflare 推出统一可观测性平台](https://blog.cloudflare.com/one-observability-platform/) ⭐️ 7.0/10

Cloudflare 于 2026 年 10 月 2 日宣布推出 8 项更新，将日志、追踪、分析、告警、仪表板和数据导出整合到统一的可观测性平台。更新包括开放测试中的请求追踪和统一 SQL API、30 天域名分析数据、自定义告警及自定义仪表板；Logpush 也向所有自助服务计划开放。日志和追踪的新统一计费模式将于 2026 年 12 月 1 日生效，按摄入和存储量计费。

telegram · zaihuapd · 10月3日 01:15

**「背景」** 可观测性通常指通过日志、追踪、指标和分析等手段理解分布式系统运行状态的能力，但传统上这些数据往往分散在不同工具和界面中，需要分别查询与计费。Cloudflare 此前已提供日志推送（Logpush）等可观测性相关产品，此次更新将其与追踪、分析、告警、仪表板和数据导出整合到单一平台，并采用更简单、更可预测的定价模式。

**「影响」** 现有 Free、Pro 和 Business 计划上的 Workers Observability 客户将于 2026 年 12 月 1 日自动转入按摄入和存储量计费的新模式，且摄入费用仅适用于该日期及之后收到的数据。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blog.cloudflare.com/one-observability-platform/">8 major updates to Cloudflare Observability | Cloudflare Blog</a></li>
<li><a href="https://www.cloudscoop.io/updates/cloudflare-2026-10-02-8-major-updates-to-cloudflare-observability">8 major updates to Cloudflare Observability · CloudScoop</a></li>
<li><a href="https://spyingbee.com/updates/cloudflare/2026">Cloudflare: 1,528 product updates in 2026 | Spyingbee</a></li>
<li><a href="https://developers.cloudflare.com/observability/pricing/">Pricing · Cloudflare Observability docs</a></li>

</ul>
</details>

**标签**: `#observability`, `#cloudflare`, `#logging`, `#tracing`, `#platform-engineering`

---

## 科技博客

<a id="item-tech-blog-1"></a>
### [DIY 电子忙碌板：硬件与固件的趣味项目](https://hackaday.com/2026/10/02/electronic-busy-board-is-fun-for-kids-and-hackers/) ⭐️ 5.0/10

rss · Hackaday · 10月2日 23:00

**「背景」** 忙碌板是那种布满按钮、开关和 LED、用来逗幼儿开心的玩具，而这类元件同样让硬件爱好者着迷。作者 Andy（Uncle Andrew）去年圣诞节决定为侄子亲手打造一块电子忙碌板，把它当作一个软硬件各占一半的多学科项目来做。

**「方案」** 虽然这类装置完全可以用纯硬件实现，Andy 却选择了现代爱好者的做法，把部分任务交给精心编排的代码。他在项目记录中讲述了自己的设计取舍：为把 PCB 控制在两层而付出的额外努力，以及 LED 多路复用的思路。软件方面，他相当深入地解释了代码如何用定时器和中断来尽可能高效地驱动整个装置，从而让 PIC18F67K40 微控制器靠三节 AAA 电池获得更长的运行时间。Hackaday 的这篇短文只是对项目的介绍，本身没有给出实测数据、代码或原理图细节，也没有权衡分析，更多是引导读者去看原始记录。

**「启示」** 作者认为，这个项目技术上并不复杂，却因软硬件结合与个人心意而格外有趣——对创客和硬件爱好者的孩子来说，身边有这样一位愿意动手的长辈是件幸运的事。

**标签**: `#embedded systems`, `#microcontrollers`, `#DIY electronics`, `#firmware design`, `#project spotlight`

---

<a id="item-tech-blog-2"></a>
### [振动实现非接触式吸附：原理与机器人应用](https://hackaday.com/2026/10/02/using-vibration-to-make-stuff-stick-contact-free-to-ceilings/) ⭐️ 5.0/10

rss · Hackaday · 10月2日 15:30

**「背景」** 让物体吸附在天花板上通常需要吸盘、胶水等接触式手段，而伯努利吸盘虽能非接触抓取，却依赖间隙内恒定的压差。作者介绍的振动吸附效应则不同：它需要柔性物体随振动源共振，机制比伯努利夹持更复杂。

**「方案」** 据作者转述 Steve Mould 的演示，一块扑克牌仅靠小型振动电机就能贴在天花板上。其机制是：柔性物体振动产生驻波，当被推向刚性表面时驻波转为行波，不断把进入微小间隙的空气排出，使间隙内气压低于外界，从而形成非接触吸附。该效应要求物体足够柔韧以随振动源振动，且间隙远小于伯努利夹持。演示中，使用 400 瓦换能器的装置甚至能承受一个人的重量，但受限于“天花板”刚性不足导致的能量损耗，未能超过几十公斤。作者还引用了 Siquan Li 等人 2025 年的论文，其提出的“微振动吸附”（VBA）系统用于小型机器人爬墙检修，实验中测得吸附力与重量之比超过 51 倍。

**「启示」** 作者认为，振动吸附为小型机器人提供了一种无需复杂机构即可对抗重力的非接触抓取思路，在半导体等需要零污染搬运的场景中具有类似伯努利夹持的应用潜力。

**标签**: `#contactless-gripping`, `#vibration-adhesion`, `#robotics`, `#physics-explainer`, `#bernoulli-grip`

---