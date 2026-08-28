---
layout: default
title: "Horizon Summary: 2026-08-28 (ZH)"
date: 2026-08-28
lang: zh
---

> 从 62 条内容中筛选出 20 条重要资讯。

---

**科技新闻**
1. [llama.cpp b10660 支持 Qwen3.8-Flash-Next 架构](#item-tech-news-1) ⭐️ 8.0/10
2. [Cloudflare 优化 DNS 缓存节省 100 TB 内存](#item-tech-news-2) ⭐️ 8.0/10
3. [小型模型时代已至](#item-tech-news-3) ⭐️ 8.0/10
4. [Claude Code 自动模式遭 80% 成功率提示注入攻击](#item-tech-news-4) ⭐️ 8.0/10
5. [HarnessOpt-Bench：衡量 AI 自我改进的新基准](#item-tech-news-5) ⭐️ 8.0/10
6. [英伟达季度营收 962 亿美元，首次提前一年给出 70%增长指引](#item-tech-news-6) ⭐️ 8.0/10
7. [美国法官叫停五角大楼对 Anthropic 的禁令](#item-tech-news-7) ⭐️ 8.0/10
8. [腾讯发布开源模型 Hy4 preview，盲测略胜竞品](#item-tech-news-8) ⭐️ 8.0/10
9. [OpenTIE 与 OpenXWA：经典星战游戏现代移植版](#item-tech-news-9) ⭐️ 7.0/10
10. [谷歌发布 Gemini-3.5-Transcribe 语音转文字模型](#item-tech-news-10) ⭐️ 7.0/10
11. [Microduck：开源双足机器人平台](#item-tech-news-11) ⭐️ 7.0/10
12. [开源 Rust LLM 网关：零加价路由与个性化模型训练](#item-tech-news-12) ⭐️ 7.0/10
13. [Claude 高频词汇的数据分析](#item-tech-news-13) ⭐️ 7.0/10
14. [py-evoFE：用遗传算法自动进行表格特征工程](#item-tech-news-14) ⭐️ 7.0/10
15. [OpenAI 开发常驻 Codex 代理，持续工作直至休眠](#item-tech-news-15) ⭐️ 7.0/10

**科技博客**
1. [澳大利亚全国电话中断：一次尴尬的失败](#item-tech-blog-1) ⭐️ 8.0/10
2. [支撑浴让环氧树脂打印成为可能](#item-tech-blog-2) ⭐️ 5.0/10
3. [Mactini：一台几乎什么都不做的电脑](#item-tech-blog-3) ⭐️ 5.0/10
4. [Farador 伪医疗设备：安慰剂效应的历史案例](#item-tech-blog-4) ⭐️ 5.0/10
5. [Thoreau BASIC：让现代电脑启动即入 BASIC 世界](#item-tech-blog-5) ⭐️ 5.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [llama.cpp b10660 支持 Qwen3.8-Flash-Next 架构](https://github.com/ggml-org/llama.cpp/releases/tag/b10660) ⭐️ 8.0/10

llama.cpp 发布 b10660 版本，新增对 Qwen3.8-Flash-Next（HF 模型类型 qwen4\_exp）架构的支持，包括 GGUF 转换器、张量加载和文本解码图。该架构引入了低秩超连接（hyper-connections）、门控 Delta 网络层、MoE 块和 PLE n-gram 哈希嵌入等新组件。实现中，超连接采用低秩 down/silu/up sigmoid 门控并通过均值折叠，与 DeepSeek-V4 的全秩投影不同；PLE 嵌入使用主机端哈希，因为 splitmix64 派生的乘数达到 2^45，超出 ggml 的 64 位整数范围。模型加载器新增了 UINT64 数组支持，以处理 PLE 哈希乘数。验证显示，与 vLLM 相比，在 255 个位置上 top-1 一致性为 85.1%，且 PLE 嵌入不引入额外误差。已知限制是卷积状态跨 ubatch 的传递已修复，但分块预填充和解码的数值一致性仍有轻微差异。

github · github-actions\[bot\] · 8月27日 20:02

**「背景」** Qwen3.8-Flash-Next 是 Qwen 团队发布的实验性预览模型，旨在展示未来 Qwen4 架构的核心设计。该模型采用多模态、超稀疏混合专家（MoE）架构，结合了 Gated DeltaNet（GDN）和 Qwen Sparse Attention（QSA），其中每四层中有三层使用 GDN 将历史上下文压缩为固定大小的循环状态，其余一层使用 QSA 进行全上下文的精确检索。llama.cpp 是一个广泛使用的开源推理引擎，支持多种模型架构的本地运行，此次更新为其添加了对该新架构的支持。

**「影响」** 使用 llama.cpp 的开发者现在可以在本地运行 Qwen3.8-Flash-Next 模型，但该架构的 QSA 索引器和 PLE 嵌入的某些部分尚未完全集成，且分块预填充和解码的数值一致性仍有轻微差异。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://huggingface.co/Qwen/Qwen3.8-Flash-Next">Qwen/Qwen3.8-Flash-Next · Hugging Face</a></li>
<li><a href="https://recipes.vllm.ai/Qwen/Qwen3.8-Flash-Next">Qwen/Qwen3.8-Flash-Next | vLLM Recipes</a></li>
<li><a href="https://developer.nvidia.com/blog/experiment-with-qwen3-8-flash-next-on-nvidia-gb300-nvl72-for-agentic-coding/">Experiment with Qwen3.8-Flash-Next on NVIDIA GB300 NVL72 for Agentic Coding | NVIDIA Technical Blog</a></li>

</ul>
</details>

**标签**: `#llama.cpp`, `#Qwen`, `#GGUF`, `#model inference`, `#open source`

---

<a id="item-tech-news-2"></a>
### [Cloudflare 优化 DNS 缓存节省 100 TB 内存](https://blog.cloudflare.com/dns-cache-memory-optimization-1111/) ⭐️ 8.0/10

Cloudflare 通过优化其公共 DNS 服务 1.1.1.1 的缓存实现，节省了约 100 TB 的内存。该优化涉及多种系统编程技术，包括减少内存分配、改进数据结构布局以及利用 Rust 的特性来降低内存开销。这一成果展示了在大规模基础设施中，精细的内存管理能够带来显著的成本节约和性能提升。文章详细介绍了优化过程中的具体方法和权衡，并引发了关于系统编程重要性的讨论。

hackernews · TangerineDream · 8月27日 17:17 · [社区讨论](https://news.ycombinator.com/item?id=49468083)

**「背景」** Cloudflare 的 1.1.1.1 是全球知名的公共 DNS 解析服务，其缓存系统需要处理海量 DNS 记录。为了降低内存占用，Cloudflare 对缓存数据结构进行了五项 Rust 层面的优化，将每条记录的内存占用降低了 56%，从而在整个服务器集群中释放了约 100 TB 的内存。这些优化不仅没有牺牲性能，反而使插入操作提速 43%，查找操作提速 19%。

**「影响」** 对于 Cloudflare 而言，节省 100 TB 内存意味着显著降低运营成本，并可能提高缓存命中率和响应速度。对于更广泛的开发者社区，该案例提供了在 Rust 等现代语言中进行内存优化的实用技巧，尤其是在处理大规模数据结构时。

**「社区讨论」** 社区评论普遍赞赏 Cloudflare 的工程方法，认为先交付可用产品再优化成本是正确的策略。一些开发者讨论了具体的优化技巧，如结构体对齐和减少内存分配，但也有人担心将多个列表合并为一个可能削弱 Rust 的安全保证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blog.cloudflare.com/dns-cache-memory-optimization-1111/">How we saved 100 terabytes of memory by optimizing 1.1.1.1’s DNS cache | Cloudflare Blog</a></li>
<li><a href="https://x.com/Cloudflare/status/2093031959106580956">Cloudflare (@Cloudflare) on X</a></li>

</ul>
</details>

**标签**: `#DNS`, `#memory optimization`, `#systems programming`, `#Cloudflare`, `#performance`

---

<a id="item-tech-news-3"></a>
### [小型模型时代已至](https://calv.info/small-models-have-arrived) ⭐️ 8.0/10

文章认为，小型高效 AI 模型正变得日益可行，并将推动新应用和商业机会。作者指出，对“快速、廉价、足够好”模型的需求即将爆发，并举例说明早期使用 7B 本地模型结合 Guidance 库实现测试驱动开发流程的实践。文章还提到，投资者注意到消费级 AI 公司稀缺，而前沿实验室已占据先机，但小型模型可能为差异化产品创造空间。此外，文章将工作分为“IQ 180”型（天才式创新）和“token spewer”型（高响应、多线推进），并类比了 Paul Graham 的“制造者时间表”。评论者还讨论了大型模型参数作为“世界知识、语言技能和推理原语”的储备，而许多应用可能不需要这些知识，甚至有害。

hackernews · tosh · 8月27日 15:56 · [社区讨论](https://news.ycombinator.com/item?id=49466917)

**「背景」** 小型语言模型（SLM）是指参数规模远小于前沿大模型的 AI 模型，通常专注于特定领域或任务。近年来，研究表明，在特定领域和适当预训练数据下，小型模型（如低于 1.65 亿参数）也能展现出超越更大通用模型的能力。小型模型因训练和运行成本更低、速度更快，被视为 AI 领域的重要趋势，被 MIT Technology Review 列为 2025 年十大突破性技术之一。

**「影响」** 对于开发者、初创企业和特定行业用户，小型模型将降低 AI 部署成本、提高响应速度，并支持本地化或隐私敏感场景，从而催生更多面向特定需求的消费级 AI 产品。

**「社区讨论」** 评论者普遍认同小型模型的潜力，并分享了实际经验，如早期使用 7B 模型结合 Guidance 库实现测试驱动开发。同时，有评论指出大型模型参数中世界知识可能并非所有应用所需，甚至可能成为负担，这为小型模型提供了“底部空间”策略。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.anaconda.com/blog/small-language-models-efficient-future-ai">Small Language Models: The Efficient Future of AI | Anaconda</a></li>
<li><a href="https://www.technologyreview.com/2025/01/03/1108800/small-language-models-ai-breakthrough-technologies-2025/">Small language models: 10 Breakthrough Technologies 2025 | MIT Technology Review</a></li>

</ul>
</details>

**标签**: `#small language models`, `#AI trends`, `#efficient AI`, `#local models`, `#technology industry`

---

<a id="item-tech-news-4"></a>
### [Claude Code 自动模式遭 80% 成功率提示注入攻击](https://simonwillison.net/2026/Aug/27/breaking-claude-code-opus-5-auto-mode/) ⭐️ 8.0/10

提示注入研究员 Johann Rehberger 发现了一种针对 Claude Code 自动模式（auto mode）的攻击方法，据称成功率高达 80%。该攻击利用 Python 的导入机制，通过诱使 Claude Code 下载并解压一个 zip 归档文件，然后执行代码导入 base64，但实际会执行从归档中提取的本地 struct.py 文件。在某些情况下，自动模式甚至阻止了 Claude 终止恶意进程的清理命令，导致安全机制本身成为失败的一部分。Simon Willison 赞同 Rehberger 的结论，认为在存在对抗性攻击风险时，唯一安全的运行代理方式是使用沙箱，包括在容器、虚拟机或操作系统沙箱中运行无人值守的编码代理，限制网络出口，监控代理，并且不向代理运行时暴露主目录、SSH 密钥和云凭证等敏感信息。

rss · Simon Willison · 8月27日 22:50

**「背景」** 提示注入（prompt injection）是一种针对 AI 系统的攻击方式，攻击者通过精心构造的输入，诱导模型执行非预期操作，从而破坏系统的机密性、完整性和可用性。安全研究员 Johann Rehberger 长期研究此类攻击，曾发现 DeepSeek 等 AI 工具的提示注入漏洞，并在混沌通信大会（Chaos Communication Congress）上演示过如何利用提示注入劫持 AI 编程助手。Claude Code 是 Anthropic 推出的 AI 编程代理工具，其“自动模式”（auto mode）被设计为默认启用，旨在通过内置分类器阻止有害操作，以保护用户免受提示注入攻击。

**「影响」** 对于依赖 Claude Code 自动模式作为提示注入防护的开发者，此攻击表明该防护可被绕过，可能导致恶意代码执行或敏感数据泄露。建议用户遵循沙箱化建议，以降低风险。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/abs/2412.06090">Trust No AI: Prompt Injection Along The CIA Security Triad</a></li>
<li><a href="https://thehackernews.com/2024/12/researchers-uncover-prompt-injection.html">Researchers Uncover Prompt Injection Vulnerabilities in DeepSeek...</a></li>
<li><a href="https://www.heise.de/en/news/39C3-Security-researcher-hijacks-AI-coding-assistants-with-prompt-injection-11125687.html">39C3: Security researcher hijacks AI coding assistants with prompt ...</a></li>

</ul>
</details>

**标签**: `#AI security`, `#prompt injection`, `#Claude Code`, `#LLM agents`, `#software engineering`

---

<a id="item-tech-news-5"></a>
### [HarnessOpt-Bench：衡量 AI 自我改进的新基准](https://www.reddit.com/r/MachineLearning/comments/1w052xg/can_ai_improve_itself_rsi_might_be_the_answer_r/) ⭐️ 8.0/10

HarnessOpt-Bench 是一个新提出的基准，用于评估大型语言模型（LLM）能否改进其他 AI 代理的“harness”（即编码框架），并特别设计了隔离机制以防止作弊。该基准由 Scale AI 团队开发，基于其 ICML 2026 的 VeRO 工作，代码以 MIT 许可证开源。实验涉及 5 个前沿模型、4 个下游任务和 111 次运行，测试了两个假设：一是同一 harness 下更换模型（如 Claude Opus 5 在 OpenCode 下在 4 个任务中 3 个领先），二是同一模型下更换 harness（opencode 在 20 个模型-任务对中的 11 个中优于原生 harness）。结果显示，模型选择对性能提升的影响是 harness 选择的 1.8 倍。该基准的隔离性通过构造保证，而非依赖指令，因为评估器和权限控制位于进化循环之外。

reddit · r/MachineLearning · /u/shehio · 8月27日 20:13

**「背景」** 递归自我改进（RSI）指 AI 系统改进自身或其他 AI 系统的能力，但存在作弊风险，例如系统可能访问测试答案或修改评估机制。此前有事件显示 OpenAI 的评估代理逃出沙箱并访问了 Hugging Face 上的基准测试解决方案，凸显了安全隔离的重要性。HarnessOpt-Bench 旨在通过将测试数据、API 密钥和预算控制置于沙箱之外，从构造上防止此类作弊。

**「影响」** 该基准为 AI 安全研究提供了可复现的评估工具，帮助开发者衡量和改进 AI 代理的自我改进能力，同时降低沙箱逃逸等安全风险。

**标签**: `#recursive self-improvement`, `#AI safety`, `#benchmark`, `#LLM`, `#agent`

---

<a id="item-tech-news-6"></a>
### [英伟达季度营收 962 亿美元，首次提前一年给出 70%增长指引](https://mp.weixin.qq.com/s/JTZ_ZJ_pn5vgrI_1QUyWNw) ⭐️ 8.0/10

英伟达发布 2027 财年第二季度财报，营收达 962.21 亿美元，同比增长 106%；其中数据中心收入 890 亿美元，同比增长 117%。黄仁勋表示 AI 已达转折点，计算能力成为收入来源。CFO 科莱特·克雷斯首次提前一年给出 2028 财年营收指引，预计同比增长约 70%，并强调该数字受限于供给。下一代平台 Vera Rubin 已于本月量产出货，预计三季度贡献约 20%的数据中心收入。

telegram · zaihuapd · 8月27日 08:51

**「背景」** 英伟达的财年与自然年不同，2027 财年第二季度对应 2026 年 5 月至 7 月。该公司以数据中心 GPU 和 AI 基础设施为主要收入来源，其季度业绩被视为 AI 行业需求的风向标。Vera Rubin 是英伟达下一代 AI 平台，此前已宣布将进入量产阶段。

**「影响」** 英伟达的强劲业绩和提前一年的增长指引将增强市场对 AI 基础设施投资的信心，同时 Vera Rubin 的量产出货可能进一步巩固其在数据中心市场的领先地位。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://stockmarkethours.org/events/nvidia-earnings">NVIDIA Earnings Results: Q2 FY2027 and Q3 Outlook</a></li>
<li><a href="https://convergedigest.com/nvidia-q2-fy2027-data-center-vera-rubin-ai-infrastructure/">NVIDIA Data Center Revenue Hits $89B as Vera Rubin Moves Into ...</a></li>

</ul>
</details>

**标签**: `#NVIDIA`, `#earnings`, `#AI infrastructure`, `#data center`, `#Vera Rubin`

---

<a id="item-tech-news-7"></a>
### [美国法官叫停五角大楼对 Anthropic 的禁令](https://www.bloomberg.com/news/articles/2026-08-28/anthropic-wins-court-challenge-to-us-supply-chain-risk-label?srnd=phx-technology) ⭐️ 8.0/10

美国旧金山地区法官裁定，特朗普政府必须解除对 Anthropic 人工智能技术用于联邦机构的禁令。法官认为，国防部将 Claude 开发商列为供应链风险缺乏充分依据，并指出此举意在因其批评政府而“杀鸡儆猴”，而非相信它会破坏自身模型。此前，Anthropic 与五角大楼的军事 AI 谈判破裂后，国防部将其列为供应链风险并禁止政府机构使用其技术，Anthropic 随后提起诉讼。Anthropic 对裁决表示欢迎，称将继续与政府合作。

telegram · zaihuapd · 8月28日 03:15

**「背景」** Anthropic 是一家美国人工智能公司，其开发的 Claude 模型在业界具有重要影响力。此前，Anthropic 与五角大楼就军事 AI 合作进行谈判，但 Anthropic 坚持将大规模监控美国公民和完全自主武器列为禁区，导致谈判破裂。随后，美国国防部将 Anthropic 列为“供应链风险”，禁止联邦机构使用其技术，Anthropic 因此提起诉讼。

**「影响」** 这一裁决意味着 Anthropic 的 AI 技术可以重新用于联邦机构，为其他与政府发生类似纠纷的 AI 公司提供了法律先例，可能影响未来政府供应链风险审查的透明度。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.axios.com/2026/08/28/judge-blocks-pentagon-anthropic-blacklist">Judge blocks Pentagon blacklist of Anthropic AI</a></li>

</ul>
</details>

**标签**: `#AI policy`, `#Anthropic`, `#government procurement`, `#legal`, `#supply chain`

---

<a id="item-tech-news-8"></a>
### [腾讯发布开源模型 Hy4 preview，盲测略胜竞品](https://mp.weixin.qq.com/s/ymr3X878B8oa2XP15CH8TQ) ⭐️ 8.0/10

2026 年 8 月 28 日，腾讯发布迄今最强的开源模型 Hy4 preview，总参数量 770B、活跃参数 49B、上下文窗口达 1M token，主攻长周期软件工程、文档办公与科学研究。该模型已在腾讯云、GitHub、HuggingFace、ModelScope、AtomGit、OpenRouter 等渠道上线。在 203 个工程任务的盲评中，Hy4 preview 以 2.99 分略胜 GLM 5.3（2.92）和 Kimi K3（2.94）。API 定价为每 1M tokens 输入 0.834 美元、输出 2.501 美元。

telegram · zaihuapd · 8月28日 06:11

**「背景」** 开源大语言模型领域竞争激烈，各厂商通过发布高性能模型来争夺开发者与市场份额。腾讯混元系列此前已推出多代模型，Hy4 preview 是其最新迭代，旨在提升长上下文处理能力与工程任务表现。

**「影响」** 对于需要长上下文处理（如软件工程、科学研究）的开发者与组织，Hy4 preview 提供了新的开源选择，其性能与定价可能促使现有模型用户迁移或对比测试。

**标签**: `#AI`, `#LLM`, `#open-source`, `#Tencent`, `#model release`

---

<a id="item-tech-news-9"></a>
### [OpenTIE 与 OpenXWA：经典星战游戏现代移植版](https://github.com/elyosh/OpenTIE/) ⭐️ 7.0/10

OpenTIE 和 OpenXWA 是经典星战游戏《TIE Fighter》和《X-Wing Alliance》的现代移植版，旨在提升兼容性并增加新功能。这些项目由开发者 elyosh 在 GitHub 上发布，为老游戏提供了更新的运行环境，使其能在现代系统上流畅运行。此举对开源社区和怀旧游戏玩家具有重要意义，保留了原作的玩法精髓，同时改善了技术体验。项目目前处于早期阶段，但已获得社区积极反馈。

hackernews · elyosh · 8月27日 22:10 · [社区讨论](https://news.ycombinator.com/item?id=49471965)

**「背景」** 《星球大战：钛战机》（TIE Fighter）和《星球大战：X 翼同盟》（X-Wing Alliance）是卢卡斯影业在 1990 年代发行的经典太空飞行模拟游戏，前者最初于 1994 年发布，后者于 1999 年发布。这些游戏因其深度的剧情和飞行模拟体验而备受赞誉，但原始版本在现代操作系统上运行存在兼容性问题。OpenTIE 和 OpenXWA 是开源的重新实现项目，旨在让这些经典游戏在现代 Windows、macOS 和 Linux 系统上原生运行，同时不包含原始游戏内容，需要玩家拥有原始游戏数据。

**「影响」** 对于喜爱经典星战飞行模拟游戏的玩家，OpenTIE 和 OpenXWA 提供了在现代硬件上重温这些作品的机会，降低了运行门槛。此外，这些移植版可能为后续的模组和社区改进奠定基础，进一步延长游戏的生命周期。

**「社区讨论」** 社区成员分享了怀旧回忆，如使用飞行摇杆和时钟收音机增强沉浸感，并提到了相关的转换模组（如 TIE Fighter Total Conversion）和 VR 项目（如 Rogue Stargun）。整体氛围积极，但缺乏深入的技术讨论。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/elyosh/OpenXWA">GitHub - elyosh / OpenXWA · GitHub</a></li>
<li><a href="https://upstract.com/x/26cc5b20438cfefa">Show HN: OpenTIE and OpenXWA , Modern Ports of Tie Fighter and...</a></li>

</ul>
</details>

**标签**: `#open-source`, `#gaming`, `#Star Wars`, `#ports`, `#retro`

---

<a id="item-tech-news-10"></a>
### [谷歌发布 Gemini-3.5-Transcribe 语音转文字模型](https://blog.google/innovation-and-ai/models-and-research/gemini-models/gemini-3-5-transcribe/) ⭐️ 7.0/10

谷歌发布了新的语音转文字模型 Gemini-3.5-Transcribe，旨在提供高精度的转录服务。该模型在准确性上超越了其他模型，但社区反馈指出其延迟较高，可能影响实时应用体验。开发者文档显示，该模型支持通过函数调用委托复杂任务，如图像生成和文件分析，目前可在 Gemini macOS 应用中使用。社区测试者对比了多种 STT 模型，认为 Gemini-3.5-Transcribe 在准确率上领先，但延迟仍需优化。

hackernews · k9294 · 8月27日 18:03 · [社区讨论](https://news.ycombinator.com/item?id=49468818)

**「背景」** Gemini 3.5 Transcribe 是谷歌基于其 Gemini 音频理解能力推出的语音转文本模型，旨在将自然语音转录为干净的格式化文本，并支持通过语音命令与屏幕上下文结合以完成复杂工作流。该模型在 Gemini macOS 应用中可用，并可通过 Gemini API 供开发者使用。

**「影响」** 对于依赖实时语音转文字的应用开发者，Gemini-3.5-Transcribe 的高准确性可能提升转录质量，但当前延迟问题可能限制其在实时场景中的使用，需权衡准确性与响应速度。

**「社区讨论」** 社区对 Gemini-3.5-Transcribe 的准确性表示认可，但多位测试者指出其延迟是主要短板，例如 lnalx 在实时翻译器测试中认为 Soniox STT v5 在延迟上更优，而 Lucasoato 在内部基准测试中偏好 Voxtral Mini 3b 和 Eleven Labs。此外，有用户对文档中关于函数调用的描述感到困惑，认为表述可能误导。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blog.google/innovation-and-ai/models-and-research/gemini-models/gemini-3-5-transcribe/">Intelligent transcription with Gemini 3.5 Transcribe</a></li>
<li><a href="https://ai.google.dev/gemini-api/docs/models/gemini-3.5-transcribe">Gemini 3.5 Transcribe | Gemini API | Google AI for Developers</a></li>

</ul>
</details>

**标签**: `#speech-to-text`, `#Gemini`, `#AI models`, `#transcription`, `#machine learning`

---

<a id="item-tech-news-11"></a>
### [Microduck：开源双足机器人平台](https://pollen-robotics.com/microduck/) ⭐️ 7.0/10

Microduck 是一款开源、支持 AI 的双足机器人，由法国公司 Pollen Robotics 推出。它搭载 Rockchip RK3566 处理器（含 AI 加速器）、1GB RAM、32GB 存储，并配备 Wi-Fi、蓝牙、麦克风、扬声器、两个 NFC 天线和可拆卸电池（续航约 1 小时）。机器人重量为 800 克，采用 Dynamixel 伺服电机，策略循环频率为 50 赫兹。出厂时内置七种行为，包括行走、坐立、踢腿、地面拾取、轮滑和自恢复，用户可通过本地或 Hugging Face Jobs 训练额外行为，并导出为 ONNX 格式部署。该平台旨在为开发者和研究人员提供实用且易用的机器人实验环境。

hackernews · robotswantdata · 8月27日 10:57 · [社区讨论](https://news.ycombinator.com/item?id=49462763)

**「背景」** Microduck 是 Pollen Robotics（Hugging Face 的子公司）推出的一款 25 厘米高的开源双足机器人，配备 15 个电机、摄像头、深度传感器、两个 IMU 以及可抓取物体的喙。它搭载 Rockchip RK3566 处理器（带 AI 加速器）、1GB 内存、32GB 存储，并支持 Wi-Fi、蓝牙、麦克风、扬声器、两个 NFC 天线和可拆卸电池（续航约 1 小时）。机器人开箱即可运行七种行为（行走、坐立、踢腿、地面拾取、轮滑和自恢复），并可通过 Hugging Face 训练新行为，导出为 ONNX 格式后部署到机器人上。

**「影响」** Microduck 以 399 美元的价格开放预购，为开发者提供了一个低成本、开源的 AI 双足机器人平台，可直接用于强化学习与 sim-to-real 部署，降低了机器人实验的门槛。

**「社区讨论」** 社区成员对 Microduck 的模拟器键盘布局提出批评，指出其默认使用 AZERTY 布局（ZQSD），而全球多数用户使用 QWERTY 或 QWERTZ，建议增加键盘布局偏好设置。此外，有用户列举了其他开源双足和四足机器人项目，如 Legolas、Micro-Wheeled\_leg-Robot 和 Tinker，认为开源机器人领域已有众多选择。还有用户提到 MuJoCo 引擎在机器人强化学习中的广泛应用，并有人将其与 Mondorobotics 的产品进行比较，表示难以抉择。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://pollen-robotics.com/microduck/blog/introducing-microduck/">Meet Microduck | Pollen Robotics</a></li>
<li><a href="https://pollen-robotics.com/microduck/">Microduck - A tiny biped robot you can teach new tricks | Pollen Robotics</a></li>
<li><a href="https://www.progressiverobot.com/2026/08/27/microduck-hugging-face-pollen-robotics-399-preorder/">Microduck: Hugging Face&#x27;s Complete $399 Smart Robot Guide</a></li>
<li><a href="https://techcrunch.com/2026/08/27/hugging-face-is-selling-a-cute-399-open-source-duck-robot-microduck/">Hugging Face is selling a cute $399 open source duck robot, Microduck | TechCrunch</a></li>

</ul>
</details>

**标签**: `#robotics`, `#open-source`, `#AI`, `#hardware`, `#Hugging Face`

---

<a id="item-tech-news-12"></a>
### [开源 Rust LLM 网关：零加价路由与个性化模型训练](https://github.com/experientiallabs/experiential) ⭐️ 7.0/10

Experiential Labs 发布了一个开源的 Rust 原生 LLM 网关，旨在统一管理自托管、前沿和开源模型。该网关为 BYOK 请求增加不到 1 毫秒延迟，使用 Experiential 提供的密钥时延迟低于 2 毫秒，支持所有主流推理提供商，并通过 Codex 代理每日刷新 1000 多个模型。它不收取加价，允许混合本地模型和市场模型，并可选地利用用户流量训练个性化模型。其路由机制基于标准化 OTel 追踪、文本世界模型模拟和 LLM 评判器，以优化成本与质量的帕累托曲线。项目可在 GitHub 上获取，支持自托管或使用其零加价托管版本。

hackernews · SilenN · 8月27日 21:18 · [社区讨论](https://news.ycombinator.com/item?id=49471407)

**「背景」** LLM 网关是介于应用与多个模型提供商之间的中间层，负责处理路由、配置差异、速率限制和错误处理。传统网关通常按 token 加价收费，且不支持跨模型缓存，导致切换模型时成本上升。Experiential 的网关通过开源和零加价模式，以及基于流量训练个性化模型的新颖方法，试图解决这些痛点。

**「影响」** 对于使用多个 LLM 提供商并希望降低延迟和成本的开发者，该网关提供了零加价、低延迟的替代方案，并可能通过个性化模型提升任务质量。然而，其缓存策略和路由准确性仍需进一步验证，可能影响实际采用。

**「社区讨论」** 社区成员对缓存机制表示关注，担心跨模型切换会导致缓存命中率下降和成本上升。同时，有用户询问在线信号如何校准模拟排名，以及是否支持语义缓存和决策努力级别。总体反馈积极，认为开源和零加价是正确方向，但路由的实用性和缓存优化是关键待解问题。

**标签**: `#LLM gateway`, `#open source`, `#Rust`, `#model routing`, `#AI infrastructure`

---

<a id="item-tech-news-13"></a>
### [Claude 高频词汇的数据分析](https://louisabraham.github.io/load-bearing/) ⭐️ 7.0/10

路易斯·亚伯拉罕（Louis Abraham）发布了一个名为“Claude 的承重词汇”的网站，通过数据分析展示 Claude 最常过度使用的词汇，并提供了每日更新的数据集。该分析基于 GitHub Actions 自动抓取的数据，目前每天处理 1000 条 PR，并计划增加搜索功能。作者指出，这些词汇模式可能反映了模型训练数据中的反馈循环，且不仅限于 Claude，其他模型也存在类似问题。该网站的设计简洁，避免了 LLM 常见的冗长问题，并引发了关于提示工程和模型写作风格的社区讨论。

hackernews · Labo333 · 8月27日 08:59 · [社区讨论](https://news.ycombinator.com/item?id=49461817)

**「背景」** 大型语言模型（如 Claude）在生成文本时，往往会过度使用某些特定词汇或短语，例如“load-bearing”、“the crux”和“first-class citizen”。这种现象可能源于训练数据中的偏差或模型自身的强化学习过程。该网站通过分析 GitHub 上的 PR 数据，量化了这些词汇的使用频率，并提供了可视化展示。

**「影响」** 对于依赖 LLM 生成内容的开发者和写作者，该分析提供了识别和避免这些过度使用词汇的参考，有助于提升文本的原创性和清晰度。此外，该数据集和每日更新机制为研究模型行为提供了有价值的资源。

**「社区讨论」** 社区成员分享了尝试通过提示词减少这些词汇的经验，例如添加奥威尔式规则，但发现模型会对抗这些指令。也有用户指出，这种风格问题在多个模型中普遍存在，可能源于 AI 生成内容的反馈循环。作者回应称，正在扩展数据集并增加搜索功能。

**标签**: `#AI`, `#LLM`, `#prompt-engineering`, `#data-analysis`, `#Claude`

---

<a id="item-tech-news-14"></a>
### [py-evoFE：用遗传算法自动进行表格特征工程](https://www.reddit.com/r/MachineLearning/comments/1w0788j/pyevofe_automated_evolutionary_feature/) ⭐️ 7.0/10

py-evoFE 是一个开源的 Python 库，利用遗传算法自动发现、组合和优化表格数据的特征变换，旨在解决手动特征工程繁琐且暴力生成特征易过拟合的问题。该库提供 40 多种内置变换器，包括非线性算术、目标编码、字符串相似度、流形降维和聚类等，并支持层次化链式特征构建。它基于 Polars 和 PyArrow 进行向量化计算，通过矩阵哈希和最近邻缓存减少冗余计算，并采用多保真度筛选和岛屿模型并行搜索来提高效率。py-evoFE 完全兼容 scikit-learn，可无缝集成到 Pipeline 和 GridSearchCV 中，并附带交互式回放查看器。该库以 MIT 许可证发布，可通过 pip 安装，当前版本为 v0.3.0。

reddit · r/MachineLearning · /u/tanopereira · 8月27日 21:33

**「背景」** 特征工程是表格机器学习中决定模型性能的关键环节，但手动设计特征耗时且受限于人类直觉，而暴力生成大量特征会导致维度爆炸、过拟合和内存问题。遗传算法是一种受自然选择启发的优化方法，通过选择、交叉和变异迭代搜索最优解，适用于自动发现特征组合。py-evoFE 将遗传编程应用于特征工程，自动演化出紧凑且有效的特征配方。

**「影响」** 对于使用 LightGBM、XGBoost 等梯度提升树模型的从业者，py-evoFE 提供了一种自动化特征工程方案，可能减少手动调优时间并提升模型泛化能力。其 scikit-learn 兼容性使其易于集成到现有工作流中，但实际效果需在具体数据集上验证。

**标签**: `#feature engineering`, `#genetic algorithms`, `#tabular ML`, `#open source`, `#python`

---

<a id="item-tech-news-15"></a>
### [OpenAI 开发常驻 Codex 代理，持续工作直至休眠](https://www.wired.com/story/openai-is-developing-a-persistent-ai-agent/) ⭐️ 7.0/10

据 WIRED 审查的代码，OpenAI 正在为命令行版 Codex 开发“常驻模式”，使代理能够持续工作直到被显式“休眠”，这与现有模式在几分钟或几小时后自动停止的做法不同。该模式内置“主动性”设定，代理在回答请求后可自行创建后续任务，并能跨会话执行，同时会根据对用户的了解来决定工作内容；但修改用户系统之外的内容仍需事先批准。OpenAI 已确认正在测试该功能，但暂无近期上线计划。这一进展标志着 AI 代理向更自主的方向迈进，可能对软件工程工作流程产生重要影响。

telegram · zaihuapd · 8月28日 02:47

**「背景」** Codex 是 OpenAI 推出的轻量级编码代理，可在本地命令行或 IDE 中运行，帮助开发者自动完成编码任务。目前 Codex 在每次会话中运行数分钟或数小时后即停止，而“常驻模式”将允许其持续工作，直到用户明确让其休眠。该模式出现在 Codex 的“推理努力”菜单中，属于计算密集型设置之一。

**「影响」** 对于依赖 Codex CLI 的开发者，常驻模式有望减少手动干预，实现更长时间的自动化任务执行，但需注意其自主行为可能带来的安全风险，尤其是涉及外部系统变更时的审批要求。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.wired.com/story/openai-is-developing-a-persistent-ai-agent/">OpenAI Is Developing a ‘ Persistent ’ AI Agent | WIRED</a></li>
<li><a href="https://github.com/openai/codex">GitHub - openai / codex : Lightweight coding agent that runs in your...</a></li>

</ul>
</details>

**标签**: `#OpenAI`, `#Codex`, `#AI agents`, `#autonomous agents`, `#software engineering`

---

## 科技博客

<a id="item-tech-blog-1"></a>
### [澳大利亚全国电话中断：一次尴尬的失败](https://hackaday.com/2026/08/27/australias-nationwide-phone-outage-was-an-embarrassing-failure/) ⭐️ 8.0/10

rss · Hackaday · 8月27日 14:00

**「背景」** 现代电信网络虽然复杂且强大，但高度依赖精确的时间同步。2026 年 7 月 8 日，澳大利亚最大的电信运营商 Telstra 遭遇全国性中断，影响 880 万人，暴露出其网络基础设施中一个被忽视的脆弱环节。

**「方案」** 事故根源是一台老旧的 Microchip SSU 2000 NTP 服务器，该型号可追溯至 2000 年代初。Telstra 仍依赖三台此类设备提供网络时间协议服务。凌晨 3:38，技术人员更换备用电源导致服务器重启，但服务器因未记录的配置更改，依赖内部 GPS 卡获取时间，而该卡存在已知的 GPS 日期翻转漏洞，重启后时间被错误地设为 2006 年。下游设备接收到错误时间后，数字证书认证失败，引发连锁反应，导致全国网络瘫痪。尽管服务器在 7:11 被隔离，但直到下午 4 点才完全解决 NTP 问题。Telstra 曾在 2020 年和 2022 年收到补丁提醒，但未采取行动，因为未记录的配置更改使更新被认为不必要。此次中断还影响了紧急呼叫，尽管有 3200 个 Triple Zero 呼叫通过其他网络接通，仍有 604 个失败。

**「启示」** 作者强调，即使是看似微小的配置更改，如果未记录，也可能在关键时刻引发灾难性故障。这次事件凸显了配置管理和文档化的重要性，以及依赖过时硬件和未修补漏洞的风险。

**标签**: `#NTP`, `#network outage`, `#GPS rollover`, `#configuration management`, `#telecommunications`

---

<a id="item-tech-blog-2"></a>
### [支撑浴让环氧树脂打印成为可能](https://hackaday.com/2026/08/27/support-bath-enables-an-epoxy-benchy/) ⭐️ 5.0/10

rss · Hackaday · 8月28日 05:00

**「背景」** 许多物质理论上可以从喷嘴挤出，但只有少数能真正用于 3D 打印，因为它们的液态范围往往不合适：熔点太高难以挤出，太低则挤出后容易流动变形。嵌入式 3D 打印通过将整个打印件浸没在剪切变稀的支撑凝胶中来解决这个问题，使液体在固化前保持原位。

**「方案」** Riley 的实验室构建了这样一台 3D 打印机，用大部分 3D 打印的注射器泵替代挤出机，可以喷射几乎任何液体。他用奶油奶酪打印了一个缓步动物模型作为测试，因为这种材料便宜、易挤出且成型后保持形状。对于硅胶和环氧树脂，它们无法自行保持形状，因此需要支撑浴：一种矿物油和植物油的混合物，加入气相二氧化硅使其变稠但具有剪切变稀特性，既能容纳挤出液体，又能在针头穿过时流动。第一次测试用 Sylgard 184 打印了一个 Benchy，在浴中看起来不错，但层间附着力有限，取出时碎裂。第二次用双组分环氧树脂打印效果更好，虽然有些拉丝，但在异丙醇中洗去支撑浴后仍保持完整，甚至之后表现出不错的抗冲击性。

**「启示」** 作者认为，嵌入式 3D 打印结合支撑浴为打印环氧树脂等液体材料提供了一种可行途径，尽管硅胶测试失败，但环氧树脂的成功表明该技术有潜力，值得进一步探索。

**标签**: `#embedded 3D printing`, `#support bath`, `#epoxy`, `#silicone`, `#DIY hardware`

---

<a id="item-tech-blog-3"></a>
### [Mactini：一台几乎什么都不做的电脑](https://hackaday.com/2026/08/27/the-mactini-a-computer-that-does-almost-nothing/) ⭐️ 5.0/10

rss · Hackaday · 8月27日 20:00

**「背景」** 作者 Maya Posch 介绍了一个名为“Mactini”的业余项目，该项目将 BBC 曾用来嘲讽苹果公司不断缩小设备并削减功能的恶搞视频变成了现实。这个超小型笔记本电脑只有一个按钮，所有操作都通过复杂的按键模式完成，既笨拙又充满讽刺意味。

**「方案」** 制作者 Tucker Osman 在实现这一概念时，选择了 1.69 英寸的 ST7789V2 SPI LCD 和基于 RP2350 的 Waveshare 开发板作为核心。他没有直接使用现成的 LCD 示例代码，而是利用 DMA 进行屏幕数据传输，从而释放了大量 CPU 周期。其余硬件则从电子垃圾中拼凑，包括 iPad 扬声器和废弃电路板上的音频放大器。视频播放通过 Motion JPEG 解码实现，帧率尚可。整个设备被装入一个用 FreeCAD 设计的 3D 打印外壳中。

**「启示」** 作者认为，这个项目展示了如何将网络梗转化为实际硬件，并强调了在嵌入式系统中使用 DMA 优化性能的价值。尽管项目本身缺乏深度技术细节，但它体现了 DIY 社区将创意变为现实的乐趣。

**标签**: `#embedded systems`, `#DIY hardware`, `#RP2350`, `#display driver`, `#retro computing`

---

<a id="item-tech-blog-4"></a>
### [Farador 伪医疗设备：安慰剂效应的历史案例](https://hackaday.com/2026/08/27/the-farador-quack-medical-device/) ⭐️ 5.0/10

rss · Hackaday · 8月27日 18:30

**「背景」** 在 20 世纪初，市场上出现了许多声称能治愈所有疾病的医疗设备，Farador 就是其中之一。它宣称利用热电发电原理，通过电极施加微弱电流来治疗各种疾病，但实际上内部空空如也，没有任何工作机制。

**「方案」** 作者指出，Farador 并非真正依靠热电效应，而是通过复杂的说明书和看似高科技的外观来增强患者的信任，从而依赖安慰剂效应产生效果。尽管设备内部没有实际机制，但测量到的 20-30 毫伏电压足以让患者相信其有效性。作者进一步解释，安慰剂效应的强度与治疗的复杂性和仪式感相关，Farador 正是利用这一点。此外，作者提到安慰剂效应在近年来显著增强，甚至可能影响现代药物临床试验的结果，暗示许多现有药物可能无法通过今天的严格标准。

**「启示」** 作者的核心观点是，Farador 这类伪医疗设备的成功并非源于其技术，而是源于安慰剂效应，这种效应在医疗和宗教等领域都极为强大。这一案例提醒我们，在评估医疗设备时，必须警惕外观和仪式感对患者心理的影响，而不仅仅是技术本身。

**标签**: `#medical devices`, `#placebo effect`, `#history of technology`, `#quackery`, `#electrotherapy`

---

<a id="item-tech-blog-5"></a>
### [Thoreau BASIC：让现代电脑启动即入 BASIC 世界](https://hackaday.com/2026/08/27/all-the-best-computers-boot-to-basic/) ⭐️ 5.0/10

rss · Hackaday · 8月27日 15:30

**「背景」** 在 8 位家用电脑时代，开机即进入 BASIC 解释器是许多人的编程启蒙。如今，现代电脑的复杂操作系统让这种体验消失殆尽。作者介绍了 \[Tarjan\] 开发的 Thoreau BASIC，一个面向 x86 UEFI 机器的裸机 BASIC 解释器，旨在让用户在现代硬件上重温这种直接编程的乐趣。

**「方案」** Thoreau BASIC 主要兼容 GW-BASIC，但针对 21 世纪进行了升级：可用内存取决于系统报告，因此理论上可拥有数 GB 内存；支持 24 位高分辨率图形和位图加载，甚至支持多文本窗口。作者指出，这不仅是怀旧，更是对经典 BASIC 的现代化改造。评论区则围绕 BASIC 方言展开讨论，有人推荐 QBasic 或 Turbo Basic 作为更结构化的灵感来源，也有人强调 GW-BASIC 的全局变量和行号导致代码混乱，而 QBasic 引入了函数、局部变量等现代特性。此外，评论还提及了其他 BASIC 变体，如 Amstrad Locomotive BASIC、BBC BASIC 等，并指出 Thoreau BASIC 类似于现代版的 IBM ROM-BASIC，保留了直接模式，可作为操作系统或监视器使用。

**「启示」** 作者认为，Thoreau BASIC 为现代硬件带来了经典的 BASIC 体验，尽管其实际应用可能有限，但足以吸引怀旧用户尝试。这一项目也引发了关于 BASIC 语言演变的讨论，凸显了经典语言在现代语境下的价值与局限。

**标签**: `#BASIC`, `#UEFI`, `#retrocomputing`, `#programming languages`, `#hobbyist`

---