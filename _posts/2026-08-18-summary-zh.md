---
layout: default
title: "Horizon Summary: 2026-08-18 (ZH)"
date: 2026-08-18
lang: zh
---

> 从 45 条内容中筛选出 21 条重要资讯。

---

**科技新闻**
1. [Linux 7.3 提升显存耗尽时性能](#item-tech-news-1) ⭐️ 8.0/10
2. [Mojo 编程语言正式开源](#item-tech-news-2) ⭐️ 8.0/10
3. [Qwen 3.8 27B 在人工智能分析指数中得分 52](#item-tech-news-3) ⭐️ 8.0/10
4. [llama.cpp v0.1.2 发布：同步 ggml 并优化 CUDA](#item-tech-news-4) ⭐️ 7.0/10
5. [亚马逊广告税：便利的隐性成本](#item-tech-news-5) ⭐️ 7.0/10
6. [Turbovec：Rust 实现 Google TurboQuant 向量搜索](#item-tech-news-6) ⭐️ 7.0/10
7. [用 20 美元工具修复变砖的 Framework 笔记本](#item-tech-news-7) ⭐️ 7.0/10
8. [Polars 速查表：将 500 页指南压缩为两页](#item-tech-news-8) ⭐️ 7.0/10
9. [数据中心废热使下风社区气温升高约 0.8°C](#item-tech-news-9) ⭐️ 7.0/10
10. [在 264KB 内存上训练扩散模型](#item-tech-news-10) ⭐️ 7.0/10
11. [苹果摄像头版 AirPods 现身，或于 9 月发布](#item-tech-news-11) ⭐️ 7.0/10
12. [企业微信 5.0.10 开放 CLI 与 MCP，支持 AI 接入办公模块](#item-tech-news-12) ⭐️ 7.0/10
13. [中国要求部分政府机构提前卸载定制版 Windows 10](#item-tech-news-13) ⭐️ 7.0/10
14. [OpenAI 与 CodeAI 合作推进青少年 AI 教育](#item-tech-news-14) ⭐️ 7.0/10
15. [国产 AI 芯片 2026 年将占中国市场近 90%，寒武纪与华为成最大赢家](#item-tech-news-15) ⭐️ 7.0/10

**科技博客**
1. [智能手机与新一代助听器](#item-tech-blog-1) ⭐️ 7.0/10
2. [MeltCalc：3D 打印热端与材料数据库](#item-tech-blog-2) ⭐️ 6.0/10
3. [逆向工程烤架控制器，发布开源固件](#item-tech-blog-3) ⭐️ 6.0/10
4. [VR 焊接教学：高斯溅射技术带来全新视角](#item-tech-blog-4) ⭐️ 6.0/10
5. [PolyShot 相机：怀旧数码相机的 DIY 制作](#item-tech-blog-5) ⭐️ 5.0/10
6. [修复旧相机：从拆解到重组](#item-tech-blog-6) ⭐️ 5.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [Linux 7.3 提升显存耗尽时性能](https://pixelcluster.dev/VRAM-Overcommit/) ⭐️ 8.0/10

Linux 7.3 版本引入了显存（VRAM）超量使用（overcommit）的改进，显著提升了 GPU 内存耗尽时的性能。该改进针对 GPU 工作负载中的显存不足问题，通过优化内核的显存分配和回收机制，减少了性能下降。这一变化对依赖 GPU 的开发者、游戏玩家和 AI 研究人员尤为重要，因为显存不足常常导致性能骤降或程序崩溃。文章指出，该改进有望在未来被上游内核采纳，但具体版本和性能数据尚未公布。社区对此反应热烈，认为这是 Linux 内核在性能优化方面的又一重要进步。

hackernews · flaburgan · 8月18日 07:51 · [社区讨论](https://news.ycombinator.com/item?id=49342719)

**「背景」** 在 GPU 计算中，显存（VRAM）是有限的资源，当应用程序请求的显存超过物理容量时，内核需要决定如何处理。传统上，Linux 内核在显存耗尽时可能直接导致程序崩溃或性能严重下降。显存超量使用（overcommit）允许内核临时分配超出物理显存的内存，但需要有效的回收和交换机制。Linux 7.3 的改进旨在优化这一过程，使系统在显存不足时仍能保持较好的性能。

**「影响」** 对于使用 GPU 进行深度学习、游戏或图形渲染的 Linux 用户，这一改进有望减少因显存不足导致的性能瓶颈和程序崩溃，提升工作流的稳定性和效率。

**「社区讨论」** 社区普遍对 Linux 7.3 的改进表示赞赏，认为这是内核性能优化的又一亮点。有用户提到希望未来能解决系统内存（RAM）耗尽时系统冻结的问题，并对比了 Windows 和 Linux 的处理方式。也有用户指出，NVIDIA 显卡目前不支持分页，导致显存管理受限，期待未来改进。此外，有用户对虚拟内存碎片整理提出疑问，认为内核可能需要在性能与稳定性之间权衡。

**标签**: `#linux`, `#vram`, `#performance`, `#gpu`, `#kernel`

---

<a id="item-tech-news-2"></a>
### [Mojo 编程语言正式开源](https://simonwillison.net/2026/Aug/18/mojo-is-now-open-source/) ⭐️ 8.0/10

Mojo 编程语言现已正式开源，其编译器和工具链采用 Apache 2.0 许可证发布。此前，Mojo 自 2023 年 5 月起承诺开源，并在上周发布了 1.0 版本。Mojo 最初的目标是成为 Python 的超集，但自 2025 年 8 月起，这一计划有所调整，不再强求完全兼容 Python。如今，Mojo 已成为一门独立的语言，专注于简化 GPU 编程，其语法受 Python 启发，但并非完全兼容现有 Python 代码。这一开源举措兑现了长期承诺，并为社区贡献和生态发展奠定了基础。

rss · Simon Willison · 8月18日 21:39

**「背景」** Mojo 是由 Modular 公司开发的一种面向 AI 和系统编程的编程语言，旨在结合 Python 的易用性与 C/C++ 的性能。自 2023 年 5 月首次发布以来，Mojo 一直承诺将开源，但直到 1.0 版本发布后才兑现。最初，Mojo 计划成为 Python 的超集，以便利用现有 Python 代码快速构建生态，但后来这一目标被调整，Mojo 现在更专注于 GPU 编程的优化。

**「影响」** Mojo 的开源将使开发者能够自由使用、修改和分发该语言，促进社区贡献和生态系统的快速发展，尤其对 AI 和 GPU 编程领域的开发者具有重要意义。

**标签**: `#Mojo`, `#open source`, `#programming languages`, `#AI`, `#compiler`

---

<a id="item-tech-news-3"></a>
### [Qwen 3.8 27B 在人工智能分析指数中得分 52](https://simonwillison.net/2026/Aug/17/qwen-38-27b-scores-52/) ⭐️ 8.0/10

Qwen 3.8 27B 在人工智能分析智能指数上取得了 52 分，与 GPT-5.6 Luna（最大）的得分持平，仅比 GLM-5.2（最大）和 DeepSeek V4 Pro 0813（最大）低一分。值得注意的是，GLM-5.2 拥有 7530 亿参数，DeepSeek V4 Pro 0813 拥有 1.7 万亿参数，而 Luna 的规模未知，但可能远大于 27B。这一结果凸显了开源模型在效率上的显著进步，以远小于竞争对手的规模达到了相近的性能水平。该模型由 Simon Willison 报道，并链接至 Artificial Analysis 的评测页面。

rss · Simon Willison · 8月17日 23:58

**「背景」** Qwen 3.8 27B 是阿里巴巴旗下 Qwen 团队发布的开源权重模型，参数量为 27B，原生支持 262,144 token 的上下文长度，并可通过 YaRN 扩展至 100 万 token。Artificial Analysis Intelligence Index 是一个综合评估大语言模型智能水平的基准测试，其分数反映模型在多项任务上的整体表现。该模型在测试中生成 160M token，远高于同类模型的中位数 43M，显示出较高的输出冗长度。

**「影响」** 对于 AI/ML 从业者而言，这一结果意味着开源模型在效率上取得了重大突破，可能降低高性能 AI 的门槛，并推动更小、更高效的模型在资源受限环境中的应用。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://huggingface.co/Qwen/Qwen3.8-27B">Qwen / Qwen 3 . 8 - 27 B · Hugging Face</a></li>
<li><a href="https://artificialanalysis.ai/models/qwen3-8-27b">Qwen 3 . 8 27 B - Intelligence, Performance &amp; Price Analysis</a></li>

</ul>
</details>

**标签**: `#qwen`, `#llm`, `#benchmark`, `#open-source`, `#efficiency`

---

<a id="item-tech-news-4"></a>
### [llama.cpp v0.1.2 发布：同步 ggml 并优化 CUDA](https://github.com/ggml-org/llama.cpp/releases/tag/v0.1.2) ⭐️ 7.0/10

llama.cpp 发布了 v0.1.2 补丁版本，主要包含 ggml 同步、版本号提升至 0.20.2、构建修复、CUDA 优化以及 UI/CI 改进。该版本修复了 xcframework 构建问题，并为 DGX Spark 上的密集模型启用了 CUDA MMVQ nwarps=8 优化。此外，还引入了对整数分词器分数的支持、mtmd 输入哈希改用 SHA-256，以及文档更新。此版本为开发者和使用该库的用户提供了增量改进，但语义化版本控制仍在完善中。

github · github-actions\[bot\] · 8月18日 10:23

**「背景」** llama.cpp 是一个广泛使用的 C/C++ 实现的 LLM 推理库，支持多种硬件后端。ggml 是其底层张量库，负责核心计算优化。此次发布是 v0.1.1 之后的补丁更新，旨在通过同步 ggml 和优化 CUDA 路径来提升性能和稳定性。

**「影响」** 对于使用 llama.cpp 的开发者，此版本提供了构建修复和 CUDA 性能优化，特别是在 DGX Spark 硬件上可能获得更好的推理性能。同时，整数分词器分数的支持扩展了模型兼容性。

**标签**: `#llama.cpp`, `#release`, `#LLM inference`, `#CUDA`, `#ggml`

---

<a id="item-tech-news-5"></a>
### [亚马逊广告税：便利的隐性成本](https://seths.blog/2026/08/the-amazon-tax/) ⭐️ 7.0/10

Seth Godin 的博客文章《The Amazon tax》批评了亚马逊的广告驱动型市场，指出消费者在搜索特定产品时，广告会优先于自然结果展示，从而可能误导购买决策。文章认为，这种广告模式相当于对消费者征收“隐性税”，因为广告成本最终会转嫁到商品价格上。社区讨论中，有用户指出亚马逊的默认排序“Featured Items”会展示大量广告，而切换到“Best Sellers”排序可以消除广告。此外，讨论还涉及广告对小型卖家进入市场的阻碍，以及可能存在的商标侵权和欺诈等法律问题。尽管文章是观点性内容，但引发了关于电商广告伦理和消费者权益的广泛讨论。

hackernews · herbertl · 8月18日 13:22 · [社区讨论](https://news.ycombinator.com/item?id=49345263)

**「背景」** Seth Godin 是一位知名的营销专家和作家，其博客文章常引发广泛讨论。在这篇题为“亚马逊税”的文章中，他批评亚马逊的搜索广告业务，认为这并非真正的税收，而是“合法的盗窃”，并指出亚马逊从搜索广告中获利近十亿美元。文章引发了关于电商平台广告伦理和消费者影响的讨论。

**「影响」** 对于亚马逊用户而言，广告优先的搜索结果可能增加购物决策的难度，并可能支付更高的价格；对于卖家，广告预算成为竞争的必要条件，否则难以获得曝光。

**「社区讨论」** 评论者普遍认为广告是电商的常态，但亚马逊的广告展示方式可能误导消费者，有用户建议使用“Best Sellers”排序来规避广告。部分评论者指出，广告对小型卖家不公平，并可能引发法律诉讼，如商标侵权和欺诈。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://seths.blog/">Seth&#x27;s Blog</a></li>
<li><a href="https://seths.blog/2026/08/the-amazon-tax/">The Amazon tax | Seth&#x27;s Blog</a></li>

</ul>
</details>

**标签**: `#amazon`, `#advertising`, `#e-commerce`, `#consumer behavior`, `#online marketplaces`

---

<a id="item-tech-news-6"></a>
### [Turbovec：Rust 实现 Google TurboQuant 向量搜索](https://github.com/RyanCodrai/turbovec) ⭐️ 7.0/10

Turbovec 是一个基于 Rust 的向量搜索库，实现了 Google 的 TurboQuant 量化技术。该项目在 Hacker News 上引发讨论，社区关注其效率以及用于本地或私有搜索的潜力。有评论指出，FAISS 已不再是该领域的最先进技术，并提供了多个基准测试链接作为参考。此外，有用户提到 4GB 内存可处理 1000 万文档，认为这能加速反向索引构建和开发调试流程。项目目前尚未发布 SQLite 绑定，但社区对此表示期待。

hackernews · fittingopposite · 8月18日 18:07 · [社区讨论](https://news.ycombinator.com/item?id=49349898)

**「背景」** TurboQuant 是 Google Research 于 2025 年提出的一种在线向量量化方法，旨在以接近最优的失真率压缩数据，同时保持零精度损失。它被设计用于大型语言模型推理、键值缓存压缩、向量数据库和最近邻搜索等场景。Turbovec 是该方法的 Rust 实现，其特点是不需要学习数据集特定的码本，并引入了 TQ+ 校准机制来处理真实世界嵌入的非理想分布。

**「影响」** 对于需要高效向量搜索的开发者，Turbovec 提供了一种 Rust 原生实现，可能降低内存占用并提升索引构建速度，尤其适合本地或隐私优先的应用场景。

**「社区讨论」** 社区普遍认可 Turbovec 的潜力，但对其 README 的可读性提出批评，认为应更人性化以促进采用。也有用户建议尝试编译为 WASM 以在浏览器扩展中运行，同时有人指出 Qdrant 已集成 TurboQuant 数月，暗示 Turbovec 可能面临竞争。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/TurboQuant">TurboQuant - Wikipedia</a></li>
<li><a href="https://research.google/blog/turboquant-redefining-ai-efficiency-with-extreme-compression/">TurboQuant: Redefining AI efficiency with extreme compression</a></li>
<li><a href="https://medium.com/data-science-in-your-pocket/turbovec-googles-turboquant-makes-vector-search-smaller-faster-and-simpler-fdea72674aad">turbovec : Google’s TurboQuant Makes Vector Search Smaller, Faster, and Simpler | by Mehul Gupta | Data Science in Your Pocket | Medium</a></li>

</ul>
</details>

**标签**: `#vector-search`, `#rust`, `#quantization`, `#ai-infrastructure`, `#open-source`

---

<a id="item-tech-news-7"></a>
### [用 20 美元工具修复变砖的 Framework 笔记本](https://quantum5.ca/2026/08/16/fixing-bricked-amd-7040-series-framework-13-laptop-with-20-tools/) ⭐️ 7.0/10

一篇新指南详细介绍了如何仅用约 20 美元的工具修复一台变砖的 Framework 13 英寸 AMD 7040 系列笔记本电脑，该问题源于一次 BIOS 更新失败。文章强调了 BIOS 更新失败在个人电脑中仍然普遍，并提供了实用的修复步骤，使普通用户无需昂贵设备即可恢复设备。这一案例凸显了制造商在固件更新责任方面的缺失，以及维修选项的局限性。指南还指出，尽管 Framework 以可维修性著称，但部件供应和维修支持仍存在不足。

hackernews · jp\_sc · 8月18日 13:18 · [社区讨论](https://news.ycombinator.com/item?id=49345220)

**「背景」** Framework Laptop 13（AMD Ryzen 7040 系列）是一款模块化设计的笔记本电脑，用户可自行更换部件。BIOS（基本输入输出系统）是主板上的固件，负责硬件初始化和系统启动。BIOS 更新失败或固件损坏可能导致设备无法启动，即“变砖”。Framework 官方建议用户始终安装最新 BIOS 和驱动程序以保持系统安全稳定，但社区中已有报告称 BIOS 更新后出现随机冻结或无法开机等问题。

**「影响」** 对于遇到类似 BIOS 更新问题的 Framework 及其他笔记本电脑用户，该指南提供了一种低成本的自救方案，可能避免设备过早报废。然而，由于维修涉及拆机操作，普通用户可能仍面临风险，且制造商责任问题未得到解决。

**「社区讨论」** 评论者普遍认为，因官方 BIOS 更新导致设备变砖应归责于制造商，并建议通过法律途径维权，同时指出此类问题在 PC 行业仍很常见。也有用户对 Framework 的维修策略表示失望，认为其部件供应缺乏竞争，导致用户被锁定在官方生态中。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://quantum5.ca/2026/08/16/fixing-bricked-amd-7040-series-framework-13-laptop-with-20-tools/">Fixing a bricked AMD 7040 series Framework 13” laptop with $20...</a></li>
<li><a href="https://community.frame.work/t/freezing-after-bios-update-random-and-on-wake/13120">Freezing after BIOS Update (random and on wake) - Framework ...</a></li>

</ul>
</details>

**标签**: `#hardware`, `#repair`, `#BIOS`, `#Framework`, `#laptop`

---

<a id="item-tech-news-8"></a>
### [Polars 速查表：将 500 页指南压缩为两页](https://opensource.posit.co/resources/cheatsheets/polars/) ⭐️ 7.0/10

Python Polars 的两位作者发布了一份两页速查表，基于其 O&\#x27;Reilly 书籍《Python Polars: The Definitive Guide》（近 500 页）压缩而成。该速查表提供 PDF 和可访问的 HTML 版本，旨在作为 Polars 数据框库的便捷参考，涵盖常用操作。作者在 Hacker News 上征求反馈，询问是否有遗漏的常用操作或组织方式的改进建议。社区讨论聚焦于 Polars 与 R 的 tidyverse、data.table 以及 DuckDB 的对比，反映出数据科学家对工具选择的持续兴趣。

hackernews · jeroenjanssens · 8月18日 13:38 · [社区讨论](https://news.ycombinator.com/item?id=49345476)

**「背景」** Polars 是一个用 Rust 编写的 Python 数据处理库，以其高性能和表达力强的 DataFrame API 著称。Jeroen Janssens 和 Thijs Nieuwdorp 合著了《Python Polars: The Definitive Guide》一书，该书于 2025 年 2 月 20 日由 O&\#x27;Reilly 出版，旨在帮助用户充分利用 Polars 的功能。这份速查表正是基于这本书的内容，将近 500 页的书籍压缩成两页的参考指南，方便用户快速查阅常用操作。

**「影响」** 对于正在学习或使用 Polars 的数据工程师和分析师，这份速查表提供了一份精炼的参考，可能降低入门门槛并提高日常工作效率。

**「社区讨论」** 社区评论显示，一些 R 用户（如 wsowens 和 clircle）认为 Polars 可能解决了 Pandas 的痛点，值得尝试；而 paulfharrison 则对 pl.col\(&quot;...&quot;\) 的冗长语法表示不满；mrtimo 则分享了自己从 Python/Polars/Pandas 转向 DuckDB 的经验。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.oreilly.com/library/view/python-polars-the/9781098156077/">Python Polars: The Definitive Guide [Book]</a></li>
<li><a href="https://www.oreilly.com/library/view/python-polars-the/9781098156077/ch01.html">1. Introducing Polars - Python Polars: The Definitive Guide [Book]</a></li>
<li><a href="https://www.amazon.com/Python-Polars-Definitive-Transforming-Visualizing/dp/1098156080">Python Polars: The Definitive Guide: Transforming, Analyzing, and Visualizing Data with a Fast and Expressive DataFrame API: Janssens, Jeroen, Nieuwdorp, Thijs: 9781098156084: Amazon.com: Books</a></li>

</ul>
</details>

**标签**: `#polars`, `#python`, `#dataframe`, `#cheatsheet`, `#data-science`

---

<a id="item-tech-news-9"></a>
### [数据中心废热使下风社区气温升高约 0.8°C](https://asmedigitalcollection.asme.org/sustainablebuildings/article/7/2/024501/1233035/Data-Center-Waste-Heat-as-an-Emerging-Urban) ⭐️ 7.0/10

一项发表于《ASME 可持续建筑杂志》的实地测量研究首次提供了数据中心废热对邻近社区气温影响的实证数据。研究显示，在数据中心校园下风方向约 500 米范围内，平均气温比上风方向高出约 0.8°C（上风侧约 42.7°C，下风侧约 43.5°C）。该研究为数据中心环境影响这一争议性话题提供了具体证据，表明数据中心确实会局部加热周边环境，但影响范围有限。研究结果有助于更客观地评估数据中心在城市化进程中的热足迹。

hackernews · cwwc · 8月18日 17:24 · [社区讨论](https://news.ycombinator.com/item?id=49349147)

**「背景」** 数据中心在运行过程中会产生大量废热，通常通过空气冷却冷凝器阵列排放到周围环境中。此前研究多依赖模型估算或卫星遥感数据，缺乏对邻近居民区实际温度影响的直接测量。这项研究首次通过实地测量，量化了数据中心废热对下风向社区空气温度的具体影响。

**「影响」** 该研究为数据中心周边居民和城市规划者提供了量化参考，表明数据中心废热可导致下风方向数百米内气温升高约 0.8°C，但影响范围相对有限。

**「社区讨论」** Hacker News 评论中，部分用户对数据中心的担忧程度表示怀疑，认为其环境影响被夸大，并指出与其他工业设施相比规模较小；也有用户认为该研究提供了客观数据，但社区讨论仍存在意识形态分歧和情绪化争论。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://gigazine.net/gsc_news/en/20260525-data-center-waste-heat-downwind">We have confirmed instances where heat from data centers causes...</a></li>

</ul>
</details>

**标签**: `#data centers`, `#environmental impact`, `#urban heat`, `#empirical study`, `#infrastructure`

---

<a id="item-tech-news-10"></a>
### [在 264KB 内存上训练扩散模型](https://www.reddit.com/r/MachineLearning/comments/1vrk7t5/trained_an_diffusion_model_that_runs_on_264kb_of/) ⭐️ 7.0/10

一位开发者在一款名为 Shrike lite 的微控制器上训练了一个生成 32x32 像素图像的扩散模型，该微控制器仅有 264KB 的 SRAM。为了加速计算，开发者利用板载 FPGA 构建了两个并行 INT8 MAC 引擎，并采用 16 位累加，但由于 I/O 操作过多导致内存瓶颈，并行 MAC 引擎版本反而比仅用 MCU 的版本更慢（每张图像约 220 秒对比约 70 秒）。尽管存在严重的量化和内存限制，生成的图像大多显得奇怪且带有噪声，但部分结果仍然有趣。该项目展示了在极端资源受限环境下进行边缘 AI 推理的可行性与挑战。

reddit · r/MachineLearning · /u/PandaBean18 · 8月18日 09:26

**「背景」** 扩散模型是一类生成模型，通过逐步去噪来生成图像，通常需要大量计算和内存资源。微控制器（MCU）和 FPGA 是嵌入式系统中常见的组件，前者适合通用控制，后者可定制硬件加速。在仅有 264KB SRAM 的设备上运行扩散模型，需要极端的模型压缩和量化技术，例如将权重和激活值量化为 INT8，以降低内存占用和计算复杂度。

**「影响」** 该实验表明，在内存极小的微控制器上运行扩散模型是可行的，但性能受限于内存带宽而非计算能力，并行 MAC 引擎反而因 I/O 瓶颈降低效率。这为边缘 AI 开发者提供了重要参考：在资源受限设备上，优化数据移动和内存访问模式可能比增加并行计算单元更为关键。

**标签**: `#edge-ai`, `#diffusion-models`, `#model-compression`, `#microcontrollers`, `#fpga`

---

<a id="item-tech-news-11"></a>
### [苹果摄像头版 AirPods 现身，或于 9 月发布](https://www.macrumors.com/2026/08/17/camera-equipped-airpods-macos-26-7/) ⭐️ 7.0/10

据 MacRumors 报道，苹果正在开发配备摄像头的 AirPods，产品代号为 B790。在 macOS Tahoe 26.7 RC 的演示视频中，该设备展示了视觉智能功能，能够识别书名并保存信息，Siri 还可回答佩戴者周边环境的问题并记录信息。Mark Gurman 称，这款产品最快可能于 9 月发布。目前该消息仍属传闻，尚未得到苹果官方确认。

telegram · zaihuapd · 8月18日 02:00

**「背景」** 苹果公司尚未正式发布配备摄像头的 AirPods，但据 MacRumors 和 Mark Gurman 报道，其内部代号为 B790，且 macOS Tahoe 26.7 RC 中的演示视频展示了该设备的视觉智能功能。视觉智能是苹果在 iOS 18 中引入的一项功能，允许设备通过摄像头识别物体和信息，而此次演示表明该功能可能被集成到 AirPods 中，使用户能够通过语音交互获取周围环境的信息。

**「影响」** 若该产品如期发布，将显著扩展 AirPods 的功能边界，从音频设备转向具备视觉感知的智能穿戴设备，可能影响可穿戴设备市场和视觉智能应用生态。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://zeerawireless.com/blogs/news/airpods-ultra-camera-b790-visual-intelligence-leak">AirPods Ultra Camera Leak: B 790 &amp; Visual Intelligence</a></li>
<li><a href="https://www.squaredtech.co/camera-equipped-airpods-look-ready-for-their-big-test">Camera - Equipped AirPods : Key Visual Intelligence Test</a></li>
<li><a href="https://www.soundguys.com/apple-camera-airpods-first-video-161609/">Apple &#x27;s camera - equipped AirPods leak shows how they could work</a></li>

</ul>
</details>

**标签**: `#Apple`, `#AirPods`, `#visual intelligence`, `#macOS`, `#wearables`

---

<a id="item-tech-news-12"></a>
### [企业微信 5.0.10 开放 CLI 与 MCP，支持 AI 接入办公模块](https://mp.weixin.qq.com/s/uJf57P15-FQL_u6jLHiGYA) ⭐️ 7.0/10

企业微信 5.0.10 版本面向所有企业开放 CLI 与 MCP 能力，使 WorkBuddy、DeepSeek Harness 和企业自建 Agent 等主流 AI 代理能够直接调用 10 大核心办公模块。该版本引入了人员与 AI 权限隔离、关键操作人工审批、限时授权和完整审计等安全控制措施。AI 代理可以读取文档和表格、分析数据，并生成提案 PPT 或经营看板。这一更新旨在提升企业办公自动化水平，同时确保安全可控。

telegram · zaihuapd · 8月18日 06:22

**「背景」** MCP（Model Context Protocol）是一种开放协议，旨在标准化 AI 模型与外部工具、数据源的连接方式，使 AI 代理能够调用各类服务。企业微信是腾讯推出的企业通讯与办公平台，其 5.0.10 版本面向所有企业开放了 CLI（命令行界面）与 MCP 能力，允许 WorkBuddy、DeepSeek Harness 等 AI 代理直接调用 10 大核心办公模块。这一举措顺应了 MCP 生态快速发展的趋势，例如 MCP Roadmap 2025 H1 已规划远程 MCP、OAuth 2.1 等特性，而企业微信的接入进一步扩展了 MCP 在企业办公场景的应用。

**「影响」** 对于使用企业微信的企业和开发者，这一更新将显著简化 AI 代理与办公系统的集成，提高自动化效率，但需注意安全配置和审批流程的合规性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://juejin.cn/post/7673809185192804388">Agent Infra：Sandbox + MCP 工具网关（Gateway） MCP Server...</a></li>

</ul>
</details>

**标签**: `#WeCom`, `#MCP`, `#AI agents`, `#enterprise software`, `#API integration`

---

<a id="item-tech-news-13"></a>
### [中国要求部分政府机构提前卸载定制版 Windows 10](https://www.bloomberg.com/news/articles/2026-08-18/china-axing-microsoft-windows-from-state-agencies-ahead-of-plan) ⭐️ 7.0/10

中国国家安全部已要求部分政府相关机构卸载定制版 Windows 10，将原定于 2027 年 2 月的停用计划提前数月。知情人士称，该指令源于数据安全担忧，但未说明具体漏洞。微软表示，未发现影响该产品的安全事件，且该产品仍在定期获得安全更新。此举可能影响政府 IT 基础设施，并反映中国在数据安全方面的政策收紧。

telegram · zaihuapd · 8月18日 06:22

**「背景」** 中国政府长期以来推动在政府机构中使用国产操作系统和软件，以减少对外国技术的依赖。微软曾为中国政府定制了专门的 Windows 10 政府版，该版本在数据安全和合规性方面进行了特殊设计。此次国家安全部要求部分机构提前卸载该定制版 Windows 10，原定于 2027 年 2 月的停用计划被提前，反映出中国在数据安全方面的担忧加剧。

**「影响」** 受影响的政府机构需提前迁移至替代操作系统，可能增加短期 IT 运维成本；微软在中国政府市场的份额或进一步承压，但具体影响程度尚不明确。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.tomshardware.com/software/operating-systems/china-reportedly-orders-state-agencies-to-uninstall-its-government-only-edition-of-windows-10">China reportedly orders state agencies to uninstall its government-only edition of Windows 10 — Beijing accelerates planned retirement over data security concerns | Tom&#x27;s Hardware</a></li>
<li><a href="https://thenextweb.com/news/china-removes-microsoft-windows-10-state-agencies">China is removing Microsoft’s Windows 10 from state agencies</a></li>
<li><a href="https://wccftech.com/china-state-agencies-uninstall-windows-10-cmit-government-edition/">China’s State-Linked Firms Are Moving Away From Windows 10 Due To Security Concerns, Despite The Custom OS Developed By Microsoft Under Stringent Supervision</a></li>

</ul>
</details>

**标签**: `#China`, `#Microsoft`, `#Windows 10`, `#government policy`, `#data security`

---

<a id="item-tech-news-14"></a>
### [OpenAI 与 CodeAI 合作推进青少年 AI 教育](https://openai.com/index/chatgpt-for-teens/) ⭐️ 7.0/10

OpenAI 于 2026 年 8 月 18 日宣布与 CodeAI 建立合作伙伴关系，旨在帮助学生和教师学习负责任地使用 AI。该合作与 ChatGPT for Teens 的上线同步进行，后者包含青少年保护功能和家长控制。未来一年，双方将通过联合咨询委员会、AI 素养课程、学生挑战赛和职业项目，帮助数百万学生了解 AI。此外，合作还将支持 CodeAI 开发免费的高中 AI Foundations 课程。这一举措标志着 AI 教育在青少年群体中的大规模推广，并强调了安全与负责任使用的核心原则。

telegram · zaihuapd · 8月18日 12:06

**「背景」** OpenAI 与 CodeAI 的合作旨在通过“Hour of AI”等项目，向数百万学生介绍负责任地使用 AI 的基础知识。这一举措与 ChatGPT for Teens 的发布同步进行，该产品包含青少年保护功能和家长控制。此前，许多学生虽已使用 AI，但缺乏评估其输出的关键技能，此次合作旨在弥补这一理解差距。

**「影响」** 此次合作将直接惠及数百万学生和教师，通过免费课程和项目提升他们的 AI 素养，同时 ChatGPT for Teens 的安全功能为青少年使用 AI 提供了更可靠的保障。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://openai.com/index/partnering-with-codeai/">Partnering with CodeAI to prepare the first AI generation | OpenAI</a></li>
<li><a href="https://www.startuphub.ai/ai-news/artificial-intelligence/2026/openai-partners-codeai-for-teen-ai-education">OpenAI Partners CodeAI for Teen AI Education | StartupHub. ai</a></li>

</ul>
</details>

**标签**: `#AI education`, `#OpenAI`, `#partnership`, `#ChatGPT for Teens`, `#responsible AI`

---

<a id="item-tech-news-15"></a>
### [国产 AI 芯片 2026 年将占中国市场近 90%，寒武纪与华为成最大赢家](https://www.tomshardware.com/tech-industry/artificial-intelligence/chinas-homegrown-ai-accelerators-to-supply-90-percent-of-the-countrys-domestic-market-analysts-suggest-cambricon-and-huawei-expected-to-be-the-biggest-winners-in-the-shift-away-from-nvidia-and-amd) ⭐️ 7.0/10

据 TrendForce 预测，到 2026 年，中国本土 AI 加速器将占据国内市场的近 90%，较 2025 年的 45% 大幅提升。2025 年，英伟达以 220 万颗的出货量占据 55% 的市场份额，而华为出货 81.2 万颗，占 20.3%。寒武纪和华为被视为这一转变的最大受益者。然而，中国需要在一年内将高端 AI 芯片产量提升 2.2 倍至约 196 万颗，产能能否跟上仍存疑。这一预测反映了中国在 AI 芯片领域加速自给自足的趋势，但实际执行仍面临挑战。

telegram · zaihuapd · 8月18日 13:03

**「背景」** 中国 AI 加速器市场长期由英伟达主导，2024 年其份额约为 66%，但受美国出口管制影响，2025 年已降至 40%左右。与此同时，华为和寒武纪等本土企业加速推出自研 AI 芯片，试图填补市场空缺。TrendForce 预测，到 2026 年，中国本土 AI 加速器将占据国内近 90%的市场份额，较 2025 年的 45%大幅提升，其中华为和寒武纪被视为最大受益者。

**「影响」** 对于中国本土 AI 芯片厂商（如寒武纪和华为）而言，这一趋势将带来显著的市场增长机会，但产能瓶颈可能限制其短期内的实际市场份额提升。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.tomshardware.com/tech-industry/artificial-intelligence/chinas-homegrown-ai-accelerators-to-supply-90-percent-of-the-countrys-domestic-market-analysts-suggest-cambricon-and-huawei-expected-to-be-the-biggest-winners-in-the-shift-away-from-nvidia-and-amd">China&#x27;s homegrown AI accelerators to supply 90% of the country&#x27;s domestic market, analysts suggest — Cambricon and Huawei expected to be the biggest winners in the shift away from Nvidia and AMD | Tom&#x27;s Hardware</a></li>
<li><a href="https://www.scmp.com/tech/article/3358322/huawei-and-cambricon-lead-chinas-ai-server-chip-surge-piling-pressure-nvidia">Huawei and Cambricon tighten grip on China’s AI chip market as Nvidia slips</a></li>

</ul>
</details>

**标签**: `#AI accelerators`, `#China tech`, `#semiconductors`, `#market analysis`, `#Huawei`

---

## 科技博客

<a id="item-tech-blog-1"></a>
### [智能手机与新一代助听器](https://hackaday.com/2026/08/18/smartphones-and-the-next-generation-of-hearing-aids/) ⭐️ 7.0/10

rss · Hackaday · 8月18日 14:00

**「背景」** 真正的助听器并非简单放大声音，而是需要根据佩戴者的听力损失情况，选择性增强某些频率并抑制其他频率。传统上，这需要专业听力师通过听力图进行定制，导致价格高昂，也让开源硬件方案难以普及。

**「方案」** 2022 年美国 FDA 建立了非处方（OTC）助听器的监管框架，允许无需听力师介入即可销售。OTC 助听器必须使用气导方式，并允许用户调整输出，通常通过预设的音频滤波配置文件实现。2024 年苹果 AirPods 和 2026 年三星 Galaxy Earbuds 相继获得批准，成为 OTC 助听器。这些产品利用智能手机进行配置和听力测试，极大提升了用户体验。作者认为，这种将部分功能转移到手机上的做法，为开源硬件开发者提供了启示：通过软件分担硬件负担，可以降低成本并提高可及性，尽管存在移动操作系统带来的权衡。

**「启示」** 作者的核心观点是，智能手机与助听器的结合不仅让助听器更普及，也为开源硬件开发提供了新思路：利用手机处理部分功能，可以降低硬件复杂度，从而让助听技术惠及更多人。

**标签**: `#hearing aids`, `#FDA regulations`, `#OTC hearing aids`, `#smartphone integration`, `#open hardware`

---

<a id="item-tech-blog-2"></a>
### [MeltCalc：3D 打印热端与材料数据库](https://hackaday.com/2026/08/18/a-hot-end-and-material-database-for-3d-printing/) ⭐️ 6.0/10

rss · Hackaday · 8月18日 23:00

**「背景」** 在 FDM 3D 打印中，依赖打印机和切片软件的默认设置通常就足够了，但若要突破性能极限，就需要深入了解硬件和材料的实际能力。然而，制造商提供的流量和速度参数往往过于乐观，难以作为可靠依据。

**「方案」** 为此，化学家 Robert Samples 基于其聚合物工作经验，开发了 MeltCalc 数据库。该工具汇集了 64 种热端和 36 种常用聚合物的数据，通过热力学模型估算最大流量、打印速度和加热器需求，甚至能考虑 CHT 喷嘴等先进技术。用户只需查询特定热端与材料的组合，即可获得更贴近实际的流量和速度估算，避免依赖营销数字。项目源代码已在 GitHub 上公开，便于深入研究和改进。

**「启示」** MeltCalc 为 3D 打印爱好者提供了一个基于科学模型的实用参考，有助于更准确地评估硬件性能，从而在追求极限打印时做出更明智的决策。

**标签**: `#3D printing`, `#hot end`, `#thermodynamic modeling`, `#flow rate`, `#material database`

---

<a id="item-tech-blog-3"></a>
### [逆向工程烤架控制器，发布开源固件](https://hackaday.com/2026/08/18/reverse-engineered-grill-controller-gets-open-firmware/) ⭐️ 6.0/10

rss · Hackaday · 8月18日 20:00

**「背景」** 一位爱好者因修理烤架而拆解了 Gravity 800 烤架控制器，发现其基于 ESP32，并带有标记清晰的编程接口。原厂固件功能受限，且存在一个奇怪的 ADC 校正函数，这促使作者决定逆向工程并开发开源固件。

**「方案」** 作者通过编程接口使用 espflash 工具轻松转储了原始固件。分析发现，热敏电阻和物理输入连接到一个 16 引脚的芯片，该芯片通过 9600 波特率的 UART 与 MCU 通信。由于无法确定符合规格的 ADC 芯片，作者推测这是一个充当模拟前端的廉价 MCU。原始固件中的 ADC 校正函数令人困惑，其必要性不明，且根据图表，校正量最高可达 40 华氏度（在高温下），但作者最初误读为仅 2-3 度。其他组件如 CS1621 段式显示驱动器和风扇驱动等实现较为常规。最终，作者将逆向工程成果整合为开源固件，支持 OTA 更新、PID 温度控制和实时 Web 界面。

**「启示」** 作者展示了通过逆向工程解放物联网设备固件的价值，即使面对不明确的硬件设计，也能实现功能增强和开放控制。

**标签**: `#reverse engineering`, `#ESP32`, `#open firmware`, `#grill controller`, `#embedded systems`

---

<a id="item-tech-blog-4"></a>
### [VR 焊接教学：高斯溅射技术带来全新视角](https://hackaday.com/2026/08/18/watch-soldering-up-close-and-from-any-angle-in-vr/) ⭐️ 6.0/10

rss · Hackaday · 8月18日 11:00

**「背景」** 焊接这类手工技能，通过观察实际操作来学习往往比阅读文字更有效。传统的视频教程受限于固定视角，难以展现细节。作者介绍了一个名为“PCB Hand-Soldering Basics”的 VR 系列教程，它利用高斯溅射技术，让学习者可以从任意角度近距离观察焊接过程。

**「方案」** 该系列包含 13 个视频，由帝国理工学院电气与电子工程系合作制作。高斯溅射技术能够以较低的计算成本渲染出高细节的 3D 内容，使得烙铁、元件和 PCB 的细微之处在任意角度和近距离下都清晰可见。作者指出，这不同于以往展示地标等大型物体的应用，而是专注于手持工具的使用。文中还嵌入了一段从 VR 头显内录制的视频，展示了实际观看效果。作者认为，这种技术为学习者提供了独特的“前排座位”，支持缩放和 3D 视角切换，是传统视频难以比拟的。

**「启示」** 作者认为，高斯溅射技术为技能教学提供了新的可能性，尤其适合展示精细的手工操作。尽管文章未提供技术细节或效果评估，但这一应用展示了 VR 在教育领域的潜力。

**标签**: `#VR`, `#soldering`, `#Gaussian splats`, `#education`, `#3D video`

---

<a id="item-tech-blog-5"></a>
### [PolyShot 相机：怀旧数码相机的 DIY 制作](https://hackaday.com/2026/08/18/polyshot-camera-focuses-on-nostalgia/) ⭐️ 5.0/10

rss · Hackaday · 8月18日 18:30

**「背景」** 怀旧数码相机的图像质量让它们重新流行，但购买老款相机价格可能虚高。因此，\[Arnov Sharma\]决定自己动手制作一台，命名为 PolyShot。

**「方案」** PolyShot 的核心是 Unihiker K10 开发板，它基于 ESP32-S3，配备 200 万像素摄像头和 micro SD 卡，用于拍摄和显示照片。项目的关键在于一个简单的自定义 PCB，上面只有三个按钮：快门、画廊和下一张图片。电池仓的位置设计得恰到好处，提供了舒适的握持感。然而，按下快门按钮后，实际拍摄会有几秒钟的延迟，这可能是为了模拟老式相机的体验。作者计划在未来改进图像质量，因为项目已演变成更传统的数码相机，同时提升电池寿命（目前约三小时）。最终，他打算放弃 Unihiker，从头设计，使用 ESP32-S3 模块。

**「启示」** 作者认为，人们怀念的不仅仅是图像质量，而是相机能真实捕捉所看之物的能力，以及简单易用的特性。这个项目展示了如何用现代组件重现怀旧体验，但仍有改进空间。

**标签**: `#DIY camera`, `#ESP32-S3`, `#Unihiker K10`, `#nostalgia`, `#hardware project`

---

<a id="item-tech-blog-6"></a>
### [修复旧相机：从拆解到重组](https://hackaday.com/2026/08/18/so-you-want-to-fix-an-old-camera/) ⭐️ 5.0/10

rss · Hackaday · 8月18日 15:30

**「背景」** 旧相机是尝试摄影的绝佳途径，且除少数品牌外通常价格低廉。许多损坏的旧相机可以低价购得，但修复它们需要技巧和耐心。作者指出，修复旧相机并非易事，有时购买一台功能正常的相机可能更明智。

**「方案」** 作者推荐了 enthdegree 关于尼康 F100 拆解和维修的笔记，其中包含许多通用技巧。核心建议包括：详细记录每一步操作，因为拆解后很难记住组装顺序；注意不同螺丝可能尺寸不同，拆卸和安装顺序可能很重要。作者还分享了读者提供的实用方法，如使用带标签的塑料药盒分类螺丝，或用铅笔在纸上拓印螺丝位置并穿透固定。此外，有人建议使用 iFixit 磁性垫和螺丝刀套装简化过程，并提到用打火机油（萘）清洁旧润滑油。作者强调，电子相机极其复杂，即使有维修文档也困难，而老式机械相机更容易诊断和修复。

**「启示」** 修复旧相机需要细致的组织和记录，但即使如此，电子相机的复杂性仍可能超出预期。对于初学者，从机械相机入手可能更实际。

**标签**: `#camera repair`, `#film cameras`, `#disassembly`, `#screw organization`, `#hobbyist`

---