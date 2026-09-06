---
layout: default
title: "Horizon Summary: 2026-09-06 (ZH)"
date: 2026-09-06
lang: zh
---

> 从 43 条内容中筛选出 17 条重要资讯。

---

**科技新闻**
1. [SGLang v0.5.19 发布：新增模型支持与性能优化](#item-tech-news-1) ⭐️ 8.0/10
2. [可视化 Rust 的 vtable：dyn Trait 内存布局详解](#item-tech-news-2) ⭐️ 8.0/10
3. [GPT-6 Astra 开发者版发布，3D 建模能力突出](#item-tech-news-3) ⭐️ 8.0/10
4. [语言模型可声明注意力以加速推理](#item-tech-news-4) ⭐️ 8.0/10
5. [Anthropic IPO 路演推迟至 10 月中旬，估值或达 2 万亿美元](#item-tech-news-5) ⭐️ 8.0/10
6. [德国私企火箭首次从欧洲本土入轨](#item-tech-news-6) ⭐️ 7.0/10
7. [LLM 作为认知病毒：概念框架与讨论](#item-tech-news-7) ⭐️ 7.0/10
8. [GPT-6 发布 24 小时内被越狱：扩展 TIP 攻击](#item-tech-news-8) ⭐️ 7.0/10
9. [搜索代理据称在基准测试中击败 GPT-6 Astra](#item-tech-news-9) ⭐️ 7.0/10
10. [英伟达发布 PAIR 软件，闲置电脑可组本地 AI 集群](#item-tech-news-10) ⭐️ 7.0/10
11. [美国车企敦促永久禁止中国网联车及软硬件](#item-tech-news-11) ⭐️ 7.0/10

**科技博客**
1. [COSMAC Elf 五十周年：回顾 RCA 1802 的独特架构](#item-tech-blog-1) ⭐️ 7.0/10
2. [在 RP2350 上运行生成式 AI](#item-tech-blog-2) ⭐️ 6.0/10
3. [Pixel Watch 5 展现良好可维修性](#item-tech-blog-3) ⭐️ 5.0/10
4. [Voicebox FX：CircuitPython I2S 音频的参考设计](#item-tech-blog-4) ⭐️ 5.0/10
5. [记录失败：开源硬件项目的宝贵实践](#item-tech-blog-5) ⭐️ 5.0/10
6. [让旋转电话摆脱线缆：ESP32-S3 与 SLIC 的蜂窝改造](#item-tech-blog-6) ⭐️ 5.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [SGLang v0.5.19 发布：新增模型支持与性能优化](https://github.com/sgl-project/sglang/releases/tag/v0.5.19) ⭐️ 8.0/10

SGLang v0.5.19 正式发布，该版本由 214 位贡献者提交的 786 个 PR 组成，新增了对 Qwen3.8（2.4T-A95B）、Qwen3.8-27B、dots3.note、Ling-3.0-flash/tiny、Spark2.5、MiniCPM-SALA、Granite 4.2 以及 LongCat-Image-Edit 等模型的支持。性能方面，引入了 beam search（通过 beam\_width 参数返回 n 个最佳序列）、DeepEP v2 的 ElasticBuffer 引擎（用于 DeepSeek-V3/V4 和 Qwen3-MoE 的 FP8 推理）、LayerNorm 序列并行（可减少 Qwen3-8B 在 H100 上 3.5% 的 prefill 时间）、W4A8 MoE 量化（DeepSeek-V4-Flash 吞吐量提升约 12%）以及针对 AMD MI355X 的 Lean attention 优化（吞吐量最高提升 1.52 倍）。此外，统一基数树现已成为所有模型的默认缓存，FlashInfer 依赖升级至 0.6.18，并新增了 CUDA 13.4 预览镜像和 ROCm 10 镜像。

github · Qiaolin-Yu · 9月5日 02:27

**「背景」** SGLang 是一个用于大语言模型和多模态模型的高性能推理与服务框架，由社区驱动开发，定期发布版本以增加新模型支持、性能优化和功能改进。v0.5.19 是其中的一个常规版本更新，包含了大量来自社区的贡献。

**「影响」** 使用 SGLang 的开发者现在可以部署更多新模型，并通过 beam search、DeepEP v2 和 Lean attention 等特性获得显著的性能提升，尤其是在 AMD GPU 和长上下文场景下。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/sgl-project/sglang/releases">Releases · sgl-project/sglang · GitHub</a></li>

</ul>
</details>

**标签**: `#sglang`, `#llm-inference`, `#model-support`, `#release`, `#open-source`

---

<a id="item-tech-news-2"></a>
### [可视化 Rust 的 vtable：dyn Trait 内存布局详解](https://sofiabelen.github.io/projects/visualizing-rusts-vtables-how-dyn-trait-works-in-memory/) ⭐️ 8.0/10

本文深入探讨了 Rust 中 dyn Trait 和 vtable 的内存布局，通过可视化方式解释了动态分发的工作原理。文章涵盖了对象安全（现称为 dyn 兼容性）的关键概念，并讨论了哪些 trait 可以用于 dyn Trait。作者指出，Rust 的借用检查器在编译时就能确定对象是否为零大小，因此程序员无需手动检查。文章还提到了 vtable 本质上是指向方法实现的指针列表。该文获得了社区的高度评价，被认为结构清晰、写作风格令人愉悦，同时也有评论指出术语“对象安全”已被 Rust 官方更名为“dyn 兼容性”，以更准确地反映其含义。

hackernews · torutofu · 9月5日 13:31 · [社区讨论](https://news.ycombinator.com/item?id=49576343)

**「背景」** Rust 通过 trait 对象（如 \`dyn Trait\`）实现动态分发，其核心机制是胖指针（fat pointer）和虚表（vtable）。胖指针包含指向实际数据的指针和指向 vtable 的指针，vtable 中存储了该 trait 实现的方法地址，从而在运行时确定调用哪个具体实现。这一设计使得 Rust 在保持零成本抽象的同时支持运行时多态。此外，并非所有 trait 都能用作 trait 对象，只有满足“dyn 兼容性”（旧称“对象安全”）条件的 trait 才能使用 \`dyn Trait\`，这要求 trait 的方法不能是泛型方法且不能返回 \`Self\` 等。

**「影响」** 对于 Rust 开发者而言，本文提供了理解 dyn Trait 底层机制和对象安全约束的直观参考，有助于编写更高效的动态分发代码，并避免常见的编译错误。

**「社区讨论」** 社区普遍赞赏文章的结构和写作风格，认为其清晰易懂。有评论者指出“对象安全”这一术语已被 Rust 官方更名为“dyn 兼容性”，以更准确地反映其含义。此外，有读者建议进一步逆向工程 vtable 的结构，并提出了关于借用检查器如何影响程序员检查对象身份的疑问。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://users.rust-lang.org/t/rusts-trait-objects-vtables-dynamic-dispatch-and-memory-management/121827">Rust&#x27;s Trait Objects: Vtables, Dynamic Dispatch, and Memory Management</a></li>
<li><a href="https://www.eventhelix.com/rust/rust-to-assembly-tail-call-via-vtable-and-box-trait-free/">Understanding Rust&#x27;s Trait Objects: Vtables, Dynamic Dispatch, and ...</a></li>
<li><a href="https://amritsingh183.github.io/rust/concepts/2025/10/23/rust-dyn.html">Mastering Rust&#x27;s `trait` objects: A Complete Guide</a></li>

</ul>
</details>

**标签**: `#Rust`, `#dyn Trait`, `#vtable`, `#memory layout`, `#object safety`

---

<a id="item-tech-news-3"></a>
### [GPT-6 Astra 开发者版发布，3D 建模能力突出](https://simonwillison.net/2026/Sep/5/introducing-gpt-6-astra-for-developers/) ⭐️ 8.0/10

OpenAI 发布了面向开发者的 GPT-6 Astra，该模型在细节关注度、对用户提示的理解以及生成复杂输出方面均有提升，尤其在 3D 模型构建上表现出色，可生成花园、造船厂、动物、城市景观甚至戴森球的渲染图。Simon Willison 在报道中特别指出，Astra 在演示视频中展示了一只戴着红色围巾骑自行车的鹈鹕，并调侃该模型对此类创意输出有独特偏好。该发布通过 YouTube 视频介绍，并引发了开发者社区的关注。

rss · Simon Willison · 9月5日 23:27

**「背景」** GPT-6 Astra 是 OpenAI 继 GPT-5 之后推出的新一代大语言模型，面向开发者提供 API 访问。此次发布强调其在多模态和生成能力上的进步，尤其是 3D 模型生成，这标志着 AI 从文本和图像生成向更复杂的空间内容创作扩展。Simon Willison 是知名的开发者和技术博主，经常分析 AI 工具的实际应用。

**「影响」** 对于使用 OpenAI API 的开发者，GPT-6 Astra 可能带来更高质量的 3D 内容生成能力，从而简化游戏开发、建筑可视化等领域的原型制作流程。不过，其实际性能仍需通过开发者测试验证。

**标签**: `#GPT-6`, `#AI`, `#3D modeling`, `#developer tools`, `#announcement`

---

<a id="item-tech-news-4"></a>
### [语言模型可声明注意力以加速推理](https://www.reddit.com/r/MachineLearning/comments/1w7sgf3/language_models_can_control_their_own_attention_r/) ⭐️ 8.0/10

一项新研究提出“声明式注意力”（Declarative Attention, DA），允许语言模型在生成过程中声明其注意力模式，从而跳过大部分 KV 缓存读取以加速推理。在零样本评估中，DA 应用于现成模型（Gemma-4-31B、Qwen-3.6-27B）时，在 15 个长上下文任务上分别减少了 52.0%和 31.1%的注意力 token 总数，同时准确率仅下降 1.27 个百分点和 2.75 个百分点，且下降幅度随模型规模增大而缩小。该方法将生成划分为全局、聚焦和局部三种模式，由推理引擎解析声明，类似工具调用。该研究以预印本形式发布（arXiv:2609.02737），尚未展示实际应用效果，但为稀疏注意力提供了新方向。

reddit · r/MachineLearning · /u/eigenlaplace · 9月5日 06:07

**「背景」** 大型语言模型在长上下文推理中，每生成一个 token 都需要扫描整个 KV 缓存，即使只有少数 token 与当前查询相关，这导致计算成本随上下文长度线性增长。现有方法通过轻量级代理分数预选相关 token，但每步仍需 O\(N\)的额外计算。声明式注意力则利用模型自身对上下文相关性的内在判断，通过声明注意力区域来避免全量扫描。

**「影响」** 对于处理超长上下文（如百万 token 对话）的开发者，DA 可能显著降低推理延迟和成本，但当前仅作为研究预印本，实际效果需进一步验证。

**标签**: `#LLM`, `#attention mechanism`, `#efficiency`, `#long-context`, `#inference`

---

<a id="item-tech-news-5"></a>
### [Anthropic IPO 路演推迟至 10 月中旬，估值或达 2 万亿美元](https://www.reuters.com/world/anthropic-ipo-launch-shifts-toward-mid-october-sources-say-2026-09-04/) ⭐️ 8.0/10

据知情人士透露，人工智能公司 Anthropic 最早将于 10 月中旬启动 IPO 路演，并在 11 月美国中期选举前几天完成上市；原定最早下周公开的招股书已延后至 9 月底，计划仍可能调整。部分投资者预计发行估值或达 2 万亿美元，可能成为史上最大 IPO 之一。Anthropic 正在敲定 150 亿美元循环信贷安排，摩根士丹利、高盛、摩根大通和花旗参与承销，公司拒绝置评。此外，Anthropic 的长期利益信托（LTBT）不持有股权，但可任免董事会多数成员，已选出 7 名董事中的 4 人，并须提前获知包括新 AI 模型发布在内的重大行动。

telegram · zaihuapd · 9月5日 15:05

**「背景」** Anthropic 是一家领先的人工智能公司，以开发 Claude 系列模型而闻名。该公司计划进行首次公开募股（IPO），目标估值最高可达 2 万亿美元，这将是历史上规模最大的 IPO 之一。据此前报道，Anthropic 已聘请摩根士丹利、高盛和摩根大通等作为承销商，并计划在 2026 年 10 月上市。此外，Anthropic 设有一个长期利益信托（LTBT），该信托不持有公司股权，但有权任免董事会多数成员，并需提前获知包括新 AI 模型发布在内的重大行动。

**「影响」** 若 Anthropic 以 2 万亿美元估值上市，将成为史上最大 IPO 之一，对 AI 行业和资本市场产生重大影响，可能重塑投资者对 AI 公司估值的预期。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.bitmex.com/blog/anthropic-ipo-guide">Anthropic IPO Guide: Price, Date, and Valuation | BitMEX</a></li>
<li><a href="https://finance.yahoo.com/technology/ai/articles/anthropic-september-1-triple-release-012352481.html">Anthropic’s September 1 Triple Release Is a $2 Trillion IPO Playbook</a></li>

</ul>
</details>

**标签**: `#Anthropic`, `#IPO`, `#AI industry`, `#finance`, `#business`

---

<a id="item-tech-news-6"></a>
### [德国私企火箭首次从欧洲本土入轨](https://www.space.com/space-exploration/launches-spacecraft/isar-aerospace-second-launch-norway-andoya-spaceport-spectrum-rocket) ⭐️ 7.0/10

德国私人火箭公司 Isar Aerospace 成功从欧洲本土将火箭送入轨道，这是欧洲商业航天史上的首次。此次发射在挪威安岛航天港进行，使用的是 Spectrum 火箭，标志着欧洲在商业航天领域迈出重要一步。这一成就不仅展示了欧洲私营航天企业的技术能力，也意味着欧洲在航天发射方面减少了对美国等外部力量的依赖。尽管具体技术细节有限，但该事件对欧洲航天自主性和商业航天发展具有历史性意义。

hackernews · bookmtn · 9月5日 20:31 · [社区讨论](https://news.ycombinator.com/item?id=49580369)

**「背景」** Isar Aerospace 是一家总部位于德国慕尼黑的私人航天初创公司，其开发的 Spectrum 火箭是一种两级液体燃料运载火箭。此前，欧洲的轨道发射主要依赖法国圭亚那的库鲁航天中心（位于南美洲），而欧洲大陆本土尚未有私人公司成功将火箭送入轨道。2025 年 3 月 30 日，Spectrum 火箭在挪威安岛航天港的首次试飞中升空后不久爆炸，但该公司在同年 9 月 5 日的第二次尝试中成功进入轨道，成为首个从欧洲本土实现轨道发射的私人火箭。

**「影响」** 这一里程碑将增强欧洲商业航天企业的信心，并可能吸引更多投资进入欧洲航天发射市场，推动欧洲在航天领域的自主能力建设。

**「社区讨论」** 评论者认为这是欧洲进一步与美国脱钩的迹象，并指出历史上美国曾通过引进德国火箭科学家获得航天优势，如今欧洲本土的成就具有讽刺意味。也有评论提到俄罗斯的普列谢茨克发射场也位于欧洲，但此次发射的象征意义在于欧洲本土私营企业的突破。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.space.com/space-exploration/launches-spacecraft/isar-aerospace-second-launch-norway-andoya-spaceport-spectrum-rocket">Private German rocket makes history, reaches orbit from... | Space</a></li>
<li><a href="https://www.dw.com/en/german-company-successfully-launches-rocket-to-space/a-79050717">German company successfully launches rocket to space</a></li>
<li><a href="https://www.theglobeandmail.com/world/article-german-startups-space-rocket-explodes-seconds-after-takeoff-from/">A private European aerospace startup completes... - The Globe and Mail</a></li>

</ul>
</details>

**标签**: `#spaceflight`, `#European space`, `#commercial space`, `#rocket launch`, `#Isar Aerospace`

---

<a id="item-tech-news-7"></a>
### [LLM 作为认知病毒：概念框架与讨论](https://arxiv.org/abs/2609.03344) ⭐️ 7.0/10

一篇 arXiv 论文（编号 2609.03344）提出了将大型语言模型（LLM）视为“认知病毒”的概念框架，借鉴认知流行病学视角，探讨 AI 如何塑造人类思维与文化。该论文并非技术突破，而是提供了一种新颖的社会影响分析视角。在 Hacker News 的讨论中，用户从进化模因论、认知负荷分担、历史先例（如苏格拉底对文字的批评）以及概念泛化等角度进行了深入探讨。讨论既肯定了该框架的启发性，也批评其措辞可能过于煽动性，且缺乏独特洞察。

hackernews · canjobear · 9月5日 20:02 · [社区讨论](https://news.ycombinator.com/item?id=49580164)

**「背景」** 该论文由 Ricard Solé等九位作者撰写，预印本编号为 arXiv:2609.03344，于 2026 年 9 月 3 日发布在物理学与社会（physics.soc-ph）分类下。论文提出将大型语言模型（LLM）视为一种“认知病毒”，并借鉴认知流行病学和模因学的框架，分析 LLM 如何通过认知卸载（即把认知操作委托给外部工具和表征）影响人类思维与文化。这一视角延续了关于信息技术如何改变人类认知的既有讨论，但将 LLM 置于更系统的理论框架中。

**「影响」** 该论文及讨论可能促使研究者和公众更系统地思考 LLM 对认知自主性和文化演变的长期影响，但当前缺乏实证证据，其实际影响尚待观察。

**「社区讨论」** 评论者普遍认为该框架有趣但非全新，指出任何思想传播都可视为病毒，并引用进化模因论作为已有理论。部分用户提出认知债务量化、团队认知外包等关联概念，也有用户引用苏格拉底对文字的批评作为历史先例，质疑该框架的独特洞察力。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/abs/2609.03344">[ 2609 . 03344 ] Large-Language Models as a Cognitive Virus</a></li>
<li><a href="https://arxiv.org/pdf/2609.03344">Large-Language Models as a Cognitive Virus</a></li>

</ul>
</details>

**标签**: `#LLM`, `#AI-society`, `#cognitive-science`, `#philosophy`, `#memetics`

---

<a id="item-tech-news-8"></a>
### [GPT-6 发布 24 小时内被越狱：扩展 TIP 攻击](https://www.reddit.com/r/MachineLearning/comments/1w89m36/gpt6_reportedly_jailbroken_within_24_hours_using/) ⭐️ 7.0/10

据报道，一名研究人员在 GPT-6 Astra 发布后 24 小时内，使用扩展的 Task-in-Prompt（TIP）攻击成功越狱。该攻击结合了 ACL 2025 论文中的 TIP 攻击与四种未公开的技术。TIP 攻击通过将有害目标隐藏在另一任务（如解密码或执行 Python 代码）中来利用模型的推理和指令遵循行为。研究人员表示，原始的 TIP 攻击对 GPT-6 已不再有效，因此进行了重新设计。他们已私下向 OpenAI 披露了细节，而非公开漏洞。该研究人员一年前曾在 GPT-5 发布一小时内成功越狱。

reddit · r/MachineLearning · /u/Asleep-Requirement13 · 9月5日 19:11

**「背景」** Task-in-Prompt（TIP）攻击是一种对抗性攻击方法，通过将恶意指令嵌入看似无害的任务中，诱导模型执行不当操作。该攻击在 ACL 2025 论文中提出，并已被用于测试大型语言模型的安全防护。GPT-6 是 OpenAI 最新发布的模型，其安全机制较前代有所增强，但研究人员仍发现了绕过方法。

**「影响」** 该事件表明，即使是最新的大型语言模型也难以抵御精心设计的对抗性攻击，对 AI 安全研究提出了持续挑战。由于细节未公开，实际风险尚不明确，但 OpenAI 可能已采取措施修复漏洞。

**标签**: `#AI security`, `#jailbreak`, `#GPT-6`, `#adversarial attacks`, `#responsible disclosure`

---

<a id="item-tech-news-9"></a>
### [搜索代理据称在基准测试中击败 GPT-6 Astra](https://www.reddit.com/r/MachineLearning/comments/1w8gr2i/search_agent_beats_gpt6_astra_on_benchmarks_just/) ⭐️ 7.0/10

据 Reddit 上的一篇帖子称，一个搜索代理在发布后不久便在基准测试中击败了 GPT-6 Astra，但该帖子未提供任何具体细节或证据。这一说法若属实，可能意味着搜索代理在特定任务上具有竞争力，但缺乏技术细节和可验证的数据，因此其重要性难以评估。目前没有链接的文章或数据支持这一说法，因此应谨慎对待。该帖子在 r/MachineLearning 社区中引发关注，但未提供任何基准名称、性能数字或方法说明。

reddit · r/MachineLearning · /u/Neither\_You\_5673 · 9月6日 00:05

**「背景」** GPT-6 Astra 是 OpenAI 近期发布的新一代模型，其基准测试表现备受关注。根据独立评测，GPT-6 Astra 在部分基准上表现优异，例如在 Terminal Bench 4.0 上得分约 57.9%，高于 GPT-5.6 Sol 的 37.3% 和 Claude Fable 5.1 的 55.8%；同时其幻觉率从 92% 降至 51%（最大努力模式下）。然而，在 Artificial Analysis 的智能指数中，Claude Fable 5.1 以 65.7 分领先于 Astra 的 61.2 分，并在 Humanity&\#x27;s Last Exam（带工具）上超过 Astra。本帖子声称某个搜索代理在发布后不久即在基准测试中击败 GPT-6 Astra，但未提供任何具体细节或证据。

**「影响」** 如果该说法得到证实，可能表明搜索代理在特定基准上具有竞争力，但缺乏证据意味着目前对用户或开发者尚无实际影响。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.mindstudio.ai/blog/gpt-6-astra-benchmarks-analysis">GPT-6 Astra Benchmarks: Is It Really Better Than Fable 5.1? | MindStudio</a></li>
<li><a href="https://artificialanalysis.ai/articles/benchmarking-gpt-6-astra">Benchmarking GPT-6 Astra | Artificial Analysis</a></li>
<li><a href="https://emergent.sh/learn/gpt-6-astra-benchmarks">GPT-6 Astra Benchmarks: What the Numbers Actually Show</a></li>

</ul>
</details>

**标签**: `#AI`, `#benchmarks`, `#search agent`, `#GPT-6 Astra`, `#machine learning`

---

<a id="item-tech-news-10"></a>
### [英伟达发布 PAIR 软件，闲置电脑可组本地 AI 集群](https://www.techspot.com/news/113742-nvidia-pair-software-turns-idle-home-computers-local.html) ⭐️ 7.0/10

英伟达发布了开源软件 PAIR（Personal AI Router），可将 GeForce RTX 显卡、DGX Spark 和 Mac 等不同设备连接成一个本地 AI 集群，无需专用线缆，几分钟即可完成组网。该软件支持 Ollama 和 LM Studio 等推理后端，数据和查询不离开本地网络。英伟达称，家庭闲置的约 165 teraFLOPS 算力可被调动起来。这一工具为 AI 爱好者和研究人员提供了利用现有消费级硬件构建本地算力池的便捷途径。

telegram · zaihuapd · 9月5日 02:55

**「背景」** NVIDIA PAIR（Personal AI Router）是英伟达于近期发布的开源软件，旨在将本地网络中的多台设备（如配备 GeForce RTX 显卡的 Windows/Linux 系统、DGX Spark 以及 Mac）连接成一个个人 AI 集群。它通过提供兼容 Ollama 和 OpenAI 的代理端点，使应用程序和代理能够统一访问集群中的推理资源，而无需专用线缆或复杂配置。该软件支持 Ollama、LM Studio 等推理后端，并确保数据和查询不离开本地网络。

**「影响」** 对于拥有多台闲置 GeForce RTX 或 Mac 设备的 AI 爱好者和研究人员，PAIR 提供了一种低成本、隐私友好的方式，将分散的消费级硬件整合为本地 AI 集群，从而提升推理能力，同时避免云端数据外泄。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.nvidia.com/en-eu/ai-on-rtx/personal-ai-router/">Personal AI Router for Local Inference | NVIDIA PAIR</a></li>
<li><a href="https://build.nvidia.com/spark/pair">Install and Use NVIDIA PAIR | DGX Spark</a></li>

</ul>
</details>

**标签**: `#NVIDIA`, `#AI infrastructure`, `#local AI cluster`, `#open source`, `#consumer hardware`

---

<a id="item-tech-news-11"></a>
### [美国车企敦促永久禁止中国网联车及软硬件](https://www.rfi.fr/tw/%E5%9C%8B%E9%9A%9B/20260904-%E6%B1%BD%E8%BB%8A%E8%A3%BD%E9%80%A0%E5%95%86%E6%95%A6%E4%BF%83%E7%BE%8E%E5%9C%8B%E5%9C%8B%E6%9C%83%E6%B0%B8%E4%B9%85%E7%A6%81%E6%AD%A2%E4%B8%AD%E5%9C%8B%E7%B6%B2%E8%81%AF%E6%B1%BD%E8%BB%8A%E9%80%B2%E5%85%A5%E7%BE%8E%E5%9C%8B) ⭐️ 7.0/10

代表在美销售多数车企的汽车创新联盟致信美国国会领导人，要求在本届国会明年 1 月 3 日会期结束前，立法永久禁止在美国销售、进口和生产中国网联汽车及其软硬件。联盟总裁博泽拉称，中国车企正低价倾销补贴车辆，比亚迪、吉利等已冲击全球市场。参议院商务委员会推进的法案可能将奔驰排除出美国市场，因其中国投资者持股近 20%，而奔驰本身也是该联盟成员。此举若成法，将深刻影响中美汽车产业及供应链格局。

telegram · zaihuapd · 9月5日 10:04

**「背景」** 美国汽车创新联盟代表在美销售的大多数车企，正敦促国会在明年 1 月 3 日会期结束前立法，永久禁止中国网联汽车及其软硬件在美国销售、进口和生产。该联盟总裁博泽拉指出，中国车企以低价补贴车辆冲击全球市场，如比亚迪、吉利等。此外，参议院商务委员会推进的法案可能因奔驰中国投资者持股近 20%而将其排除出美国市场，尽管奔驰本身也是该联盟成员。

**「影响」** 若该法案通过，梅赛德斯-奔驰可能因中国投资者持股近 20%而被禁止在美国市场销售或生产新车，除非其最大股东出售股份或法案修改。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://finance.yahoo.com/economy/policy/articles/mercedes-faces-2030-us-ban-185049949.html">Mercedes Faces 2030 US Ban Risk Over Nearly 20% Chinese Ownership</a></li>
<li><a href="https://www.foxbusiness.com/politics/mercedes-benz-could-face-us-ban-under-senate-bill-targeting-chinese-owned-automakers">Mercedes-Benz faces potential US ban under bill targeting Chinese automaker ownership | Fox Business</a></li>
<li><a href="https://www.cnbc.com/2026/05/29/mercedes-benz-ban-congressional-bill-china-ownership.html">Mercedes-Benz may be shut out of U.S. market under bill aimed at Chinese automaker ownership</a></li>

</ul>
</details>

**标签**: `#connected vehicles`, `#US-China tech policy`, `#automotive industry`, `#supply chain`, `#regulation`

---

## 科技博客

<a id="item-tech-blog-1"></a>
### [COSMAC Elf 五十周年：回顾 RCA 1802 的独特架构](https://hackaday.com/2026/09/04/cosmac-elf-turns-50/) ⭐️ 7.0/10

rss · Hackaday · 9月5日 05:00

**「背景」** 在 20 世纪 70 年代初，个人拥有计算机几乎不可能，但 1976 年《Popular Electronics》杂志介绍了一款仅需 80 美元即可构建的计算机——COSMAC Elf，其核心是 RCA 1802 CPU。这款 CPU 由 Joseph Weisbecker 设计，具有独特的架构，但也存在明显的局限性。

**「方案」** RCA 1802 拥有 16 个 16 位寄存器，任何寄存器都可用作程序计数器或索引寄存器，并内置 DMA，便于连接廉价视频显示。然而，它没有直接堆栈，子程序调用和返回需要依赖 SCRT（标准调用返回技术）或手动使用寄存器。作者展示了使用 SEP 指令和额外寄存器实现调用的汇编代码，但这种方法冗长且占用寄存器。尽管存在这些限制，1802 的指令集非常规整，且具有 CMOS 低功耗和抗辐射特性，曾被用于 OSCAR 卫星。

**「启示」** 作者认为，COSMAC Elf 和 RCA 1802 虽然在某些方面落后（如无堆栈、速度慢），但其独特的寄存器架构和规整的指令集体现了早期个人计算的创新精神，对后来的 CPU 设计产生了影响。

**标签**: `#RCA 1802`, `#COSMAC Elf`, `#retrocomputing`, `#assembly language`, `#CPU architecture`

---

<a id="item-tech-blog-2"></a>
### [在 RP2350 上运行生成式 AI](https://hackaday.com/2026/09/05/running-generative-ai-on-an-rp2350/) ⭐️ 6.0/10

rss · Hackaday · 9月5日 11:00

**「背景」** 出于隐私、定制和成本考虑，人们对在本地硬件上运行 AI 模型的兴趣日益浓厚，但微控制器通常被认为资源有限，难以胜任生成式 AI 任务。

**「方案」** 作者报道了\[Tim\]的一个项目，他在 RP2350 微控制器上运行了一个扩散模型，能够生成 128×128 分辨率的人脸图像，每张耗时约 20 秒。该模型并非直接生成图像，而是先在潜在空间中生成分布，再由变分自编码器的解码器转换为图像。生成部分采用潜在流扩散变换器，通过迭代预测逐步逼近目标图像，并支持类别引导（如微笑）。\[Tim\]训练了大小和速度不同的两个模型，并将权重量化为 8 位整数，使模型和推理程序适配 4MB 闪存。尽管输出图像不够自然，但已相当可辨。

**「启示」** 作者认为，这一成就表明通过限制分辨率、专注特定任务和量化权重，扩散模型也能在微控制器上运行，为嵌入式 AI 提供了可能性。

**标签**: `#embedded AI`, `#diffusion models`, `#RP2350`, `#quantization`, `#microcontrollers`

---

<a id="item-tech-blog-3"></a>
### [Pixel Watch 5 展现良好可维修性](https://hackaday.com/2026/09/05/pixel-watch-5-demonstrates-good-repairability/) ⭐️ 5.0/10

rss · Hackaday · 9月5日 20:00

**「背景」** 许多便携设备一旦内部元件损坏就沦为电子垃圾，但大型品牌中仍有少数产品兼顾功能与可维修性。Pixel Watch 5 便是一例，它在 iFixit 的可维修性评分中获得 9/10。

**「方案」** 尽管具备 IP68 防护等级，Pixel Watch 5 的开启方式却很简单：拧下几颗螺丝即可释放闩锁，后盖随之打开，内部没有一滴胶水，仅靠 O 形环垫圈防水，且可重复使用。内部采用模块化设计，螺丝颜色编码，便于拆卸，几分钟内即可完成。这种闩锁加垫圈的设计，加上易于获取备件，是值得其他制造商借鉴的亮点。作者还建议 DIY 智能手表项目可考虑类似方案，而非依赖胶水。

**「启示」** 作者认为，Pixel Watch 5 证明了在小型设备上采用闩锁和垫圈而非胶水，既能保持防水性能，又能显著提升可维修性，希望更多制造商能效仿这一做法。

**标签**: `#repairability`, `#smartwatch`, `#hardware design`, `#iFixit`, `#consumer electronics`

---

<a id="item-tech-blog-4"></a>
### [Voicebox FX：CircuitPython I2S 音频的参考设计](https://hackaday.com/2026/09/05/voicebox-fx-is-a-blueprint-for-circuitpython-i2s-audio/) ⭐️ 5.0/10

rss · Hackaday · 9月5日 17:00

**「背景」** 在 CircuitPython 项目中实现音频功能时，开发者常因缺乏现成的参考设计而需要从头摸索 I2S 音频组件的连接与配置。I2S（Inter-IC Sound）是一种用于在组件间传输数字音频数据的协议，虽然接口相对简单，但实际应用中的细节仍需示例来指导。

**「方案」** 作者指出，Adafruit 的 Voicebox FX 项目正是这样一个理想的参考设计。它集成了 I2S 麦克风、I2S 放大器和 RP2350 微控制器，能够录音、播放声音，并通过物理输入控制多种音效。该项目不仅功能完整，而且文档详尽，封装在 3D 打印外壳中，既可作为学习模板，也具备玩具的趣味性。作者强调，对于涉及 I2S 音频的 CircuitPython 项目，Voicebox FX 提供了实用的示例和灵感，帮助开发者快速上手。

**「启示」** 作者认为，Voicebox FX 是 CircuitPython I2S 音频项目的绝佳参考设计，其价值在于将硬件选型、软件实现和物理交互完整结合，为类似项目提供了清晰的蓝图。

**标签**: `#CircuitPython`, `#I2S audio`, `#reference design`, `#RP2350`, `#Adafruit`

---

<a id="item-tech-blog-5"></a>
### [记录失败：开源硬件项目的宝贵实践](https://hackaday.com/2026/09/05/if-at-first-you-dont-succeed/) ⭐️ 5.0/10

rss · Hackaday · 9月5日 14:00

**「背景」** 在开源硬件项目中，成功往往被大肆宣扬，而失败则常被隐藏。作者通过一个使用 10W 蓝色激光对 3D 打印件进行后处理平滑的项目，指出记录失败过程的重要性。该项目尚未完全成功，但其详细的失败记录却极具价值。

**「方案」** 作者强调，在开源硬件项目中，详细记录失败原因和分析过程，不仅有助于自己未来的改进，也能为他人提供宝贵的起点。他以激光平滑项目为例，指出从平面切片到三维平滑的转变带来了碰撞、遮挡等复杂问题，而作者通过视频详细展示了这些挑战，其价值远超成功视频。此外，作者还提到，坦诚面对失败可以吸引社区帮助，但社交媒体上的恶意评论常让人望而却步。因此，他建议以幽默和自嘲的态度应对，并坚持记录每个硬件问题及其修复过程，这有助于追踪修订，并为他人提供参考。

**「启示」** 作者认为，记录失败和修正过程比记录成功更有价值，因为成功可以复制，而失败的知识能指导未来。这种实践是开源硬件社区协作和进步的关键。

**标签**: `#open-source hardware`, `#failure documentation`, `#3D printing`, `#project management`, `#community`

---

<a id="item-tech-blog-6"></a>
### [让旋转电话摆脱线缆：ESP32-S3 与 SLIC 的蜂窝改造](https://hackaday.com/2026/09/05/free-your-rotary-telephone-from-its-wire/) ⭐️ 5.0/10

rss · Hackaday · 9月5日 08:00

**「背景」** 旋转电话虽已过时，但仍有不少留存，成为复古技术爱好者的改造目标。作者\[fregacmols\]提出了一种方案：将老式旋转电话改装成手机，使其摆脱物理线缆的束缚。

**「方案」** 该项目的核心是使用用户线路接口模块（SLIC）模拟铜线电话线路，连接未修改的旋转电话，并将其音频和控制信号传输至 Lilygo ESP32-S3 开发板。ESP32-S3 作为主控，负责处理拨号音、振铃等北美用户线路协议，并通过蜂窝调制解调器实现通话。软件还提供了特殊代码，用于开启无线网络维护和诊断功能。这种设计保留了电话的原始外观和操作方式，无需改动内部结构。评论区还讨论了其他方案，如使用 Cisco VG224 网关或 Raspberry Pi 搭配 Grandstream ATA，但成本或复杂度较高。

**「启示」** 作者通过这一项目展示了将复古设备与现代无线技术结合的可能性，既保留了原汁原味的体验，又赋予了新的功能。这体现了技术爱好者对旧物改造的创意，以及 SLIC 和 ESP32 在模拟电话线路中的实用价值。

**标签**: `#rotary phone`, `#ESP32`, `#cellular conversion`, `#SLIC`, `#retro tech`

---