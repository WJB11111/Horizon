---
layout: default
title: "Horizon Summary: 2026-09-08 (ZH)"
date: 2026-09-08
lang: zh
---

> 从 52 条内容中筛选出 18 条重要资讯。

---

**科技新闻**
1. [TPU InferenceX 外部化加速，性能价格比提升 50%](#item-tech-news-1) ⭐️ 8.0/10
2. [LLM 引导的程序进化改进 10 个圆填充最优解](#item-tech-news-2) ⭐️ 8.0/10
3. [KV 缓存作为智能体运行时：提升 LLM 交互性的新思路](#item-tech-news-3) ⭐️ 8.0/10
4. [LLM 性能漂移的纵向测量方法](#item-tech-news-4) ⭐️ 8.0/10
5. [华为发布麒麟 9050 Pro 芯片，时隔六年再推旗舰芯片](#item-tech-news-5) ⭐️ 8.0/10
6. [最高法发布 AI 纠纷司法解释，明确换脸与算法杀熟责任](#item-tech-news-6) ⭐️ 8.0/10
7. [llama.cpp b10844 为 Vulkan 添加 DeepSeek-V4 融合算子](#item-tech-news-7) ⭐️ 7.0/10
8. [bzip3 压缩工具：算法与基准测试争议](#item-tech-news-8) ⭐️ 7.0/10
9. [vLLM 在 AMD GPU 上支持投机解码](#item-tech-news-9) ⭐️ 7.0/10
10. [恶意爬虫消耗 git.kernel.org 大量 CPU 资源](#item-tech-news-10) ⭐️ 7.0/10
11. [用 417k 参数循环网络自主生成 Bad Apple 视频](#item-tech-news-11) ⭐️ 7.0/10
12. [Rustuna：高性能 Rust 版 Optuna 发布](#item-tech-news-12) ⭐️ 7.0/10
13. [OpenAI 披露研究员 AI 用量：前 10% 日耗 Token 超 7000 美元](#item-tech-news-13) ⭐️ 7.0/10

**科技博客**
1. [直升机旋翼上的放射性压力指示器](#item-tech-blog-1) ⭐️ 6.0/10
2. [PETG 与 PCTG 耗材对比：性能与打印温度](#item-tech-blog-2) ⭐️ 6.0/10
3. [ESP32-P4 驱动的视频闹钟](#item-tech-blog-3) ⭐️ 5.0/10
4. [家用真空管计算机：复古计算爱好者的杰作](#item-tech-blog-4) ⭐️ 5.0/10
5. [NES 雷达以 9600 波特追踪航班](#item-tech-blog-5) ⭐️ 5.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [TPU InferenceX 外部化加速，性能价格比提升 50%](https://newsletter.semianalysis.com/p/tpu-inferencex-full-steam) ⭐️ 8.0/10

SemiAnalysis 报道称，谷歌的 TPU InferenceX 在性能价格比上比竞争对手高出 50%，并且 TPU 基础设施的外部化进程正在加速。该产品基于 Ironwood（TPUv8i）芯片，客户群不断扩大，这正在削弱 NVIDIA CUDA 的护城河。这一发展可能改变 AI 推理市场的竞争格局，为云服务提供商和大型企业提供更多选择。

rss · SemiAnalysis · 9月7日 20:00

**「背景」** TPU（张量处理单元）是谷歌为加速机器学习工作负载而设计的专用芯片，其推理性能与每美元性能表现一直是业界关注的焦点。此前，谷歌曾宣称其 TPU v5e 在优化软件栈的支持下，相比前代系统在 GPT-J 基准上实现了每美元性能 2.7 倍的提升。如今，SemiAnalysis 报道了 TPUv7 Ironwood 在 InferenceX 上的第三方推理结果，声称与 NVIDIA 的 B200/B300 相比，每美元性能最高可提升 50%。这一进展可能削弱 NVIDIA CUDA 生态的护城河，因为 TPU 的快速外部化（即向外部客户提供）正在扩大其影响力。

**「影响」** 对于正在评估 AI 推理基础设施的云服务提供商和大型企业，TPU InferenceX 宣称的每美元性能提升高达 50%以及 TPU 生态的快速外部化，可能削弱 NVIDIA CUDA 在推理领域的护城河，促使更多用户考虑多芯片供应商策略。然而，外部评论指出，这一转变的实际影响取决于 TPU v8i（Ironwood）的性能声明能否在真实部署中兑现，以及 CUDA 在推理工作负载中的锁定效应是否比预期更顽固；若 NVIDIA 通过架构改进或推迟 Rubin 发布来应对，TPU 的竞争优势可能受限。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://newsletter.semianalysis.com/p/tpu-inferencex-full-steam">TPU Inference Externalization Full Steam Ahead - InferenceX</a></li>
<li><a href="https://cloud.google.com/blog/products/compute/performance-per-dollar-of-gpus-and-tpus-for-ai-inference">Performance per dollar of GPUs and TPUs for AI inference | Google Cloud Blog</a></li>
<li><a href="https://www.ainewshub.org/post/ai-inference-costs-tpu-vs-gpu-2025">AI Inference Costs 2025: Why Google TPUs Beat Nvidia GPUs by 4x</a></li>
<li><a href="https://www.mindcast-ai.com/p/ai-inference-economy">MCAI Innovation Vision: The Inference Economy— How the TPU Bifurcation Repriced the AI Compute Stack</a></li>
<li><a href="https://io-fund.com/ai-stocks/google-tpu-v8-vs-nvidia-inference-rewrites-ai-market">Google TPU v8 vs Nvidia: How Inference Is Rewriting the AI Market</a></li>

</ul>
</details>

**标签**: `#TPU`, `#AI hardware`, `#Inference`, `#CUDA`, `#cloud computing`

---

<a id="item-tech-news-2"></a>
### [LLM 引导的程序进化改进 10 个圆填充最优解](https://www.reddit.com/r/MachineLearning/comments/1w9xlyi/llmguided_program_evolution_improves_10_bestknown/) ⭐️ 8.0/10

一项研究利用 LLM 迭代进化优化算法，而非直接求解圆填充问题，在 Packomania csqv 基准上改进了 10 个最佳已知解（N=101 至 114），将半径和提升了 2.4%至 5.4%，仅用 15 次迭代。该方法从简单种子求解器出发，LLM 根据结果记分板和尝试历史提出算法修改，每个候选由独立验证器评分，保留改进并丢弃失败。总 LLM 成本为 27.72 美元，Packomania 独立接受了结果。论文见 arxiv.org/abs/2609.05093，代码和解决方案见 github.com/ucsandman/discovery-loop，基准见 packomania.com/csqv/csqv.html。

reddit · r/MachineLearning · /u/SIGH\_I\_CALL · 9月7日 16:54

**「背景」** 圆填充问题是在给定区域内放置圆以最大化某种目标（如半径和）的优化难题，Packomania 是一个记录最佳已知解的基准。传统方法依赖人工设计的算法，而 LLM 引导的程序进化利用语言模型自动生成和修改算法代码，通过迭代评估来优化性能。

**「影响」** 该成果表明 LLM 引导的程序进化能以极低成本（27.72 美元）在特定优化基准上超越人类设计的算法，为自动化算法发现提供了新途径，可能影响优化领域的研究方法。

**标签**: `#LLM`, `#program evolution`, `#optimization`, `#circle packing`, `#benchmark`

---

<a id="item-tech-news-3"></a>
### [KV 缓存作为智能体运行时：提升 LLM 交互性的新思路](https://www.reddit.com/r/MachineLearning/comments/1w9myqc/kv_cache_as_an_agent_runtime_r/) ⭐️ 8.0/10

Yandex 研究团队提出将 KV 缓存视为智能体运行时的新方法，通过直接修改模型推理状态（KV 缓存）来实现更交互式的 LLM。该想法源于其实验室先前的工作 Hogwild\! Inference 和 AsyncReasoning，并在博客文章中展示了未来工作预览：一个 Qwen3.8-27B 智能体使用类似技术交互式地玩 DOOM 环境。团队认为模型推理/运行时设计本身是智能体能力的一个未被充分探索的维度，介于过于抽象的 harness 和成本过高的模型更改之间。这一概念为交互式 AI 系统提供了新的研究方向，但尚处于研究博客阶段，未经同行评审，其影响尚未完全确立。

reddit · r/MachineLearning · /u/\_puhsu · 9月7日 09:03

**「背景」** KV 缓存（Key-Value cache）是 Transformer 模型推理过程中存储注意力计算中间结果的机制，通常被视为临时数据。传统上，LLM 的交互性受限于推理过程的不可中断性，而修改模型权重成本高昂。Yandex 研究团队此前的工作（如 Hogwild\! Inference 和 AsyncReasoning）探索了直接修改 KV 缓存以实现并行生成和异步推理，本博客文章进一步提出将 KV 缓存视为一种“代理运行时”，即通过动态调整推理状态来增强 LLM 的交互性和响应能力。

**「影响」** 该研究可能为 LLM 智能体设计提供新的优化维度，使开发者能够通过调整 KV 缓存而非重新训练模型来提升交互性，但当前仅作为概念验证，实际应用效果尚待验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://research.yandex.com/blog/the-kv-cache-as-an-agent-runtime">The KV cache as an agent runtime</a></li>
<li><a href="https://openreview.net/pdf?id=roKj4IwaVT">Hogwild! Inference: Parallel LLM Generation via Concurrent Attention</a></li>
<li><a href="https://arxiv.org/html/2504.06261v1">Hogwild! Inference: Parallel LLM Generation via Concurrent Attention</a></li>

</ul>
</details>

**标签**: `#KV cache`, `#LLM agents`, `#inference`, `#interactive AI`, `#research`

---

<a id="item-tech-news-4"></a>
### [LLM 性能漂移的纵向测量方法](https://www.reddit.com/r/MachineLearning/comments/1w9llr4/measuring_llm_performance_drift_observations_and/) ⭐️ 8.0/10

该讨论帖提出将 LLM 基准测试视为纵向测量问题而非静态排行榜快照，以捕捉 API 服务模型随时间发生的性能漂移。作者基于 31,352 次重复评分观测（覆盖 49 个模型）发现，日内评分的标准差为 2.80 分，而日间每日中位数的标准差为 8.43 分，差异约为 3:1，表明时间变化显著且不应被当作噪声忽略。作者强调，这一结果不足以证明提供商每日更改模型，但足以支持对时间变化进行系统测量。其方法论包括版本化基准配置、重复执行式评估、将可用性故障与有效任务结果分离、跟踪服务/版本元数据，以及对时间序列进行变化检测。作者还关注基准识别与污染问题，主张在方法论透明性与隐藏实时任务库之间取得平衡，并公开了方法论文档（PDF 链接），同时征求关于时间序列单位选择、漂移与基础设施效应区分、隐藏基准内容比例及变化检测方法的批评意见。

reddit · r/MachineLearning · /u/ionutvi · 9月7日 07:44

**「背景」** 大型语言模型（LLM）基准测试通常以快照形式进行：模型在某个时间点被评估并发布分数，但这些分数往往被当作稳定指标。然而，对于通过 API 提供的模型，其行为可能因服务基础设施、配置或版本变化而随时间漂移，甚至在没有公开版本更新的情况下也可能发生。因此，作者提出将基准测试视为纵向测量问题，而非静态排行榜问题，并公开了其方法论，同时保留部分实时任务库以防止基准污染。

**「影响」** 该讨论为依赖 API 模型进行持续评估的开发者、研究人员和平台提供了可操作的方法论框架，强调需将时间变化纳入考量，而非仅依赖静态分数。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://aistupidlevel.com/">AI Stupid Level Benchmark | Real AI Model Drift Testing</a></li>
<li><a href="https://aistupidlevel.info/models/gpt-6-astra">GPT-6 Astra Benchmark &amp; Performance Score 2026 | AI Stupid Level</a></li>
<li><a href="https://benchlm.ai/">LLM Leaderboard &amp; AI Model Benchmarks — September 2026</a></li>

</ul>
</details>

**标签**: `#LLM benchmarking`, `#performance drift`, `#model evaluation`, `#API models`, `#longitudinal measurement`

---

<a id="item-tech-news-5"></a>
### [华为发布麒麟 9050 Pro 芯片，时隔六年再推旗舰芯片](https://www.news.cn/20260907/adf46c5c003240d28cc3cf6de54f9b5f/c.html) ⭐️ 8.0/10

华为于 7 日在广州发布 Mate XT 2 三折叠手机，搭载全新的麒麟 9050 Pro 芯片，这是华为时隔六年再次在旗舰发布会上推出全新麒麟芯片。麒麟 9050 Pro 是首款采用逻辑折叠技术的高性能芯片，该技术将逻辑单元在单芯片内分层排布，并增设垂直互联通道，以缩短信号传输路径、降低时延并提升性能。此次发布标志着华为在芯片设计上的重要技术进展，可能对移动处理器领域产生影响。

telegram · zaihuapd · 9月7日 08:20

**「背景」** 华为上一次在旗舰发布会上推出全新麒麟芯片是在 Mate40 系列全球发布会上，距今已有六年。在此期间，华为因外部制裁等因素在芯片研发和发布上受到限制，此次麒麟 9050 Pro 的发布被视为华为在芯片领域的回归。逻辑折叠技术是一种新型芯片设计方法，通过将逻辑单元分层排列并增加垂直互联，旨在突破传统平面布局的性能瓶颈。

**「影响」** 对于华为及其用户而言，麒麟 9050 Pro 的发布意味着 Mate XT 2 将具备更强的性能和能效，可能提升华为在高端智能手机市场的竞争力。同时，该芯片采用的逻辑折叠技术可能为整个芯片设计行业提供新的思路，但具体影响尚需观察实际性能和量产情况。

**标签**: `#Huawei`, `#chip-design`, `#mobile-processors`, `#hardware`, `#technology-news`

---

<a id="item-tech-news-6"></a>
### [最高法发布 AI 纠纷司法解释，明确换脸与算法杀熟责任](https://www.cnr.cn/news/20260907/t20260907_527806795.shtml) ⭐️ 8.0/10

最高人民法院于 9 月 7 日发布人工智能纠纷案件司法解释，共 5 部分 24 条，聚焦 AI 换脸、算法杀熟、冒充他人代言、自动驾驶和知识产权等问题。解释明确，未经同意使用 AI 制作可识别的人脸、声音等可能构成人格权侵权；算法价格歧视侵害权益的应担责；AI 冒充他人代言诱导消费的，可依法支持惩罚性赔偿请求。此外，解释还依法规制利用人工智能实施“网络开盒”“人肉搜索”等侵害自然人隐私权的行为。该解释为 AI 应用划定了法律红线，对相关企业和开发者的合规与系统设计具有重要指导意义。

telegram · zaihuapd · 9月7日 09:32

**「背景」** 最高人民法院于 2026 年 9 月 7 日发布《关于依法审理涉人工智能纠纷案件的意见》，这是首部由国家最高审判机构发布的涉人工智能司法裁判规则文件，共 5 部分 24 条。该意见针对 AI 换脸拟声、AI 幻觉侵权、网络开盒、大数据杀熟、自动驾驶和模型训练等热点问题，明确了实体裁判和诉讼程序规则。此前，中国在人工智能领域缺乏统一的司法裁判标准，各地法院在处理相关纠纷时存在差异，该意见的出台旨在统一法律适用，为 AI 技术应用提供明确的合规指引。

**「影响」** 该司法解释将直接影响在中国境内提供 AI 换脸、算法推荐、智能代言等服务的开发者和运营者，要求其在产品设计中嵌入用户同意机制、算法公平性审查及隐私保护措施，否则可能面临人格权侵权、惩罚性赔偿等法律责任。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.chinanews.com.cn/gn/2026/09-07/10691946.shtml">针对涉人工智能纠纷 最高法发布意见-中新网</a></li>

</ul>
</details>

**标签**: `#AI regulation`, `#legal liability`, `#deepfakes`, `#algorithmic pricing`, `#China`

---

<a id="item-tech-news-7"></a>
### [llama.cpp b10844 为 Vulkan 添加 DeepSeek-V4 融合算子](https://github.com/ggml-org/llama.cpp/releases/tag/b10844) ⭐️ 7.0/10

llama.cpp 发布 b10844 版本，为 Vulkan 后端新增了 DeepSeek-V4 超连接融合算子（DSV4\_HC\_COMB/PRE/POST），以提升解码性能。此前 CUDA 和 Metal 后端已支持这些算子，而 Vulkan 是最后一个运行未融合原始链的主要后端。在 gfx1151（Strix Halo）上，未融合的 Sinkhorn 组合链约占解码操作时间的 32%，每个 token 涉及约 16k 次调度。新的 dsv4\_hc\_comb 算子将完整的 20 次迭代 Sinkhorn 算法在寄存器中执行，每次调度替代约 137 个严格有序的节点执行。dsv4\_hc\_pre 和 dsv4\_hc\_post 分别处理元素级流压缩和扇出。用户可通过环境变量 GGML\_VK\_DISABLE\_DSV4\_HC 禁用所有三个算子，且每个算子可独立禁用以便调试。该版本还添加了跨子组和工作组边界的批量大小评估用例。

github · github-actions\[bot\] · 9月7日 19:28

**「背景」** DeepSeek-V4 模型架构包含超连接（hyper-connection）机制，其中 Sinkhorn 算子用于组合矩阵的迭代归一化。在 llama.cpp 中，不同后端（如 CUDA、Metal）通过融合算子优化这些操作以减少调度开销，而 Vulkan 后端此前未实现这些融合，导致性能瓶颈。

**「影响」** 使用 Vulkan 后端运行 DeepSeek-V4 模型的用户将显著减少解码时的调度开销，尤其是在 AMD RDNA 等 Vulkan 设备上，从而提升推理性能。

**标签**: `#llama.cpp`, `#Vulkan`, `#DeepSeek-V4`, `#LLM inference`, `#GPU optimization`

---

<a id="item-tech-news-8"></a>
### [bzip3 压缩工具：算法与基准测试争议](https://github.com/iczelia/bzip3) ⭐️ 7.0/10

bzip3 是一款基于 Burrows-Wheeler 变换（BWT）的开源压缩工具，在 Hacker News 上引发了关于其算法和基准测试公平性的讨论。社区成员指出，其基准测试可能具有误导性，因为 bzip3 的块大小设置为 512MB，而 zstd 的窗口大小保持默认（高等级下约 8MB），导致在包含大量重复内容的语料库（如所有版本的 Perl 源代码拼接）中，zstd 无法利用长距离匹配。此外，BWT 类压缩器在长重复序列上表现最佳，这可能是 bzip3 的优势场景。bzip3 现已列入大型文本压缩基准测试（mattmahoney.net/dc/text.html），但尚未被广泛集成到常用软件中，例如 DuckDB 支持 gzip 和 bzip2，但不支持 lzma 或 bzip3。

hackernews · tosh · 9月7日 13:35 · [社区讨论](https://news.ycombinator.com/item?id=49598291)

**「背景」** bzip3 是一款开源压缩工具，被定位为 bzip2 的“精神继承者”，宣称在压缩率与性能上均有提升。其核心算法基于 Burrows-Wheeler 变换（BWT），并采用后缀数组实现快速变换，同时结合了 order-0 上下文混合熵编码器以及 RLE 与 Lempel-Ziv+预测的预处理步骤。该工具在 Hacker News 上引发了讨论，社区成员指出其基准测试可能存在不公平之处，例如 bzip3 的块大小被设为 512MB，而 zstd 的窗口大小保持默认值（高等级下约 8MB），导致在包含大量重复文件的语料库中无法充分匹配。此外，bzip3 尚未被列入大型文本压缩基准（如 Matt Mahoney 的页面），但已有用户报告其在特定文件（如 enwik9）上压缩率优于 zstd。

**「影响」** 对于需要高压缩比的数据归档场景，bzip3 可能提供优于 gzip 和 bzip2 的压缩率，但其缺乏软件生态支持（如数据库和数据处理工具）限制了实际采用，用户可能仍需选择兼容性更好的 gzip。

**「社区讨论」** 社区普遍认为 bzip3 的基准测试存在不公平之处，建议在比较时匹配 zstd 的窗口大小或使用更合理的语料库；同时，有用户分享了实际经验，指出在处理压缩 JSONL 文件时，lzma 压缩率优于 gzip 和 bzip2，但软件支持不足，最终因兼容性选择了 gzip。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://tldr.dendron.so/notes/common.bzip3.html">Bzip 3 - Dendron - TLDR</a></li>
<li><a href="https://news.ycombinator.com/item?id=49598291">bzip 3 | Hacker News</a></li>
<li><a href="https://encode.su/threads/4372-bzip3?p=84793">BZip 3 - Page 3</a></li>

</ul>
</details>

**标签**: `#compression`, `#bzip3`, `#data-archival`, `#benchmarking`, `#open-source`

---

<a id="item-tech-news-9"></a>
### [vLLM 在 AMD GPU 上支持投机解码](https://vllm.ai/blog/2026-08-23-speculative-decoding-amd-gpus) ⭐️ 7.0/10

vLLM 宣布在 AMD GPU 上支持投机解码，旨在提升推理性能。投机解码通过使用小型草稿模型生成候选 token，再由目标模型验证，从而减少自回归解码步骤。该功能主要针对 AMD 数据中心 GPU 和 AI Halo/Ryzen 平台，但社区用户指出工作站级 R9700 等显卡在 vLLM 中性能不佳，而 Radiance 等分支可实现更高吞吐。目前尚不清楚与 NVIDIA 相比的接受率差异。

hackernews · ankitg12 · 9月7日 09:26 · [社区讨论](https://news.ycombinator.com/item?id=49596054)

**「背景」** 推测解码（Speculative Decoding）是一种加速大语言模型推理的技术，通过使用一个较小的草稿模型快速生成候选令牌，再由目标模型并行验证这些候选令牌，从而在不牺牲输出质量的前提下提高生成速度。vLLM 是一个广泛使用的高性能 LLM 推理引擎，此前主要针对 NVIDIA GPU 进行优化，而 AMD 的 Instinct 数据中心 GPU 和 Radeon 系列显卡在 vLLM 上的支持相对滞后。此次 vLLM 宣布支持 AMD GPU 上的推测解码，标志着 AMD 硬件在 AI 推理生态中获得更完善的一流支持。

**「影响」** 对于使用 AMD R9700 工作站显卡的用户，官方 vLLM 的性能仍明显落后于社区分支 vllm-radiance，后者可将生成速度从约 20-30 token/s 提升至 150-200 token/s，但该分支的投机解码模式仍为可选功能，且尚未通过严格的跨模式输出等价性验证。

**「社区讨论」** 社区对 AMD 获得 vLLM 一流支持表示赞赏，但批评 AMD/vLLM 团队忽视了工作站级 R9700 显卡，导致其性能远低于 Radiance 等分支。有用户询问目标模型如何验证候选 token 以及接受率与 NVIDIA 的对比，反映出对技术细节和跨硬件性能差异的关注。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://vllm.ai/blog/2026-08-23-speculative-decoding-amd-gpus">Exploring Speculative Decoding in vLLM on AMD GPUs | vLLM Blog</a></li>
<li><a href="https://www.amd.com/en/developer/resources/technical-articles/vllm-x-amd-highly-efficient-llm-inference-on-amd-instinct-mi300x-gpus.html">vLLM x AMD : Efficient LLM Inference on AMD Instinct™ MI300X GPUs</a></li>
<li><a href="https://introl.com/blog/speculative-decoding-llm-inference-speedup-guide-2025">Speculative Decoding : Achieving 2-3x LLM Inference... | Introl Blog</a></li>
<li><a href="https://github.com/magiccodingman/vllm-radiance">GitHub - magiccodingman/vllm-radiance: Codeberg fork of StillDeadcode / vllm-radiance which is a custom vllm tuned for R9700 GPU&#x27;s · GitHub</a></li>
<li><a href="https://codeberg.org/StillDeadcode/vllm-radiance/">StillDeadcode/vllm-radiance: patched vllm shipped as a docker image for best possible performance on R9700 gpus - Codeberg.org</a></li>
<li><a href="https://hub.docker.com/r/magiccodingman/vllm-radiance">magiccodingman/vllm-radiance - Docker Image</a></li>

</ul>
</details>

**标签**: `#vLLM`, `#AMD GPUs`, `#speculative decoding`, `#inference optimization`, `#AI infrastructure`

---

<a id="item-tech-news-10"></a>
### [恶意爬虫消耗 git.kernel.org 大量 CPU 资源](https://simonwillison.net/2026/Sep/7/creepy-crawlies/) ⭐️ 7.0/10

Konstantin Ryabitsev 报告称，在 git.kernel.org（Linux 内核的官方 Git 仓库）上，恶意爬虫消耗的 CPU 资源超过了所有合法访问（包括 git 克隆）的总和。具体而言，在 5 个地理分布节点上，有 14 个 CPU 核心持续用于将 git 提交渲染为 HTML 页面，以满足爬虫请求。这一现象凸显了可爬取 Web 服务面临的运营挑战，并引发了关于爬虫对基础设施影响的担忧。Simon Willison 对此表示关切，因为他的 Datasette 项目也提供了大量可爬取的网页。

rss · Simon Willison · 9月7日 23:08

**「背景」** git.kernel.org 是 Linux 内核的官方 Git 仓库，提供 git 克隆和网页浏览功能。Konstantin Ryabitsev 是 Linux 基金会 IT 基础设施负责人，他报告称，AI 爬虫等滥用爬虫消耗的 CPU 资源超过了所有合法访问（包括 git 克隆），在 5 个地理分布节点上，有 14 个 CPU 核心专门用于为爬虫渲染 HTML 页面，且爬虫流量占总流量的 20%，而合法流量仅占 2%。

**「影响」** 对于 git.kernel.org 等开源基础设施，恶意爬虫导致 CPU 资源被大量占用，可能增加运营成本并影响合法用户的访问性能。对于依赖可爬取网页的服务（如 Datasette），这一案例警示需要采取措施应对爬虫流量，以保障服务质量和资源利用效率。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://securityonline.info/ai-crawlers-git-kernel/">AI Crawlers Strain git . kernel . org Servers</a></li>
<li><a href="https://people.kernel.org/monsieuricon/creepy-crawlies">Creepy crawlies — Konstantin Ryabitsev</a></li>
<li><a href="https://www.webpronews.com/linux-kernels-hidden-tax-how-ai-scrapers-devour-one-fifth-of-git-kernel-org-capacity/">Linux Kernel &#x27;s Hidden Tax: How AI Scrapers Devour One-Fifth of...</a></li>

</ul>
</details>

**标签**: `#web crawling`, `#open source`, `#infrastructure`, `#Linux kernel`, `#performance`

---

<a id="item-tech-news-11"></a>
### [用 417k 参数循环网络自主生成 Bad Apple 视频](https://www.reddit.com/r/MachineLearning/comments/1wa8rub/generating_bad_apple_autonomously_from_a_single/) ⭐️ 7.0/10

一位研究者开发了一个仅含 417,129 个参数的小型循环动态系统，能够从单一初始状态自主生成完整的 Bad Apple 视频（约 6,500 帧，384x512 灰度）。该系统在推理时不接收时间戳输入，而是通过闭环循环：由 64 维状态向量\(h\_t, c\_t\)经循环转换（CTF，16,640 参数）生成下一状态，再由帧解码器（400,361 参数）输出图像。训练采用多种技术，包括学习潜在教师表、逐步加倍展开长度（从 K=2 到 512）、状态扰动噪声（sigma=0.005）以及二阶差分加速正则化。在 RTX 4080 上推理速度超过 200 FPS，峰值显存约 17.2 MB。代码、权重和分析工具已在 GitHub 上开源。

reddit · r/MachineLearning · /u/SEBADA321 · 9月8日 00:05

**「背景」** 此前有研究使用 SIREN MLP 将 Bad Apple 视频隐式记忆为坐标函数\(t, y, x\)到像素的映射，需要输入时间戳 t。本工作则探索了另一种思路：不提供时间戳，而是让小型循环网络在潜在空间中学习连续时间流，从而从初始状态自主生成整个视频。这涉及处理长时间序列训练中的梯度消失/爆炸和误差累积问题。

**「影响」** 该工作展示了在极低参数预算下实现长时间自主视频生成的可能性，为动态系统建模和视频生成提供了新思路，但当前解码器质量有限，且训练过程缺乏严格的消融实验，其通用性尚待验证。

**标签**: `#recurrent neural networks`, `#video generation`, `#dynamical systems`, `#machine learning`, `#open source`

---

<a id="item-tech-news-12"></a>
### [Rustuna：高性能 Rust 版 Optuna 发布](https://www.reddit.com/r/MachineLearning/comments/1w9nyhz/rustuna_a_highperformance_rust_implementation_of/) ⭐️ 7.0/10

Optuna 团队发布了 Rustuna，一个基于 Rust 的高性能 Optuna 实现，旨在提供与 Optuna 兼容的 API 和概念，同时实现零 Python 依赖，以降低供应链攻击风险，并通过 Rust 原生内存管理降低内存占用。该项目已在 GitHub 上开源，并发布了相关博客文章进行详细介绍。Rustuna 针对机器学习工程中的性能、内存效率和安全性问题，为超参数优化提供了新的选择。

reddit · r/MachineLearning · /u/c-bata · 9月7日 10:01

**「背景」** Optuna 是一个广泛使用的超参数优化库，最初以 Python 实现，由 Preferred Networks 开发。尽管功能强大，但在某些场景下，Python 实现的执行速度和内存效率可能成为瓶颈，且依赖 Python 环境可能带来供应链安全风险。为了应对这些挑战，Optuna 团队（由 c-bata 等人）于 2024 年开始原型设计一个基于 Rust 的更快实现，旨在提供与 Optuna 兼容的 API，同时支持 Python、JavaScript 和 C 绑定。Rustuna 正是这一努力的成果，它利用 Rust 的原生性能优势，实现了零 Python 依赖和更低的内存占用。

**「影响」** 对于依赖 Optuna 进行超参数优化的开发者和组织，Rustuna 提供了更高效、更安全的替代方案，尤其适合对性能和内存敏感的生产环境。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/optuna/rustuna">GitHub - optuna/rustuna: A faster Optuna implementation in Rust. · GitHub</a></li>
<li><a href="https://medium.com/optuna/prototyping-a-faster-optuna-implementation-in-rust-e76efba3761b">Prototyping a Faster Optuna Implementation in Rust | by c-bata | Optuna | Medium</a></li>
<li><a href="https://github.com/optuna/optuna/discussions/5362">Prototyping a Faster Optuna Implementation in Rust · optuna/optuna · Discussion #5362</a></li>

</ul>
</details>

**标签**: `#hyperparameter optimization`, `#Rust`, `#Optuna`, `#machine learning`, `#open source`

---

<a id="item-tech-news-13"></a>
### [OpenAI 披露研究员 AI 用量：前 10% 日耗 Token 超 7000 美元](http://gigazine.net/gsc_news/en/20260907-ai-use-inside-openai/) ⭐️ 7.0/10

OpenAI 披露了内部研究员的 AI 使用情况，显示截至 2026 年 8 月，整体用户的日均 Token 使用成本中位数超过 600 美元，而前 10% 的用户日均成本超过 7000 美元。研究员的输出 Token 数量较 2025 年 11 月 1 日增加了 124 倍，约 70% 的研究员同时运行至少 4 个 AI 智能体。这一数据表明 AI 辅助研究的工作流程已发生重大转变，Token 消耗量呈指数级增长。该信息来自 GIGAZINE 的报道，但未提供原始数据来源或详细的技术分析。

telegram · zaihuapd · 9月7日 13:53

**「背景」** OpenAI 作为领先的 AI 研究机构，其内部使用情况通常被视为行业风向标。Token 是 AI 模型处理文本的基本单位，成本随使用量增加而上升。自 2025 年底以来，AI 智能体（可自主执行任务的系统）的普及可能推动了 Token 消耗的激增。

**「影响」** 这一数据表明，重度 AI 用户的日均成本可能高达数千美元，对于依赖 AI 进行研究的组织而言，成本控制将成为重要考量。同时，Token 消耗的快速增长可能促使 AI 提供商优化定价或推出更高效的模型。

**标签**: `#OpenAI`, `#AI research`, `#token usage`, `#AI agents`, `#industry metrics`

---

## 科技博客

<a id="item-tech-blog-1"></a>
### [直升机旋翼上的放射性压力指示器](https://hackaday.com/2026/09/07/the-helicopter-with-radioactive-blades/) ⭐️ 6.0/10

rss · Hackaday · 9月7日 17:00

**「背景」** CH-53 直升机自 1966 年服役以来，其巨大的旋翼叶片需要承受极大的载荷，而叶片内部的微小裂纹若未被及时发现，可能导致灾难性失效。早期叶片采用铝制翼梁，后期改用钛合金，但检测裂纹始终是个难题。叶片内部充有加压氮气，裂纹会导致气体泄漏，地面维护人员可通过压力指示器检查，但飞行员在飞行中无法实时获知叶片状态。

**「方案」** 作者指出，解决方案是使用放射性物质锶-90。这种物质封装在压力指示器中，当叶片压力正常时，锶-90 被屏蔽；一旦叶片出现裂纹导致压力下降，锶-90 便会暴露，其发射的β射线可被机舱内的盖革计数器检测到，从而触发驾驶舱警告。这一设计无需电池或电子元件，避免了在旋转部件上安装复杂电子设备的难题。尽管锶-90 是切尔诺贝利事故的主要污染物之一，但作者强调，在正常操作中辐射风险极低，因为β粒子在空气中射程仅约一英尺，且叶片本身能吸收辐射。主要风险在于不当处置，但美国海军已向核管理委员会登记并制定了处理流程。该方案至今仍用于老型号，而新型号则采用光纤检测技术。

**「启示」** 作者认为，这个设计巧妙地将放射性同位素用于机械式压力监测，以极低的工程复杂度解决了飞行中的实时检测难题，体现了在特定历史条件下，简单可靠的方案往往优于复杂的电子系统。

**标签**: `#helicopter maintenance`, `#radioactive sensors`, `#CH-53`, `#engineering history`, `#safety`

---

<a id="item-tech-blog-2"></a>
### [PETG 与 PCTG 耗材对比：性能与打印温度](https://hackaday.com/2026/09/07/comparing-petg-and-pctg-filaments/) ⭐️ 6.0/10

rss · Hackaday · 9月7日 08:00

**「背景」** 大多数 3D 打印爱好者熟悉 PLA、ABS 和 PETG 等耗材，但 PCTG 可能相对陌生，且与 PETG 名称相似容易混淆。作者 Maya Posch 通过介绍一位爱好者对同品牌两种透明耗材的直接对比，旨在阐明 PCTG 与 PETG 的差异及其适用场景。

**「方案」** 文章解释了 PETG 是乙二醇改性的 PET，其中部分乙二醇单体被 CHDM 替代，而 PCTG 则替代了超过一半的乙二醇单体，从而赋予其更独特的物理性能。测试表明，PCTG 因 CHDM 含量更高而更具延展性，适合制作弹簧和柔性机构，同时具有高抗冲击性和更好的耐热性。然而，PCTG 需要更高的打印温度，接近 ASA 的设置。作者指出，尽管打印温度较高，PCTG 在极端环境下可能是 ASA 等耗材的替代品。评论中一位用户分享了使用 PCTG 的经验，提到在洗碗机上层测试中无变形，但存在拉丝现象。

**「启示」** 作者认为，PCTG 凭借其优异的延展性、抗冲击性和耐热性，是功能性部件的可靠选择，尽管需要更高的打印温度，但可能成为 ASA 的替代品。

**标签**: `#3D printing`, `#filaments`, `#PETG`, `#PCTG`, `#material properties`

---

<a id="item-tech-blog-3"></a>
### [ESP32-P4 驱动的视频闹钟](https://hackaday.com/2026/09/07/esp32-p4-powers-video-alarm-clock/) ⭐️ 5.0/10

rss · Hackaday · 9月7日 23:00

**「背景」** 传统闹钟只能发出铃声或广播声，而现代人希望用自己喜欢的音乐或声音唤醒。但作者介绍的项目更进一步：用视频闹钟在早晨播放任意视频片段，只要它适配 720 像素见方的屏幕。

**「方案」** 这款视频闹钟由 \[Impossible\_Agent1436\]（即 \[brunokeymolen\]）打造，核心是 ESP32-P4 驱动的 Waveshare 模块，该模块自带 RTC 和 SD 卡读卡器，因此能准确走时并存储大量视频片段。由于模块是现成的，硬件部分仅需 3D 打印支架，项目几乎纯软件实现。不过，视频文件必须采用 AVI 容器，编码为 720×720 MJPEG 视频和 44.1 kHz PCM 立体声音频，且文件名受限于 FAT 格式的 8 字符规则，不能使用特殊字符。

**「启示」** 作者认为这是一个比爆炸电容闹钟更容易实现且更有创意的项目，尽管后者可能让人醒得更快。它展示了利用现成硬件模块快速构建实用且个性化的设备，体现了“聪明工作”的理念。

**标签**: `#ESP32-P4`, `#alarm clock`, `#video display`, `#MJPEG`, `#hobbyist project`

---

<a id="item-tech-blog-4"></a>
### [家用真空管计算机：复古计算爱好者的杰作](https://hackaday.com/2026/09/07/a-vacuum-tube-computer-for-the-home/) ⭐️ 5.0/10

rss · Hackaday · 9月7日 20:00

**「背景」** 最早的电子计算机使用真空管，如 ENIAC 和 Colossus，它们庞大且昂贵，需要战争级别的预算。然而，一位名为\[Mike\]的爱好者展示了如何用前东欧国家的双三极管制造一台实用的真空管计算机，打破了这些限制。

**「方案」** 这台计算机采用 8 位设计，遵循冯·诺依曼架构，拥有 16 条指令，其操作框图与 1970 年代的 8 位微计算机相似。它基于 NOR 逻辑设计，类似于阿波罗计划中的 NASA 机器，但 I/O 电路使用了更现代的部件。物理上，它是一台紧凑的壁挂式设备，配有英国铁路的翻瓣数字显示屏和控制面板，用于运行一个简单的飞艇模拟游戏。作者 Jenny List 称赞该项目为一项令人印象深刻的成就，并建议将其纳入复古计算挑战赛。

**「启示」** 作者认为，尽管这不是最大或第一台真空管计算机，但\[Mike\]的创造证明了真空管计算机可以变得实用且紧凑，为复古计算爱好者提供了灵感。

**标签**: `#vacuum tube computer`, `#retrocomputing`, `#8-bit`, `#von Neumann`, `#hobby project`

---

<a id="item-tech-blog-5"></a>
### [NES 雷达以 9600 波特追踪航班](https://hackaday.com/2026/09/06/nes-radar-tracks-flights-at-9600-baud/) ⭐️ 5.0/10

rss · Hackaday · 9月7日 05:00

**「背景」** 作者介绍了一个名为 NES Radar 的开源项目，它让经典 NES 游戏机能够显示实时航班数据。该项目没有使用无线电或隐藏的微控制器，而是通过精心制作的线缆将第二控制器端口用作串行端口，从附近的计算机接收数据。

**「方案」** NES Radar 的核心是一个标准 ROM 卡带，内部没有 ESP32 或 PicoW 等额外硬件。启动后，用户可以输入 ICAO 机场代码（如 KATL），但受限于 NES 的 8 个精灵限制，无法显示所有航班。数据获取由计算机上的 Python 脚本完成，该脚本基于作者之前的 c64u-radar 项目，但后者使用 Commodore 64 Ultimate 的 LAN 端口，而 NES 没有此类端口，因此改用控制器端口进行串行通信。作者提到类似技巧曾用于 NES 卫星追踪，但未详细说明串行协议、时序限制或 Python 脚本的数据处理细节。

**「启示」** 作者认为 NES Radar 展示了在复古硬件上实现现代功能的创意方法，尽管技术细节有限，但项目开源，为爱好者提供了探索空间。

**标签**: `#NES`, `#flight tracking`, `#serial communication`, `#retrocomputing`, `#hackaday`

---