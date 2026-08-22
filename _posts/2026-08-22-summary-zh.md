---
layout: default
title: "Horizon Summary: 2026-08-22 (ZH)"
date: 2026-08-22
lang: zh
---

> 从 52 条内容中筛选出 18 条重要资讯。

---

**科技新闻**
1. [SGLang v0.5.18 发布：新增多模型支持与性能优化](#item-tech-news-1) ⭐️ 8.0/10
2. [Linus Torvalds 称赞 AI 在 Linux 内核调试中的帮助](#item-tech-news-2) ⭐️ 8.0/10
3. [自研 250M 量化 LLM：60MB 部署，CPU 上 400 tok/s](#item-tech-news-3) ⭐️ 8.0/10
4. [开源 Roguelike 环境 DelveRL：专为训练游戏智能体设计](#item-tech-news-4) ⭐️ 8.0/10
5. [llama.cpp b10580 发布：新增 dots3-note 视觉+音频支持](#item-tech-news-5) ⭐️ 7.0/10
6. [本地 LLM 为何感觉更笨：推理配置与量化是关键](#item-tech-news-6) ⭐️ 7.0/10
7. [Munder Difflin：本地多智能体编排工具，降低令牌消耗](#item-tech-news-7) ⭐️ 7.0/10
8. [MCP 发布新路线图：简化远程部署与标准化代理认证](#item-tech-news-8) ⭐️ 7.0/10
9. [编码代理的关键技能：自信指导与验证](#item-tech-news-9) ⭐️ 7.0/10
10. [评估分辨率显著影响 V1 脑相似性学习规则识别](#item-tech-news-10) ⭐️ 7.0/10
11. [任天堂单日下架 400 余 Switch 模拟器仓库](#item-tech-news-11) ⭐️ 7.0/10
12. [皮尤研究：逾三成新网页由 AI 撰写](#item-tech-news-12) ⭐️ 7.0/10
13. [开源模型追赶速度加快，每代追平时间减半](#item-tech-news-13) ⭐️ 7.0/10
14. [美国团体敦促 FTC 调查 AI 公司购书销毁行为](#item-tech-news-14) ⭐️ 7.0/10

**科技博客**
1. [开源 ExpressLRS 接收器实现超远距离通信](#item-tech-blog-1) ⭐️ 7.0/10
2. [破解猫砂盆：本地控制 Litter Robot 4](#item-tech-blog-2) ⭐️ 7.0/10
3. [用 555 定时器构建拍频振荡器](#item-tech-blog-3) ⭐️ 5.0/10
4. [模拟盖革计数器制作：复古辐射探测](#item-tech-blog-4) ⭐️ 5.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [SGLang v0.5.18 发布：新增多模型支持与性能优化](https://github.com/sgl-project/sglang/releases/tag/v0.5.18) ⭐️ 8.0/10

SGLang v0.5.18 正式发布，这是一个包含 710 个 PR、由 212 位贡献者参与的重大版本。该版本新增了对 Muse Glimmer、Intern-S2-Mobius、SANA-Video、LingBot-Video-MoE、LTX-2.5、Cosmos3 Edge &amp; Distilled 和 LongCat-Image 等模型的支持，涵盖自回归和扩散模型。性能方面，通过重叠检查点暂存，Qwen3-32B 在 H100 上的启动速度比串行方式快 8.6-11.7%，比默认方式快 2.38 倍；TP LMHead 采用全对全通信后，DeepSeek-V4-Pro 的解码延迟从 320 微秒降至 169 微秒。此外，FlashInfer MNNVL 纯全归约支持为 DeepSeek-V4-Flash 在 Blackwell 上带来最高 6.9% 的小批量性能提升。依赖项更新至 torch 2.13.0、triton 3.7.1、flashinfer 0.6.17 等，并统一了编译内核缓存目录。

github · Fridge003 · 8月22日 00:09

**「背景」** SGLang 是一个高性能的大语言模型和多模态模型推理服务框架，由 LMSYS 组织开发，其核心特性包括 RadixAttention 技术，可显著提升推理速度。该框架持续迭代，此前版本如 v0.3 已实现 DeepSeek MLA 等架构的 7 倍加速，而 v0.5.12 等版本则提供了统一的 Docker 镜像支持。本次发布的 v0.5.18 是继这些版本之后的一次重大更新，引入了多项新模型支持和性能优化。

**「影响」** 对于使用 SGLang 部署 LLM 推理服务的开发者和组织，此版本提供了更广泛的模型支持（包括多模态和扩散模型）以及显著的启动和解码性能提升，尤其对 DeepSeek 系列模型在 Blackwell 硬件上的优化效果明显。用户需注意升级后首次启动会重新编译内核，且部分新特性（如重叠检查点暂存）需要显式启用。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/sgl-project/sglang/releases">Releases · sgl-project/ sglang</a></li>
<li><a href="https://pypi.org/project/sglang/">SGLang is a fast serving framework for large language models and...</a></li>
<li><a href="https://www.lmsys.org/blog/2024-09-04-sglang-v0-3/">SGLang v 0 .3 Release : 7x Faster DeepSeek MLA... - LMSYS Org</a></li>

</ul>
</details>

**标签**: `#SGLang`, `#LLM inference`, `#model support`, `#release`, `#AI infrastructure`

---

<a id="item-tech-news-2"></a>
### [Linus Torvalds 称赞 AI 在 Linux 内核调试中的帮助](https://simonwillison.net/2026/Aug/22/linus-torvalds/) ⭐️ 8.0/10

Linus Torvalds 在 Linux 内核提交中公开描述了一次由 AI 辅助的艰难调试会话，该提交涉及 drm/xe 驱动中关于平面 CCS 存储作为可用 VRAM 的问题。他称赞 AI 完成了大量“苦力活”，尽管 AI 多次声称问题无法解决并建议放弃，但在他的坚持下，AI 仍持续添加调试代码并进行分析。Torvalds 表示，AI 甚至被允许撰写提交信息，以此肯定其贡献。这一事件凸显了 AI 在高风险软件工程任务中的实际价值，尽管其建议有时过于悲观。

rss · Simon Willison · 8月22日 21:04

**「背景」** Linux 内核是开源操作系统的核心，其开发通常需要高度专业的技术和耐心。Linus Torvalds 作为 Linux 的创始人，以对代码质量要求严格和调试经验丰富著称。近年来，AI 辅助编程工具逐渐普及，但通常用于简单任务或代码生成，而 Torvalds 此次公开认可 AI 在复杂内核调试中的帮助，展示了 AI 在更高级开发场景中的潜力。

**「影响」** 这一事件可能鼓励更多开发者尝试将 AI 工具用于复杂调试任务，尤其是在 Linux 内核等大型项目中，尽管 AI 的悲观建议可能需要开发者保持坚持和判断力。

**标签**: `#AI-assisted debugging`, `#Linux kernel`, `#Linus Torvalds`, `#software engineering`, `#AI in development`

---

<a id="item-tech-news-3"></a>
### [自研 250M 量化 LLM：60MB 部署，CPU 上 400 tok/s](https://www.reddit.com/r/MachineLearning/comments/1vv2nkh/i_developed_my_own_quantized_llm_from_scratch/) ⭐️ 8.0/10

一位开发者从零训练了一个 250M 参数的 LLM，基于 30B tokens 的 fineweb 数据集，并将其量化至 2 比特以下，使整个部署仅 60MB，运行内存约 80MB，在普通笔记本 CPU 上无需 GPU 即可达到约 400 tok/s 的速度。该模型采用独特的长期上下文机制：最近的 2048 个 token 以 fp16 保留在 KV 缓存中，更早的上下文被压缩至 1 比特并写入磁盘，每个 token 约 320 字节，因此 100 万 token 的历史约占用 320MB 磁盘空间。模型从训练之初就学习从磁盘缓存中检索信息，最多支持 1 亿 token 的检索范围，但受预算限制，未训练其进行推理，仅能检索和回答。基础模型在未见过的英文网页文本（2048 token 窗口）上，交叉熵为 3.15 nats/token，困惑度为 23.3，每字节 0.99 比特。词汇表不使用传统嵌入表，而是为每个 token 分配固定的 512 比特编码，131k 个 token 共 8.4MB，零训练参数；在 WordSim-353 上，该表 Spearman 相关系数为 0.619，而随机编码仅为 0.029。模型支持微调，完整工具包和演示已发布在 GitHub 和 Hugging Face 上。

reddit · r/MachineLearning · /u/Final-Data-1410 · 8月22日 04:39

**「背景」** 大型语言模型通常需要数十亿参数和大量计算资源，难以在边缘设备上部署。量化技术通过降低权重精度来减小模型体积，但通常仍需要数百 MB 甚至数 GB 的存储。SHADOW-250M-Instruct 是一个从头训练的 250M 参数模型，训练数据为 30B tokens 的英文文本，并额外使用约 0.7B tokens 进行指令微调。该模型通过将每个 token 表示为固定的 512 位码（而非传统的嵌入表），并将量化精度降至 2 比特以下，使得完整部署仅需 60MB，运行时约需 80MB 内存。

**「影响」** 该成果为边缘设备上的 LLM 部署提供了可行方案，显著降低了内存和存储需求，同时通过磁盘压缩实现了超长上下文检索，可能推动资源受限环境下的高效推理应用。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/QLNI/SHADOW-250M-Instruct">GitHub - QLNI / SHADOW - 250 M - Instruct : 250 M parameter language...</a></li>
<li><a href="https://huggingface.co/NODEMIND/SHADOW-250M">NODEMIND/ SHADOW - 250 M · Hugging Face</a></li>

</ul>
</details>

**标签**: `#LLM`, `#quantization`, `#efficient inference`, `#edge deployment`, `#long context`

---

<a id="item-tech-news-4"></a>
### [开源 Roguelike 环境 DelveRL：专为训练游戏智能体设计](https://www.reddit.com/r/MachineLearning/comments/1vvii1j/i_built_an_opensource_roguelike_specifically_for/) ⭐️ 8.0/10

DelveRL 是一个全新的开源 Roguelike 环境，专为训练游戏智能体而构建，解决了现有游戏难以与智能体框架集成的问题。它提供结构化 API、确定性模拟、程序化关卡、部分可观测性以及足够的策略深度，支持智能体竞争和提升。环境完全本地运行，包括无渲染器的批量环境和循环 PPO 训练器。内置基线智能体达到中位数 18 层，扩展运行可达 33 层。游戏、训练代码、检查点、桥接文档和原始基准均已开源。

reddit · r/MachineLearning · /u/SnyderConsulting · 8月22日 17:32

**「背景」** 强化学习研究常需要模拟环境，但许多现有游戏（如 Atari 或商业游戏）难以与智能体训练框架无缝集成，或缺乏可重复性。DelveRL 从零构建，旨在提供一个人类可玩、同时易于智能体接入的环境，借鉴 DeepMind 和 OpenAI 的项目经验，但专注于解决集成难题。

**「影响」** 对于强化学习研究者和 AI/ML 从业者，DelveRL 提供了一个现成的、可复现的训练环境，降低了游戏智能体研究的入门门槛，并可能加速算法迭代。

**标签**: `#reinforcement learning`, `#open-source`, `#game AI`, `#environment`, `#PPO`

---

<a id="item-tech-news-5"></a>
### [llama.cpp b10580 发布：新增 dots3-note 视觉+音频支持](https://github.com/ggml-org/llama.cpp/releases/tag/b10580) ⭐️ 7.0/10

llama.cpp 发布了 b10580 版本，主要新增了对 dots3-note 视觉+音频模型的多模态（mtmd）支持。该版本通过拉取请求 \#27524 实现，涉及文本转换、初始化实现、mtmd 转换以及 gguf-py/gguf/tensor\_mapping.py 的更新，并获得了 Hugging Face 成员的代码审查。此更新扩展了 llama.cpp 对多模态模型的处理能力，使开发者能够在本地运行和推理包含视觉与音频输入的模型。该版本提供了适用于 macOS、Linux、Windows、Android 和 iOS 的多种预编译二进制文件，涵盖 CPU、Vulkan、CUDA、ROCm、OpenVINO、SYCL 等后端。部分构建（如 macOS KleidiAI、Ubuntu ROCm、openEuler）因相关拉取请求被标记为 DISABLED。

github · github-actions\[bot\] · 8月22日 09:33

**「背景」** llama.cpp 是一个广泛使用的开源库，用于在本地设备上高效运行大型语言模型（LLM）及其多模态变体。mtmd（多模态转换）是 llama.cpp 中用于处理视觉、音频等非文本输入数据的格式。dots3-note 模型是一种结合视觉和音频处理能力的多模态模型，本次更新使其能够在 llama.cpp 中通过 mtmd 格式被加载和推理。

**「影响」** 使用 llama.cpp 的开发者现在可以本地运行 dots3-note 视觉+音频模型，从而在隐私敏感或离线场景下进行多模态推理。该更新为多模态 AI 应用（如视频理解、语音交互）提供了更广泛的支持，但具体性能提升和兼容性细节尚未公布。

**标签**: `#llama.cpp`, `#multimodal`, `#vision`, `#audio`, `#release`

---

<a id="item-tech-news-6"></a>
### [本地 LLM 为何感觉更笨：推理配置与量化是关键](https://forum.level1techs.com/t/why-your-local-llm-feels-dumber-than-it-is/253917) ⭐️ 7.0/10

一篇论坛帖子解释了本地大语言模型（LLM）看似能力不足的常见原因，指出问题往往不在于模型本身，而在于推理配置和量化方式。帖子强调，使用低比特量化（如 2.58-bit GGUF）和默认推理设置会显著降低模型性能，而通过调整采样参数、上下文长度和推理引擎（如 sglang、vLLM）可以大幅提升实际表现。社区用户提供了具体案例：例如在 MacBook Pro 上运行 Qwen3.8 27B MLX 版本表现良好，在 RTX 5090 上使用 sglang 达到每秒 150+ token，并成功构建了街机射击游戏。帖子还引发了关于 Ollama 与 vLLM 在推理质量和并发处理上的讨论，指出 Ollama 可能因默认设置而影响输出质量，而 vLLM 更擅长批处理但 Windows 支持不佳。

hackernews · felineflock · 8月22日 18:14 · [社区讨论](https://news.ycombinator.com/item?id=49402232)

**「背景」** 本地大语言模型（LLM）的性能不仅取决于模型本身，还受到推理配置和量化方式的影响。量化是一种通过降低模型权重精度（如从 16 位降至 4 位）来减少内存占用和加速推理的技术，但过度量化可能导致模型输出质量下降。推理工具如 Ollama 和 vLLM 在批处理、并发管理和吞吐量方面存在差异，例如 vLLM 在并发负载下吞吐量可高出 Ollama 16 倍，但 Ollama 更易于本地部署和 CPU 系统使用。这些因素共同解释了为什么用户可能感觉本地 LLM“更笨”，而实际上可能是配置或工具选择不当所致。

**「影响」** 对于本地 LLM 用户，尤其是依赖 Ollama 等易用工具的用户，该帖子提醒他们检查推理配置和量化级别，以避免因默认设置而低估模型能力，从而影响实际应用效果。

**「社区讨论」** 社区用户分享了正面体验，如 Qwen3.8 27B 在 MacBook Pro 上运行良好，以及 sglang 在 RTX 5090 上的高性能表现。同时，有用户质疑 Ollama 是否存在根本性问题，担心其推理质量不如 vLLM，而另一些用户则指出 Ollama 的易用性优势，并认为 vLLM 的主要优势在于并发管理。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.sitepoint.com/ollama-vs-vllm-performance-benchmark-2026/">Ollama vs vLLM : Performance Benchmark 2026 | SitePoint</a></li>
<li><a href="https://particula.tech/blog/ollama-vs-vllm-comparison">Ollama vs vLLM : Which LLM Server Actually Fits in 2026</a></li>
<li><a href="https://www.codiste.com/vllm-vs-ollama">vLLM vs Ollama : Choosing the Right LLM Framework</a></li>

</ul>
</details>

**标签**: `#local-llm`, `#inference`, `#quantization`, `#ollama`, `#vllm`

---

<a id="item-tech-news-7"></a>
### [Munder Difflin：本地多智能体编排工具，降低令牌消耗](https://munderdiffl.in/) ⭐️ 7.0/10

Munder Difflin 是一个本地多智能体编排工具，可封装现有的编码智能体（如 Claude Code 和 Codex），并支持几乎所有主流编码智能体。该工具提供确定性模拟，不消耗令牌，据称大多数用户（一周内超过 2 万）反馈其降低了令牌消耗。项目在 Hacker News 上获得 242 分和 113 条评论，开发者 Chaitanya 在评论中回应了用户问题。该工具旨在通过模拟多个智能体协作，帮助开发者探索多智能体工作流，同时减少令牌开销。

hackernews · simonpure · 8月22日 09:49 · [社区讨论](https://news.ycombinator.com/item?id=49398152)

**「背景」** Munder Difflin 是一个本地多智能体编排工具，它包装现有的终端型编码代理（如 Claude Code、Codex、Copilot 等 9 种以上），将它们组织成具有长期记忆、邮箱和办公桌的协作团队。该项目由 Chaitanya Giri 开发，免费开源，利用用户已有的订阅（按小时限额）运行，模拟过程确定且不消耗令牌，据称一周内吸引了超过 2 万名用户。

**「影响」** 对于使用 Claude Code 或 Codex 等编码智能体的开发者，Munder Difflin 提供了一种降低令牌消耗并实现确定性模拟的本地方案，可能改善多智能体工作流的成本与可预测性。

**「社区讨论」** 社区评论中，用户 Aurornis 以《办公室》主题比喻多智能体系统的功能失调，认为其准确反映了智能体间目标冲突导致的结果崩溃。开发者 Chaitanya 回应称工具支持几乎所有编码智能体，并强调模拟的确定性和令牌节省。用户 joshstrange 在试用后提出批评，认为工具更偏向管道而非真正的智能体，希望定义角色而非固定智能体，并建议更灵活的流程。用户 ImageXav 则幽默地比喻用户为 Michael，智能体为 Dwight，认为工具帮助用户体验管理挑战。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/chaitanyagiri/munder-difflin">GitHub - chaitanyagiri/munder-difflin: local multi-agent harness · GitHub</a></li>
<li><a href="https://munderdiffl.in/">Munder Difflin — Agent harness to run an office of your clones</a></li>
<li><a href="https://peerlist.io/chaitanyagiri/project/munder-difflin-free-local-multiagent-harness">Munder Difflin free local multi-agent harness | Peerlist</a></li>

</ul>
</details>

**标签**: `#multi-agent`, `#LLM`, `#developer-tools`, `#open-source`, `#AI-agents`

---

<a id="item-tech-news-8"></a>
### [MCP 发布新路线图：简化远程部署与标准化代理认证](https://blog.modelcontextprotocol.io/posts/mcp-roadmap/) ⭐️ 7.0/10

Model Context Protocol（MCP）发布新路线图，旨在简化远程服务器部署并标准化代理认证。路线图提出，到 2026-07-28 版本，远程 MCP 服务器将与其他 HTTP 工作负载无异，从而降低部署复杂性。此外，MCP 计划为代理身份提供标准化识别与信任机制，以支持云工作负载、用户不在场时的代理操作以及子代理的权限委派。这一演进标志着 MCP 在 AI 互操作性方面的重要进展，回应了开发者对认证和 HTTP 集成的长期批评。

hackernews · pentagrama · 8月22日 13:31 · [社区讨论](https://news.ycombinator.com/item?id=49399591)

**「背景」** 模型上下文协议（Model Context Protocol，MCP）是由 Anthropic 主导开发的一种开放协议，旨在为 AI 助手与外部工具、数据源之间提供标准化的连接方式。它通过定义统一的接口，让 AI 模型能够调用各种服务，类似于为 AI 应用提供 USB 接口。MCP 最初的设计侧重于本地或交互式场景，但随着 AI 代理（agent）越来越多地以云端工作负载的形式运行，其远程部署和身份认证方面的局限性逐渐显现。2026 年的 MCP 路线图正是针对这些挑战，计划简化远程服务器的部署，并标准化代理身份认证机制，使 MCP 服务器能够像普通 HTTP 服务一样易于使用。

**「影响」** 对于依赖 MCP 的开发者与组织，该路线图有望减少远程服务器部署的摩擦，并提升代理间认证的互操作性，但实际影响取决于社区对标准的采纳程度。

**「社区讨论」** 社区反应不一：部分开发者欢迎简化 HTTP 集成，认为初始协议设计过于复杂；另一些人则质疑 MCP 相比 REST 端点加 skills.md 文件的优势，并对标准采纳率表示怀疑。还有开发者因早期标准频繁变动而失去信心，转向本地工具和 API。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blog.modelcontextprotocol.io/posts/2026-mcp-roadmap/">The 2026 MCP Roadmap | Model Context Protocol Blog</a></li>
<li><a href="https://aratech.ae/blog/mcp-eating-ai-stack-2026">MCP is Eating the AI Stack: Why Anthropic&#x27;s Model Context</a></li>
<li><a href="https://rephrase-it.com/blog/mcp-roadmap-2026-http-cards-agents">MCP Roadmap 2026 : HTTP , Cards, Agents | Rephrase</a></li>

</ul>
</details>

**标签**: `#MCP`, `#AI`, `#protocols`, `#authentication`, `#developer tools`

---

<a id="item-tech-news-9"></a>
### [编码代理的关键技能：自信指导与验证](https://simonwillison.net/2026/Aug/22/more-than-just-code-review/) ⭐️ 7.0/10

Simon Willison 认为，高效使用编码代理的关键在于能够自信地指导它们进行修改，并自信地验证这些修改是否正确应用。虽然有时需要逐行审查代码，但还有其他方法可以达到这一目标。他指出，逐行检查代码从来都不是验证软件变更的最有效方式。这一观点强调了在 AI 辅助开发中，开发者需要培养新的验证技能，而不仅仅是依赖传统的代码审查。

rss · Simon Willison · 8月22日 15:56

**「背景」** 随着生成式 AI 和编码代理（如 GitHub Copilot、Cursor 等）的普及，开发者越来越多地依赖 AI 生成代码。传统的代码审查通常涉及逐行检查，但在 AI 生成代码的场景下，这种方法可能效率低下且不充分。Willison 的观点反映了开发者社区对如何有效验证 AI 生成代码的持续讨论。

**「影响」** 对于使用编码代理的开发者而言，这一观点提示他们需要开发新的验证策略，例如通过测试、运行结果或行为验证来确认代码变更的正确性，而不仅仅是依赖逐行审查。这可能会改变开发者的工作流程，提高效率，但也要求开发者具备更强的系统级理解能力。

**标签**: `#coding-agents`, `#code-review`, `#generative-ai`, `#agentic-engineering`, `#software-engineering`

---

<a id="item-tech-news-10"></a>
### [评估分辨率显著影响 V1 脑相似性学习规则识别](https://www.reddit.com/r/MachineLearning/comments/1vvdxwt/the_evaluation_resolution_has_been_shown_to_have/) ⭐️ 7.0/10

一项预印本研究显示，评估分辨率会显著影响卷积神经网络（CNN）学习规则在初级视觉皮层（V1）的脑相似性评估结果，挑战了此前关于未训练网络在 V1 具有脑相似性的论断。研究使用 CIFAR-10 子集训练的 32 像素小 CNN，比较了五种学习规则（随机初始化、反向传播、反馈对齐、预测编码、STDP），并在 THINGS-fMRI 刺激上以六种分辨率（32px 至 224px）进行评估。结果显示，反向传播与未训练网络在 V1 的差距随分辨率呈非单调变化，从 32 像素的-0.001±0.007 变为 224 像素的+0.044±0.006（n=5 种子），表明该现象主要是评估分辨率的伪影。研究还排除了训练/评估分辨率匹配、Gabor/像素低级结构、未训练基线的未校准批归一化等因素，并发现内容而非池化位置数量是主要影响因素。此外，反向传播优于未训练网络在 LOC（外侧枕叶复合体）的效果在所有分辨率下均存在，表明学习确实有影响，但不在 V1 比较的常规区域。研究还修正了先前预印本中的批归一化评估模式错误。

reddit · r/MachineLearning · /u/ConfusionSpiritual19 · 8月22日 14:30

**「背景」** 模型-大脑比较研究常用表征相似性分析（RSA）来评估人工神经网络与大脑区域（如 V1）的激活相似性。此前有研究声称，未训练的 CNN 在 V1 的脑相似性可媲美甚至超过反向传播训练的 CNN，这一说法引发了对无监督或生物合理学习规则的关注。然而，这些比较通常在不同分辨率下进行，可能引入评估伪影。本研究通过系统控制分辨率，检验了这一现象是否真实存在。

**「影响」** 该研究对计算神经科学和机器学习领域的研究者具有直接影响，提示在模型-大脑比较中必须控制评估分辨率，否则可能得出关于学习规则脑相似性的错误结论。研究提供的代码和修正的批归一化错误有助于提高未来研究的可重复性。

**标签**: `#computational neuroscience`, `#model-brain comparison`, `#learning rules`, `#evaluation methodology`, `#CNN`

---

<a id="item-tech-news-11"></a>
### [任天堂单日下架 400 余 Switch 模拟器仓库](https://torrentfreak.com/nintendo-wipes-out-400-switch-emulator-repos-in-single-day-github-sweep/) ⭐️ 7.0/10

任天堂本周同一天向 GitHub 提交 7 份 DMCA 反规避通知，导致超过 400 个 Switch 模拟器仓库及其分支被下架，其中针对 suyu 的通知覆盖 311 个仓库，已停更的安卓模拟器 Skyline 也有 29 个仓库被移除。任天堂称这些模拟器使用未经授权的密钥解密游戏，违反 DMCA。通知援引了 Yuzu 和解案等先例，但相关案件均未经过庭审实质裁决。这一事件对模拟器社区和开源生态产生重大影响。

telegram · zaihuapd · 8月22日 00:28

**「背景」** Switch 模拟器（如 Yuzu 和 suyu）允许用户在 PC 等设备上运行 Switch 游戏，但通常需要解密游戏文件，这涉及绕过任天堂的加密保护。任天堂此前已对 Yuzu 提起法律诉讼并达成和解，导致 Yuzu 停止开发。suyu 是 Yuzu 的一个分支，继续提供类似功能。DMCA 反规避条款禁止绕过技术保护措施，任天堂据此要求 GitHub 下架相关仓库。

**「影响」** 此次大规模下架直接导致 suyu 和 Skyline 等模拟器项目的代码仓库被移除，开发者可能面临法律风险，模拟器社区的发展受到严重打击。由于相关案件未经庭审裁决，法律边界仍不明确，未来类似项目可能面临更严格的审查。

**标签**: `#Nintendo`, `#DMCA`, `#Switch emulator`, `#GitHub`, `#open source`

---

<a id="item-tech-news-12"></a>
### [皮尤研究：逾三成新网页由 AI 撰写](https://www.independent.co.uk/tech/ai-webpages-internet-dead-internet-theory-b3037019.html) ⭐️ 7.0/10

皮尤研究中心的一项研究显示，如今超过三分之一的互联网内容由 AI 撰写。该研究分析了近 50 万英文网页，发现整体 10%的网页有明显 AI 痕迹，而在 ChatGPT 发布后发布的新页面中，这一比例升至 35%。研究还发现 AI 写作特征增多，如破折号使用约翻倍、牛津逗号增加 63%、聊天机器人常用词翻倍，且.com 网站的 AI 痕迹约为.org 的两倍、.edu 和.gov 的十倍。这一研究正值“死互联网理论”担忧升温之际，凸显了 AI 生成内容在网络上的日益普及。

telegram · zaihuapd · 8月22日 05:48

**「背景」** 皮尤研究中心（Pew Research Center）近期发布的一项研究分析了近 50 万个英文网页，发现自 ChatGPT 发布以来，新发布的网页中有 35%显示出明显的 AI 撰写或编辑痕迹，而整体网页中这一比例为 10%。该研究通过检测破折号、牛津逗号等 AI 写作特征来识别 AI 参与，并指出.com 网站的 AI 痕迹比例约为.org 的两倍、.edu 和.gov 的十倍。这一发现正值“死互联网理论”（认为互联网内容已大量由 AI 生成而非人类创作）担忧升温之际。

**「影响」** 该研究对内容创作者、SEO 从业者和互联网用户具有直接影响，表明 AI 生成内容已成为网络主流，可能影响信息可信度和内容质量评估。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://techcrunch.com/2026/08/20/a-third-of-webpages-published-since-chatgpts-launch-show-signs-of-ai-authorship-study-finds/">A third of web pages published since ChatGPT launched... | TechCrunch</a></li>
<li><a href="https://www.nur.kz/technologies/internet/2415759-tret-veb-stranic-sozdannyh-posle-zapuska-chatgpt-soderzhit-priznaki-uchastiya-ii-vyyasnili-eksperty/">Треть веб-страниц, созданных после запуска ChatGPT , содержит...</a></li>

</ul>
</details>

**标签**: `#AI-generated content`, `#Pew Research`, `#web content`, `#ChatGPT`, `#internet trends`

---

<a id="item-tech-news-13"></a>
### [开源模型追赶速度加快，每代追平时间减半](https://newsletter.semianalysis.com/p/are-open-models-catching-up) ⭐️ 7.0/10

SemiAnalysis 的最新分析显示，开源模型正以加速的节奏追赶闭源前沿模型，每一代开源模型追平闭源模型所需的时间减半。该分析将大模型历史划分为早期扩展、推理和智能体三个时代，并指出在智能体时代追赶速度最快：Kimi K2.6 用 4.8 个月超越 Opus 4.5，GLM-5.2 用 6 个月超过 GPT-5.2。文章提到，GLM 5.3、Kimi K3 等开源模型已能胜任许多曾帮助 Anthropic 获得 650 亿美元以上年化收入的编程与智能体任务，引发模型层商品化的担忧。然而，基准测试并非全部，Anthropic 的产品化能力仍是其优势。

telegram · zaihuapd · 8月22日 08:26

**「背景」** SemiAnalysis 是一家专注于人工智能、半导体等前沿科技领域的独立研究机构，其分析常被业界引用。该机构将大模型的发展划分为早期扩展、推理和智能体三个时代，并基于基准测试得分对比开源与闭源模型的能力差距。其最新报告指出，开源模型追平闭源前沿模型所需的时间逐代减半，例如在智能体时代，Kimi K2.6 用 4.8 个月超越 Opus 4.5，GLM-5.2 用 6 个月超过 GPT-5.2。

**「影响」** 对于依赖闭源前沿模型的开发者和企业，开源模型的快速追赶可能降低模型层的差异化优势，促使他们更关注产品化和应用层创新，而非单纯依赖模型能力。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://newsletter.semianalysis.com/p/are-open-models-catching-up">Are Open Models Catching Up?</a></li>
<li><a href="https://www.gsaglobal.org/events/wp-content/uploads/sites/10/2025/11/semianalysis_gsa-nov-2025-emtech-webinar.pdf">SEMIANALYSIS GSA November 2025 DYLAN PATEL</a></li>

</ul>
</details>

**标签**: `#open-source`, `#AI models`, `#industry analysis`, `#model commoditization`, `#SemiAnalysis`

---

<a id="item-tech-news-14"></a>
### [美国团体敦促 FTC 调查 AI 公司购书销毁行为](https://www.axios.com/2026/08/21/ftc-ai-companies-book-destruction-investigate) ⭐️ 7.0/10

8 月 21 日，美国十余家民间团体（包括 Demand Progress 教育基金和美国消费者联合会）联名致信联邦贸易委员会（FTC），要求调查 AI 公司购买、扫描并销毁实体书以训练模型的行为，认定其是否构成《联邦贸易委员会法》第 5 条下的不公平竞争手段。信件指出，Anthropic 曾耗资数百万美元购书并切除书脊，将扫描页用于训练 Claude；谷歌、微软和 OpenAI 也面临类似版权诉讼。团体认为这种“囤积并销毁”的做法让市场丧失关键素材，部分珍本可能永久消失，并抬高对手成本、构筑护城河，但不主张限制 AI 训练本身。若 FTC 受理，AI 训练数据之争将从版权领域延伸至竞争监管。

telegram · zaihuapd · 8月22日 15:40

**「背景」** AI 公司为训练大语言模型，需要大量文本数据。除了从互联网抓取内容，一些公司也购买实体书进行扫描，以获取高质量、有版权的文本。这种做法引发了版权争议，已有相关诉讼。此次美国民间团体致信 FTC，要求依据《联邦贸易委员会法》第 5 条调查此类行为是否构成不公平竞争，将训练数据问题延伸至竞争监管领域。

**「影响」** 若 FTC 受理此案，AI 公司获取训练数据的方式将面临新的竞争法审查，可能影响 Anthropic、谷歌、微软和 OpenAI 等公司的数据获取策略，并可能为其他依赖实体书扫描的 AI 企业带来法律不确定性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.axios.com/2026/08/21/ftc-ai-companies-book-destruction-investigate">Exclusive: FTC urged to investigate AI firms for destroying books</a></li>
<li><a href="https://www.cbsnews.com/news/ftc-ai-companies-destroying-books/">AI companies accused of hoarding and destroying millions of books - CBS News</a></li>

</ul>
</details>

**标签**: `#AI regulation`, `#FTC`, `#training data`, `#competition`, `#Anthropic`

---

## 科技博客

<a id="item-tech-blog-1"></a>
### [开源 ExpressLRS 接收器实现超远距离通信](https://hackaday.com/2026/08/22/open-source-expresslrs-receiver-reaches-for-range/) ⭐️ 7.0/10

rss · Hackaday · 8月22日 23:00

**「背景」** 无人机控制链路在无线电领域堪称奇迹：使用最大功率仅 1 瓦的发射机，ExpressLRS（ELRS）协议能控制无人机飞行超过 100 公里。作者\[Stan\]从零开始构建无人机电子系统，最近设计了四款 ELRS 接收器，并深入探讨了其惊人射程背后的原理。

**「方案」** 虽然降低频率可以增加射程，但\[Stan\]的接收器主要使用 2.4 GHz 频段，其关键在于调制方式的革新：ELRS 采用啁啾扩频调制，每个比特以线性上升的无线电音调（啁啾）传输，数据编码在啁啾的起始频率中。接收端通过乘以逆啁啾并进行快速傅里叶变换来解码，这一过程提供了 24 dB 的等效增益，足以解码低于接收机噪声底限的信号。硬件设计相对简单，仅需 ESP32 微控制器、SX1281 射频芯片及少量外设。四款接收器均在 2.4 GHz 下工作，其中两款额外支持 900 MHz 天线。值得注意的是，一款接收器违反射频设计常规，使用过孔连接天线，但由于附近有足够的接地过孔，电流返回路径几乎不受影响，性能几乎没有变化。在一次测试中，尽管有森林阻挡信号路径，所有四款接收器在超过 5 公里的距离上仍保持连接。

**「启示」** ELRS 通过啁啾扩频调制和巧妙的硬件设计，在低功耗下实现了超远距离通信，展示了现代射频技术在无人机控制领域的巨大潜力。

**标签**: `#ExpressLRS`, `#RF design`, `#chirp spread spectrum`, `#drone control`, `#SX1281`

---

<a id="item-tech-blog-2"></a>
### [破解猫砂盆：本地控制 Litter Robot 4](https://hackaday.com/2026/08/21/hacking-a-cat-litter-box/) ⭐️ 7.0/10

rss · Hackaday · 8月22日 05:00

**「背景」** Litter Robot 4 是一款自动清洁猫砂盆，但它的联网功能依赖制造商的云服务，这让想要基于其运行状态做自动化的用户感到不便。作者 Joseph DiGiovanni 决定绕过云服务，通过逆向工程实现本地控制。

**「方案」** Litter Robot 4 的硬件架构为这次改造提供了便利：它使用一个 PIC 微控制器负责底层硬件控制和安全功能，而 ESP32 则专门处理 WiFi 和云连接。Joseph 通过监听和数据分析（借助 LLM 处理）搞清了 ESP32 与 PIC 之间的通信协议，然后基于 ESPHome 编写了自定义固件，替换掉原来的云连接固件，同时保留了 PIC 上的安全关键功能。这样，他就能将猫砂盆无缝集成到 Home Assistant 中，实现本地自动化，而不牺牲原有的安全特性。他在 Codeberg 上分享了相关文件，并鼓励其他用户为 Litter Robot 3 的移植提供信息。

**「启示」** 作者展示了在保留设备安全关键控制的同时，通过替换云连接固件来实现本地智能家居集成的可行路径。这种“分离式”逆向工程方法，为其他物联网设备的去云化提供了有价值的参考。

**标签**: `#reverse-engineering`, `#ESPHome`, `#Home Assistant`, `#IoT security`, `#firmware`

---

<a id="item-tech-blog-3"></a>
### [用 555 定时器构建拍频振荡器](https://hackaday.com/2026/08/22/555-makes-a-useful-beat-frequency-oscillator/) ⭐️ 5.0/10

rss · Hackaday · 8月22日 17:00

**「背景」** 廉价业余无线电设备可能无法直接接收某些信号，尤其是连续波和单边带抑制载波传输，因为接收机缺少稳定的载波。作者提出利用经典的 555 定时器芯片，通过简单电路构建一个拍频振荡器（BFO），注入接收机的中频链路，以弥补载波缺失。

**「方案」** 作者描述的方案是使用 555 定时器搭配适当的电阻和电容，产生 455 kHz 的拍频振荡信号。电路包含一个电位器，使得频率可在 455 kHz 基础上±20%左右调谐，以适应不同接收需求。555 芯片支持 4.5 至 16 伏的宽电压范围，便于直接集成到各种老式无线电设备中，无需额外电源。作者还提到 EDN 曾详细介绍过另一种设计，但本文未提供具体电路图或性能数据。

**「启示」** 作者认为，利用 555 定时器构建的拍频振荡器是一种简单实用的业余无线电改造方案，能扩展接收机的信号接收范围。尽管文章缺乏深度技术细节，但展示了经典芯片在特定应用中的灵活性和实用性。

**标签**: `#555 timer`, `#beat frequency oscillator`, `#ham radio`, `#circuit design`, `#hobbyist electronics`

---

<a id="item-tech-blog-4"></a>
### [模拟盖革计数器制作：复古辐射探测](https://hackaday.com/2026/08/22/building-an-analog-geiger-counter/) ⭐️ 5.0/10

rss · Hackaday · 8月22日 11:00

**「背景」** 如今用微控制器制作数字盖革计数器十分容易，但作者\[ludens\]选择了一条复古路线，打造了一台纯模拟的盖革计数器，用于测量低水平辐射源和地球背景辐射。

**「方案」** 为了获得高灵敏度，\[ludens\]选用了一根大型中国 J306β盖革管，其额定输出为背景水平下每分钟 88 次计数，或暴露于 1µSv/h 时每秒 8 次计数。该管长 200 毫米，直径 18 毫米，突出于设备顶部。由于大型管在低水平下也能产生足够多的计数，作者决定用简单的模拟低通电路对输出进行平均。整个设备由单节 AA 电池供电，电源电路将其升压至 5V 供 IC 使用，并为管子提供 400V 高压。CMOS 施密特触发器负责控制，读数通过老式模拟表盘显示。设备有两个量程：1µSv/h 和 10µSv/h。作者表示，如果读数超出量程，他宁愿跑开而不是精确测量，因此不需要更高的量程。

**「启示」** 作者通过这个项目展示了模拟电路在辐射探测中的可行性，并指出盖革管本质上是数字脉冲密度调制输出，模拟电路实际上起到了数模转换的作用。

**标签**: `#Geiger counter`, `#analog electronics`, `#radiation detection`, `#DIY hardware`, `#pulse-density modulation`

---