---
layout: default
title: "Horizon Summary: 2026-09-23 (ZH)"
date: 2026-09-23
lang: zh
---

> 从 70 条内容中筛选出 18 条重要资讯。

---

**科技新闻**
1. [Anthropic 与 OpenAI 同日发布新旗舰，价格战升级](#item-tech-news-1) ⭐️ 9.0/10
2. [vLLM v0.30.0 发布：新增模型与持久权重缓存](#item-tech-news-2) ⭐️ 8.0/10
3. [WordPress 修复未认证路径遍历漏洞，可致条件性 RCE](#item-tech-news-3) ⭐️ 8.0/10
4. [五角大楼报告：过度依赖 AI 致伊朗学校遭导弹袭击](#item-tech-news-4) ⭐️ 8.0/10
5. [阿里发布真武 V900 AI 芯片，算力提升至 3 倍](#item-tech-news-5) ⭐️ 8.0/10
6. [Cloudflare Python Workers 正式全面可用](#item-tech-news-6) ⭐️ 8.0/10
7. [DeepSeek 与清华发布 DSec 沙箱平台技术报告](#item-tech-news-7) ⭐️ 8.0/10
8. [中国监管机构调查 DeepSeek 与月之暗面数据泄露](#item-tech-news-8) ⭐️ 8.0/10
9. [黑客声称窃取全部 FBI 员工数据](#item-tech-news-9) ⭐️ 7.0/10
10. [FoxPro 在 2007 年停更，如今被 Rust/wasm 复活](#item-tech-news-10) ⭐️ 7.0/10
11. [Trail of Bits 批评 SAML 设计缺陷，引发实践者讨论](#item-tech-news-11) ⭐️ 7.0/10
12. [小米发布多模态模型 MiMo-V2.6](#item-tech-news-12) ⭐️ 7.0/10
13. [Complex KDA：扩展 Kimi Delta Attention 表达力](#item-tech-news-13) ⭐️ 7.0/10
14. [Templar 模拟流水线并行训练中的阶段跳过容错](#item-tech-news-14) ⭐️ 7.0/10
15. [Qonto 发布 QontoFAQ 信息检索基准与相关性指标](#item-tech-news-15) ⭐️ 7.0/10
16. [OpenAI 在高等研究院设立数学与 AI 顾问组](#item-tech-news-16) ⭐️ 7.0/10
17. [美国提议与中方建立 AI 事件通报渠道](#item-tech-news-17) ⭐️ 7.0/10

**科技博客**
1. [树莓派限制内存升级：作者为何认为无伤大雅](#item-tech-blog-1) ⭐️ 7.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [Anthropic 与 OpenAI 同日发布新旗舰，价格战升级](https://simonwillison.net/2026/Sep/22/opus-and-sol-and-luna/) ⭐️ 9.0/10

Anthropic 发布了 Claude Opus 5.5，约一小时后 OpenAI 发布了 GPT-6 Sol 和 GPT-6 Luna，两家公司的新旗舰模型同日登场并伴随大幅降价。GPT-6 Luna 定价为每百万输入 token 0.10 美元、缓存输入 0.01 美元、输出 0.50 美元，仅为 GPT-5.6 Luna 的一半；GPT-6 Sol 为 2/0.20/10 美元，同样较 GPT-5.6 Sol 减半。Claude Opus 5.5 从 Opus 5 的 5/25 美元降至 4/20 美元（降幅 20%），缓存读取价格下降 60%，对长程智能体对话意义显著。作者 Simon Willison 指出，GPT-5.6 计划在 11 月涨价 25%，因此 GPT-6 实际是相对促销价再减半；同时 Claude Opus 5.5 在“max”思考级别下因 128,000 输出 token 上限而两次未能完成其鹈鹕骑自行车 SVG 测试，每次花费约 2.56 美元、耗时近 20 分钟。Anthropic 表示 Sonnet 5.5 和 Haiku 5.5 即将推出。

rss · Simon Willison · 9月22日 23:46

**「背景」** 2026 年 9 月 22 日，Anthropic 发布 Claude Opus 5.5，OpenAI 随后发布 GPT-6 Sol 与 GPT-6 Luna，两者相隔约一小时。GPT-6 Sol 和 Luna 属于 GPT-6 家族，该家族旗舰 GPT-6 Astra 已于 2026 年 9 月 3 日发布，Sol 和 Luna 定位为同代但价格大幅降低的版本。Anthropic 称 Opus 5.5 是 Claude 5.5 家族的首个模型，性能接近 Claude Fable 5.1，运行成本比 Opus 5 低约 40%，并延续了 Fable 5.1 引入的“保留思考”（preserved thinking）反蒸馏保护机制。

**「影响」** 对开发者而言，GPT-6 Luna 的输入/输出价格降至每百万 token 0.10/0.50 美元，Claude Opus 5.5 的缓存读取价格下降 60%，意味着高频调用和长上下文智能体应用的推理成本将显著降低。不过 Opus 5.5 在 max 思考级别下因触及 128,000 输出 token 上限而两次未能返回结果，提示该档位在复杂任务中可能不可靠。

**「社区讨论」** 评论者 GodelNumbering 列出了 Opus 5.5 与 Opus 5 的完整价格对比（缓存读取 0.20 对 0.50 美元、缓存写入 5 对 6.25 美元），并指出 Opus 5 是 OpenRouter 上支出最高的模型。sailingparrot 则讽刺 Anthropic 一边呼吁“为前沿技术减速”，一边用具体数字展示自己并未减速；consumer451 报告 Opus 5.5 在 3D 动画测试中较 Opus 5 有明显改进，而 wg0 表示仍偏好 DeepSeek v4.1。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.anthropic.com/claude-opus-5-5">Introducing Claude Opus 5.5 \ Anthropic</a></li>
<li><a href="https://9to5mac.com/2026/09/22/anthropic-upgrades-claude-with-new-opus-5-5-model-details-here/">Anthropic upgrades Claude with new Opus 5.5 model, details here - 9to5Mac</a></li>
<li><a href="https://coursiv.io/blog/gpt-6-sol-luna">GPT - 6 Sol and Luna : Pricing , Benchmarks, Availability | Coursiv Blog</a></li>
<li><a href="https://www.digitalapplied.com/blog/gpt-6-sol-luna-launch-pricing-benchmarks-2026">GPT - 6 Sol and Luna : API Prices , Benchmarks and Trade-offs</a></li>

</ul>
</details>

**标签**: `#LLM`, `#AI industry`, `#model releases`, `#pricing`, `#OpenAI`

---

<a id="item-tech-news-2"></a>
### [vLLM v0.30.0 发布：新增模型与持久权重缓存](https://github.com/vllm-project/vllm/releases/tag/v0.30.0) ⭐️ 8.0/10

vLLM 发布 v0.30.0，包含来自 315 位贡献者（其中 104 位新贡献者）的 762 次提交。该版本新增 DeepSeek-V4.1-Flash、DeepSeek-V4-Flash-Vision-Exp、GLM-5.3-Flash、K2-Horizon、Cohere Compass、Bailing V3 VL 和 Nanbeige4.2 等模型支持，并引入 DeepSeek-V4 CPU 后端（AVX512/AMX 稀疏 MLA）。Fast Start 功能通过持久化的每 GPU 权重缓存守护进程，将量化后、TP 分片的权重保留在 GPU 内存中，重启引擎时可用 --load-format ipc\_cache 经 CUDA IPC 映射，避免从磁盘重新加载，现已覆盖 FP4 检查点和多节点 TP。此外还加入 Gumbel-max 水印生成与检测、HiSparse 主机端稀疏 MLA 解码层，以及 Model Runner V2 的图捕获优化（H200 上引擎初始化从 28.9 秒降至 8.2 秒）。破坏性变更包括：scale-out 端点改为通过 --enable-scale-out 显式启用，移除 GPTQ 的 g\_idx 激活排序，并弃用部分环境变量与 Mamba 缓存模式。

github · khluu · 9月22日 05:20

**「背景」** vLLM 是广泛使用的开源大语言模型推理与服务引擎，以 PagedAttention 和高效批处理著称。版本号迭代通常伴随新模型适配、量化方案和后端优化，v0.30.0 属于一次规模较大的常规版本发布。

**「影响」** 使用 vLLM 部署推理服务的开发者需注意破坏性变更：scale-out 端点不再默认开启，需显式传入 --enable-scale-out；依赖 GPTQ g\_idx 或已弃用环境变量的配置需要调整。

**标签**: `#LLM inference`, `#vLLM`, `#model serving`, `#GPU optimization`, `#open source`

---

<a id="item-tech-news-3"></a>
### [WordPress 修复未认证路径遍历漏洞，可致条件性 RCE](https://github.com/WordPress/wordpress-develop/security/advisories/GHSA-7hp8-65ch-5whp) ⭐️ 8.0/10

WordPress 发布安全公告 GHSA-7hp8-65ch-5whp，修复一个未认证的路径遍历漏洞，该漏洞可导致条件性远程代码执行。修复随 WordPress 7.1.2 发布，并作为对旧分支用户的照顾，向后移植到所有分支直至 4.7。社区评论指出约三分之一的安装并未运行较新的 7 分支，因此旧分支的补丁覆盖尤为重要。评论还提到 locate\_template\(\) 不阻止目录遍历，若将用户提供的模板名传入该函数即存在风险，这与漏洞的性质和修复方式相符。

hackernews · vntok · 9月22日 16:33 · [社区讨论](https://news.ycombinator.com/item?id=49803959)

**「背景」** 该漏洞编号为 CVE-2026-87902，属于 WordPress 核心中页面模板解析环节的未认证路径遍历问题，影响 4.7.0 至 7.1.1 版本，已在 7.1.2 中修复。WordPress 的模板解析依赖 locate\_template\(\) 等函数，而官方文档多年前就曾提醒该函数不会阻止目录遍历，若将用户提供的模板名传入需自行校验来源。由于 WordPress 部署量极大，且修复被回溯至 4.7 等旧分支，攻击者可能在补丁发布后数小时内就开始探测存在漏洞的站点。

**「影响」** 所有 WordPress 4.7 及之后版本的用户都受到影响，需升级到 7.1.2 或对应分支的修复版本；由于约三分之一安装量未运行最新的 7.x 分支，旧分支的向后移植补丁对大量站点尤为关键。该漏洞为未认证路径遍历，可导致条件性远程代码执行，但“条件性”意味着实际利用取决于具体环境配置。

**「社区讨论」** 评论者普遍认为 WordPress 是历史上最易被利用的 Web 软件之一，并指出约三分之一安装未使用较新的 7 分支，因此向后移植补丁很关键。有人分享了从 7.1.1 到修复版本的补丁提交链接，也有人提到已迁移到 Hugo 静态托管以规避此类风险。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/WordPress/wordpress-develop/security/advisories/GHSA-7hp8-65ch-5whp">Unauthenticated path traversal in page-template resolution ...</a></li>
<li><a href="https://www.pruva.dev/reproductions/REPRO-2026-00356">CVE-2026-87902: WordPress Core unauthenticated path traversal ...</a></li>
<li><a href="https://patchstack.com/articles/cve-2026-87902-attackers-started-probing-wordpress-sites-hours-after-the-patch/">CVE-2026-87902: Attackers Started Probing WordPress Sites ...</a></li>

</ul>
</details>

**标签**: `#security`, `#wordpress`, `#vulnerability`, `#php`, `#open-source`

---

<a id="item-tech-news-4"></a>
### [五角大楼报告：过度依赖 AI 致伊朗学校遭导弹袭击](https://www.bloomberg.com/graphics/2026-iran-school-attack/) ⭐️ 8.0/10

五角大楼一份报告认定，美军对伊朗米纳布（Minab）一所学校的导弹袭击，部分源于对 AI 目标筛选系统的过度依赖。该系统将因数据过时而仍被标记为伊斯兰革命卫队设施的米纳布地点，与其他候选目标一并输入 Maven 系统，最终被推荐为“首日打击目标”。报告指出，美国“未能尽一切可行努力核实”该学校属于军事目标，其失职“超出单纯疏忽”，并称美方“在明知存在打击民用物体重大风险的情况下仍将该学校建筑列为打击对象，且对可能发生的后果持轻率态度”。原本需数小时的目标清单工作被压缩至数分钟，引发对自动化决策、数据质量与人工监督的广泛争论。

hackernews · devonnull · 9月22日 19:03 · [社区讨论](https://news.ycombinator.com/item?id=49806430)

**「背景」** 五角大楼调查发现，2026 年 2 月 28 日对伊朗米纳卜一所学校的导弹打击造成 123 名儿童死亡，原因涉及情报失误、过时图像以及对人工智能的过度依赖。据官员透露，该目标被错误编目为伊斯兰革命卫队设施，随后被输入 Maven 等 AI 目标推荐系统，在压缩的流程中迅速成为首日打击目标。此次行动首 24 小时内打击了超过 1000 个伊朗目标，进一步压缩了额外确认的时间。

**「影响」** 五角大楼将此次误击部分归因于对 AI 目标系统的过度依赖，这可能加剧美国国会与外部机构对 Project Maven 等军事 AI 工具在目标识别中透明度与问责机制的审查压力。

**「社区讨论」** 有评论者认为，从细节看“AI”并非真正的罪魁祸首，问题在于过时数据与流程本身；也有人指出，将数小时的目标筛选压缩到数分钟，是在优化错误的指标。另有评论者提到相关案例：美军曾因 AI 错误标记一艘中国船只载有核材料而险些登船检查。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.bloomberg.com/graphics/2026-iran-school-attack/">Inside US Military ‘Kill Chain’ That Destroyed an Iranian School</a></li>
<li><a href="https://yournews.com/2026/09/21/7200962/pentagon-probe-finds-overreliance-on-ai-staff-cuts-contributed-to/">Pentagon Probe Finds Overreliance on AI, Staff Cuts Contributed to Deadly Iran School Strike – [your]NEWS</a></li>
<li><a href="https://www.ibtimes.co.uk/pentagon-review-ai-failures-iran-school-strike-1820787">Pentagon Blames AI System for Deadly US Strike That Killed 123 Iranian Schoolchildren | IBTimes UK</a></li>
<li><a href="https://nationalinterest.org/blog/techland/inside-project-mavens-accountability-trap">Inside Project Maven’s Accountability Trap - The National Interest</a></li>
<li><a href="https://www.lifezette.com/2026/09/ai-targeting-may-outrun-human-control-before-disaster-strikes/">AI Targeting May Outrun Human Control Before Disaster Strikes</a></li>
<li><a href="https://www.hrw.org/news/2026/06/14/addressing-artificial-intelligence-in-the-military-domain">Addressing Artificial Intelligence in the Military Domain | Human Rights Watch</a></li>

</ul>
</details>

**标签**: `#AI safety`, `#military AI`, `#automated targeting`, `#AI ethics`, `#human oversight`

---

<a id="item-tech-news-5"></a>
### [阿里发布真武 V900 AI 芯片，算力提升至 3 倍](https://finance.sina.com.cn/stock/bxjj/2026-09-22/doc-inissitf7048094.shtml) ⭐️ 8.0/10

在 2026 云栖大会上，阿里平头哥发布宣称最强国产 AI 芯片真武 V900，算力提升至真武 M890 的 3 倍，单一集群可扩展至 50 万卡。阿里 CEO 吴泳铭称，自研 M890 超节点已支撑 2 万亿参数大模型推理，本季度将规模化上架阿里云。吴泳铭表示 AI 模型、芯片、云是机器智能时代三大基石，阿里将坚定投入，Qwen 计划训练 5 至 10T 参数新模型，目标到 2032 年阿里云全球数据中心规模超 20GW。上述数据均为发布会宣称，目前缺乏架构细节、实测性能与第三方验证。

telegram · zaihuapd · 9月22日 03:30

**「背景」** 云栖大会是阿里巴巴每年在杭州举办的云计算与科技大会，历来是阿里发布芯片、大模型和云基础设施进展的主要场合。平头哥是阿里巴巴旗下的半导体公司，此前已推出真武系列 AI 芯片，M890 为其上一代产品。真武 V900 被定位为训推一体 AI 芯片，即同时面向训练和推理场景。

**「影响」** 搭载真武 V900、ICN Switch、磐脉及镇岳芯片的全新磐久超节点服务器计划于 2027 年 Q1 上市，意味着相关算力要到明年一季度才可实际交付；同时 M890 超节点本季度规模化上架阿里云，短期内阿里云客户可先获得 2 万亿参数大模型推理能力。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.aitop100.cn/infomation/details/34752.html">2026年云栖大会阿里平头哥发布AI芯片真武V900，算力达M890三倍-AITOP1...</a></li>
<li><a href="https://zhuanlan.zhihu.com/p/2085728130245961610">平头哥半导体“火力全开”：发布最新AI芯片真武V900，倚天CPU也将大幅迭...</a></li>
<li><a href="https://www.huxiu.com/ainews/15208.html">平头哥发布真武V900，AI芯片算力提升两倍 - 虎嗅网</a></li>
<li><a href="https://www.ithome.com/1/005/602.htm">最强 国 产 AI 芯 片 阿 里 平头哥 真 武 V 900 ...</a></li>

</ul>
</details>

**标签**: `#AI芯片`, `#阿里平头哥`, `#云计算`, `#大模型基础设施`, `#国产半导体`

---

<a id="item-tech-news-6"></a>
### [Cloudflare Python Workers 正式全面可用](https://blog.cloudflare.com/python-workers-ga/) ⭐️ 8.0/10

Cloudflare 于 9 月 21 日宣布 Python Workers 正式全面可用（GA），Python 由此成为其开发者平台的一级支持语言，可无缝接入 Workers AI、R2、D1 等服务。该功能在两年前推出，如今原生支持 FastAPI、Django、Flask 等框架，并新增底层网络能力，可在其中直接运行 PostgreSQL 等数据库以及 LangChain 等 AI 库。

telegram · zaihuapd · 9月22日 04:00

**「背景」** Cloudflare Workers 是 Cloudflare 的开发者平台，此前主要以 TypeScript 和 JavaScript 作为一等支持语言。Python Workers 于两年前推出，经过长期开发后于 2026 年 9 月 21 日宣布正式全面可用（GA），使 Python 成为该平台上与 TypeScript、JavaScript 并列的一级支持语言。

**「影响」** 对使用 Cloudflare Workers 的 Python 开发者而言，现在可以用 pywrangler 在本地安装依赖并部署，无需 JavaScript 胶水代码即可在边缘运行 FastAPI、Django、Flask，并直接调用 Workers AI、R2、D1 等绑定。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blog.cloudflare.com/python-workers-ga/">Python Workers are now generally available | Cloudflare Blog</a></li>
<li><a href="https://stackademic.com/blog/python-workers-are-now-generally-available-on-cloudflare">Python Workers Are Now Generally Available on Cloudflare | Stackademic</a></li>
<li><a href="https://x.com/Cloudflare/status/2102021281822527538">Cloudflare on X: &quot;We&#x27;re excited to announce that today Python Workers are generally available (GA). It means Python is now a first-class, fully supported language on the Cloudflare Developer Platform. Read everything about it: https://t.co/ZwQe6IPd93&quot; / X</a></li>
<li><a href="https://developers.cloudflare.com/workers/languages/python/">Write Cloudflare Workers in Python · Cloudflare Workers docs</a></li>
<li><a href="https://www.brocker.org/cloudflare-python-workers-general-availability">Cloudflare Python Workers Reach General Availability</a></li>

</ul>
</details>

**标签**: `#Cloudflare Workers`, `#Python`, `#Serverless`, `#Edge Computing`, `#AI Tooling`

---

<a id="item-tech-news-7"></a>
### [DeepSeek 与清华发布 DSec 沙箱平台技术报告](https://arxiv.org/abs/2609.22978) ⭐️ 8.0/10

DeepSeek-AI 与清华大学联合发布技术报告《DeepSeek Elastic Compute（DSec）》，公开了支撑大规模智能体训练与评测的沙箱基础设施。DSec 通过统一 SDK 提供 FnCall、容器、Firecracker microVM 和完整 VM 四种后端，覆盖 OJ 判题、软件工程、安全渗透、电脑操作等负载，并与强化学习框架协同，将有状态的 rollout 执行与可抢占的 GPU 训练解耦。规模上，单个生产单元约 160 个节点，每天服务约 300 万个沙箱实例，峰值并发超 38 万，创建速度超每秒 5000 个，单节点可承载 3200 个容器或 800 个 microVM。平台基于 3FS 分布式文件系统按需加载 EROFS 镜像，相比传统 Docker 全量拉取，任务完成时间快 1.7 倍、磁盘写入减少 57%，内存共享与回收机制使峰值内存占用下降约 40%。需注意，arXiv 链接与部分数据来自原始投稿，未能独立核实。

telegram · zaihuapd · 9月22日 04:45

**「背景」** DSec 全称 DeepSeek Elastic Compute，是 DeepSeek 面向智能体（Agent）后训练与大规模评测推出的生产级沙箱平台，通过统一 SDK 对外提供 FnCall、容器、microVM 和完整 VM 四类后端。据外部报道，该平台由三个 Rust 组件构成：API 网关 Apiserver、单机代理 Edge 和集群监控 Watcher。在智能体强化学习中，代码执行、软件工程、安全渗透等任务需要大量隔离且可并发的运行环境，沙箱基础设施因此成为训练吞吐的关键瓶颈之一。

**「影响」** 对从事智能体强化学习训练的团队而言，DSec 公开的架构表明，将沙箱生命周期与可抢占 GPU 训练协同调度，可在保留 rollout 状态的同时回收空闲资源，并缓解奖励黑客等智能体不当行为。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/abs/2609.22978">[2609.22978] DeepSeek Elastic Compute ( DSec ): A Sandbox ...</a></li>
<li><a href="https://www.unite.ai/deepseek-opens-150-backend-roles-to-rebuild-strained-infrastructure/">DeepSeek Opens 150 Backend Roles to Rebuild Strained Infrastructure</a></li>
<li><a href="https://www.kucoin.com/news/flash/deepseek-v4-unveils-production-grade-agent-sandbox-dsec">DeepSeek V4 Unveils Production-Grade Agent Sandbox DSec | KuCoin</a></li>
<li><a href="https://arxiv.org/html/2609.22978v1">DeepSeek Elastic Compute (DSec): A Sandbox Infrastructure for ...</a></li>
<li><a href="https://arxivlens.com/paperview/details/deepseek-elastic-compute-dsec-a-sandbox-infrastructure-for-effective-agentic-training-at-scale-1047-b63ade51">DeepSeek Elastic Compute (DSec): A Sandbox Infrastructure...</a></li>

</ul>
</details>

**标签**: `#AI infrastructure`, `#agent training`, `#sandboxing`, `#reinforcement learning`, `#distributed systems`

---

<a id="item-tech-news-8"></a>
### [中国监管机构调查 DeepSeek 与月之暗面数据泄露](https://www.theinformation.com/articles/china-probes-deepseek-moonshot-potential-data-leaks-anthropic) ⭐️ 8.0/10

据知情人士称，中国互联网监管机构正在调查 DeepSeek 和月之暗面（Moonshot），起因是 Anthropic 指控这两家公司将敏感用户数据转发给其 Claude 模型。Anthropic 于 9 月 10 日发布一份 154 页报告，指称 7 家中国公司大规模违规使用 Claude，并举例称 DeepSeek 曾把警方监控系统开发工程师的请求转发给 Claude。该调查涉及主要 AI 实验室、跨境数据与安全关切以及监管行动，对关注 AI 产业与政策的读者具有较高价值。目前信息来自 Telegram 频道援引 The Information 的简要二手摘要，技术细节有限，相关指控尚未得到证实。

telegram · zaihuapd · 9月22日 14:37

**「背景」** Anthropic 于 9 月 10 日发布一份 154 页的威胁情报报告《Detecting and countering misuse of AI》，称在 2025 年 12 月至 2026 年 8 月期间检测到 7 家中国公司大规模违规使用 Claude，并将相关活动分为七类。报告点名 DeepSeek 和月之暗面（Moonshot AI），指其将用户请求转发给 Claude，并把 Claude 的输出当作自家模型（如月之暗面的 Kimi）的结果呈现。中国互联网监管机构随后据报对这两家公司展开调查。

**「影响」** 若调查属实，DeepSeek 与月之暗面可能面临中国网信办的监管处罚，并需调整其调用境外模型（如 Claude）的数据处理流程。目前指控与调查均未经官方证实，具体后果仍不确定。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://gizmodo.com/china-probes-deepseek-moonshot-ai-over-anthropics-claims-they-route-requests-to-claude-2000815507">China Probes DeepSeek , Moonshot AI Over Anthropic &#x27;s Claims...</a></li>
<li><a href="https://yellow.com/news/deepseek-moonshot-claude-answers">DeepSeek And Moonshot Passed Off Claude Answers As... | Yellow</a></li>
<li><a href="https://quantumzeitgeist.com/anthropic-moonshot-deepseek-claude-passed-user/">Moonshot And DeepSeek Allegedly Passed User Questions To...</a></li>
<li><a href="https://digg.com/tech/ea9a4e49-6110-4081-97ad-77cffc6dc197">China reportedly probes DeepSeek and Moonshot over potential data ...</a></li>
<li><a href="https://www.analyticsinsight.net/news/china-probes-deepseek-moonshot-ai-over-claude-data-routing-claims">China Probes DeepSeek , Moonshot AI Over Claude Data Routing...</a></li>
<li><a href="https://www.techmeme.com/260922/p15">Sources: the Cyberspace Administration of China is investigating ...</a></li>

</ul>
</details>

**标签**: `#AI regulation`, `#DeepSeek`, `#Moonshot AI`, `#data privacy`, `#Anthropic`

---

<a id="item-tech-news-9"></a>
### [黑客声称窃取全部 FBI 员工数据](https://www.404media.co/we-hacked-the-fbi-hackers-say-they-have-data-on-all-fbi-employees/) ⭐️ 7.0/10

黑客组织 ShinyHunters 声称已入侵 FBI 并获取了全部 FBI 员工的数据，该消息由 404media 报道并在 Hacker News 上引发讨论。该组织代表表示，他们计划对 FBI 采取的行动“不会称之为勒索，也许算是胁迫”，并强调此举“并非出于经济动机”。目前这一说法尚未得到证实，FBI 方面也未确认数据泄露的真实性。若属实，这将是一起涉及美国主要政府机构的重要网络安全事件，可能影响大量联邦雇员的个人隐私与安全。

hackernews · spenvo · 9月22日 17:46 · [社区讨论](https://news.ycombinator.com/item?id=49805278)

**「背景」** ShinyHunters 是一个知名的网络犯罪与勒索团伙，此前曾多次声称入侵大型组织并窃取数据。据安全媒体报道，该团伙声称利用 Oracle PeopleSoft 的一个零日漏洞入侵了 FBI 系统，并称此举是对 FBI 发布有关该团伙运作方式的不实指控的报复。FBI 方面尚未证实这一说法，相关数据泄露的真实性和规模仍有待核实。

**「影响」** 若该入侵声明得到证实，FBI 员工及申请者的个人数据可能面临被公开或出售的风险，而 ShinyHunters 作为自 2019 年起活跃的勒索团伙，其威胁方式可能从单纯的经济勒索转向非财务动机的胁迫。不过，目前样本、所称的入侵途径及实际影响范围均未得到验证，因此上述后果仍属不确定。

**「社区讨论」** 评论者普遍对大型数据库的安全性表示悲观，有人援引 2015 年美国人事管理办公室（OPM）约 2210 万条政府雇员记录被中国黑客窃取的事件作为先例。也有评论以《太空堡垒卡拉狄加》中不联网计算机的桥段调侃，还有人质疑 FBI 在人事与安全能力上的管理问题。部分讨论聚焦于 ShinyHunters“非经济动机”的表述，认为其真实意图仍不明确。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://cybernews.com/news/shinyhunters-claims-fbi-systems-hack-sensitive-data-on-almost-all-fbi-agents/">ShinyHunters claims FBI breach involving agents and job ...</a></li>
<li><a href="https://www.pcmag.com/news/shinyhunters-gang-hacked-fbi-stole-sensitive-data-on-almost-all-agents">ShinyHunters Gang: We Hacked the FBI, Stole Sensitive Data on ...</a></li>
<li><a href="https://www.bleepingcomputer.com/news/security/shinyhunters-claims-fbi-hack-data-theft-in-peoplesoft-zero-day-breach/">ShinyHunters claims FBI hack, data theft in PeopleSoft zero ...</a></li>
<li><a href="https://en.wikipedia.org/wiki/ShinyHunters">ShinyHunters - Wikipedia</a></li>
<li><a href="https://www.ibtimes.co.uk/shinyhunters-claims-fbi-data-breach-scope-unverified-1821341">Hacker Group ShinyHunters Claims FBI Breach as... | IBTimes UK</a></li>
<li><a href="https://www.cbc.ca/news/world/shinyhunters-breach-fbi-9.7354002">ShinyHunters hackers say they breached FBI , stole employee data</a></li>

</ul>
</details>

**标签**: `#cybersecurity`, `#data breach`, `#FBI`, `#hacking`, `#privacy`

---

<a id="item-tech-news-10"></a>
### [FoxPro 在 2007 年停更，如今被 Rust/wasm 复活](https://foxscript.org/) ⭐️ 7.0/10

一个 MIT 许可的开源项目在 Rust 编译到 wasm 的新运行时上重新实现了 Visual FoxPro，目标是让仍在运行的旧业务应用继续存活。该项目与真实的 vfp9.exe 进行兼容性检查，解除了表 2 GB 的大小限制，仍能加载旧的 32 位 .fll 插件，并额外加入了 lambda、JSON 和 HTTP 服务器。项目作者称，这是应一位希望长期继续使用其应用的客户要求而做。目前报表功能尚未完成，构建产物未签名。

hackernews · boredjohnny · 9月22日 21:00 · [社区讨论](https://news.ycombinator.com/item?id=49808023)

**「背景」** Visual FoxPro 是微软的数据库与编程语言产品，最后一个版本 9 于 2007 年发布，此后停止更新。大量基于它的 32 位业务应用至今仍在运行，因为重写二十年前的系统往往意味着业务风险。该项目试图在不重写应用的前提下，把 FoxPro 语言迁移到新的 Rust/wasm 运行时上。

**「影响」** 对仍依赖 Visual FoxPro 应用的企业而言，这提供了一条无需重写即可延续旧系统的可能路径，但报表未完成、构建未签名，且仅面向现有 FoxPro 用户，影响范围有限。

**「社区讨论」** 评论者 mikestew 指出，DBC（数据库容器）设计存在严重安全漏洞：DBC 必须对所有用户可读写且没有权限方案，其存储过程以纯文本存于 memo 字段，可执行任意 FoxPro 代码包括 Win32 调用，因此有技术知识的人可修改 INSERT 触发器。其他评论者则回忆了 FoxPro 在 2006 年前后用于患者跟踪、房地产评估等场景的易用性与遗留问题。

**标签**: `#Visual FoxPro`, `#legacy modernization`, `#WebAssembly`, `#Rust`, `#open source`

---

<a id="item-tech-news-11"></a>
### [Trail of Bits 批评 SAML 设计缺陷，引发实践者讨论](https://blog.trailofbits.com/2026/09/21/saml-a-fractal-of-bad-design/) ⭐️ 7.0/10

Trail of Bits 发布文章《SAML: A fractal of bad design》，认为 SAML 从根本上设计糟糕，并将其与 OIDC 进行对比。文章引发安全从业者讨论，涉及 XML 签名包装、HMAC 与 Web PKI 混淆等具体漏洞。评论者指出，SAML 在特定企业 SSO 场景中仍有 OIDC 缺乏的功能，尤其是 IdP 发起的流程，而 OIDC 本身也存在 JWT 算法混淆、none 算法攻击、缺少 audience 校验和 JOSE 库缺陷等问题。讨论还提到，面向企业销售时通常需要同时支持 SAML 与 OIDC，而 SCIM 带来的运维负担可能更大。

hackernews · aray07 · 9月22日 18:57 · [社区讨论](https://news.ycombinator.com/item?id=49806335)

**「背景」** SAML（安全断言标记语言）是一种基于 XML 的认证与授权标准，广泛用于企业单点登录（SSO），由多家厂商和标准组织在既有规范基础上合并而成，因而带有明显的“大杂烩”式设计特征。该协议长期受到 XML 签名包装（XML signature wrapping）等安全漏洞困扰，其实现脆弱性已被讨论多年。Trail of Bits 的这篇分析正是在此背景下，将 SAML 与 OIDC 等替代方案进行对比，并引发从业者对实际部署中安全缺陷的讨论。

**「影响」** 对仍依赖 SAML 的企业 SSO 部署而言，XML 签名包装（XSW）等缺陷意味着签名验证通过并不等于被处理的数据可信，攻击者可让签名节点与业务处理节点错位；同时社区指出 OIDC 自身也存在 JWT 算法混淆、none 算法、缺失 audience 校验和 JOSE 库缺陷，因此短期内面向企业销售的产品仍需同时支持 SAML 与 OIDC。

**「社区讨论」** 评论者普遍认同 SAML 设计不佳，但分歧在于是否应简单以 OIDC 替代：有人强调 SAML 在企业 SSO 的 IdP 发起流程等场景仍有优势，且其常用子集相对稳定，而 OIDC 由多个规范组成、各产品支持不一致。也有评论批评文章只列举 SAML 漏洞而未对 OIDC 做同等比较，并指出 OIDC 存在 JWT 算法混淆、none 算法攻击、缺少 audience 校验及 JOSE 库缺陷等问题。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thenote.app/post/en/saml-a-fractal-of-bad-design-puhir0xvn6">SAML: A fractal of bad design - thenote.app</a></li>
<li><a href="https://clerk.com/articles/oidc-vs-saml-for-enterprise-sso-a-2026-decision-guide">OIDC vs SAML for Enterprise SSO : A 2026 Decision Guide</a></li>
<li><a href="https://www.decryptiondigest.com/blog/sso-saml-implementation-guide">Enterprise SSO and SAML Guide 2026: IdP, MFA, Federation</a></li>
<li><a href="https://resorsit.com/insights/saml-vs-oidc-sso-protocol/">SAML vs OIDC - Which SSO Protocol Is Right for You? | ResorsIT</a></li>

</ul>
</details>

**标签**: `#SAML`, `#authentication`, `#security`, `#OIDC`, `#XML`

---

<a id="item-tech-news-12"></a>
### [小米发布多模态模型 MiMo-V2.6](https://www.reddit.com/r/MachineLearning/comments/1wn36d4/xiaomi_releases_mimov26_frontier_intelligence_all/) ⭐️ 7.0/10

小米发布了名为 MiMo-V2.6 的多模态模型，官方宣传语为“前沿智能、全模态、公开构建”。据该 Reddit 帖子称，模型的总强化学习训练成本为 350 万美元，并附带一个实时更新的基准测试仪表盘。帖子链接指向小米官方页面 mimo.xiaomi.com/mimo-v2-6，但未提供技术细节、评测结果或独立验证信息。该消息来自 r/MachineLearning 的一则链接帖，目前尚无社区评论。

reddit · r/MachineLearning · /u/we\_are\_mammals · 9月22日 07:56

**「背景」** 小米此前已推出 MiMo 系列模型，MiMo-V2.6 是该系列的最新版本，延续了多模态与开源路线。据小米官方页面，MiMo-V2.6-Pro 在 Artificial Analysis Intelligence Index 上得分 46.32，超过 Kimi K3 和 Qwen3.8 Max，成为当时最强的开源模型，且 V2.6 系列保持 V2.5 系列的 API 定价。该系列主打全模态理解，支持语言、视觉、视频和音频输入，并采用可验证任务的强化学习进行递归自我改进。

**「影响」** 小米公开 MiMo-V2.6 的实时 RL 训练仪表盘，使 mimo-v2.6-pro 与 mimo-v2.6-flash 的奖励曲线、rollout 数量、步进耗时、运行中算力成本及中期编码分数可被外部实时查看，这与前沿实验室通常在训练结束后才披露后训练结果的做法不同。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://news.aibase.com/news/31249">Xiaomi releases and opens source MiMo - V 2 . 6 : Smart Index 46 Points...</a></li>
<li><a href="https://mimo.xiaomi.com/mimo-v2-6">MiMo - V 2 . 6 | Xiaomi</a></li>
<li><a href="https://kie.ai/blog/what-is-xiaomi-mimo-v2-6">Meet Xiaomi MiMo V 2 . 6 , the 1M-Token Omnimodal Model</a></li>
<li><a href="https://mimo.xiaomi.com/rl/">mimo-v2.6 RL</a></li>
<li><a href="https://cho.sh/mini/news/ai-2/xiaomi-mimo-dashboard">Xiaomi publishes a live post-training RL dashboard for MiMo ...</a></li>
<li><a href="https://rits.shanghai.nyu.edu/ai/xiaomi-mimo-v2-6-live-rl-dashboard/">Xiaomi Streams MiMo-V2.6 Reinforcement Learning Runs Live</a></li>

</ul>
</details>

**标签**: `#LLM`, `#multimodal`, `#reinforcement-learning`, `#model-release`, `#benchmarking`

---

<a id="item-tech-news-13"></a>
### [Complex KDA：扩展 Kimi Delta Attention 表达力](https://www.reddit.com/r/MachineLearning/comments/1wn5uv9/understanding_and_enhancing_kimi_delta_attention_r/) ⭐️ 7.0/10

一项技术分析比较了 Gated Deltanet（GDN）与 Kimi Delta Attention（KDA）在表达力上的差异，并提出 Complex KDA（CKDA）。作者指出，KDA 中的完整对角门可充当反射，从而在单步内完成二维旋转，但前提是将门的范围扩展到\[-1,1\]，并将 delta 规则的学习率扩展到\[0,2\]。理论结果表明，该形式能够表达任意正交的对角加秩一矩阵，并可跟踪 S3、S4 和 A5 群，但无法跟踪 S5。实验显示 CKDA 能学习 S3 和 S4，在音频续写任务上表现有前景，并在语言建模中训练稳定且与标准 KDA 具有竞争力。该工作以 Reddit 预印本形式发布，尚未经过同行评审，独立验证有限。

reddit · r/MachineLearning · /u/Yossarian\_1234 · 9月22日 10:34

**「背景」** Kimi Delta Attention（KDA）是 Kimi Linear 架构中的核心线性注意力模块，它扩展了 Gated DeltaNet，用更细粒度的门控机制替代了后者的标量保留（scalar retention），从而更有效地利用有限状态的 RNN 记忆。该架构由 Moonshot AI 提出，相关论文《Kimi Linear: An Expressive, Efficient Attention Architecture》于 2025 年 11 月发布在 arXiv（编号 2510.26692）。本次 Reddit 帖子正是在此基础上，进一步分析 KDA 与 Gated Deltanet 在表达能力上的差异，并提出扩展门控与学习率范围的 Complex KDA（CKDA）。

**「影响」** 若该分析成立，CKDA 可在保持 KDA 稳定性与效率（转移仍为对角加秩一且非扩张）的同时，达到 DeltaProduct\_2 的状态跟踪表达能力，从而为序列模型架构研究提供更强的表达力选项。不过该工作目前仅为 Reddit 预印本式帖子，尚无同行评审与独立验证，实际收益仍需进一步确认。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/pdf/2510.26692">KIMI LINEAR: AN EXPRESSIVE, EFFICIENT ATTENTION ARCHITECTURE</a></li>
<li><a href="https://arxiv.org/abs/2510.26692">[2510.26692] Kimi Linear: An Expressive, Efficient Attention Architecture</a></li>
<li><a href="https://blog.doubleword.ai/you-could-have-come-up-with-kimi-delta-attention">You Could Have Come Up With Kimi Delta Attention | Doubleword</a></li>
<li><a href="https://arxiv.org/abs/2609.24797">[2609.24797] Complex KDA : Understanding and Enhancing the...</a></li>
<li><a href="https://huggingface.co/papers/2609.24797">Paper page - Complex KDA : Understanding and Enhancing the...</a></li>

</ul>
</details>

**标签**: `#machine-learning`, `#attention-mechanisms`, `#sequence-modeling`, `#deep-learning-theory`, `#research`

---

<a id="item-tech-news-14"></a>
### [Templar 模拟流水线并行训练中的阶段跳过容错](https://www.reddit.com/r/MachineLearning/comments/1wnd5ys/simulating_fault_tolerance_with_stage_skipping_in/) ⭐️ 7.0/10

Templar 在 Crucible 分布式预训练平台中探索容错机制，目标是在某个流水线阶段离线时仍让健康 worker 继续训练。Crucible 将数据并行副本与流水线并行结合，每个副本持有完整模型并拆分为多个阶段，通过 SparseLoCo 在副本间交换压缩更新，并用流水线压缩减少阶段边界通信。结合阶段跳过策略后，当内部阶段离线时，激活和梯度会绕过该阶段多个步骤，健康阶段继续处理 token 而不等待恢复。模拟使用 178M 模型、8 个副本、每副本 4 个阶段，在每副本每全局步 1% 失败概率下，即使每次模拟中断移除一个阶段达 6 个全局步，验证损失仍接近无失败基线。使用流水线压缩时，跨层共享的固定投影进一步提升了鲁棒性，作者推测共享投影器对齐了跨阶段表示，使绕过更少破坏性，但该解释仍是假设。这些结果指向在更广泛的算力池（包括不可靠 worker 和 spot 实例）上训练，但属于对阶段失败学习效果的模拟，而非物理 worker 替换或生产成本节省的测量。

reddit · r/MachineLearning · /u/covenant\_ai · 9月22日 15:47

**「背景」** Crucible 是 Templar 的分布式预训练平台，结合数据并行副本与流水线并行：每个副本持有完整模型并拆分为多个阶段，SparseLoCo 在副本间交换压缩更新，流水线压缩则降低阶段边界的通信量。Templar 此前已发布 Crucible 的经济性验证，称其通过全球分布式 GPU 以每百万 token 0.1202 美元处理了 50B token 的 8B 模型，比集中式 AWS A100 集群低 29%。SparseLoCo 是 Templar 提出的通信高效训练技术，前身为 CCLoco。

**「影响」** 若该模拟结论成立，Crucible 这类流水线并行预训练平台可将不可靠的 spot 实例纳入训练资源池，在单副本约 1% 故障率下仍保持接近无故障基线的验证损失。不过这是对学习效果的模拟，并未验证物理 worker 替换或生产环境的成本节省，实际收益仍待生产验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.tplr.ai/publications/blog/introducing-crucible">Introducing Crucible and An Economic Validation of Globally...</a></li>
<li><a href="https://www.galaxy.com/insights/research/decentralized-ai-training">Decentralized AI Training : How Crypto Can Power Open AI | Galaxy</a></li>
<li><a href="https://tokenintel.org/learn/protocols/decentralized-training-landscape.html">Decentralized Training Landscape | TokenIntel Learn</a></li>
<li><a href="https://arxiv.org/pdf/2301.11913">SWARM Parallelism : Training Large Models Can Be Surprisingly...</a></li>
<li><a href="https://www.pythontutorials.net/blog/how-does-asynchronous-training-work-in-distributed-tensorflow/">How Does Asynchronous Training Work in... — pythontutorials.net</a></li>
<li><a href="https://www.researchgate.net/publication/358428027_Scheduling_ML_training_on_unreliable_spot_instances">(PDF) Scheduling ML training on unreliable spot instances</a></li>

</ul>
</details>

**标签**: `#distributed-training`, `#fault-tolerance`, `#pipeline-parallelism`, `#machine-learning-systems`, `#pre-training`

---

<a id="item-tech-news-15"></a>
### [Qonto 发布 QontoFAQ 信息检索基准与相关性指标](https://www.reddit.com/r/MachineLearning/comments/1wn9xqk/qontofaq_a_better_information_retrieval_benchmark/) ⭐️ 7.0/10

Qonto 推出了 QontoFAQ，这是一个信息检索基准，并配套提出了一种与文档相关性更成比例的新指标，用于评估嵌入模型。该工作针对检索基准可能被模型“刷榜”（benchmaxxing）的问题，目标是把评测尽可能贴近“找到能回答产品问题的正确文章”这一实际需求。Qonto 构建了相应的基准数据集，并发布了 Medium 文章说明方法，同时在 GitHub 开源了相关代码。该贡献面向产品 FAQ 这一特定领域，而非通用范式的转变，但对机器学习与信息检索实践者具有参考价值。

reddit · r/MachineLearning · /u/espadrine · 9月22日 13:45

**「背景」** 信息检索（IR）基准长期被用作衡量嵌入模型与检索系统进步的主要手段，但已有研究指出，部分基准的改进可能只是表面上的，因为多数流行基准聚焦于特定任务，未必能反映真实检索目标。Qonto 是一家总部位于巴黎的金融科技公司，此次发布的 QontoFAQ 针对产品 FAQ 这一具体场景，试图用更贴近“找到能回答产品问题的文章”这一目标的评估方式，来缓解基准被过度优化（benchmaxxing）的问题。

**「影响」** 对于需要评估嵌入模型在特定产品 FAQ 场景下检索效果的开发者，QontoFAQ 提供了可复用的基准数据集与开源代码，并引入按文档相关性比例衡量的新指标，以缓解现有检索基准被模型“刷榜”的问题。不过该基准聚焦于 Qonto 自身的产品 FAQ 领域，其结论能否推广到其他领域或通用检索任务尚不明确。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://paperswithcode.co/paper/2212.01340">Moving Beyond Downstream Task Accuracy for Information Retrieval ...</a></li>
<li><a href="https://dealroom.co/companies/regate-by-qonto/">Regate by Qonto — venture-backed company profile | Dealroom</a></li>

</ul>
</details>

**标签**: `#information-retrieval`, `#benchmark`, `#embeddings`, `#evaluation-metrics`, `#open-source`

---

<a id="item-tech-news-16"></a>
### [OpenAI 在高等研究院设立数学与 AI 顾问组](https://techcrunch.com/2026/09/21/openai-forms-math-advisory-group-as-its-ai-resolves-more-than-100-open-problems/) ⭐️ 7.0/10

OpenAI 于 9 月 21 日宣布，在普林斯顿高等研究院设立独立的数学与人工智能顾问组，首批成员为 9 名数学家，职责是评估研究成果、协调发布并提供建议。该顾问组无权改变 OpenAI 的研究进度，高等研究院也不参与 AI 公司的决策。OpenAI 同时声称其内部模型已解决 100 多个数学未决问题，而此前有 25 名菲尔兹奖得主批评 AI 实验室争相攻克著名数学难题。

telegram · zaihuapd · 9月22日 03:00

**「背景」** OpenAI 于 2026 年 9 月 21 日发布公告，宣布与一个独立的“数学与人工智能顾问组”合作，指导新兴 AI 成果的评审与传播，该顾问组设在普林斯顿高等研究院。据 TechCrunch 报道，该顾问组首批有 9 名数学家，负责评估研究成果、协调发布并提供建议，但无权改变 OpenAI 的研究进度，研究院也不参与 AI 公司的决策。此前，OpenAI 内部一个自 8 月 28 日开始训练的模型在宣布解决 Navier-Stokes 千禧年大奖难题两周后，又声称解决了 100 多个长期未决的数学问题，而 25 名菲尔兹奖得主曾批评 AI 实验室争相攻克著名数学难题。

**「影响」** 该顾问组仅具建议职能，无权改变 OpenAI 的研究进度，高等研究院也不参与 AI 公司决策，因此短期内不会对 OpenAI 的模型研发节奏或成果发布形成实质约束。对数学界而言，OpenAI 关于模型已解决 100 多个未决问题（含 Navier-Stokes 千禧年难题）的说法尚未经独立验证，可能进一步加剧 25 名菲尔兹奖得主此前对 AI 实验室争相攻克著名难题的批评。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://openai.com/index/advisory-group-on-mathematics-and-ai/">Advisory Group on Mathematics and Artificial Intelligence</a></li>
<li><a href="https://techcrunch.com/2026/09/21/openai-forms-math-advisory-group-as-its-ai-resolves-more-than-100-open-problems/">OpenAI forms math advisory group as its AI resolves more than ...</a></li>
<li><a href="https://www.explainx.ai/blog/openai-mathematics-advisory-group-100-problems-2026">OpenAI: 100+ Math Problems Solved, New Advisory Group ...</a></li>
<li><a href="https://www.explainx.ai/blog/openai-mathematics-advisory-group-100-problems-2026">OpenAI: 100+ Math Problems Solved, New Advisory Group ...</a></li>
<li><a href="https://tech-insider.org/openai-100-math-problems-solved-24-days-2026/">OpenAI Claims 100+ Math Problems Solved in 24 Days</a></li>
<li><a href="https://www.msn.com/en-xl/technology/artificial-intelligence/openai-solves-100-unsolved-math-problems-forms-advisory-group/ar-AA2cIpVG">OpenAI solves 100+ math problems, establishes math advisory group</a></li>

</ul>
</details>

**标签**: `#AI research`, `#mathematics`, `#OpenAI`, `#AI governance`, `#research community`

---

<a id="item-tech-news-17"></a>
### [美国提议与中方建立 AI 事件通报渠道](https://x.com/rohanpaul_ai/status/2102254209597157548) ⭐️ 7.0/10

美国在 9 月 20 日纽约会谈中向中方提议建立人工智能事件通报渠道，用于通报达到国家安全门槛的 AI 相关事件，美国财长贝塞特称此举旨在提高两国间的透明度。双方还计划围绕共同风险建立定期的美中 AI 对话。据中方官方声明，双方确认讨论了 AI 相关议题，但未明确表示接受美方这一具体机制。目前该提议尚未成为双边协议或条约。

telegram · zaihuapd · 9月22日 06:48

**「背景」** 美中两国在人工智能治理与国家安全领域的沟通机制长期缺乏正式渠道，此前多依赖外交或经贸对话间接涉及相关议题。2026 年 9 月 20 日，美国财长贝森特与中国副总理何立峰在纽约举行经济会谈，美方在会上提出建立 AI 安全通报机制，即两国官员之间的直接沟通渠道，用于就涉及国家安全的 AI 事件相互通报。据《纽约时报》和半岛电视台报道，双方讨论了建立此类通报系统的必要性，但中方官方声明仅确认讨论了 AI 相关议题，未明确接受该具体机制，目前该提议尚未成为双边协议或条约。

**「影响」** 若该机制最终落地，将为美中在国家安全相关 AI 事件上提供一条直接通报渠道，有助于降低误判风险；但由于中方尚未确认接受，且提议不具约束力，短期内对开发者和企业的实际合规要求不会立即改变。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.politico.com/news/2026/09/22/new-ai-safety-mechanism-is-a-channel-between-bessent-and-his-chinese-counterpart-01086967">New AI safety ‘mechanism’ is a channel between Bessent and his...</a></li>
<li><a href="https://www.aljazeera.com/economy/2026/9/20/us-china-open-high-level-talks-ahead-of-trump-xi-summit">US proposes AI safety notification mechanism in talks with China</a></li>
<li><a href="https://www.nytimes.com/2026/09/20/business/us-china-ai-warning-system-national-security.html">U . S . and China Discuss System to Warn of A . I . National Security Issues</a></li>
<li><a href="https://www.brookings.edu/articles/from-geneva-ai-security-and-us-china-dialogue/">From Geneva: AI, security, and US-China dialogue - Brookings</a></li>
<li><a href="https://www.iiss.org/online-analysis/online-analysis/2026/06/military-ai-governance-under-strain-the-uschina-dialogue/">Military AI governance under strain: the US–China dialogue</a></li>

</ul>
</details>

**标签**: `#AI governance`, `#US-China relations`, `#AI policy`, `#national security`

---

## 科技博客

<a id="item-tech-blog-1"></a>
### [树莓派限制内存升级：作者为何认为无伤大雅](https://hackaday.com/2026/09/22/raspberry-pi-ram-restrictions-no-big-deal-frankly/) ⭐️ 7.0/10

rss · Hackaday · 9月22日 17:00

**「背景」** 树莓派基金会在 2024 年 9 月前后悄悄修改了引导程序（bootloader），把设备锁定在出厂时的内存容量，Pi 4、Pi 5 与计算模块都受影响。这一改动在 2026 年因 Jeff Geerling 的一段视频重新引发争议，许多人认为它背离了树莓派面向硬件黑客的开放形象。

**「方案」** 作者 Arya Voronova 的结论是：这根本不算大事。她指出该限制只阻止换用不同容量的内存芯片，并不妨碍用同规格芯片维修；而且引导程序存放在 SPI 闪存中，可通过内置 mask ROM 和 rpiboot 重新刷写，只要降级到已知可用的 2024-09-10 版本，改装过内存的板子就能正常工作——会换 BGA 内存的人显然也会刷引导程序。她查阅了此后约 15 个版本的更新日志，认为 NVMe 启动等关键功能早已具备，降级最多损失一些体验性修复，并顺带批评 2024-09-23 的更新说明压根没提这次内存检查。至于动机，基金会称是为打击第三方经销商把低容量计算模块换上来源不明、稳定性未知的内存后加价转卖；作者花 15 到 20 分钟在 GitHub 上就找到 15 位买家抱怨买到这种“升级版”后无法启动，且卖家往往否认改装，她据此认为这类欺诈确实存在，而限制对普通用户和新手的保护远大于对极少数改装玩家的妨碍。她也承认自己无法证实基金会的说法，并指出降级会失去后续引导程序修复、维修备件选择受限。

**「启示」** 作者的核心论点是：树莓派从来就不是可自由改造的开放硬件，这次内存限制延续了它一贯的封闭传统，而它真正保护的是那些不会自己换内存、却可能被不良商家坑害的新手用户。

**标签**: `#raspberry-pi`, `#bootloader`, `#hardware-hacking`, `#supply-chain-fraud`, `#single-board-computers`

---