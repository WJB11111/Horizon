---
layout: default
title: "Horizon Summary: 2026-10-17 (ZH)"
date: 2026-10-17
lang: zh
---

> 从 72 条内容中筛选出 18 条重要资讯。

---

**科技新闻**
1. [Claude 揭示 NIST 椭圆曲线种子来源](#item-tech-news-1) ⭐️ 8.0/10
2. [OpenBSD 37 年内核漏洞的利用分析](#item-tech-news-2) ⭐️ 8.0/10
3. [阶跃星辰发布 Step 5 Preview 智能体旗舰模型](#item-tech-news-3) ⭐️ 8.0/10
4. [商务部拟对 AI、生物医药、光伏技术出口实施临时登记](#item-tech-news-4) ⭐️ 8.0/10
5. [越狱 PS5 原生运行 llama.cpp GGUF 模型](#item-tech-news-5) ⭐️ 7.0/10
6. [Black Forest Labs 发布 FLUX 3 Image Klein 图像模型](#item-tech-news-6) ⭐️ 7.0/10
7. [Waymo 宣布进军多伦多](#item-tech-news-7) ⭐️ 7.0/10
8. [从联想记忆推导 Transformer 注意力机制](#item-tech-news-8) ⭐️ 7.0/10
9. [JPEG XL 与 AVIF 网页图像格式技术对比](#item-tech-news-9) ⭐️ 7.0/10
10. [ORL 加速扩散语言模型：单卡 RTX 5090 达 2788 tokens/s](#item-tech-news-10) ⭐️ 7.0/10
11. [Rust 框架 DenseCore 逐位复现 PyTorch nanoGPT 训练](#item-tech-news-11) ⭐️ 7.0/10
12. [OpenAI 推出 GPT-Live-1.1 语音模型，新增六种语言](#item-tech-news-12) ⭐️ 7.0/10
13. [市场回调与利率上升考验 AI 数据中心投资热潮](#item-tech-news-13) ⭐️ 7.0/10
14. [苹果首款折叠屏 iPhone Duo 开售一分钟售罄](#item-tech-news-14) ⭐️ 7.0/10
15. [Anthropic IPO 估值预期下调至约 1.5 万亿美元](#item-tech-news-15) ⭐️ 7.0/10
16. [RTX 5090 停售风波：GB202 转投工作站，5080 接棒旗舰](#item-tech-news-16) ⭐️ 7.0/10

**科技博客**
1. [本周安全要闻：DNSSEC 根密钥轮换与硬件钱包植入](#item-tech-blog-1) ⭐️ 6.0/10
2. [PLA 埋土一年不降解：堆肥为何行不通](#item-tech-blog-2) ⭐️ 6.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [Claude 揭示 NIST 椭圆曲线种子来源](https://www.anthropic.com/research/ecdsa-curve-origins) ⭐️ 8.0/10

Anthropic 研究称，Claude 在不到半小时内识别出 NIST P-192、P-224、P-256、P-384 和 P-521 椭圆曲线的种子来源：它们并非任何哈希算法的输出，而是 C 标准库 lrand48 随机数生成器以 Unix 时间戳为种子生成的。这一发现解决了长期悬而未决的密码学问题，即 NIST 曲线种子究竟如何产生，并可能削弱围绕 NIST 曲线来源的阴谋论。不过，第五个二进制种子 B-163 与 Claude 尝试的所有方法都不匹配，仍未得到解释；社区中有观点认为它可能以同样方式生成，但在发布过程中被误输了一位数字。

hackernews · ahlCVA · 10月16日 18:55 · [社区讨论](https://news.ycombinator.com/item?id=50122800)

**「背景」** NIST 椭圆曲线（P-192、P-224、P-256、P-384、P-521 等）的种子值来源长期不明，密码学界多年来猜测其可能由某个哈希算法生成，甚至怀疑存在刻意植入的后门。Anthropic 的 Frontier Red Team 在 2026 年 10 月 16 日发布研究称，Claude 在不到半小时内识别出这些种子实为 C 标准库 lrand48 伪随机数生成器以 Unix 时间戳为种子产生的输出，而非哈希结果。这一发现为围绕 NIST 曲线来源的长期争论提供了新的技术证据，但仍有部分种子（如 B-163）及基点未能解释。

**「影响」** 这一发现直接回应了围绕 NIST 椭圆曲线种子来源长达数十年的阴谋论争议，为密码学界提供了可验证的生成机制证据。不过，正如社区评论所指出的，确认生成方法并不等于证明曲线未被刻意筛选，且第五个种子 B-163 仍无法解释，因此相关安全疑虑并未被完全消除。

**「社区讨论」** 社区普遍认为这一发现终结了长达十余年的 NIST 曲线阴谋论，有人调侃 srand48\(time\(NULL\)\) 让“锡箔帽”白戴了 13 年。但也有评论指出，确认生成方法并不等于确认曲线选择过程，因为候选曲线可能被生成后丢弃，理论上仍可通过搜索时间戳来挑选具有特定属性的曲线；另有评论推测未解密的 B-163 种子可能是发布时误输了一位数字。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.explainx.ai/blog/claude-ecdsa-nist-curve-seeds-lrand48-anthropic-frontier-red-team-backdoor-question-2026">ECDSA Curve Seeds Solved: Claude Found lrand48 (2026 ...</a></li>
<li><a href="https://aiweekly.co/alerts/anthropic-claude-traced-nist-ecdsa-seeds-to-unix-timestamps">Anthropic: Claude Traced NIST ECDSA Seeds to Unix Timestamps</a></li>
<li><a href="https://www.unite.ai/anthropic-says-claude-traced-nist-ecdsa-curve-seeds-to-a-1990s-rng/">Anthropic Says Claude Traced NIST ECDSA Curve Seeds to a ...</a></li>
<li><a href="https://www.bleepingcomputer.com/news/security/bounty-offered-for-secret-nsa-seeds-behind-nist-elliptic-curves-algo/">Bounty offered for secret NSA seeds behind NIST elliptic curves algo</a></li>
<li><a href="https://www.anthropic.com/research/ecdsa-curve-origins">Claude reveals ECDSA curve origins \ Anthropic</a></li>
<li><a href="https://words.filippo.io/">Filippo Valsorda</a></li>

</ul>
</details>

**标签**: `#cryptography`, `#elliptic-curves`, `#NIST`, `#AI-for-research`, `#random-number-generation`

---

<a id="item-tech-news-2"></a>
### [OpenBSD 37 年内核漏洞的利用分析](https://calif.io/research/big-fish) ⭐️ 8.0/10

安全研究文章《Big Fish》分析了如何利用一个存在了 37 年的 OpenBSD 内核漏洞。该漏洞长期未被发现，凸显了即便是经过大量审计的代码库，某些内核缺陷也难以通过人工审查捕获。社区评论指出，该漏洞在 1999 年 8 月 NetBSD 重写相关代码时被意外修复。讨论还围绕模糊测试、静态分析与人工分析在发现此类漏洞上的实际能力展开。

hackernews · rs\_rs\_rs\_rs\_rs · 10月16日 14:44 · [社区讨论](https://news.ycombinator.com/item?id=50118977)

**「背景」** OpenBSD 源自 20 世纪 90 年代从 NetBSD 分叉出的 BSD 代码库，长期以严格的安全审计著称。据 Calif 的研究，此次被利用的漏洞是 OpenBSD 从旧 BSD 代码中继承而来、存在约 37 年的内核缺陷，攻击者可借此获取超级用户（root）权限。社区评论还提到，该问题在 1999 年 8 月 NetBSD 重写相关代码时被意外修复。

**「影响」** 该案例表明，即便在 OpenBSD 这类经过高强度审计的代码库中，某些内核漏洞仍可能长期逃过自动化检测，需要人工从利用原语角度进行推理；这也为评估 fuzzing 与静态分析在同类缺陷上的实际覆盖能力提供了具体参照。

**「社区讨论」** 评论者称赞了文章的 OpenBSD 发布风格配图，并期待主题曲。有评论指出该漏洞在 1999 年 8 月 NetBSD 重写代码时被意外修复，并质疑模糊测试或静态分析能否现实地发现这类漏洞，还是必须依靠人类思考利用原语。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://dzen.ru/a/atJi8f5wA2igUvxy">Calif получила root в OpenBSD через 37 -летнюю ошибку ядра | Дзен</a></li>
<li><a href="https://www.openbsd.org/papers/fuzz-slides.pdf">Fuzzing the OpenBSD Kernel</a></li>

</ul>
</details>

**标签**: `#security`, `#openbsd`, `#kernel`, `#vulnerability-research`, `#systems-programming`

---

<a id="item-tech-news-3"></a>
### [阶跃星辰发布 Step 5 Preview 智能体旗舰模型](https://huggingface.co/stepfun-ai/Step-5-Preview) ⭐️ 8.0/10

阶跃星辰在 Hugging Face 发布旗舰模型 Step 5 Preview，主打智能体工作。该模型采用稀疏 MoE 架构，总参数 6000 亿、激活参数 270 亿，支持最高 100 万 token 上下文，可接收文本、图像和视频输入。官方称其在软件工程、长周期智能体执行和专业知识任务上表现领先，尤其擅长金融场景。模型可通过 OpenAI 兼容 API 配合 vLLM 或 SGLang 部署，并采用 StepFun Model License 1.0 许可。由于该版本为 Preview，其性能表现尚无法从现有内容独立验证。

telegram · zaihuapd · 10月16日 06:36

**「背景」** 稀疏 MoE（混合专家）架构通过为每个 token 只激活部分参数来降低推理成本，Step 5 Preview 以 600B 总参数、27B 激活参数的规格属于这一路线。阶跃星辰此前已推出 Step 系列模型，此次将 Step 5 Preview 定位为面向智能体工作负载的旗舰基座模型。据官方信息，该模型于 9 月 20 日发布，并计划在 10 月 15 日正式开放权重。

**「影响」** 对需要长上下文、多模态输入和智能体能力的开发者而言，Step 5 Preview 提供了可通过 vLLM 或 SGLang 以 OpenAI 兼容 API 部署的开放权重选项，但作为 Preview 版本，其权重可用性与性能表现仍待独立验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.stepfun.com/step-5-preview">Step 5 Preview: Advancing the Pareto Frontier - stepfun.com</a></li>
<li><a href="https://www.aitoollab.cn/articles/stepfun-step-5-preview-2026/">阶跃星辰 Step 5 Preview 发布：600B 稀疏 MoE 只激活 27B，10月15日...</a></li>
<li><a href="https://benchmarklist.com/models/stepfun-step-5-preview/">Step 5 Preview Benchmark Scores &amp; Evals | BenchmarkList</a></li>
<li><a href="https://benchlm.ai/models/step-5-preview">Step 5 Preview Benchmarks , Pricing &amp; Speed (September 2026)</a></li>

</ul>
</details>

**标签**: `#LLM release`, `#Mixture-of-Experts`, `#AI agents`, `#long context`, `#open weights`

---

<a id="item-tech-news-4"></a>
### [商务部拟对 AI、生物医药、光伏技术出口实施临时登记](https://aqygzj.mofcom.gov.cn/flzc/gzjgfxwj/art/2026/art_c99f95ca0cd043829ac9991495fc283c.html) ⭐️ 8.0/10

中国商务部就修订《中国禁止出口限制出口技术目录》公开征求意见，拟对人工智能、生物医药、光伏三个领域的 40 项技术实施临时登记要求。其中人工智能领域涉及大模型、智能体、算力集群、信息处理等 23 项技术，已通过开源或发表学术论文等方式进入公共领域的技术不纳入管理范围。生物医药领域涉及细胞和基因治疗、小核酸药、病原微生物等 5 项技术，对不涉及所有权转让的对外授权模式适用自动许可等便利措施。光伏领域涉及多晶硅制造、硅片制造、电池制造等 12 项技术，管理范围还包括承载相关技术的关键和核心设备。该目录目前仍处于公开征求意见阶段，尚未最终定稿。

telegram · zaihuapd · 10月16日 09:12

**「背景」** 《中国禁止出口限制出口技术目录》是中国对技术出口实施分类管理的基础性清单，将技术分为禁止出口和限制出口两类，由商务部会同科技部等部门制定和调整。2026 年 10 月 16 日，商务部、科技部发布 2026 年第 48 号公告，就修订该目录公开征求意见，并对相关技术实施出口前登记的临时管理措施。

**「影响」** 若该目录按草案落地，从事大模型、智能体、算力集群等 23 项 AI 技术以及细胞与基因治疗、多晶硅制造等领域的中国企业，在向境外转让或许可使用相关技术时需履行出口登记或申请许可程序；但已通过开源、发表论文进入公共领域的技术不纳入管理，不涉及所有权转让的对外授权适用自动许可等便利措施，多数 AI 技术仍可自由出口。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.mofcom.gov.cn/zcfb/zc/art/2026/art_b2670478b4a84434aa5403d843a3dbbb.html">商务部 科技部公告2026年第48号 就修订《中国禁止出口限制出口技术目...</a></li>
<li><a href="https://news.cctv.com/2026/10/16/ARTIvDJFbJhCwbMmCTdWztKG261016.shtml">商务部新闻发言人就修订《中国禁止出口限制出口技术目录》答记者问_新...</a></li>
<li><a href="https://tech-insider.org/china-ai-export-curbs-23-technologies-2026/">China Proposes AI Export Curbs on 23 Technologies [2026]</a></li>
<li><a href="https://www.reuters.com/world/asia-pacific/china-proposes-adding-40-ai-biotech-solar-technologies-export-control-list-2026-10-16/">Beijing seeks tighter grip on AI exports amid US rivalry</a></li>

</ul>
</details>

**标签**: `#export controls`, `#AI policy`, `#open source`, `#semiconductors`, `#China tech regulation`

---

<a id="item-tech-news-5"></a>
### [越狱 PS5 原生运行 llama.cpp GGUF 模型](https://github.com/cobanov/PS5LM) ⭐️ 7.0/10

GitHub 项目 PS5LM 实现了在越狱 PlayStation 5 上原生运行 llama.cpp 进行 GGUF 模型推理。据社区讨论，该方案可运行 Qwen 3.8 27B 的 2 比特量化版本，功耗成本约每天 70 美分，约合每天 200 万输出 token。这一项目将锁定型游戏主机改造为通用本地大语言模型计算设备，引发 Hacker News 上关于硬件再利用与长期 LLM 工作负载的讨论。

hackernews · Anon84 · 10月16日 18:32 · [社区讨论](https://news.ycombinator.com/item?id=50122431)

**「背景」** llama.cpp 是一个用 C/C++ 编写的开源大语言模型推理框架，支持 GGUF 格式模型以及从 1-bit 到 8-bit 的多种量化方案。此前在 PS5 上运行大模型的工作通常需要为单个模型手写 GPU 内核，而 PS5LM 的做法是直接移植 llama.cpp 本身，从而继承其对 Qwen、Llama、Mistral、Gemma 等架构和各类量化的支持。该项目通过 Vulkan 调用主机 GPU，在本地网络提供兼容 OpenAI 与 Anthropic 的 API，并附带电视端聊天界面、请求监控与硬件遥测等功能。

**「影响」** 对拥有已越狱 PS5 的用户而言，这一项目把原本封闭的游戏主机变成了可运行 GGUF 模型的本地推理设备，社区讨论中提到的 70 美分/天电力成本与约 200 万输出 token/天，意味着长期低负载 LLM 任务（如监控、巡检）在硬件复用上具备实际可行性。此外，社区指出同类思路可能适用于搭载 AMD Cyan Skillfish APU 的 BC250 矿板，这类二手硬件价格约 150–200 美元，或进一步降低本地推理的入门成本。

**「社区讨论」** 有评论者担忧索尼可能随时下架该 GitHub 页面，建议项目迁移到自有域名；也有人认为即便只有 2 比特量化，这种持续 token 流对监控服务器错误率、审查安防录像等长期任务仍具实用性。另有评论指出类似方案或可运行在采用 AMD Cyan Skillfish APU 的 BC250 矿板上，该硬件为 PS5 定制芯片的缩减版，eBay 售价约 150 至 200 美元。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/cobanov/PS5LM">GitHub - cobanov/PS5LM: llama.cpp on a jailbroken PS5: run ...</a></li>
<li><a href="https://daily.dev/posts/llama-cpp-on-a-jailbroken-ps5-run-any-gguf-model-natively-on-the-console-ehegpu47t">Llama.cpp on a jailbroken PS5: run any GGUF model...</a></li>
<li><a href="https://github.com/akandr/bc250">GitHub - akandr/bc250: AMD BC-250 (PS5 APU) setup guide ...</a></li>
<li><a href="https://github.com/LeprosMoar/aibbox">GitHub - LeprosMoar/aibbox: AMD BC-250 (PS5 APU) setup guide ...</a></li>
<li><a href="https://elektricm.github.io/amd-bc250-docs/">AMD BC250 Documentation - elektricm.github.io</a></li>

</ul>
</details>

**标签**: `#llama.cpp`, `#local-llm-inference`, `#console-jailbreak`, `#gguf`, `#hardware-repurposing`

---

<a id="item-tech-news-6"></a>
### [Black Forest Labs 发布 FLUX 3 Image Klein 图像模型](https://bfl.ai/blog/flux-3-image-klein) ⭐️ 7.0/10

Black Forest Labs 发布了 FLUX 3 Image Klein，一款图像生成与编辑模型，起售价为每 1000 张图像 0.009 美元。该定价明显低于社区提到的竞品 Krea 3（据称于前一天发布，起价每张 0.06 美元），因此被视为极具竞争力。从业者反馈其编辑能力相当扎实，但在更精细的文字细节上表现令人失望，同时社区中还有关于“身体恐怖”式输出的报告。讨论还提到 Moss Image 同期发布，在部分用户看来质量更好，从而引发“为什么选 Flux”的疑问。

hackernews · gmays · 10月16日 19:47 · [社区讨论](https://news.ycombinator.com/item?id=50123580)

**「背景」** FLUX 3 Image Klein 是 Black Forest Labs 推出的 FLUX 3 系列中的紧凑型开源权重图像模型，拥有 5.6B 参数，可在单张消费级 GPU 上运行，将文生图与图像编辑整合在同一个模型中。它共享完整版 FLUX 3 Image 的核心能力，包括原生 4K 生成、像素级编辑，以及通过边界框控制元素放置或限定编辑区域，并支持最多 10 张参考图的多参考生成。该模型附带提示词上采样器（prompt upsampler），官方说明不应在缺少它的情况下使用模型。

**「影响」** 对开发者而言，FLUX 3 Image Klein 以 5.6B 参数开放权重、支持原生 4K 生成与最多 10 张参考图的多参考生成，且定价低至每 1K 张图像 0.009 美元，显著低于 Krea 3 的每张 0.06 美元，可能压低图像生成与编辑的调用成本。不过社区反馈其在人物生成、精细文字细节和偶发的“身体恐怖”输出上存在局限，实际采用需权衡质量与价格。

**「社区讨论」** 评论者对其定价与编辑能力给予肯定，但指出生成人物图像偏弱（有 Reddit 用户称训练集中移除了接近 NSFW 的内容）、精细文字细节不足，并有多人报告身体恐怖输出。也有评论者将它与同期发布的 Moss Image 对比，认为后者目前看起来更好，并对其在不到 10GB 体积内蕴含世界知识感到惊讶。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://bfl.ai/blog/flux-3-image-klein">FLUX 3 Image Klein: open weights, 5.6B parameters | Black ...</a></li>
<li><a href="https://github.com/black-forest-labs/flux-3-image-klein">GitHub - black-forest-labs/flux-3-image-klein: FLUX 3 Image ...</a></li>
<li><a href="https://comfy.org/flux-3-image-klein">FLUX 3 Image Klein Launch | Comfy</a></li>
<li><a href="https://kingy.ai/blog/flux-3-image-klein-tested-benchmarks-costs/">FLUX 3 Image Klein Tested: Benchmarks, Specs &amp; Costs</a></li>
<li><a href="https://bfl.ai/blog/flux-3-image-klein">FLUX 3 Image Klein: open weights, 5.6B parameters | Black ...</a></li>

</ul>
</details>

**标签**: `#generative-ai`, `#image-models`, `#flux`, `#model-release`, `#pricing`

---

<a id="item-tech-news-7"></a>
### [Waymo 宣布进军多伦多](https://waymo.com/blog/2026/10/waymo-in-toronto/) ⭐️ 7.0/10

Waymo 在其官方博客发布公告，宣布将业务扩展至加拿大多伦多。这是 Waymo 在美国多个城市运营后向北美以外市场延伸的重要一步，公告开篇即强调该扩张将带来就业机会。Hacker News 上的讨论呈现两极分化：有用户称在旧金山和东京见到 Waymo 车辆时感到兴奋，并期待向公众开放后亲自乘坐；也有用户在奥斯汀首次乘坐时遭遇行程从 9 分钟被“略微延长”至 45 分钟、最终由客服将其送至一家餐厅的情况，只能改叫人工 Uber。该用户表示车辆本身驾驶水平优于多数人类司机，但“迷路”是其未曾预料的问题。另有评论指出，Waymo 在波士顿等冰雪城市长期只闻其声，当地存在以担心失业为由、有组织地阻止其获得所需立法支持的反对力量。

hackernews · ChrisArchitect · 10月16日 14:44 · [社区讨论](https://news.ycombinator.com/item?id=50118981)

**「背景」** Waymo 是 Alphabet 旗下的自动驾驶出行公司，在美国多座城市运营无人驾驶网约车服务。此次多伦多公告是其首次进入加拿大市场，计划在当地建设设施并创造就业，目标是在 2028 年迎来首批乘客。不过，安大略省的自动驾驶试点规则将于 2027 年 10 月到期，监管框架能否及时衔接仍是未知数。

**「影响」** 对多伦多乘客而言，Waymo 的进入意味着未来可在当地体验无人驾驶出租车，但社区中奥斯汀用户遭遇行程被“略微延长”至 45 分钟、客服仅致歉并让其改叫人类 Uber 的经历，提示实际运营中仍可能出现路线与支持问题。

**「社区讨论」** 评论者对 Waymo 的实际体验评价不一：有人称在旧金山乘坐体验一直很好，也有人质疑自己是否是唯一没遇到问题的人；而奥斯汀的负面案例显示，路线异常延长和客服处置不当是当前部署中的现实短板。此外，有评论提醒多伦多公告强调就业，但 Waymo 在其他城市面临以失业担忧为核心的立法阻力。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://waymo.com/blog/2026/10/waymo-in-toronto/">Hello Toronto! Waymo is En Route</a></li>
<li><a href="https://toronto.citynews.ca/2026/10/16/waymo-cars-autonomous-toronto-2028-launch/">Waymo eyes Toronto launch in 2028 - CityNews Toronto</a></li>
<li><a href="https://electrek.co/2026/10/16/waymo-toronto-canada-robotaxi-2028/">Waymo picks Toronto as first Canadian city, targets riders in ...</a></li>

</ul>
</details>

**标签**: `#autonomous vehicles`, `#Waymo`, `#AI deployment`, `#robotics`, `#tech industry`

---

<a id="item-tech-news-8"></a>
### [从联想记忆推导 Transformer 注意力机制](https://alexwang.ai/posts/associative-memory/) ⭐️ 7.0/10

一篇解释性文章尝试从联想记忆（associative memory）的原理出发，推导出 Transformer 的注意力机制，并将其与 Hopfield 网络联系起来。文章在 Hacker News 上引发了较为深入的技术讨论，作者本人也在评论区提供了简短总结。讨论中有人指出，Transformer 作为 Hopfield 网络的一个有趣特点是其记忆能力极强，只需一步就能找到合适的记忆，而传统 Hopfield 网络需要多步迭代。也有读者表示文章在从记忆过渡到 LLM 的环节不够清晰，并追问在 LLM 中键（keys）是上下文中的 token，而值（values）究竟对应什么。整体而言，这是一篇面向 AI/ML 从业者的概念性科普，而非新研究或重大发布。

hackernews · speckx · 10月16日 19:01 · [社区讨论](https://news.ycombinator.com/item?id=50122878)

**「背景」** 联想记忆是一种通过部分线索检索已存储模式的记忆模型，Hopfield 网络是其经典实现：网络通过能量函数迭代收敛到某个存储模式。2020 年前后的研究（如 Ramsauer 等人的“Hopfield Networks is All You Need”）提出“现代 Hopfield 网络”，证明 Transformer 的自注意力在数学上等价于对连续状态联想记忆的一次检索步骤，其存储容量随维度指数增长。这一联系使注意力机制可被理解为软最大加权的记忆读取，而非单纯的序列建模操作。

**「影响」** 该文章主要面向希望从联想记忆角度理解 Transformer 注意力的 AI/ML 从业者与学习者，属于概念性解释而非新研究或产品发布，因此不会直接改变现有模型、工具或标准。

**「社区讨论」** 评论区总体认可文章的教学价值，并围绕记忆与 LLM 的映射展开讨论：有读者称赞 Transformer 只需一步即可检索记忆、优于传统 Hopfield 网络的多步迭代，也有人指出文章结尾从记忆到 LLM 的衔接不够清楚，追问 values 的具体含义。另有评论者建议通信/电气工程师关注此类内容，认为信道容量等概念可能适用于理解 AI。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/abs/2511.20698">On the Role of Hidden States of Modern Hopfield Network in ... Attention Is Hopfield Retrieval. Associative memory in ... Attention as a Hopfield Network | Mnemoverse Docs Understanding Transformers through Associative Memories Hopfield Networks: The Memory Model That Became Attention Attention Is Memory Retrieval: What the Hopfield View ...</a></li>
<li><a href="https://medium.com/@EleventhHourEnthusiast/attention-is-hopfield-retrieval-95f28f8f1965">Attention Is Hopfield Retrieval. Associative memory in ...</a></li>

</ul>
</details>

**标签**: `#transformers`, `#associative-memory`, `#hopfield-networks`, `#deep-learning`, `#attention-mechanism`

---

<a id="item-tech-news-9"></a>
### [JPEG XL 与 AVIF 网页图像格式技术对比](https://jakearchibald.com/2026/jpeg-xl-vs-avif/) ⭐️ 7.0/10

一篇技术深度文章对比了 JPEG XL 与 AVIF 在网页图像交付场景下的表现，并引发了关于编码器性能与实际配置的详细社区讨论。讨论指出，libjxl 在最高 effort 级别下速度极慢：对照片生成的文件比默认设置小 2–7%，对截图和插画约小 25%，但耗时 9–46 秒，是默认设置的 50–180 倍，而 jixel 可在数秒内得到相同结果。libjxl 在 effort 大于 7 时速度慢，主要源于对感知误差指标 Butteraugli 的迭代评估-优化循环（通过调整量化权重）。有开发者分享了在生产环境中将图像转为 AVIF 的 ffmpeg 配置，称可获得小 10 倍以上且保留良好质量、并支持 PNG 透明度的结果。也有评论者以 MP3 时代 LAME 编码器的长期成熟过程为例，主张不要急于对格式“赢家”下定论。

hackernews · farlight · 10月16日 16:12 · [社区讨论](https://news.ycombinator.com/item?id=50120224)

**「背景」** JPEG XL 与 AVIF 都是面向网页的现代图像压缩格式，目标是在更小文件体积下保持视觉质量。AVIF 基于 AV1 视频编码，已获得主流浏览器支持；JPEG XL 则源自 Google 的 PIK 等项目，强调无损与渐进式解码等特性。两者在编码速度、压缩率和感知质量上的取舍，是开发者选择格式时的核心考量。

**「影响」** 对于需要在生产环境中批量转换图像的网页与软件工程师而言，libjxl 高 effort 级别的编码耗时可能使其难以用于大规模或实时处理，而 AVIF 的成熟 ffmpeg 配置则提供了可立即采用的替代方案。

**「社区讨论」** 评论者普遍认可 AVIF 在生产环境中的实用性，并分享了具体转换参数；同时有人对 libjxl 高 effort 的极慢速度提出技术解释，也有人以音频编码历史为例，认为两种格式都尚未充分成熟，不宜过早宣布胜出。另有评论者批评 AVIF 在示例图像中抹除了高光细节，认为其更适合追求整体观感的大图场景。

**标签**: `#image-compression`, `#jpeg-xl`, `#avif`, `#web-performance`, `#codecs`

---

<a id="item-tech-news-10"></a>
### [ORL 加速扩散语言模型：单卡 RTX 5090 达 2788 tokens/s](https://www.reddit.com/r/MachineLearning/comments/1x7qgr0/research_2788_tokenss_on_a_single_rtx_5090_with_a/) ⭐️ 7.0/10

Reddit 用户 /u/arty\_photography 发布研究 ORL（On-Policy Residual Learning），一种针对扩散语言模型（dLLM）的加速方法，并配套开源了自定义推理引擎 dlmrt、模型、训练代码与评估流程。ORL 的核心是让模型在去噪步骤中携带并逐步精炼自身先前预测的残差，并直接在当前模型生成的新鲜轨迹上训练以消除离线残差与推理时的分布不匹配；同时引入 Adjacent Entropy Contraction 鼓励每一步降低不确定性，从而在单次前向中确定更多 token。报告称在单请求（batch size 1）解码下，LLaDA-2.1-mini + ORL 在单张 RTX 5090 上达到 2,788 tokens/s，DiffusionGemma 26B MoE + ORL 在 8× B200 NVFP4 上达到 7,708 tokens/s；QwenDLM-4B 端到端吞吐最高提升约 6.9×，HumanEval pass@1 从 82.9% 提升至 89.6%。在单张 H100 上，QwenDLM-4B + ORL 达到 1,298 tokens/s，对比 DFlash 的 746 tokens/s 和 EAGLE3 的 405 tokens/s，但作者强调这些是特定基准上的峰值结果而非任意提示的平均值，且为自报告数据、尚未经独立验证。

reddit · r/MachineLearning · /u/arty\_photography · 10月16日 20:03

**「背景」** 自回归 LLM 逐 token 生成，而扩散语言模型可以并行精炼并最终确定多个 token，但让它们在更少的前向传播中收敛一直是难点。ORL 试图通过残差学习和不确定性收缩来减少所需去噪步数，dlmrt 则通过 CUDA graph 将整个去噪循环捕获并在 GPU 上执行，以降低单请求低延迟解码的开销。

**「影响」** 若结果可复现，ORL 与 dlmrt 有望让扩散语言模型在消费级 RTX 5090 等单卡上实现高吞吐本地推理，并为 dLLM 推理优化提供可参考的开源基线。不过所有性能数据均为作者自报告、限于单请求解码且未经独立验证，实际收益可能因工作负载而异。

**标签**: `#diffusion language models`, `#inference optimization`, `#open source`, `#LLM acceleration`, `#GPU performance`

---

<a id="item-tech-news-11"></a>
### [Rust 框架 DenseCore 逐位复现 PyTorch nanoGPT 训练](https://www.reddit.com/r/MachineLearning/comments/1x7ojxo/p_my_rust_framework_trains_nanogpt_with_the_exact/) ⭐️ 7.0/10

一名计算机专业学生用 Rust 编写了小型深度学习框架 DenseCore，提供类似 PyTorch 的 Python API，并在不改动 Karpathy 的 nanoGPT 代码的情况下，通过将 \`import torch\` 指向该框架，复现出与 PyTorch 完全相同的数值结果：相同的 manual\_seed 初始权重、损失、梯度和权重，在测试的 50 步内逐位一致，即使开启 dropout 也如此。作者在实现过程中发现了若干 PyTorch 数值实现细节：CPU 注意力并非教科书公式而是 flash attention 内核，且 dropout 开启时会切换到另一条路径；Adam 因编译器对尾部循环的融合而在每个线程分块的最后几个元素上舍入方式不同；clip\_grad\_norm\_ 实际执行的是 reciprocal\(\) \* max\_norm 而非除法。作者还发现 PyTorch 自身跨机器并不一致：相同版本下 macOS 与 Linux x86 上测试的 26 个算子中只有 1 个给出相同比特，因此 DenseCore 目前仅在 Apple Silicon Mac 上与 PyTorch 匹配。该框架体积约 2 MB，而 PyTorch 约 580 MB；作者正在征询该项目是否有实用价值，以及应继续对齐 PyTorch、做面向 serverless/CI 的轻量 CPU 替代品，还是转为诊断两次 PyTorch 运行结果差异的工具。

reddit · r/MachineLearning · /u/Mental-Feature-2377 · 10月16日 18:49

**「背景」** PyTorch 官方并不承诺跨版本、跨 CPU/GPU 的逐位可复现性，即使开启确定性标志，不同硬件与算子实现仍可能产生数值差异。nanoGPT 是 Andrej Karpathy 发布的极简 GPT 训练实现，常被用作验证深度学习框架正确性的基准。在 Rust 生态中，已有项目尝试构建确定性、高性能的深度学习引擎，但复现 PyTorch 的逐位数值行为仍属少见。

**「影响」** 该项目对关注数值确定性与框架内部实现的开发者具有参考价值：其记录的 PyTorch CPU 注意力内核路径、Adam 尾部循环舍入、clip\_grad\_norm\_ 实现等细节，可帮助理解为何相同代码在不同框架或机器上产生不同结果。不过，由于 PyTorch 自身在 Mac 与 Linux x86 之间仅 26 个算子中 1 个结果一致，该 Rust 框架目前仅在 Apple Silicon Mac 上实现位级一致，跨平台适用性受限。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/bharathvbcr/ojas">GitHub - bharathvbcr/ojas: Deterministic, high-performance Rust deep ...</a></li>
<li><a href="https://medium.com/@siddhantg314/defeating-nondeterminism-in-llm-inference-in-practice-38a7dd1e4112">Defeating nondeterminism in LLM inference, in practice | Medium</a></li>
<li><a href="https://arxiv.org/html/2510.09180">RepDL: Bit-level Reproducible Deep Learning Training and ...</a></li>
<li><a href="https://github.com/NVIDIA/framework-reproducibility">GitHub - NVIDIA/framework-reproducibility: Providing ... GitHub - karpathy/nanoGPT: The simplest, fastest repository ... nanoGPT Reproduction | AI Learning Guides - 25621.github.io nanoGPT | GPAI Wiki karpathy/nanogpt | DeepWiki nanoGPT: from characters to a GPT-2 reproduction - xenonnn4w.me</a></li>

</ul>
</details>

**标签**: `#rust`, `#pytorch`, `#numerical-determinism`, `#deep-learning-frameworks`, `#nanogpt`

---

<a id="item-tech-news-12"></a>
### [OpenAI 推出 GPT-Live-1.1 语音模型，新增六种语言](https://x.com/OpenAI/status/2110797830361436604) ⭐️ 7.0/10

OpenAI 从今天起向所有用户推出语音模型 GPT-Live-1.1，为 ChatGPT、Codex 和点点的语音功能带来更新。新版本新增法语、德语、印地语、墨西哥西班牙语、韩语和日语六种语言的声音，并改进口音表现、减少「checking...」等待。API 支持即将上线。

telegram · zaihuapd · 10月16日 04:50

**「背景」** ChatGPT 的语音功能此前由 GPT-Live-1 或 GPT-Live-1 mini 驱动，具体取决于用户订阅方案，并可在网页、iOS 和 Android 上使用。GPT-Live 还能调用账户已连接的插件和应用。此次 GPT-Live-1.1 是在该语音模型基础上的版本更新，OpenAI 尚未公布其架构或性能基准细节。

**「影响」** 此次更新面向 ChatGPT、Codex 和点点的所有用户即时推送，法语、德语、印地语、墨西哥西班牙语、韩语和日语用户将直接获得新增语音与更自然的口音表现，并减少「checking...」等待；但 API 支持尚未上线，依赖 API 的开发者暂时无法使用 GPT-Live-1.1。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://help.openai.com/en/articles/20001274-chatgpt-voice">ChatGPT Voice | OpenAI Help Center</a></li>
<li><a href="https://tools4all.ai/trends/openai-ships-gpt-live-11-voice-upgrade-in-six-languages">OpenAI ships GPT-Live-1.1 voice upgrade in six languages</a></li>
<li><a href="https://community.openai.com/t/gpt-live-1-1-is-rolling-out-with-new-voices-and-better-accents/1406704">GPT-Live-1.1 is rolling out with new voices and better ...</a></li>

</ul>
</details>

**标签**: `#OpenAI`, `#speech`, `#multilingual`, `#ChatGPT`, `#product update`

---

<a id="item-tech-news-13"></a>
### [市场回调与利率上升考验 AI 数据中心投资热潮](https://www.kitco.com/news/off-the-wire/2026-10-15/market-selloff-rising-rates-test-ai-data-centre-deal-boom) ⭐️ 7.0/10

AI 数据中心投资正受到市场抛售与利率上升的双重考验。过去一周，AirTrunk 的 REIT 上市计划、英伟达支持的 Firmus 以及软银支持的 SB Energy 的上市安排均被撤回或暂停，投资者要求企业证明其能够消化升高的利率与算力成本。分析师表示资金并未撤离，但投资者更看重质量。Dealogic 数据显示，亚洲数据中心并购交易今年已达 213 亿美元，约为 2025 年全年 100 亿美元的两倍，而股权融资同比下降 4.6%。

telegram · zaihuapd · 10月16日 05:10

**「背景」** 数据中心是承载 AI 模型训练与推理算力的核心基础设施，其建设高度依赖债务与股权融资，因此对利率和市场情绪尤为敏感。2026 年 10 月初，英伟达支持的澳大利亚数据中心运营商 Firmus 以市场波动为由撤回其澳大利亚 IPO 计划，由黑石主导、拟在新加坡上市的 AirTrunk 相关 REIT（约 15 亿美元）也被推迟。这些案例显示，在 AI 算力需求高涨的背景下，资本市场对高杠杆数据中心资产的认购意愿正在收紧。

**「影响」** 对计划上市或融资的 AI 数据中心运营商而言，市场回调与利率上升已直接导致 AirTrunk 的 REIT 上市、英伟达支持的 Firmus 及软银支持的 SB Energy 的上市安排被撤回或暂停，投资者要求其证明能消化升高的利率与算力成本。不过亚洲数据中心并购仍有望创纪录，Dealogic 数据显示年内并购额达 213 亿美元，超过 2025 年全年 100 亿美元的两倍，债务融资也保持强劲，银团贷款与债券发行合计 223 亿美元。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://tech-insider.org/au/firmus-airtrunk-ipo-ai-boom-debt-concerns-2026/">Firmus Pulls $44B ASX Float as AirTrunk IPO Slips [2026]</a></li>
<li><a href="https://thekopinotes.com/articles/news/airtrunk-singapore-reit-ipo-delay-2026/">AirTrunk’s US$1.5B SGX REIT IPO Delay: What It Means for ...</a></li>
<li><a href="https://www.cnbc.com/2026/10/09/nvidia-ai-firmus-ipo-.html">Nvidia-backed Aussie AI firm Firmus withdraws historic IPO ...</a></li>
<li><a href="https://www.straitstimes.com/business/nvidia-backed-firmus-drops-australian-ipo-plans-move-sends-ai-funding-warning">Nvidia-backed Firmus IPO being pulled sends AI funding ...</a></li>
<li><a href="https://www.devdiscourse.com/article/international/3993013-analysis-market-selloff-rising-rates-test-ai-data-centre-deal-boom">ANALYSIS-Market selloff, rising rates test AI data centre ...</a></li>
<li><a href="https://y94.com/2026/10/15/analysis-market-selloff-rising-rates-test-ai-data-centre-deal-boom/">Market selloff, rising rates test AI data centre deal boom</a></li>
<li><a href="https://www.reuters.com/business/finance/market-selloff-rising-rates-test-ai-data-centre-deal-boom-2026-10-15/">Market selloff, rising rates test AI data centre deal boom</a></li>

</ul>
</details>

**标签**: `#AI infrastructure`, `#data centers`, `#investment`, `#market trends`, `#tech industry`

---

<a id="item-tech-news-14"></a>
### [苹果首款折叠屏 iPhone Duo 开售一分钟售罄](https://api3.cls.cn/share/article/2507193?os=android&amp;amp;sv=8.8.4&amp;amp;app=cailianpress) ⭐️ 7.0/10

据财联社报道，苹果首款折叠屏手机 iPhone Duo 正式开售仅一分钟，全型号库存即迅速售空。受此消息影响，苹果美股盘前一度涨超 2%，开盘有望创下历史新高。该消息来自一条简短的新闻快讯，未披露 iPhone Duo 的具体配置、售价、备货规模或销售区域等细节，也尚无独立信源对售罄情况加以核实。

telegram · zaihuapd · 10月16日 12:45

**「背景」** 苹果于 2026 年 9 月 9 日发布首款折叠屏手机 iPhone Duo，采用折叠设计并搭载重新设计的 iOS 27，官方称其提供苹果史上最大的 iPhone 显示屏。该机于 2026 年 10 月 16 日太平洋时间凌晨 5 点开启预购，起售价为 1999 美元。

**「影响」** 对苹果而言，首款折叠屏 iPhone Duo 一分钟售罄并带动盘前股价一度涨超 2%，显示市场对高价折叠旗舰的初期需求强劲；但该消息来自简短快讯，缺乏独立验证，实际销量与后续供货情况仍待观察。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.apple.com/newsroom/2026/09/apple-unveils-iphone-duo/">Apple unveils iPhone Duo</a></li>
<li><a href="https://www.apple.com/newsroom/2026/10/open-up-to-new-possibilities-with-iphone-duo/">Open up to new possibilities with iPhone Duo - Apple</a></li>
<li><a href="https://www.forbes.com/sites/davidphelan/2026/10/16/iphone-duo-sells-out-in-minutes-as-delivery-dates-slip-to-january-2027/">iPhone Duo Sells Out In Minutes As Delivery Dates Slip To ...</a></li>
<li><a href="https://www.apple.com/iphone-duo/">iPhone Duo - Apple</a></li>
<li><a href="https://www.youtube.com/watch?v=OkSF0q9rXak">Apple ’s Foldable iPhone Duo Shows the Upside of Waiting - YouTube</a></li>
<li><a href="https://finfly.news/en/it/apple-unveils-first-foldable-iphone-duo">Apple Unveils First Foldable iPhone Duo - FinFly.news</a></li>

</ul>
</details>

**标签**: `#Apple`, `#foldable phones`, `#hardware`, `#consumer tech`, `#tech industry`

---

<a id="item-tech-news-15"></a>
### [Anthropic IPO 估值预期下调至约 1.5 万亿美元](https://www.reuters.com/business/finance/investors-temper-anthropic-ipo-valuation-expectations-over-revenue-growth-2026-10-15/) ⭐️ 7.0/10

据路透社报道，部分投资者将 Anthropic 的 IPO 估值预期从约 2 万亿美元下调至约 1.5 万亿美元。Anthropic 第三季度营收为 168 亿美元，环比增长 45%，并实现经调整后盈利和季度现金流转正。投资者下调预期的原因包括增速放缓、模型价格竞争加剧以及算力投入压力。这一变化可能对智谱、MiniMax、Kimi 和 DeepSeek 等 AI 公司形成估值压力测试，市场将更关注收入持续性、毛利率和资本效率。

telegram · zaihuapd · 10月16日 15:46

**「背景」** Anthropic 是 Claude 系列模型的开发公司，此前有报道称其最早可能在 2026 年 11 月启动 IPO，估值一度被传接近 2 万亿美元。围绕其估值的讨论长期与营收增速和未来财务预期挂钩，公司还面临约 5180 亿美元的算力投入承诺，投资者关注 2026 年营收增长能否支撑这些义务。

**「影响」** 若 Anthropic 的 IPO 估值预期下调成为现实，智谱、MiniMax、Kimi 和 DeepSeek 等中国 AI 公司可能面临估值压力测试，市场将更关注收入持续性、毛利率和资本效率。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.tipranks.com/news/anthropics-518b-ai-commitments-loom-over-2t-ipo-valuation">Anthropic ’s $518B AI Commitments Loom Over $2T IPO Valuation</a></li>
<li><a href="https://chainwire.org/2026/09/03/anthropic-ipo-valuation-expectations-rise-as-revenue-run-rate-tops-65-billion/">Anthropic IPO Valuation Expectations Rise as Revenue ... - Chainwire</a></li>

</ul>
</details>

**标签**: `#AI industry`, `#Anthropic`, `#IPO/valuation`, `#AI business`, `#market analysis`

---

<a id="item-tech-news-16"></a>
### [RTX 5090 停售风波：GB202 转投工作站，5080 接棒旗舰](https://www.techpowerup.com/353578/nvidia-reportedly-ending-the-rtx-5090-reserves-gb202-silicon-for-workstation-gpus) ⭐️ 7.0/10

有消息称英伟达已让 RTX 5090/V2 停产，停止向 GeForce 产品线供应 GB202 晶圆，并将产能全数转投高毛利的 RTX PRO 产品线，同一芯片对应的官方出货价从 1,999 美元跃升至 4,500 至 6,000 多美元。英伟达个人运算业务资深副总裁 Jeff Fisher 于 2026 年 10 月 16 日在台北公开否认停产，称相关说法“并非事实”，强调 RTX 5090 是核心产品并将持续供货，同时承认供应链产能受限。但美国官方商城已移除该卡页面，Micro Center 将其销售状态改为“不再销售”，多家门店已售罄；国内 32 GB 版现货价格从 9 月初的约 3.5 万元涨至 10 月中旬的约 5.4 万元。在此背景下，消费级新旗舰由 RTX 5080 24 GB 接棒，该卡基于 GB203 核心、采用 3 GB GDDR7 显存颗粒，核心规模不足 RTX 5090 的一半，却占据旗舰级价位，形成型号降格、规格腰斩、价格仍居旗舰档位的消费级旗舰断代格局。上述内容主要依赖小道消息与零售信号，缺乏独立验证。

telegram · zaihuapd · 10月17日 00:02

**「背景」** GB202 是英伟达桌面级 Blackwell 架构中面积最大的核心，同时用于游戏旗舰 RTX 5090 和专业工作站产品线。由于同一颗芯片可用于售价高得多的 RTX PRO 工作站显卡，在制造产能与显存供应受限时，将 GB202 优先分配给高毛利产品在商业上具有合理性，这也是此次“停售”传闻的核心逻辑。

**「影响」** 若 RTX 5090 供应持续收缩，消费者将面临旗舰型号缺货与价格高企的双重压力：国内 32 GB 版现货价已从 9 月初约 3.5 万元涨至 10 月中旬约 5.4 万元，而接棒的 RTX 5080 24 GB 核心规模不足前者一半却仍处旗舰价位，意味着买家需以旗舰价格接受规格降级。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.eteknix.com/rtx-5090-discontinued-gb202-rtx-pro-rumour/">RTX 5090 Discontinued ? NVIDIA Reportedly Moves GB 202 ... - eTeknix</a></li>
<li><a href="https://steamcommunity.com/discussions/forum/11/594069606514127806/">RTX 5090 discontinued :: Hardware and Operating Systems | Forum</a></li>

</ul>
</details>

**标签**: `#nvidia`, `#gpu-hardware`, `#semiconductor-supply`, `#pricing`, `#rtx-5090`

---

## 科技博客

<a id="item-tech-blog-1"></a>
### [本周安全要闻：DNSSEC 根密钥轮换与硬件钱包植入](https://hackaday.com/2026/10/16/this-week-in-security-critical-dns-keys-rotated-hacking-freezers-isnt-cool-openai-spies-on-itself-and-advanced-hardware-wallet-hacks/) ⭐️ 6.0/10

rss · Hackaday · 10月16日 14:00

**「背景」** DNS 是互联网最古老的基础协议之一，诞生于加密昂贵且法律受限的年代，几乎不设防，攻击者可伪造响应实施钓鱼或劫持邮件。DNSSEC 通过解析器与全球 DNS 服务器之间的信任链来验证响应，而这条链的根基——根信任密钥——本周发生了轮换。

**「方案」** 作者指出，DNSSEC 根密钥于 2026 年 10 月 11 日完成第二次轮换，分发工作早在 2025 年 1 月 11 日就已启动。新密钥必须由旧根密钥签名，解析器需持续校验至少 30 天才会信任它，这意味着伪造者要维持控制一个多月才能得逞；若本周 DNS 未中断，说明解析器已顺利换钥。下一阶段挑战是部署抗量子的新签名算法。其余条目多为二手汇总：一家勒索恢复公司被控欺诈，据称向攻击者支付 9800 美元却向受害者收取 15 万美元“恢复费”，公司整体支付超 800 万美元赎金、收取 1800 万美元；法国数百家超市与美国军事基地的制冷设备被远程触发除霜模式，损失估计超 30 万美元，作者援引 Kevin Beaumont 的说法，问题可能并非传统漏洞，而是设备直接联网、用户名为 admin、密码按当天日期每日变更；一名 OpenAI 员工因在会议室放置伪装成卫生纸的窃听设备被控间谍，日志显示其用公司自家聊天机器人协助设计。最有价值的是硬件钱包部分：植入物主要出现在 Ledger Nano X 中，平时休眠，待用户初始化时直接读取屏幕显示的助记词，再经自带 LTE 模块、天线和 eSIM 外传，全程不碰主机与 WiFi，钱包内部安全存储从未被攻破。Bitquery 将约 315 个被盗账户、约 1.02 亿美元资产与授权经销商 CryptoBilis 售出的设备关联；硬件黑客 Joe Grand 在 2025 年 8 月购入八台 Nano X，其中四台发现植入物，2026 年 3 月上报 Ledger 后数月未获跟进。Mark Karpelès 的拆解显示植入物已从手工焊线演进到带定制天线的黑色柔性电路，零件编号被刮除；一名日本研究者检查十台 Nano X 和两台 Flex，发现五种不同设计，eSIM 流量指向香港一处阿里云管理的数据中心，仅 6 月就有至少 90 个植入物向该处上报助记词。Ledger 称仅“有限数量”设备来自单一卖家、自身系统未被入侵，并告诫经销商只从授权渠道进货、绝不重新上架退货产品——这暗示了买货、植入、退货再上架的路径。但用户 Johannes 在欧洲 MediaMarkt 门店购买的两台 Nano X 也发现植入物，而 MediaMarkt 是覆盖十国约千家门店的授权经销商；Trezor 已作为预防措施缩减授权卖家名单，归因仍不明。

**「启示」** 作者的核心结论是：硬件钱包的威胁模型一直默认设备本身可信，“直接从厂商购买”原本只是额外谨慎的建议，如今却成了最低要求——防篡改包装挡不住有覆膜工艺和零件预算的攻击者，用户只能拆机检查、自行生成并导入助记词，或跨厂商多重签名。这一教训同样适用于把制冷等关键基础设施直接暴露在公网、并用 admin 加当日日期作密码的做法。

**标签**: `#security`, `#DNSSEC`, `#IoT security`, `#hardware wallets`, `#supply chain`

---

<a id="item-tech-blog-2"></a>
### [PLA 埋土一年不降解：堆肥为何行不通](https://hackaday.com/2026/10/16/disposing-of-pla-and-why-composting-is-not-an-option/) ⭐️ 6.0/10

rss · Hackaday · 10月16日 11:00

**「背景」** PLA 常被宣传为比 PETG 更“环保”的 3D 打印耗材，但作者指出，这种可生物降解性只对无添加剂的纯 PLA 成立，且需要达到其玻璃化转变温度（Tg）以上。现实中大量 PLA 耗材被打印、废弃，究竟能否靠土壤或堆肥自然消解，是一个被反复提及却少有实测的问题。

**「方案」** 作者转述了 \[I built a thing\] 为期一年的掩埋实验：三组样品分别为对照、埋入土壤和埋入堆肥，经历欧洲的冬季与炎热干燥的夏季后挖出。目视检查未见明显差异，拉伸强度测试在三组之间也没有统计显著变化。实验并未止步于此，而是在巴塞尔大学做了等温微量热法测试，用来判断 PLA 中是否存在可供土壤微生物利用的成分；结果是否定的，微生物活性在 PLA 存在时反而下降得更快，作者推测是因为可供养分占据的体积更小。作者还联系了瑞士、德国和美国的多家商业降解设施，许多机构愿意接收 PLA，但没有一家接受 3D 打印的 PLA 部件，主要原因是在工业堆肥条件下降解耗时过长、不经济。PLA 主要靠水解降解，需要合适的条件才不至于“等到天荒地老”；作者由此认为 PLA 是相当糟糕的材料，还会因结晶而脆化，使整卷耗材碎成小块，因此 PETG 成为常见且有吸引力的替代品。评论区则补充了焚烧（PLA 燃烧无灰无烟，可作引火物）、颗粒挤出回收等实用思路，但也有人提醒焚烧可能产生醛类，且并非所有塑料都适合简单燃烧。

**「启示」** 作者的核心结论是：3D 打印 PLA 在现实土壤和堆肥条件下基本不会有效降解，所谓“可堆肥”更多是营销话术而非可依赖的处置路径。对使用 PLA 的创客而言，与其指望它自然消失，不如考虑焚烧或重新挤出等更实际的回收方式。

**标签**: `#3D printing`, `#PLA`, `#biodegradability`, `#composting`, `#materials science`

---