---
layout: default
title: "Horizon Summary: 2026-09-07 (ZH)"
date: 2026-09-07
lang: zh
---

> 从 51 条内容中筛选出 20 条重要资讯。

---

**科技新闻**
1. [Asahi Linux 正式支持 Apple M3](#item-tech-news-1) ⭐️ 8.0/10
2. [A/I Collective 因美国政府压力关闭](#item-tech-news-2) ⭐️ 8.0/10
3. [Isar Aerospace 第二次飞行成功入轨并部署载荷](#item-tech-news-3) ⭐️ 8.0/10
4. [OpenAI 内部研究：编码代理加速研发](#item-tech-news-4) ⭐️ 8.0/10
5. [llama.cpp b10829 修复 GDN 归一化数值偏差](#item-tech-news-5) ⭐️ 7.0/10
6. [GrapheneOS 重构默认应用并引入安全剪贴板](#item-tech-news-6) ⭐️ 7.0/10
7. [你的智力拉链开了（2025）](#item-tech-news-7) ⭐️ 7.0/10
8. [Anubis 集成 WebAssembly 的一年历程](#item-tech-news-8) ⭐️ 7.0/10
9. [Nitter 与 XCancel 经法律咨询后恢复服务](#item-tech-news-9) ⭐️ 7.0/10
10. [DNS 新域名注册中 10%-20%为诈骗](#item-tech-news-10) ⭐️ 7.0/10
11. [重写代码的陷阱：为何从头再来很少成功](#item-tech-news-11) ⭐️ 7.0/10
12. [llama.cpp 分支实现 MoE 专家扩展推理](#item-tech-news-12) ⭐️ 7.0/10
13. [雷达点密度是 5 类分类瓶颈](#item-tech-news-13) ⭐️ 7.0/10
14. [OpenAI 发布 Astra 后多次改动评测数据，幻觉率先降后恢复](#item-tech-news-14) ⭐️ 7.0/10
15. [长鑫科技 DRAM 市占率升至 10%，上半年营收增 873%](#item-tech-news-15) ⭐️ 7.0/10
16. [中国首款 AI 辅助研发创新药获批上市](#item-tech-news-16) ⭐️ 7.0/10
17. [微软推出开发者版 Windows 11：Project Zenith](#item-tech-news-17) ⭐️ 7.0/10

**科技博客**
1. [用树脂和姜黄素打印微米级 Benchies](#item-tech-blog-1) ⭐️ 7.0/10
2. [羽管键琴制作：非历史复刻的木工项目](#item-tech-blog-2) ⭐️ 5.0/10
3. [WordStar 在现代系统上的重生](#item-tech-blog-3) ⭐️ 5.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [Asahi Linux 正式支持 Apple M3](https://asahilinux.org/2026/09/m2-episode-1/) ⭐️ 8.0/10

Asahi Linux 项目宣布正式支持 Apple M3 芯片，这是继 M1 和 M2 之后，Linux 在 Apple Silicon 上运行的又一重要里程碑。该支持通过逆向工程实现，使得用户可以在 M3 设备上安装并运行 Linux，从而扩大了 Linux 在最新苹果硬件上的可用性。这一进展对于开源社区和 Linux-on-ARM 生态具有重要意义，但具体支持的功能和限制尚未完全披露。Asahi Linux 以其技术深度和持续的努力而闻名，此次更新预计将吸引更多用户尝试在 Apple Silicon 上使用 Linux。

hackernews · mdp2021 · 9月6日 14:08 · [社区讨论](https://news.ycombinator.com/item?id=49586698)

**「背景」** Asahi Linux 是一个致力于将 Linux 移植到 Apple Silicon（M 系列芯片）上的逆向工程项目。此前，该项目已支持 M1 和 M2 系列芯片，但 M3 系列（包括 M3、M3 Pro 和 M3 Max）一直未获官方支持。此次官方支持意味着用户可以在这些较新的 Mac 设备上安装并运行 Linux，但 GPU 加速等部分功能仍不完善。

**「影响」** 对于拥有 Apple M3 设备的开发者和技术爱好者，这一支持意味着他们可以在最新硬件上运行 Linux，而无需依赖虚拟机或等待非官方移植。然而，由于缺乏睡眠和 HDMI 支持等已知问题，实际采用可能仍面临障碍。

**「社区讨论」** 社区对此表示高度赞赏，但同时也指出了实际障碍，例如缺少睡眠和 HDMI 支持，以及在某些工作负载（如 llama.cpp）上性能不如 Metal 后端。部分用户还询问了双启动的具体方法，反映出对易用性的关注。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://hwbusters.com/news/asahi-linux-m3-support-goes-official-and-the-gpu-is-still-the-holdout/">Asahi Linux M3 Support Goes Official, and the GPU Is Still ...</a></li>
<li><a href="https://asahilinux.org/docs/platform/feature-support/m3/">M3 Series Feature Support - Asahi Linux Documentation</a></li>

</ul>
</details>

**标签**: `#Asahi Linux`, `#Apple Silicon`, `#Linux`, `#M3`, `#open source`

---

<a id="item-tech-news-2"></a>
### [A/I Collective 因美国政府压力关闭](https://keepitfree.ai/announcements/a/i-shuts-down-stay-human/) ⭐️ 8.0/10

长期运营的隐私倡导组织 A/I Collective（即 Autistici/Inventati）宣布关闭，原因是美国政府施加压力。该组织提供的服务曾被用于发布声明，涉及 2026 年法国、意大利、德国和荷兰铁路系统遭破坏的事件，美方因此认定其“实质性协助恐怖主义”。关闭决定引发了关于隐私、言论自由与国家安全之间张力的广泛讨论。目前尚不清楚关闭的具体时间表及用户数据迁移方案。

hackernews · captainmuon · 9月6日 14:34 · [社区讨论](https://news.ycombinator.com/item?id=49586898)

**「背景」** Autistici/Inventati（A/I）是一个意大利的数字权利与隐私保护集体，自 2001 年起为活动人士、记者和普通用户提供免费的匿名邮箱、邮件列表和加密工具，其决策采用集体共识而非多数投票制。2026 年 8 月 26 日，美国财政部外国资产控制办公室（OFAC）以涉嫌为恐怖主义活动提供物质支持为由，将 A/I 列入制裁名单，指控其工具被用于 2026 年法国、意大利、德国和荷兰的铁路破坏事件。该集体随后宣布永久关闭所有服务，结束了长达 25 年的运营。

**「影响」** A/I Collective（Autistici/Inventati）的关闭直接影响了依赖其匿名电子邮件和通信服务的用户，尤其是活动人士和记者，他们失去了一个重要的隐私保护工具。尽管美国政府声称该组织为 2026 年欧洲铁路破坏事件提供了物质支持，但社区评论中对这一指控的合理性存在质疑，且目前缺乏公开证据支持该说法。

**「社区讨论」** Hacker News 用户普遍表达失望与愤怒，有人讽刺美国“言论自由绝对主义者”对此事的沉默，也有人将美国政府称为“国际恐怖组织”。部分用户质疑 A/I 的“用户审查”机制是否足以避免被用于非法活动，并指出该组织的集体决策模式缺乏透明度。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Autistici/Inventati?wprov=sfla1">Autistici/Inventati - Wikipedia</a></li>
<li><a href="https://www.inventati.org/campaign/press">autistici.org - Press Release – August 28, 2026</a></li>
<li><a href="https://www.brinztech.com/breach-alerts/brinztech-alert-italian-collective-autistici-inventati-shuts-down-following-us-terrorist-designation">Italian Collective Autistici/Inventati Shuts Down Following US Terrorist Designation</a></li>

</ul>
</details>

**标签**: `#privacy`, `#free speech`, `#government pressure`, `#activism`, `#shutdown`

---

<a id="item-tech-news-3"></a>
### [Isar Aerospace 第二次飞行成功入轨并部署载荷](https://isaraerospace.com/press/history-for-european-spaceflight-isar-aerospace-reaches-orbit-and-deploys-payloads-on-second-flight) ⭐️ 8.0/10

德国私营航天公司 Isar Aerospace 在第二次飞行中成功将其两级火箭 Spectrum 送入近地轨道并部署了有效载荷，成为首枚从欧洲大陆成功入轨的私营开发火箭。此次发射于周六在挪威北极圈内的安岛航天发射场进行，火箭高 28 米。该公司由慕尼黑工业大学的三名学生创立，这一成就标志着欧洲在主权太空访问能力上的重大进展，并为全球客户提供了新的商业发射选项。尽管欧洲传统上依赖阿丽亚娜航天公司等机构，但此次成功展示了私营企业在欧洲航天领域的崛起。

hackernews · mpweiher · 9月6日 07:21 · [社区讨论](https://news.ycombinator.com/item?id=49584083)

**「背景」** Isar Aerospace 是一家由慕尼黑工业大学学生创立的德国私营航天公司，其 Spectrum 火箭是欧洲首枚从欧洲大陆发射入轨的私营开发火箭。此前，欧洲的轨道发射主要依赖法国阿里安航天公司（Arianespace）的火箭，而私营企业尚未实现从欧洲本土成功入轨。此次成功标志着欧洲在商业航天领域迈出了重要一步。

**「影响」** 这一里程碑为欧洲提供了除阿丽亚娜航天公司之外的独立商业发射途径，可能增强欧洲在航天发射市场的竞争力，并吸引更多国际客户寻求主权发射选项。

**「社区讨论」** 社区普遍表示祝贺，并认为这是欧洲乃至全球航天的重要进步。有评论指出欧洲与美国在发射策略上的差异，以及早期投资来自前 SpaceX 工程师 Bülent Altan 的背景。部分评论希望德国能给予 Isar Aerospace 强力支持，以与 SpaceX 竞争，但也有评论认为其新闻稿刻意忽略阿丽亚娜航天公司。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://defence-industry.eu/isar-aerospace-reaches-orbit-on-second-spectrum-flight-opening-new-european-launch-option-for-commercial-and-institutional-customers/">Isar Aerospace reaches orbit on second Spectrum flight, opening new ...</a></li>
<li><a href="https://isaraerospace.com/press/history-for-european-spaceflight-isar-aerospace-reaches-orbit-and-deploys-payloads-on-second-flight">History for European spaceflight: Isar Aerospace reaches orbit and ...</a></li>

</ul>
</details>

**标签**: `#spaceflight`, `#European space`, `#rocket launch`, `#private aerospace`, `#Isar Aerospace`

---

<a id="item-tech-news-4"></a>
### [OpenAI 内部研究：编码代理加速研发](https://simonwillison.net/2026/Sep/6/research-acceleration-the-view-inside-openai/) ⭐️ 8.0/10

OpenAI 在 2026 年 9 月 6 日发布了题为“Research acceleration: The view inside OpenAI”的文章，并配合首席科学家 Jakub Pachocki 的论文《An Alien Mind》，共同阐述了其“递归自我改进”（RSI）计划。文章披露了 OpenAI 内部研究团队使用编码代理的详细数据，显示 2026 年已成为“代理工程”在 OpenAI 内部真正起飞的一年。文中图表显示，每位研究员的日均 AI 支出从 2026 年 2 月接近 0 美元，缓慢上升至 6 月的约 150 美元，7 月保持平稳，随后在 7 月底至 8 月下旬急剧攀升至约 600 美元。Simon Willison 推测，这一加速可能与内部员工获得后来以 GPT-6 Astra 名义发布的模型访问权限有关。文章还提到，OpenAI 旨在构建能在人类监督下自主执行研究任务的“自动 AI 研究员”，以推动深度学习和对齐研究。

rss · Simon Willison · 9月6日 23:57

**「背景」** 递归自我改进（Recursive Self-Improvement，RSI）是指 AI 系统在无需人类干预的情况下改进自身能力的过程，OpenAI 将其视为通往通用人工智能（AGI）的关键路径之一。2026 年，OpenAI 内部设立了“RSI 日”以展示相关进展，并发布了多篇研究文章。同时，OpenAI 在 2026 年大力推动“智能体工程”（agentic engineering），即利用 AI 编码智能体辅助研究人员完成日常开发任务，这一趋势在业界也日益显著。

**「影响」** 对于 OpenAI 的研究团队而言，编码代理的广泛采用显著提升了研发效率，但每位研究员日均高达 600 美元的 AI 支出也凸显了高昂的计算成本。这一趋势可能加速 AI 研究进展，但也引发了对安全性和对齐问题的担忧。

**「社区讨论」** 社区评论中，有用户对 OpenAI“以 AI 防御 AI”的逻辑表示质疑，认为这可能是自我合理化的循环论证。也有用户指出，OpenAI 的路线图与 AI 2027 预测中的“研究实习生”概念相似，暗示其进展可能符合预期。此外，有用户提到自己从 3 月开始就能利用更强模型和工具实现 24/7 无人值守运行，但对 OpenAI 每人每天 8000 美元的支出感到惊讶，并好奇其工作追踪方式。还有用户提出，如果发现早期模型向当前模型传递了错误对齐，OpenAI 是否会回滚到安全检查点，但怀疑他们不会主动这样做。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://cryptobriefing.com/cooper-saye-openai-rsi-evaluations/">Cooper Saye joins OpenAI to work on recursive self - improvement ...</a></li>
<li><a href="https://eu.36kr.com/en/p/3917796699630978">GPT-5.6 Confirmed to Achieve Self -Optimization: Brand New...</a></li>

</ul>
</details>

**标签**: `#OpenAI`, `#AI research`, `#coding agents`, `#agentic engineering`, `#recursive self-improvement`

---

<a id="item-tech-news-5"></a>
### [llama.cpp b10829 修复 GDN 归一化数值偏差](https://github.com/ggml-org/llama.cpp/releases/tag/b10829) ⭐️ 7.0/10

llama.cpp 发布 b10829 版本，修复了 GDN（Gated Delta Net）归一化中的数值偏差问题，将原先使用的 max 操作改为 rsqrt，以与 flash-linear-attention（FLA）等参考实现保持一致。该修复针对 Qwen3-Next 模型支持，解决了因归一化公式不同而可能导致的模型输出差异。此前 llama.cpp 使用 ggml\_l2\_norm（即 x / max\(sqrt\(sum\(x\*x\)\), eps\)），而参考实现为 x \* rsqrt\(sum\(x\*x\) + eps\)，其中 eps 位于根号内。由于 clamp 在实际数值范围内不会触发，llama.cpp 实际上在无 epsilon 的情况下进行归一化，而参考实现则在根号内包含 epsilon。transformers 在首次添加 Qwen3-Next 时也犯了类似错误，并在三天后通过 huggingface/transformers\#40842 修正；vLLM 和 SGLang 因直接使用 FLA 而未受影响。此次修复未引入新的 ggml 算子，而是利用 rms\_norm 的特性（eps 在根号内）实现等价计算。

github · github-actions\[bot\] · 9月6日 23:04

**「背景」** GDN（Gated Delta Net）是 Qwen3-Next 模型中的一种归一化机制，其 q/k 归一化在 flash-linear-attention 库中被定义为 l2norm\(x\) = x \* rsqrt\(sum\(x\*x\) + eps\)，其中 eps 位于根号内。llama.cpp 此前使用 ggml\_l2\_norm，其公式为 x / max\(sqrt\(sum\(x\*x\)\), eps\)，即 torch.nn.functional.normalize 的实现，eps 作为 clamp 阈值而非根号内加法。这种差异在数值上可能导致模型输出不一致，因此需要对齐参考实现。

**「影响」** 使用 llama.cpp 运行 Qwen3-Next 模型的开发者应升级至 b10829 版本，以获得与参考实现一致的归一化行为，避免潜在的输出偏差。该修复不影响其他模型，因为 ggml\_l2\_norm 本身正确且未改动，rwkv7-base 等原有调用方不受影响。

**标签**: `#llama.cpp`, `#Qwen3-Next`, `#bugfix`, `#normalization`, `#inference`

---

<a id="item-tech-news-6"></a>
### [GrapheneOS 重构默认应用并引入安全剪贴板](https://grapheneos.social/@GrapheneOS/117225539756835649) ⭐️ 7.0/10

GrapheneOS 宣布对其默认应用进行重大改革，并推出安全剪贴板功能。此次更新首先涉及短信/彩信（SMS/RCS）应用的全面重构，未来还将替换或重构其他 AOSP 应用，包括过时的图库和键盘应用。GrapheneOS 最近招聘了多名新员工，以加速开发进程。安全剪贴板功能旨在增强用户复制粘贴操作时的隐私保护。这些改进主要面向注重隐私的 Android 用户和开发者，属于高价值的增量更新。

hackernews · Cider9986 · 9月6日 20:24 · [社区讨论](https://news.ycombinator.com/item?id=49590512)

**「背景」** GrapheneOS 是一个注重隐私和安全性的 Android 开源替代系统，其默认应用通常基于 AOSP（Android 开源项目）的应用。AOSP 的部分应用（如图库和键盘）被认为过时或功能不足，GrapheneOS 计划通过替换或重构来提升用户体验和安全性。安全剪贴板功能旨在防止恶意应用读取剪贴板内容，这是移动隐私保护中的一个常见关注点。

**「影响」** 对于 GrapheneOS 用户，此次更新将带来更安全、更现代的默认应用体验，尤其是短信/彩信应用的重构和未来图库、键盘的替换。安全剪贴板功能将增强用户复制敏感信息时的隐私保护。

**「社区讨论」** 社区对 GrapheneOS 的未来表示不同看法：有评论认为 Google 正在逐步限制 AOSP，对 GrapheneOS 的前景表示担忧；也有用户希望替换 AOSP 键盘为 FUTO 键盘，并指出当前键盘体验不佳。部分用户对安全剪贴板的具体含义存在疑问，并提供了相关链接和替代应用（如 ReFra 图库）的参考。

**标签**: `#GrapheneOS`, `#Android`, `#privacy`, `#secure clipboard`, `#AOSP`

---

<a id="item-tech-news-7"></a>
### [你的智力拉链开了（2025）](https://bcantrill.dtrace.org/2025/12/05/your-intellectual-fly-is-open/) ⭐️ 7.0/10

Bryan Cantrill 在 2025 年 12 月 5 日发表博文，主张使用 LLM 写作而不披露是不诚实的行为，并将其比喻为“智力拉链开了”。他认为 LLM 写作质量差，且“它们不是你”，因此未披露的使用会误导读者。该观点引发了关于 LLM 写作伦理的讨论，涉及披露、作者身份和写作本质。文章强调，写作即思考，而 LLM 无法替代个人的思考过程。

hackernews · cyb0rg0 · 9月6日 11:56 · [社区讨论](https://news.ycombinator.com/item?id=49585644)

**「背景」** 随着 LLM 在写作中的普及，关于其使用是否应披露的争议日益增多。Cantrill 的比喻源于社交场合中拉链未拉的尴尬，类比于未披露的 LLM 写作在智力上的不诚实。此前已有关于 AI 生成内容透明度的讨论，但 Cantrill 的观点聚焦于个人诚信和写作的认知价值。

**「影响」** 该观点可能促使更多作者和编辑重新考虑 LLM 使用的披露政策，尤其是在技术博客和学术写作中。然而，其影响程度取决于社区是否采纳这一伦理标准。

**「社区讨论」** 评论者普遍赞同 Cantrill 的类比，但提出了更深层的问题：jeremyjh 强调“写作即思考”，认为 LLM 写作会削弱思考过程；dynm 则质疑反对 LLM 写作的论点是否基于质量而非伦理，并预测即使 LLM 改进，反对意见仍会存在；jgrahamc 支持保留个人风格的重要性，而 ericbarrett 用餐厅比喻说明 LLM 写作可能破坏读者与作者之间的信任。

**标签**: `#LLM`, `#writing`, `#AI ethics`, `#intellectual honesty`, `#software engineering`

---

<a id="item-tech-news-8"></a>
### [Anubis 集成 WebAssembly 的一年历程](https://anubis.techaro.lol/blog/2026/anubis-wasm/) ⭐️ 7.0/10

Anubis 项目经过一年的努力，成功将 WebAssembly 集成到其系统中，这一过程涉及向后兼容性、性能权衡和设计决策等多方面的挑战。文章详细描述了在实现过程中如何解决这些技术难题，并强调了对于旧版浏览器（如 Chrome 66）的兼容性支持。这一集成对于 Anubis 的功能扩展和性能优化具有重要意义，同时也为其他开源项目提供了宝贵的经验。尽管过程漫长且复杂，但最终成果显著，展示了 WebAssembly 在实际应用中的潜力和挑战。

hackernews · xena · 9月6日 20:32 · [社区讨论](https://news.ycombinator.com/item?id=49590611)

**「背景」** Anubis 是一个开源项目，旨在通过工作量证明（Proof of Work）机制来阻止恶意爬虫和滥用行为。WebAssembly 是一种可以在浏览器中高效运行的二进制指令格式，能够提供接近原生的性能。将 WebAssembly 集成到 Anubis 中，是为了提升其验证过程的效率和安全性，同时保持对旧版浏览器的兼容性。

**「影响」** 对于 Anubis 的用户和开发者而言，这一集成意味着更高效、更安全的验证机制，同时确保了旧版浏览器的用户不会受到影响。此外，这一技术实践为其他需要类似集成的开源项目提供了参考，尤其是在处理向后兼容性和性能优化方面。

**「社区讨论」** 社区成员对 Anubis 的长期运作机制表示疑问，认为其假设爬虫程序内存受限可能不成立。同时，有成员赞赏作者对向后兼容性的重视，并建议使用更稳定的工具链。还有成员提出了预计算工作量证明的设想，以及对于难度单位换算的困惑。

**标签**: `#WebAssembly`, `#Anubis`, `#Backwards Compatibility`, `#Open Source`, `#Performance`

---

<a id="item-tech-news-9"></a>
### [Nitter 与 XCancel 经法律咨询后恢复服务](https://github.com/zedeus/nitter/commit/1428b4c2b4246f92a7e5b2673438e5fb39fcc4a3) ⭐️ 7.0/10

Nitter 和 XCancel 在获得法律建议后已恢复服务，继续为 X（原 Twitter）提供替代前端。Nitter 是一个开源项目，允许用户无需登录即可浏览 X 内容，而 XCancel 则提供 Nitter 实例的列表。此次恢复对依赖这些工具的用户至关重要，因为 X 上仍有许多独家信息。尽管细节有限，但社区对此表示欢迎，并希望项目能持续发展。

hackernews · zImPatrick · 9月6日 17:49 · [社区讨论](https://news.ycombinator.com/item?id=49588988)

**「背景」** Nitter 是一个开源项目，提供无需登录即可浏览 X（原 Twitter）内容的替代前端，而 XCancel 是基于 Nitter 的流行镜像服务。2026 年 8 月 24 日，X Corp 向这两个项目发出停止并终止函，导致 Nitter.net 下线、开发暂停，XCancel 也停止运营。项目维护者当时表示正在寻求法律建议。

**「影响」** 对于依赖 Nitter 和 XCancel 访问 X 内容的用户（尤其是注重隐私或无法直接访问 X 的用户）而言，服务的恢复确保了替代访问途径的持续可用。

**「社区讨论」** 社区评论普遍表示欣慰，但指出细节不足。有用户提到 Nitter 受 Invidious 启发，并希望类似项目能得到更多支持；也有人讨论跨平台迁移的困难，以及大型公司利用法律手段施压开源项目的现象。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.theregister.com/legal/2026/08/26/nitter-no-more-x-sends-in-the-lawyers-to-shut-down-open-source-project/5292548">Nitter no more? X sends in the lawyers to shut down open source project</a></li>
<li><a href="https://www.forbes.com/sites/siladityaray/2026/08/26/cease-and-desist-from-x-shuts-down-nitter-and-xcancel-sites-that-scraped-and-mirrored-tweets/">Cease-And-Desist From X Shuts Down Nitter And XCancel—Sites That Scraped And Mirrored Tweets</a></li>
<li><a href="https://thenextweb.com/news/nitter-xcancel-offline-x-cease-and-desist">Nitter is offline after seven years, shut down by cease-and-desist letters</a></li>

</ul>
</details>

**标签**: `#Nitter`, `#open source`, `#privacy`, `#X alternative`, `#legal`

---

<a id="item-tech-news-10"></a>
### [DNS 新域名注册中 10%-20%为诈骗](https://simonwillison.net/2026/Sep/6/the-purpose-of-dns-is-to-spread-scams/) ⭐️ 7.0/10

西蒙·威利森引用特伦斯·伊登的分析，指出互联网域名系统（DNS）正成为犯罪分子实施诈骗的主要载体。根据 Interisle 报告，2025 年新增的 8500 万个通用顶级域（gTLD）注册中，有 850 万个在 2025 年 5 月前被列入黑名单，实际滥用率可能至少为 10%，甚至接近 20%，意味着每五个新注册的 gTLD 域名中就有一个可能是诈骗。这一数据凸显了域名滥用问题的严重性，而 ICANN 多年来一直在讨论但未能有效解决。该问题对网络安全和政策制定具有重要影响。

rss · Simon Willison · 9月6日 14:40

**「背景」** 域名系统（DNS）是互联网的基础设施，负责将人类可读的域名转换为 IP 地址。通用顶级域（gTLD）是域名系统的一部分，如.com、.net 等。近年来，随着新 gTLD 的开放，注册域名的数量大幅增加，但也带来了域名滥用问题。Interisle 咨询集团在 2026 年发布的一份报告分析了 2025 年的 gTLD 注册情况，指出网络犯罪分子注册了相当比例的域名，用于诈骗等恶意活动。

**「影响」** 该报告揭示，2025 年新注册的 gTLD 域名中约有 10%至 20%被用于诈骗，这意味着当年多达 1700 万个新域名可能涉及恶意活动，对依赖域名信誉的网络安全防护、邮件过滤和品牌保护构成严峻挑战。ICANN 已通过 2024 年 4 月 5 日修订的《注册商认证协议》和《通用顶级域注册管理机构协议》将 DNS 滥用缓解义务纳入合同要求，但如此高的滥用率表明现有措施可能不足以遏制问题，促使注册商、注册局和安全厂商重新评估其域名审核与监控流程。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://interisle.net/insights/cybercriminaldomaindemand">Malicious Registrations in the Domain Name Market: An Analysis of 2025 gTLD Registrations and Cybercriminal Demand — Interisle Consulting Group</a></li>
<li><a href="https://www.icann.org/resources/pages/dns-security-threat-mitigation-2026-07-24-en">DNS Abuse Mitigation Program - ICANN</a></li>
<li><a href="https://www.icann.org/dnsabuse">DNS Abuse Mitigation Program - ICANN</a></li>
<li><a href="https://itp.cdn.icann.org/en/files/correspondence/rose-aaron-to-sinha-26-06-2026-en.pdf">PDF Karen Rose and Greg Aaron to Tripti Sinha - itp.cdn.icann.org</a></li>

</ul>
</details>

**标签**: `#DNS`, `#cybersecurity`, `#domain abuse`, `#ICANN`, `#internet governance`

---

<a id="item-tech-news-11"></a>
### [重写代码的陷阱：为何从头再来很少成功](https://simonwillison.net/2026/Sep/6/theres-no-limit-to-how-bad-code-can-get/) ⭐️ 7.0/10

Simon Willison 在 Lobste.rs 讨论中分享了他对技术债务和代码重写的经验看法。他认为，当旧系统因技术债务不堪重负时，宣布从头重写通常很少成功。在重写期间，旧系统作为核心业务仍在运行，需要持续变更，但开发者因知道其将被取代而只做最小努力，导致技术债务继续累积。新团队虽然初期进展迅速，但往往低估了旧系统的复杂性和行为范围，数月或数年后因交付压力而匆忙上线，最终导致新旧两套系统并存，新系统仅处理部分功能且大部分代码未激活。他推荐 Will Larson 的文章《迁移：技术债务的唯一可扩展修复方法》，并建议优先通过自动化测试和针对性重构来改善旧系统，而非盲目追求绿地重写。

rss · Simon Willison · 9月6日 09:08

**「背景」** 技术债务是指软件开发中为快速交付而采取的权宜之计所累积的额外成本，当债务过高时，团队常考虑推倒重来。然而，重写项目往往面临旧系统持续演进、需求理解不足等风险，导致失败率很高。Will Larson 的迁移方法论强调通过渐进式替换来管理技术债务，而非一次性重写。

**「影响」** 对于面临技术债务压力的开发团队，这一观点提醒他们重写可能带来双重系统维护的负担，而优先投资于自动化测试和针对性重构可能更有效。

**标签**: `#software engineering`, `#technical debt`, `#code quality`, `#rewrite`, `#project management`

---

<a id="item-tech-news-12"></a>
### [llama.cpp 分支实现 MoE 专家扩展推理](https://www.reddit.com/r/MachineLearning/comments/1w94dtn/proposed_architecture_for_inferencing_sparse_moe/) ⭐️ 7.0/10

一位开发者将 MoE 专家扩展功能移植到 llama.cpp，允许在推理时使用比原生 top-K 更多的路由专家（例如从 8 扩展到更多），并引入了自适应阈值、99% 到 50% 的影响衰减以及层范围控制。该实现仅影响运行时，无需训练或微调，支持所有后端，并在 Qwen 3.6 35B A4B+ 模型上进行了测试。相关代码和文档已发布在 GitHub 上，为 MoE 模型的推理优化提供了一种新的工程方案。

reddit · r/MachineLearning · /u/Specific-Tax-6700 · 9月6日 18:41

**「背景」** 混合专家（MoE）模型通常使用 top-K 路由机制，只为每个 token 激活少数专家，以减少计算量。然而，这种固定选择可能限制模型利用更多专家知识的能力。此项目通过修改 llama.cpp 的推理逻辑，允许在运行时动态增加激活的专家数量，并引入衰减机制来平衡专家贡献。

**「影响」** 对于使用 llama.cpp 运行 MoE 模型的开发者，此分支可能提升模型在特定任务上的表现，但需注意其计算开销增加，且未经广泛验证。

**标签**: `#llama.cpp`, `#Mixture of Experts`, `#inference optimization`, `#open source`, `#machine learning`

---

<a id="item-tech-news-13"></a>
### [雷达点密度是 5 类分类瓶颈](https://www.reddit.com/r/MachineLearning/comments/1w934ew/point_density_not_architecture_was_the_bottleneck/) ⭐️ 7.0/10

一位雷达感知工程师在 RadarScenes 数据集上仅使用雷达点云训练 5 类分类器（汽车、大型车辆、两轮车、行人、行人组），发现点密度而非模型架构是性能瓶颈。将每个实例的点数从 1 增加到 5，宏 F1 分数从 0.381 提升至 0.764，而架构和特征改动均落在噪声范围内。大型车辆在 n=1 时 F1 仅为 0.037，但在 n≥11 时达到 0.995；两轮车和行人在稀疏时因速度特征相似而难以区分。该研究指出数据不平衡和类别定义模糊等问题，并建议未来探索更丰富的表示方法。

reddit · r/MachineLearning · /u/bruno\_pinto90 · 9月6日 17:55

**「背景」** RadarScenes 是一个自然采集的雷达数据集，包含多种交通参与者的点云，但类别分布不平衡。雷达点云通常稀疏，每个实例可能只有少量点，这限制了基于点云的特征提取。传统方法依赖直方图编码和简单 MLP，但点密度对分类性能的影响尚未被充分研究。

**「影响」** 该发现对雷达感知和自动驾驶领域的 ML 从业者具有直接指导意义：在追求架构创新前，应优先提升点密度或数据增强策略，以显著改善稀疏场景下的分类性能。

**标签**: `#radar perception`, `#point cloud classification`, `#RadarScenes`, `#machine learning`, `#autonomous driving`

---

<a id="item-tech-news-14"></a>
### [OpenAI 发布 Astra 后多次改动评测数据，幻觉率先降后恢复](https://fortune.com/2026/09/04/openai-quietly-boosts-some-of-astras-evaluation-metrics-amid-rare-delay-in-publication-of-the-modeblog-post-announcement/) ⭐️ 7.0/10

OpenAI 于 9 月 3 日发布 GPT-6 Astra 博客时出现罕见延迟，此后多次修改评测基准。Astra 的幻觉率一度从 4.2% 降至 2%，随后又恢复至 4.2%。此外，GPT-5.6 Sol 的 ExploitBench 得分从 5.5% 上调至 11.5%，而 Anthropic 的 Fable 5.1 数学分数一度被调低约 10 个百分点。OpenAI 称这些调整是为了让数字代表对模型性能的最佳估计。这一事件引发了对 AI 模型评测透明度的担忧。

telegram · zaihuapd · 9月6日 06:13

**「背景」** OpenAI 于 2026 年 9 月 3 日发布 GPT-6 Astra 时，其博客文章出现罕见延迟，此后多次修改评测基准。Astra 的幻觉率一度从 4.2% 降至 2%，随后又恢复至 4.2%。此外，GPT-5.6 Sol 的 ExploitBench 得分从 5.5% 上调至 11.5%，而 Anthropic 的 Fable 5.1 数学分数一度被调低约 10 个百分点。OpenAI 称这些调整是为了让数字代表对模型性能的最佳估计。

**「影响」** 这一事件可能削弱公众和开发者对 OpenAI 评测数据的信任，并促使行业更严格地审视 AI 模型基准测试的透明度和一致性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://dnyuz.com/2026/09/05/openai-quietly-boosts-some-of-astras-evaluation-metrics-and-continues-to-change-others-post-launch/">OpenAI quietly boosts some of Astra ’s evaluation metrics , and...</a></li>
<li><a href="https://www.techmeme.com/260906/p1">OpenAI quietly updates its evaluation metrics for GPT - 6 Astra ...</a></li>

</ul>
</details>

**标签**: `#OpenAI`, `#GPT-6 Astra`, `#AI evaluation`, `#benchmark manipulation`, `#AI industry`

---

<a id="item-tech-news-15"></a>
### [长鑫科技 DRAM 市占率升至 10%，上半年营收增 873%](https://www.zaobao.com.sg/news/china/story20260906-9633523) ⭐️ 7.0/10

据 Counterpoint 报告，中国 DRAM 制造商长鑫科技 2026 年第二季度全球 DRAM 营收市占率升至 10%，较去年同期的 4%显著提升，稳居全球第四，仅次于三星、SK 海力士和美光。公司上半年营收达 1503.1 亿元人民币，同比增长 873.64%，净利润 776.05 亿元，实现扭亏为盈。业绩增长主要受惠于 AI 基础设施建设带动的存储需求与价格上涨。这一变化反映了全球存储市场格局的重大转变，对供应链和科技竞争具有深远影响。

telegram · zaihuapd · 9月6日 06:43

**「背景」** DRAM（动态随机存取存储器）是计算机和服务器中用于临时存储数据的关键芯片，其市场长期由三星、SK 海力士和美光三家韩国及美国企业主导，合计份额通常超过 90%。长鑫科技（CXMT）是中国主要的 DRAM 制造商，近年来在技术和产能上持续追赶，其市场份额从 2025 年同期的 4%逐步提升至 2026 年第一季度的 8%，并在第二季度达到 10%。这一增长得益于 AI 基础设施建设带来的存储需求激增和价格上涨，同时也受到地缘政治因素影响，例如美国国防部在 2026 年 1 月将长鑫科技从相关清单中移除，降低了其进入西方市场的合规障碍。

**「影响」** 长鑫科技市占率翻倍至 10%并实现扭亏为盈，将加剧全球 DRAM 市场的竞争，可能影响存储芯片价格走势，并提升中国在存储供应链中的话语权。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://technode.com/2026/09/04/changxin-memory-reaches-10-of-global-dram-market-in-q2/">ChangXin Memory reaches 10% of global DRAM market in Q2</a></li>
<li><a href="https://www.techtimes.com/articles/326440/20260903/cxmt-hits-10-dram-market-share-oligopoly-falls-below-90-two-years-early.htm">CXMT Hits 10% DRAM Market Share: Oligopoly Falls Below 90% ...</a></li>
<li><a href="https://www.indoneo.com/tech-ai/cxmt-chinese-dram-8-percent-market-share-western-pc/">Chinese DRAM maker CXMT captures 8% global market share ...</a></li>

</ul>
</details>

**标签**: `#DRAM`, `#semiconductors`, `#AI infrastructure`, `#memory market`, `#CXMT`

---

<a id="item-tech-news-16"></a>
### [中国首款 AI 辅助研发创新药获批上市](https://www.gelonghui.com/live/2653282) ⭐️ 7.0/10

西湖大学、西湖实验室与西湖制药（杭州）有限公司联合研发的盐酸伊司特韦片（商品名：艾普司韦）已获国家药监局附条件批准上市，用于治疗成人轻型和中型新冠感染。该药是中国首款 AI 辅助研发的原创药，从源头发现到完成临床试验仅用时三年半。这一进展展示了 AI 在加速药物研发方面的实际应用，标志着中国在 AI 驱动药物创新领域取得重要里程碑。

telegram · zaihuapd · 9月6日 09:10

**「背景」** 传统药物研发通常耗时十年以上，而 AI 辅助药物研发通过机器学习、数据分析和分子模拟等技术，可以加速靶点发现、化合物筛选和临床试验设计等环节。此次获批的艾普司韦是中国首个利用 AI 辅助完成从源头发现到临床试验全流程的原创药物，体现了 AI 在医药领域的实际应用价值。

**「影响」** 该药获批为新冠患者提供了新的治疗选择，同时验证了 AI 辅助药物研发路径的可行性，可能推动更多中国药企采用 AI 技术以缩短研发周期、降低成本。

**标签**: `#AI in drug discovery`, `#pharmaceutical innovation`, `#China tech`, `#COVID-19 treatment`, `#AI applications`

---

<a id="item-tech-news-17"></a>
### [微软推出开发者版 Windows 11：Project Zenith](https://blogs.windows.com/windowsdeveloper/2026/09/04/announcing-project-zenith-the-ready-to-code-windows-experience/) ⭐️ 7.0/10

微软宣布推出 Project Zenith，这是一套面向开发者的精简版 Windows 11 体验，预装 VS Code、Git、WSL、Python 等常用开发工具，并默认关闭干扰项、调整资源管理器与搜索设置，旨在让开发者开机即可编码。该方案要求设备具备 64 GB 以上统一内存和 250 GB/s 以上内存带宽，以支持在本地运行 300 亿参数以上的 AI 模型，减少对云端按量计费的依赖。Project Zenith 将首先搭载于 AMD 旗舰平台 Ryzen AI Halo，后续扩展到更多厂商设备，并强调可作为智能体开发的安全平台，支持本地持续计算。目前该体验仅出现在高配设备上，对应 AMD 机器售价约 3999 美元。

telegram · zaihuapd · 9月6日 12:20

**「背景」** Project Zenith 是微软针对开发者需求对 Windows 11 进行定制化精简的尝试，通过预配置开发环境和优化系统设置，降低开发者的环境搭建成本。其高硬件要求源于本地运行大规模 AI 模型的需求，这类模型通常需要大容量统一内存和高内存带宽来保证推理性能。

**「影响」** 对于需要本地运行大规模 AI 模型的开发者，Project Zenith 提供了一种开箱即用的解决方案，但 3999 美元的高昂售价和严格的硬件门槛可能限制其普及，初期仅面向高端 AMD 设备用户。

**标签**: `#Windows`, `#AI`, `#developer tools`, `#hardware`, `#Microsoft`

---

## 科技博客

<a id="item-tech-blog-1"></a>
### [用树脂和姜黄素打印微米级 Benchies](https://hackaday.com/2026/09/06/printing-micron-scale-benchies-with-resin-and-turmeric/) ⭐️ 7.0/10

rss · Hackaday · 9月6日 11:00

**「背景」** 树脂 3D 打印虽已普及，但商业微立体光刻和双光子聚合设备能实现亚微米精度，却远超普通创客的预算。作者\[Diffraction Limited\]尝试用自制设备突破这一限制。

**「方案」** 作者基于自制的微操纵器和光纤耦合激光器构建了打印机。405 纳米激光通过纤芯仅 3 微米的光纤照射树脂，在光纤前方形成狭窄的固化锥，微操纵器像 FDM 打印机一样移动光纤，逐层固化树脂。由于纤芯极细，固化树脂能干净地脱离光纤。早期测试发现树脂对紫外光吸收不足，导致光穿透过深，限制了层高。作者在树脂中添加姜黄素（姜黄中的天然染料）作为紫外线吸收剂，有效限制了光穿透深度，从而提高了分辨率。姜黄素可从姜黄粉中用酒精轻松提取，且打印出的物体在紫外光下呈荧光，便于显微镜下观察。最终，作者成功打印了 150 微米长的 Benchies、比头发丝还小的斯坦福兔子等微观模型。

**「启示」** 作者展示了利用光纤耦合激光和天然染料，以低成本实现微米级 3D 打印的可行路径，为创客探索微观制造提供了新思路。

**标签**: `#3D printing`, `#microfabrication`, `#resin`, `#DIY`, `#optics`

---

<a id="item-tech-blog-2"></a>
### [羽管键琴制作：非历史复刻的木工项目](https://hackaday.com/2026/09/06/this-clavichord-is-a-well-tempered-project/) ⭐️ 5.0/10

rss · Hackaday · 9月6日 14:00

**「背景」** 古钢琴是早期音乐中的一种键盘乐器，也是现代钢琴的远祖，但多数人对其知之甚少。传统上，早期音乐爱好者追求历史复刻的纯粹性，而 Ian Summers 的项目则不同，他选择了一种非历史复刻的设计，并详细记录了自己的决策过程。

**「方案」** Ian 的羽管键琴拥有两个八度和十根琴弦，每根琴弦通过直接击弦机制产生两到三个音符，无需复杂的机械或琴槌，从而实现了独特的音色和颤音效果。整个制作完全采用传统木工技艺，而非 3D 打印等现代方法。作者认为，由于设计简单且文档详尽，该乐器易于改编为使用塑料或激光切割部件制作。

**「启示」** Ian 的项目展示了在早期音乐领域，非历史复刻的设计同样具有价值，通过记录决策过程，为其他制作者提供了可借鉴的参考。

**标签**: `#clavichord`, `#woodworking`, `#instrument building`, `#early music`, `#DIY`

---

<a id="item-tech-blog-3"></a>
### [WordStar 在现代系统上的重生](https://hackaday.com/2026/09/06/wordstar-lives-again-and-again/) ⭐️ 5.0/10

rss · Hackaday · 9月6日 08:00

**「背景」** 许多老用户对 WordStar 有着深厚的肌肉记忆，但现代系统难以直接运行这款经典的 DOS 文字处理器。作者指出，尽管存在多种替代方案，但快速便捷地运行 WordStar 仍是一个痛点。

**「方案」** 作者介绍了一个由 \[nampara-ai\] 提供的简单方案：将 WordStar 4.0 与 DOSBox 打包，并附上适用于 Linux、Mac 和 Windows 的脚本，同时提供 WebAssembly 版本供浏览器使用。文章重点说明了 Linux 下 wordstar.sh 脚本的工作原理，并指出其无法正确解析符号链接的问题，给出了修复方法：使用 realpath 和 dirname 获取脚本的真实路径。此外，还提供了在本地运行 Web 版本的简单命令（python3 -m http.server 5309）。作者承认该方案并非不可替代，但胜在简单易用。

**「启示」** 作者认为，尽管 WordStar 并非最实用或不可替代，但通过 DOSBox 封装，它能够轻松在现代设备上运行，满足了老用户的怀旧需求。

**标签**: `#WordStar`, `#DOSBox`, `#retrocomputing`, `#text editors`, `#emulation`

---