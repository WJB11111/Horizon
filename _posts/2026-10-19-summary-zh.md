---
layout: default
title: "Horizon Summary: 2026-10-19 (ZH)"
date: 2026-10-19
lang: zh
---

> 从 51 条内容中筛选出 16 条重要资讯。

---

**科技新闻**
1. [Linux 内核漏洞可致 KVM 访客逃逸](#item-tech-news-1) ⭐️ 9.0/10
2. [vLLM v0.32.0 发布：结构化决策端点与低精度 KV 缓存](#item-tech-news-2) ⭐️ 8.0/10
3. [Together Computer 发布混合推理智能体 HybridAgent](#item-tech-news-3) ⭐️ 7.0/10
4. [RepRapMicron：将 RepRap 式 3D 打印推向微米级](#item-tech-news-4) ⭐️ 7.0/10
5. [开源 DIY 亚微米级三维运动控制平台](#item-tech-news-5) ⭐️ 7.0/10
6. [TempoPFN：合成预训练线性 RNN 实现零样本预测](#item-tech-news-6) ⭐️ 7.0/10
7. [英伟达优化 Kimi K3 推理速度](#item-tech-news-7) ⭐️ 7.0/10
8. [美国 AI 基建热潮现裂痕，巨额投资面临回报考验](#item-tech-news-8) ⭐️ 7.0/10
9. [Google 开源递归智能体框架 Harness²](#item-tech-news-9) ⭐️ 7.0/10
10. [Anthropic 游说 AI 安全法案设叫停门槛](#item-tech-news-10) ⭐️ 7.0/10
11. [研究：AI 修改图像可植入虚假记忆](#item-tech-news-11) ⭐️ 7.0/10
12. [Anthropic 拟捐 5% 股份设立公益基金](#item-tech-news-12) ⭐️ 7.0/10

**科技博客**
1. [用火与盐驱动的离网制冷原型](#item-tech-blog-1) ⭐️ 5.0/10
2. [自制带侧视角的电子显微镜](#item-tech-blog-2) ⭐️ 5.0/10
3. [MediaTek MT7921AU Wi-Fi 芯片被改造成 SDR](#item-tech-blog-3) ⭐️ 5.0/10
4. [往复式卷笔刀的新型间歇分度机构](#item-tech-blog-4) ⭐️ 5.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [Linux 内核漏洞可致 KVM 访客逃逸](http://pwn.ai/) ⭐️ 9.0/10

PWN.AI 研究人员披露了一个 Linux 内核漏洞，编号为 CVE-2026-99999。该漏洞允许在网络校验和元数据于内核完成校验后被改写，从而修改 IPv4 头，造成 32 字节主机内存信息泄露。研究团队还在自有 KVM 环境中演示了从访客到宿主机的逃逸。Linux 已提交修复，相关补丁于 2026 年 10 月 14 日合并至主线内核。上述信息来自单一 Telegram 频道帖子，CVE 编号与日期尚未经内核补丁或官方公告核实，技术细节也较为简略，应谨慎对待。

telegram · zaihuapd · 10月18日 09:47

**「背景」** KVM 是 Linux 内核内置的虚拟化模块，访客虚拟机通常被视为与宿主机隔离，因此“访客逃逸”意味着攻击者可从虚拟机突破到宿主机。据 PWN.AI 研究团队介绍，该漏洞被命名为 PwnEscape，属于 Linux 网络栈中一类新的攻击方式：不可信的校验和元数据可在校验完成后改写安全敏感的报文头。TuxCare 的报道称该问题在内核网络栈中潜伏了约 18 年，AlmaLinux 也已发布针对该 CVE 的测试内核。

**「影响」** 运行 KVM 虚拟化基础设施的宿主机面临访客逃逸与主机内存泄露风险；上游补丁虽已合并，但下游发行版修复状态不一，例如截至 2026 年 10 月 18 日 Amazon Linux 仍将受影响内核包列为待修复。

<details><summary>参考链接</summary>
<ul>
<li>PwnEscape (CVE-2026-99999): Patched kernels available in testing | AlmaLinux OS</li>
<li>PwnEscape: Guest-to-Host KVM Escape (CVE-2026-99999) | PWN.AI Security Research</li>
<li>PwnEscape Hid in the Kernel Network Stack for 18 Years - TuxCare</li>
<li><a href="https://www.sevydevy.com/learn/linux-october-2026-pwnescape-kvm-escape-explained-checksum">PwnEscape KVM Escape Explained (2026): CVE-2026-99999</a></li>
<li><a href="https://dev.to/anoymask/pwnescape-guest-to-host-kvm-escape-and-host-memory-leak-via-linux-checksum-processing-18ij">PwnEscape: Guest-to-Host KVM Escape and Host Memory Leak via ...</a></li>
<li><a href="https://smartscope.blog/en/blog/cve-2026-99999-pwnescape-linux-kernel-vulnerability-affected-2026/">CVE-2026-99999 (PwnEscape): Am I affected? Fix status for ...</a></li>

</ul>
</details>

**标签**: `#linux-kernel`, `#virtualization`, `#kvm`, `#security-vulnerability`, `#cve`

---

<a id="item-tech-news-2"></a>
### [vLLM v0.32.0 发布：结构化决策端点与低精度 KV 缓存](https://github.com/vllm-project/vllm/releases/tag/v0.32.0) ⭐️ 8.0/10

vLLM 发布 v0.32.0，包含来自 363 位贡献者（其中 121 位新贡献者）的 814 次提交。新增 \`POST /v1/systemone\` 结构化决策端点，支持 \`choice\`、\`noul\` 和 \`score\` 问题，并默认启用；同时引入通用 Hugging Face 工具与推理解析器（\`--tool-call-parser hf\`、\`--reasoning-parser hf\`），通过读取检查点的 \`response\_template\` 避免模型专用解析器。低精度 KV 缓存覆盖扩大：NVFP4 KV 缓存支持 SM8x、SM12x、SM90 及 XQA 解码，GLM-5.x 在 SM100 上默认使用 FP8 KV 缓存，每 rank KV 内存减半，吞吐提升 2.3-5.5%，但 TTFT 增加 7-11%；ROCm 新增 4 位 \`ultraquant\_4bit\` KV 缓存，密度约为 FP8 的 2 倍。破坏性变更包括放弃 Python 3.10、默认限制 CORS 来源、要求 \`transformers&gt;=5.16.1,&lt;5.20.0\` 和 \`tokenizers&gt;=0.23.2\`，并移除 cascade attention、\`mamba\_cache\_mode=&quot;all&quot;\` 等特性。

github · khluu · 10月18日 06:50

**「背景」** vLLM 是广泛使用的开源大语言模型推理与服务框架，以 PagedAttention 和高效 KV 缓存管理著称。KV 缓存是自回归生成中存储历史键值对的内存结构，其精度和布局直接影响显存占用与吞吐。低精度 KV 缓存（如 FP8、NVFP4）通过降低缓存位宽来减少显存压力，但可能影响模型输出质量，因此需要按硬件和模型进行适配。

**「影响」** 使用 GLM-5.x 在 SM100 上部署的用户将默认获得 FP8 KV 缓存，每 rank KV 内存减半，但需接受 TTFT 增加 7-11% 的权衡；依赖 Python 3.10、旧版 transformers/tokenizers 或已移除特性的现有部署需在升级前调整。

**标签**: `#vllm`, `#llm-inference`, `#kv-cache`, `#quantization`, `#open-source`

---

<a id="item-tech-news-3"></a>
### [Together Computer 发布混合推理智能体 HybridAgent](https://arxiv.org/abs/2610.18861) ⭐️ 7.0/10

Together Computer 发布了名为 HybridAgent 的 LLM 智能体方案，其核心思路是让模型在潜空间中完成推理、再通过文本执行动作。该工作同时开源了代码（GitHub 仓库 togethercomputer/HybridAgent）、模型与数据（Hugging Face 上的 hybridagent 集合）以及评测结果（arXiv 2610.18861v1 第 5 节）。作者 Jiaru Zou 也在 X 上发布了相关说明。由于所给材料仅包含链接，论文的具体性能数据、模型规模与训练细节无法从现有内容中核实。

hackernews · allinonai · 10月18日 20:48 · [社区讨论](https://news.ycombinator.com/item?id=50145337)

**「背景」** 传统 LLM 智能体通常以文本形式输出推理过程（如思维链），每一步思考都要生成可见的 token，因而推理速度受解码开销限制，且中间思考内容冗长。HybridAgent 的核心设计是引入一个轻量的 HybridLink 模块，将模型最后一层的隐藏状态映射回输入嵌入空间，使智能体能在同一次生成过程中进入“潜空间模式”进行循环式内部思考，再切回文本模式执行工具调用、给出最终答案并接受外部监控。这一思路与已有的潜空间推理架构（如循环 Transformer）相关，但强调在单一生成流程内动态切换潜空间与文本两种模式。

**「影响」** 对采用 Together Computer 开源 HybridAgent 的开发者而言，实际可用性仍存疑：社区反馈显示 14B 模型在 llama.cpp 的 8-bit 量化版本上出现重复循环并耗尽回合预算，可能需等待推理框架适配。

**「社区讨论」** 有评论者提出可以进一步“全押”潜空间：把输入嵌入加宽以同时容纳输出潜向量与 token 嵌入，或在文本模式下也并行进行潜空间推理，因为生成文本时已付出接近完整潜模式模型的成本。也有人期待该方案用于 Qwen 3.8 27B，以减少其推理输出中的大量复述。另有实践者反馈，在 llama.cpp 中运行 14B 的 8-bit 量化版本时，面对简单的搜索与摘要任务会反复循环直至耗尽回合预算，怀疑 llama.cpp 需要适配更新；还有人追问其与 Astra 的 looped transformer 有何区别。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/togethercomputer/HybridAgent">GitHub - togethercomputer/HybridAgent</a></li>
<li><a href="https://arxiv.org/html/2610.18861v1">Hybrid Reasoning Agents - arXiv.org</a></li>
<li><a href="https://arxiv.org/pdf/2610.18861">Hybrid Reasoning Agents - arXiv.org</a></li>

</ul>
</details>

**标签**: `#LLM agents`, `#latent reasoning`, `#open-source models`, `#AI research`, `#inference`

---

<a id="item-tech-news-4"></a>
### [RepRapMicron：将 RepRap 式 3D 打印推向微米级](https://github.com/VikOlliver/RepRapMicron/wiki) ⭐️ 7.0/10

RepRapMicron 是一个开源项目，目标是把 RepRap 风格的 3D 打印扩展到微米级分辨率，其项目 wiki 托管在 GitHub 上，并在 Hacker News 上引发讨论。该项目被描述为一项技术雄心较大的开源尝试，希望让微纳制造更易获得，但现有材料主要是项目 wiki 和评论线程，而非已展示的成果，因此实际能力与影响仍不确定。讨论中，评论者将其与 18 世纪末精密制造的历史突破相类比，并推测它可能用于低成本、可持续地打印芯片设计。也有评论以调侃方式期待约 18 个月后能“自己造 RAM”，并质疑让设备打印出自身千分之一尺寸版本的设想是否现实。

hackernews · RobotToaster · 10月18日 13:48 · [社区讨论](https://news.ycombinator.com/item?id=50141076)

**「背景」** RepRap 是 2000 年代中期发起的开源 3D 打印机项目，目标是让普通人能自行制造和复制打印设备。RepRapMicron（又称 μRepRap）把这一思路延伸到微米尺度，目标是实现 1 微米级精度、10–20 微米特征尺寸的制造，并兼容标准 3D 打印机和 CNC 控制器。其高精度定位借鉴了 OpenFlexure 项目的 3D 打印显微镜平台，后续又发展出更适合原型制作的变体。

**「影响」** 若 RepRapMicron 的微米级打印路线得到验证，受影响的将主要是开源硬件与微纳制造领域的研究者和爱好者：外部报道称其已打印出长 0.650mm 的 3DBenchy，有效分辨率约 10–20 微米，但该成果尚未在项目自身材料中得到确认。

**「社区讨论」** 评论者普遍对项目的技术方向感兴趣，有人把当前进展类比为 Ramsden、Maudslay 和 Wilkinson 时代把精密加工从手艺变成可制造工艺的转折。讨论中也出现怀疑声音，认为让设备打印出自身千分之一尺寸版本的目标缺乏明确理由，同时有人期待它能推动芯片设计的低成本实体化。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/VikOlliver/RepRapMicron">GitHub - VikOlliver/RepRapMicron: μRepRap - A 3D printer ...</a></li>
<li><a href="https://reprap.org/wiki/RepRapMicron">RepRapMicron - RepRap RepRapMicron Micron Scale 3D Printer by vik - Thingiverse RepRapMicron – Hackaday RepRapMicron - The Next Small Thing In 3D Printing - Vik ... RepRapMicron V0.04 - micron accurate 3D printer by Vik ... The Latest From RepRapMicron – Nail Gel, First Objects, And ...</a></li>
<li><a href="https://www.thingiverse.com/thing:7029371">RepRapMicron Micron Scale 3D Printer by vik - Thingiverse</a></li>
<li><a href="https://makeprintable.com/reprap-micron-achieves-0-650mm-3dbenchy-print/">RepRap Micron Achieves 0.650mm 3DBenchy Print - makeprintable</a></li>
<li><a href="https://www.hackster.io/news/can-reprap-revolutionize-3d-printing-again-with-the-new-micron-design-18c4775e4d1a">Can RepRap Revolutionize 3 D Printing Again with the New Micron ...</a></li>

</ul>
</details>

**标签**: `#3D printing`, `#open source hardware`, `#microfabrication`, `#RepRap`, `#manufacturing`

---

<a id="item-tech-news-5"></a>
### [开源 DIY 亚微米级三维运动控制平台](https://github.com/0x23/MicroManipulatorStepper) ⭐️ 7.0/10

GitHub 上出现了一个名为 Open MicroManipulator 的开源 DIY 亚微米级三维运动控制平台，项目仓库为 0x23/MicroManipulatorStepper。该项目在 Hacker News 上引发讨论，评论者指出作者在 YouTube 上发布了完整的搭建系列视频，并提到 RepRap Micron 等类似项目。讨论还涉及可 DIY 的压电粘滑驱动器方案，据称可实现潜在亚纳米分辨率，但成本约 1000 美元，并引用了一篇关于低成本开源 XYZ 纳米定位器的论文。另有评论者表示正在搭建该项目的非电动手动版本，计划用于点衍射干涉仪。

hackernews · \_Microft · 10月18日 11:16 · [社区讨论](https://news.ycombinator.com/item?id=50140001)

**「背景」** 亚微米级三维运动控制平台通常用于纳米定位、精密测量与微纳操作等场景，对振动、温度漂移和机械回差极为敏感。开源硬件社区此前已有将 RepRap 3D 打印技术下探到微米尺度的尝试，例如 Vik Olliver 维护的 RepRapMicron（μRepRap）项目，目标是把特征尺寸做到约 10 微米。本次讨论的项目则定位为低成本、易搭建的电动 XYZ 微操纵平台，据称可实现亚微米精度、步进低至 50 纳米，并采用现成组件。

**「影响」** 对需要亚微米级定位的 DIY 研究者而言，该项目提供了可自行搭建的低成本运动控制方案；社区同时指出，采用压电粘滑驱动的开源纳米定位器可实现亚纳米分辨率，但成本约 1000 美元。

**「社区讨论」** 评论者普遍认可该项目作者的技术贡献，称其系列视频值得观看，并对这种低调发布高质量 DIY 项目的方式表示惊讶。讨论中补充了 RepRap Micron 等同类项目、压电粘滑驱动器的替代方案及成本信息，也有人分享自己正在搭建手动版本或刚完成周末搭建的实践经历。

<details><summary>参考链接</summary>
<ul>
<li>GitHub - 0x23/MicroManipulatorStepper: A sub-micrometer 3D motion control plattform.</li>
<li>Open MicroManipulator – A sub-micrometer 3D motion control plattform - daily.dev</li>
<li><a href="https://github.com/VikOlliver/RepRapMicron">GitHub - VikOlliver/RepRapMicron: μRepRap - A 3D printer ...</a></li>
<li><a href="https://reprap.org/wiki/RepRapMicron">RepRapMicron - RepRap VikOlliver (Vik Olliver) · GitHub RepRapMicron – Hackaday RepRapMicron: an open-source microscale RepRap… · AGI Hunt The Latest From RepRapMicron – Nail Gel, First Objects, And ... RepRap: Blog: RepRapMicron And Slightly More Complex Flexures</a></li>
<li><a href="https://www.hardware-x.com/article/S2468-0672%2822%2900062-1/pdf">Low - cost , open - source XYZ nanopositioner for high-precision...</a></li>
<li><a href="https://orbit.dtu.dk/en/publications/low-cost-open-source-xyz-nanopositioner-for-high-precision-analyt/">Low - cost , open - source XYZ nanopositioner for high-precision...</a></li>

</ul>
</details>

**标签**: `#open-source-hardware`, `#motion-control`, `#nanopositioning`, `#DIY-engineering`, `#3d-printing`

---

<a id="item-tech-news-6"></a>
### [TempoPFN：合成预训练线性 RNN 实现零样本预测](https://www.reddit.com/r/MachineLearning/comments/1x97v19/tempopfn_synthetic_pretraining_of_linear_rnns_for/) ⭐️ 7.0/10

一篇被 NeurIPS 2026 接收的论文提出 TempoPFN，提供一套合成时间序列生成器与增强方法的库，用于预训练时间序列基础模型，并以基于 DeltaProduct 的线性 RNN 作为演示模型，实现零样本预测。作者称该合成数据已被 Toto-2 和 TS-ICL 使用。论文作者为 Vladyslav Moroshan、Julien Siems、Arber Zela、Timur Carstensen 和 Frank Hutter，相关资源已发布在 arXiv、GitHub 和 Hugging Face 上。不过，Reddit 原帖仅为简短 TLDR，缺少技术细节，且论文接收状态与下游使用情况无法仅凭所提供内容核实。

reddit · r/MachineLearning · /u/Yossarian\_1234 · 10月18日 16:43

**「背景」** 时间序列基础模型旨在无需针对特定数据集重新训练即可进行零样本预测，但现有仅依赖合成数据预训练的方法在困难基准上表现不佳，且长程预测效率与可复现性仍是难题。TempoPFN 采用基于线性循环神经网络（RNN）的 GatedDeltaProduct 架构，完全在合成数据上预训练，并开源了完整的数据生成流程与训练代码。

**「影响」** 若该合成数据生成与增强库确已用于 Toto-2 和 TS-ICL，时间序列基础模型的研究者可直接复用这套预训练数据管线，而不必自行构建合成数据；但帖子未给出量化效果，实际收益仍待验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/abs/2510.25502">[2510.25502] TempoPFN: Synthetic Pre-training of Linear RNNs ... TempoPFN: Synthetic Pre-training of Linear RNNs for Zero-shot ... [2510.25502] TempoPFN: Synthetic Pre-training of Linear RNNs ... GitHub - automl/TempoPFN: TempoPFN: Zero-shot Time Series ... TEMPOPFN: SYNTHETIC PRE TRAINING OF LINEAR S FOR ZERO SHOT ... TempoPFN: Synthetic Pre-training of Linear RNNs for Zero-shot ... Paper page - TempoPFN: Synthetic Pre-training of Linear RNNs ...</a></li>
<li><a href="https://arxiv.org/pdf/2510.25502">TempoPFN: Synthetic Pre-training of Linear RNNs for Zero-shot ...</a></li>
<li><a href="https://ar5iv.labs.arxiv.org/html/2510.25502">[2510.25502] TempoPFN: Synthetic Pre-training of Linear RNNs ...</a></li>
<li><a href="https://github.com/DataDog/toto">Toto - Time Series Optimized Transformer for ... - GitHub</a></li>
<li><a href="https://arxiv.org/abs/2407.07874">[2407.07874] Toto: Time Series Optimized Transformer for ... Toto: Time Series Optimized Transformer for Observability ... Introducing Toto: A state-of-the-art time series foundation ... TempoPFN trains linear RNNs on synthetic data for zero-shot ... Toto 2.0: Time series forecasting enters the scaling era toto/toto2 at main · DataDog/toto · GitHub</a></li>

</ul>
</details>

**标签**: `#time-series-forecasting`, `#synthetic-data`, `#linear-RNN`, `#foundation-models`, `#research-paper`

---

<a id="item-tech-news-7"></a>
### [英伟达优化 Kimi K3 推理速度](https://x.com/SemiAnalysis_/status/2111627094878790023) ⭐️ 7.0/10

SemiAnalysis 发文称，英伟达通过一项上游 vLLM 优化，在 2.8 万亿参数的 Kimi K3 模型上实现每用户每秒 423 个 token 的推理速度，相同硬件下快 1.68 倍。该帖称，英伟达 CentML 的 Benjamin 使用 Cute DSL 编写了解码专用内核，并通过 Megakernel 融合实现优化。帖文还提到，英伟达正在为 vLLM 开发适配 DeepSeek v4.1 等模型的工作。上述性能数字来自二手转述的社交媒体帖文，尚无原始技术细节或独立验证。

telegram · zaihuapd · 10月18日 08:20

**「背景」** Kimi K3 是参数规模达 2.8 万亿的大模型，vLLM 在发布首日即支持其运行，但要实现高效服务仍需针对 KDA 循环状态、LatentMoE、MXFP4 专家内核、投机解码以及张量并行/流水线并行等环节逐一优化。据 vLLM 官方博客，后续的 DSpark 方案采用 CuTe DSL 实现，将注意力、MoE 路由与通信融合为单一路径，在 16 块 NVIDIA GB300 GPU 的受控基准上达到每秒 842 个 token，比同配置的标准 vLLM 快 1.73 倍。SemiAnalysis 帖中提到的每秒 423 个 token 则来自英伟达 CentML 更早的 Megakernel 方案，两者属于不同软件版本，不宜直接比较。

**「影响」** 若该数据得到独立验证，使用 vLLM 部署 Kimi K3 的团队在相同硬件上可获得约 1.68 倍的单用户解码吞吐提升；但该数字来自二手转述，且融合内核的收益通常与具体工作负载和硬件相关，未必能普遍复现。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://vllm.ai/blog/2026-09-13-kimi-k3-performance-optimization">Kimi K3 Performance Optimizations in vLLM: The Road to 2.8× ...</a></li>
<li><a href="https://vllm.ai/blog/2026-10-16-kimi-k3-megakernel">Hyper Optimizing Kimi K3 in vLLM: Moving Fast and Responsibly</a></li>
<li><a href="https://zavino.co/en/news/tokens-per-second-explained-kimi">Tokens Per Second Explained Using the 842 Kimi K3 Benchmark</a></li>
<li><a href="https://www.youtube.com/watch?v=zUH0xI4nmYA">LLM Inference at Scale: Prefill, KV Cache and Mega Kernels - YouTube</a></li>

</ul>
</details>

**标签**: `#vLLM`, `#LLM inference`, `#NVIDIA`, `#kernel optimization`, `#Kimi K3`

---

<a id="item-tech-news-8"></a>
### [美国 AI 基建热潮现裂痕，巨额投资面临回报考验](https://www.ft.com/content/9ea5a37d-15c9-4d5b-94d6-719048c9cd3c?syn-25a6b1a6=1) ⭐️ 7.0/10

据《金融时报》报道（经 Telegram 频道转述），美国 AI 基础设施热潮正出现裂痕：2025 年至 2032 年美国 AI 基础设施支出预计将超过 10 万亿美元，但受融资成本上升、项目审批受阻及公众反对加剧影响，2026 年以来至少 47 个大型数据中心项目已被推迟、撤回或叫停。分析机构估计，美国规划中的数据中心项目仅约 35% 具有较高可行性，行业扩张速度开始受到质疑。融资压力被视为关键瓶颈，英伟达大力支持的云服务商 CoreWeave 周五跌超 11%，费城半导体指数连续第 8 个交易日下跌，追平 2006 年以来最长连跌纪录，市场开始重新评估 AI 基建的盈利前景。

telegram · zaihuapd · 10月18日 08:52

**「背景」** 美国 AI 基础设施建设的核心是超大规模数据中心，其资本开支规模在近年被推高至万亿美元级别，成为半导体与云计算产业链的重要需求来源。这类项目高度依赖电力供应、土地审批和长期融资，建设周期长，因此对利率环境和地方许可政策较为敏感。随着 2026 年前后多个项目出现延期或取消，市场开始重新审视这轮 AI 资本开支能否按期转化为实际算力与收入。

**「影响」** 对 CoreWeave 等以债务驱动扩张的 AI 云服务商而言，融资成本上升已直接反映在股价与债券收益率上，其后续资本开支节奏可能被迫放缓。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://tech-insider.org/us-ai-data-center-delays-cancellations-7gw-capacity-crisis-2026/">U.S. AI Data Center Delays: 7 GW Capacity Crisis [2026]</a></li>
<li><a href="https://zestlab.io/en/trends/ai-datacenter-crisis-2026">AI Data Center Crisis 2026: Half of US Projects Cancelled or ...</a></li>
<li><a href="https://www.hindustantimes.com/world-news/us-news/americas-10-trillion-ai-data-centre-boom-faces-delays-rising-costs-and-investor-concerns-101792343327657.html">America&#x27;s $10 trillion AI data centre boom faces delays ...</a></li>
<li><a href="https://finance.yahoo.com/technology/ai/articles/coreweave-stock-wipeout-exposes-divide-085641444.html">CoreWeave Stock Wipeout Exposes Divide Between AI Fear and Greed</a></li>
<li><a href="https://www.fool.com/investing/2026/10/04/is-coreweave-stock-a-buy-right-now/">Is CoreWeave Stock a Buy Right Now? | The Motley Fool</a></li>
<li><a href="https://www.cnbc.com/2026/10/14/coreweave-stock-bond-yields-ai-debt.html">CoreWeave stock sinks as bond yields surge near 15%</a></li>

</ul>
</details>

**标签**: `#ai-infrastructure`, `#data-centers`, `#capex`, `#semiconductors`, `#industry-analysis`

---

<a id="item-tech-news-9"></a>
### [Google 开源递归智能体框架 Harness²](https://github.com/google-research/harness2) ⭐️ 7.0/10

Google Research 开源了名为 Harness² 的递归优化 LLM 智能体框架，采用 Apache 2.0 协议发布。该框架通过两层递归在不更新模型权重的前提下提升智能体表现，据称在 WorkBuddy-Bench 等测试中最高提升 11.5 分。框架支持并行与顺序两种递归模式，并已集成多款基准测试。上述基准分数来自简要的二手摘要，尚无法从所提供内容中独立核实。

telegram · zaihuapd · 10月18日 11:24

**「背景」** LLM 智能体的执行效果通常依赖“执行框架”（harness），即围绕模型调用、工具使用与任务流程的外层代码。传统改进方式多依赖微调模型权重，而 Harness² 提出的思路是在不更新权重的前提下，通过递归地优化任务级流程和框架本身来提升表现。据其论文页面介绍，该框架强调在开放世界中处理设计阶段未见过的任务，并可在没有标准答案验证器的情况下跨基准提升性能。

**「影响」** 对希望在不重新训练模型权重的前提下提升智能体表现的开发者而言，Harness² 提供了可直接采用的 Apache 2.0 递归框架；据 arXiv 论文，其在 OpenCode 下将 GLM-5 在 WorkBuddy-Bench 的平均分提升 11.5 分。需注意，11.5 分与 JobBench 的 4.5 分提升来自不同配置，并非通用保证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/google-research/harness2">GitHub - google - research / harness 2 · GitHub</a></li>
<li><a href="https://huggingface.co/papers/2610.14224">Paper page - Harness ^2: Recursive Agent Harnessing for an Open...</a></li>
<li>Harness2: Recursive Agent Harnessing foran Open World - arXiv</li>
<li>Google Harness²: Setup, Benchmarks and the Real Cost | Wavect</li>

</ul>
</details>

**标签**: `#llm-agents`, `#open-source`, `#google-research`, `#agent-frameworks`, `#benchmarks`

---

<a id="item-tech-news-10"></a>
### [Anthropic 游说 AI 安全法案设叫停门槛](https://www.tomshardware.com/tech-industry/artificial-intelligence/anthropics-proposed-ai-safety-bill-only-kicks-in-if-50-deaths-or-usd1-billion-in-damages-are-on-the-line-proposal-would-effectively-make-the-commerce-department-the-only-agency-capable-of-stopping-an-ai-model) ⭐️ 7.0/10

Anthropic 正游说推动一项 AI 安全法案，拟规定只有当模型可能造成超过 10 亿美元损失，或导致超过 50 人死亡或受伤时，政府才可阻止其发布。法案拟要求由商务部注册的独立第三方定期评估实验室和模型，若发现生物武器、AI 网络攻击或失控风险，须在 72 小时内报告。除商务部外，其他美国机构不得下令叫停模型，最终由联邦法官裁定。该提案实质上是把商务部设为唯一有能力叫停 AI 模型的机构，并设定了较高的干预门槛。目前这仍是游说中的提案而非已生效法律，相关细节来自二手摘要，尚待进一步核实。

telegram · zaihuapd · 10月18日 12:40

**「背景」** Anthropic 此前已提出“Advanced AI Framework”，并自 2025 年 6 月起向联邦及州立法者游说相关主张；此次法案被视为该框架的具体立法化。该提案聚焦前沿模型，并据称对较小实验室设有豁免，这也是外界争论其是否借监管限制竞争的一个背景。

**「影响」** 若该提案按现有门槛落地，美国联邦层面叫停前沿模型发布的权力将集中于商务部，其他机构须经联邦法官裁定才能阻止发布，这实质上抬高了政府干预的门槛。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.tomshardware.com/tech-industry/artificial-intelligence/anthropics-proposed-ai-safety-bill-only-kicks-in-if-50-deaths-or-usd1-billion-in-damages-are-on-the-line-proposal-would-effectively-make-the-commerce-department-the-only-agency-capable-of-stopping-an-ai-model">Anthropic ’s proposed AI safety bill only kicks in if 50 deaths or...</a></li>
<li><a href="https://news.ycombinator.com/item?id=50141429">Anthropic &#x27;s proposed AI safety bill only kicks in if 50 deaths or...</a></li>

</ul>
</details>

**标签**: `#AI policy`, `#AI safety`, `#regulation`, `#Anthropic`, `#AI governance`

---

<a id="item-tech-news-11"></a>
### [研究：AI 修改图像可植入虚假记忆](https://gizmodo.com/ai-generated-content-can-plant-fake-memories-researchers-say-2000826459) ⭐️ 7.0/10

麻省理工学院 Pattie Maes 团队的研究发现，受试者在观看一组照片后，部分人再看到经 AI 修改的版本，此后的记忆测试中这些人不仅更容易记错原图，还对错误记忆格外自信。相关研究还显示，深度伪造和 AI 生成文本能成功植入关于虚构政治丑闻的虚假记忆，甚至降低投票意愿。研究称，目前普通人正确识别 AI 生成内容的概率约等于抛硬币。该报道来自 Gizmodo 的简要转述，未提供研究方法细节或原始论文链接。

telegram · zaihuapd · 10月19日 00:16

**「背景」** 该研究由麻省理工学院媒体实验室 Pattie Maes 团队完成，论文《Synthetic Human Memories: AI-Edited Images and Videos Can Implant False Memories and Distort Recollection》于 2025 年 4 月发表于 CHI 会议，合作者包括记忆研究学者 Elizabeth Loftus。研究采用预注册设计，共纳入 200 名受试者，考察 AI 修改或动画化的视觉内容如何影响对未发生事件或偏离现实的记忆。虚假记忆研究此前多依赖文字暗示或合成图像，而随着 AI 编辑工具集成进智能手机，普通人可轻易将照片改成逼真视频，这使该问题具有新的现实意义。

**「影响」** 对普通用户和选举相关机构而言，该研究提示：AI 修改图像和深度伪造不仅可能让人记错事实，还可能以更高自信固化错误记忆，并影响政治判断与投票意愿；而普通人识别 AI 生成内容的准确率仅约等于随机猜测，这意味着仅靠个人辨别难以有效防御。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.media.mit.edu/publications/synthetic-human-memories/">Synthetic Human Memories: AI-Edited Images and Videos Can ...</a></li>
<li><a href="https://dl.acm.org/doi/full/10.1145/3706598.3713697">Synthetic Human Memories: AI-Edited Images and Videos Can ...</a></li>
<li><a href="https://www.media.mit.edu/projects/ai-false-memories/publications/">Publications ‹ AI-Implanted False Memories — MIT Media Lab</a></li>
<li><a href="https://journals.sagepub.com/doi/10.1177/19401612251317766">Deepfakes as a Democratic Threat: Experimental Evidence Shows ...</a></li>
<li><a href="https://gizmodo.com/ai-generated-content-can-plant-fake-memories-researchers-say-2000826459">AI-Generated Content Can Plant Fake Memories, Researchers Say</a></li>

</ul>
</details>

**标签**: `#AI safety`, `#misinformation`, `#deepfakes`, `#cognitive science`, `#research`

---

<a id="item-tech-news-12"></a>
### [Anthropic 拟捐 5% 股份设立公益基金](https://www.anthropic.com/news/public-benefit-fund) ⭐️ 7.0/10

Anthropic 宣布将把 5% 的公司股份投入新设的 Anthropic Public Benefit Fund，该计划仍需股东批准。基金为 Anthropic 全资 LLC，所持股份不会用于游说或政治捐款。公司估值每较基准上涨 50%，董事会可酌情再追加 2% 股份。加上联合创始人承诺捐出的 80% 股权及员工股权配捐，约 20% 股份将用于公共利益。

telegram · zaihuapd · 10月19日 00:39

**「背景」** Anthropic 是一家开发 Claude 系列大模型的人工智能公司，采用由公益公司（public benefit corporation）与长期利益信托等机制构成的特殊治理架构，以平衡商业目标与安全使命。此次设立公益基金，延续了该公司将股权结构与公共利益绑定的思路。

**「影响」** 若股东批准，Anthropic 约 20% 的股份将用于公共利益，这为前沿 AI 实验室的治理与慈善结构提供了一个可参照的样本；该基金所持股份明确不用于游说或政治捐款。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.anthropic.com/news/public-benefit-fund">Investing in the public benefit \ Anthropic</a></li>
<li><a href="https://www.cnbc.com/2026/10/18/anthropic-ai-public-benefit-fund.html">Anthropic to commit 5% stake to new public benefit fund - CNBC</a></li>
<li><a href="https://www.cnbc.com/2026/10/18/anthropic-ai-public-benefit-fund.html">Anthropic to commit 5% stake to new public benefit fund - CNBC</a></li>
<li><a href="https://www.anthropic.com/news/public-benefit-fund">Investing in the public benefit \ Anthropic</a></li>

</ul>
</details>

**标签**: `#AI industry`, `#Anthropic`, `#corporate governance`, `#philanthropy`, `#AI policy`

---

## 科技博客

<a id="item-tech-blog-1"></a>
### [用火与盐驱动的离网制冷原型](https://hackaday.com/2026/10/18/off-grid-refrigeration-using-fire-and-salt/) ⭐️ 5.0/10

rss · Hackaday · 10月18日 23:00

**「背景」** 离网制冷长期受制于电力需求，而热驱动方案又常依赖危险或难获取的化学物质。作者介绍了一个仅用火、盐和少量电力即可制冷的原型，试图绕开这些限制。

**「方案」** 该设计属于热驱动制冷：以水为制冷剂，在极低压下低温沸腾并吸收周围热量，水蒸气再被移走并在别处冷凝放热。系统分为几个回路：发生器回路用火加热水与路盐的混合液，沸腾的水蒸气沿管上升至冷凝器；阀门微开让水滴滴入低压的吸收段，在那里迅速沸腾；第三回路用盐溶液喷淋快速吸收蒸气并将其带离冷却区域。泵和风扇只需少量电力，可由小太阳能板或电池供给，主要能量来自烧盐水的火。制作者还加装了温度与压力传感器用于监测和控制。首次测试中，环境温度约 16°C 时系统达到约 5°C，尚未达到冰箱所需温度，但对仅靠盐和火而言已属不错。需要指出，原文称其为“吸收式”，而评论者纠正应为“吸附式”，这一术语混淆削弱了技术精确性。

**「启示」** 作者认为，这一原型证明了用火与盐实现离网制冷的可行性，但 5°C 的初步结果距离实用冰箱仍有差距，且缺乏设计细节与效率数据，难以据此评估其工程价值。

**标签**: `#off-grid refrigeration`, `#absorption/adsorption cooling`, `#salt-water working fluid`, `#DIY engineering`, `#energy efficiency`

---

<a id="item-tech-blog-2"></a>
### [自制带侧视角的电子显微镜](https://hackaday.com/2026/10/18/building-a-microscope-with-a-3d-view/) ⭐️ 5.0/10

rss · Hackaday · 10月18日 17:00

**「背景」** 电子元件越来越小，显微镜几乎成了精细作业的必备工具。但作者 Corebb 在检查电子元件、尤其是焊点时发现，俯视视角限制太大，于是决定自己动手做一台能旋转侧视的显微镜。

**「方案」** 整机由商用 C 型接口显微镜镜头组件和 USB 相机构成，镜头最高 200 倍变焦，足以应付电子作业，并装在可调支架上移动焦点；照明用 LED 环形灯，镜头和灯环各装一片偏振片，调到相互垂直即可消除反光表面的眩光。侧视靠一个卡扣式适配器实现：一对镜子从侧面取景，再导入主镜头，另加一片凹透镜补偿变长的光路，滚珠轴承让适配器绕显微镜旋转，可从任意角度观察。作者试过 3D 打印适配器，但形变导致抖动明显；改用机加工铝件后不仅更稳固，还能做更薄的支撑，从而减少阴影。适配器用小块磁铁吸附在显微镜上，保证光路始终对齐。作者称这比此前见过的侧视焊接显微镜便宜得多，但没有给出成本数据或实测结果。

**「启示」** 作者的核心结论是：侧视适配器加偏振照明能显著改善电子检查体验，偏振光尤其被低估，应当成为每个环形灯的标准配置——不过这一判断更多是经验之谈，文中并未展开论证。

**标签**: `#microscopy`, `#optics`, `#electronics-work`, `#DIY-hardware`, `#polarization`

---

<a id="item-tech-blog-3"></a>
### [MediaTek MT7921AU Wi-Fi 芯片被改造成 SDR](https://hackaday.com/2026/10/18/turning-a-wi-fi-adapter-into-an-sdr/) ⭐️ 5.0/10

rss · Hackaday · 10月18日 08:00

**「背景」** 在 ESP32 芯片被发现存在未公开的 I/Q 采样功能后，类似能力又陆续在 LoRa 和 Wi-Fi 芯片中被找到。MediaTek MT7921AU 是常见于 Wi-Fi 适配器的芯片，最近出现了两个独立的 SDR 驱动项目，试图把它变成软件定义无线电。

**「方案」** 据 Hackaday 报道，BirriaSDR 发现该芯片在调试和校准模式下会输出原始 I/Q 样本，于是通过 libusb 直接访问适配器寄存器，以 40 Msps、14 位分辨率把样本流式传到主机，调谐范围为 2156 至 2610 MHz；它不修改固件，使用后适配器恢复原状，并提供类似 RTL-SDR 的 API。另一个项目 Mtk79ICAP 则通过标准 SoapySDR 接口暴露采样功能，需要修改固件和驱动，但最高带宽可达 80 MHz，并能调谐到 5 GHz 频段；它还能在开启自动增益控制时同时以监听模式工作并输出 SDR 数据。报道指出，这是继 MT7996 之后第二个被这样改造的 MediaTek 芯片，而 Wi-Fi 适配器常带外置天线，便于外接混频器扩展频率。不过原文只是新闻汇总，没有解释 I/Q 提取的具体机制，也没有给出有效位数、实际可用带宽或噪声底等实测证据；评论区有人推测 Mtk79ICAP 的有效位数可能只有 8 到 9 位，并指出 80 MSPS 的 14 位样本以 16 位字传输时 USB 3.0 带宽约需 320 MB/s。

**「启示」** 作者认为，这些发现表明消费级无线芯片中可能还藏着未被利用的射频采样能力，但要把它们当作可靠 SDR 使用，仍需实测验证其有效性能和适用边界。

**标签**: `#SDR`, `#Wi-Fi hardware hacking`, `#MediaTek MT7921AU`, `#I/Q sampling`, `#embedded RF`

---

<a id="item-tech-blog-4"></a>
### [往复式卷笔刀的新型间歇分度机构](https://hackaday.com/2026/10/17/making-a-new-mechanism-for-a-reciprocating-pencil-sharpener/) ⭐️ 5.0/10

rss · Hackaday · 10月18日 05:00

**「背景」** 作者想要一种传统旋转削笔方式难以做出的凹锥形笔尖，于是把手工削刀的动作自动化：刀片沿两条特定曲率的轨道运动，由凸轮轴和曲柄驱动。早期测试表明，该机构能削出目标形状，但缺少让铅笔旋转的装置，因此需要一种新的间歇机构。

**「方案」** 作者受日内瓦轮启发，设计了一种输入与输出轴成 90 度布置的间歇分度机构，为刀片运动留出空间。输入端的“分度小齿轮”每转一圈与“灯笼齿轮”啮合一次，推动后者转过两个齿；由于每次推进两齿，若灯笼齿轮取奇数齿，输出端可获得两倍的分度位置，其余时间灯笼齿轮被锁住。铅笔由夹头固定，并装在与灯笼齿轮输出相连的螺杆上，因此每转一圈曲柄，铅笔就前进一点。装置还配有集屑器和手柄。作者坦言它运转尚可，但削一支笔耗时且费力，并不实用；文中没有给出测量数据或详细权衡。

**「启示」** 作者的核心结论是：这个 90 度间歇分度机构在原理上可行，但作为卷笔刀并不实用；其价值更多在于展示用奇数齿和每次两齿推进来倍增分度位置这一机械设计巧思，以及为简单任务过度设计的乐趣。

**标签**: `#mechanical-design`, `#intermittent-mechanism`, `#geneva-wheel`, `#cam-mechanism`, `#diy-engineering`

---