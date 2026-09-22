---
layout: default
title: "Horizon Summary: 2026-09-22 (ZH)"
date: 2026-09-22
lang: zh
---

> 从 68 条内容中筛选出 9 条重要资讯。

---

**科技新闻**
1. [小米开源 MiMo-V2.6 系列模型](#item-tech-news-1) ⭐️ 8.0/10
2. [NASA 火星采样返回任务据报取消](#item-tech-news-2) ⭐️ 8.0/10
3. [M6 Mac mini 实测：多核追平 Intel 旗舰，GPU 大幅提升](#item-tech-news-3) ⭐️ 8.0/10
4. [Linear 重构 CI 应对 AI 编码吞吐量](#item-tech-news-4) ⭐️ 7.0/10
5. [mathmain npm 包加密加载器分析](#item-tech-news-5) ⭐️ 7.0/10
6. [xAI 发布 Grok 4.7，社区关注定价与性能](#item-tech-news-6) ⭐️ 7.0/10
7. [Cloudflare Python Workers 正式发布](#item-tech-news-7) ⭐️ 7.0/10
8. [TypeSafe AI 发布 Jev：输出类型化概率决策的“决策模型”](#item-tech-news-8) ⭐️ 7.0/10

**科技博客**
1. [美国陆军 MH-1A 浮动核电站的兴衰](#item-tech-blog-1) ⭐️ 6.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [小米开源 MiMo-V2.6 系列模型](https://mimo.xiaomi.com/mimo-v2-6) ⭐️ 8.0/10

小米 MiMo 团队于 9 月 22 日发布并开源 MiMo-V2.6 系列，包括旗舰级 MiMo-V2.6-Pro（1.02T 总参数/42B 激活参数）和兼顾效率与成本的 MiMo-V2.6-Flash（309B 总参数/15B 激活参数），两款均为原生全模态模型，覆盖编程、电脑操作、3D 场景与视听内容创作等智能体任务。面向高吞吐场景的 Pro-UltraSpeed 正在逐步推出，小米称其在同等质量下输出速度最高可提升 20 倍；网页体验、API 和 Hugging Face 模型入口已开放。MiMo 负责人罗福莉称，这可能是开源模型团队迄今按算力计规模最大的单次强化学习训练之一，团队以 MixRL 联合训练中等难度、可验证的代码和智能体任务，再将游戏、3D 和主观评测等难验证或超长任务单独训练，通过 MOPD 合并能力。团队还开放了由 MiMo 训练轨迹蒸馏的 Qwen 模型、7000 个多样化环境和完整强化学习框架，罗福莉个人认为其研发与工程挑战超过她曾参与的 DeepSeek R1。

hackernews · volf\_ · 9月21日 20:12 · [社区讨论](https://news.ycombinator.com/item?id=49792730)

**「背景」** 小米 MiMo 是小米自 2025 年 4 月发布 MiMo-7B 起逐步构建的大语言模型系列，目前通过 API 向开发者提供服务。MiMo-V2.6 系列延续了该系列的开放路线，官方称已完全开源 Pro 与 Flash 的权重和技术报告，并同步发布由训练轨迹蒸馏的 MiMo-V2.6-Distill-Qwen-9B 及配套强化学习研究资源。

**「影响」** 对开发者而言，MiMo-V2.6-Pro 与 Flash 的权重、技术报告及强化学习资源已完全开源，并同步发布 MiMo-V2.6-Distill-Qwen-9B，可直接用于二次开发与 RL 研究；Pro 在 Artificial Analysis Intelligence Index 上得分 46.32，超过 Kimi K3 和 Qwen3.8 Max，且 API 定价维持 V2.5 系列水平。

**「社区讨论」** 评论者普遍赞赏小米在训练透明度上的做法，rao-v 特别提到训练期间公开的实时仪表盘是极好的学习与教学工具，技术报告也异常详尽。lwansbrough 表示相比美国模型，如今更看好中国模型，主要原因是可负担性。stymaar 补充了两款模型在 Hugging Face 上的 RL 版本链接，simonw 则用鹈鹕测试展示了 Flash 与 Pro 的生成效果。nemothekid 观察到这些模型的前端设计示例中频繁出现“01 - 大写文本”的排版母题。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Xiaomi_MiMo">Xiaomi MiMo - Wikipedia</a></li>
<li><a href="https://mimo.mi.com/docs/en-US/news/latest/v2-6">Xiaomi MiMo-V2.6 Series: 3 New Models Officially Released</a></li>
<li><a href="https://mimo.mi.com/docs/news/latest/v2-6">Xiaomi MiMo-V2.6 Series: 3 New Models Officially Released</a></li>
<li><a href="https://mimo.xiaomi.com/mimo-v2-6">MiMo-V2.6 | Xiaomi</a></li>

</ul>
</details>

**标签**: `#open-source AI`, `#large language models`, `#model release`, `#machine learning`, `#Xiaomi`

---

<a id="item-tech-news-2"></a>
### [NASA 火星采样返回任务据报取消](https://www.science.org/content/article/nasa-s-mars-sample-return-mission-dead) ⭐️ 8.0/10

据 Science 报道，NASA 的火星采样返回（Mars Sample Return）任务已被取消。相关讨论指出，该任务架构此前已被 NASA 内部评估为耗资约 80 亿至 110 亿美元、样本可能要到 2040 年前后才能运回地球的项目，成本与进度问题成为取消的主要原因。批评者认为，JPL 主导的设计围绕 Ariane 64 等现役火箭展开，而未借助 Starship 或 New Glenn 等新型运载工具来降低成本、提升运力。与此同时，中国的天问三号（Tianwen-3）计划于 2028 年发射并尝试火星采样返回，形成直接竞争。

hackernews · Muhammad523 · 9月21日 19:14 · [社区讨论](https://news.ycombinator.com/item?id=49791939)

**「背景」** 火星样本返回（Mars Sample Return, MSR）是 NASA 与欧洲航天局合作的一项计划，旨在将“毅力号”火星车自 2021 年起在火星上采集并封存的岩石和土壤样本带回地球。2023 年 9 月，独立审查委员会发布报告后，NASA 承认原架构成本可能高达 80 亿至 110 亿美元，样本最早也要到 2040 年前后才能返回。2025 年 1 月，NASA 提出将成本降至约 70 亿美元的最终方案，但国会随后终止了对该计划的支持，导致“毅力号”的样本至今仍滞留在火星，没有获批的回收任务。

**「影响」** 若 NASA 火星采样返回任务确实取消，中国计划于 2028 年前后发射的天问三号将成为近期最有可能率先完成火星采样返回的任务，其目标是在 2031 年前后把不少于 500 克火星样品带回地球。

**「社区讨论」** 评论普遍认为取消在财务上说得通，并批评 JPL 将项目推高至 110 亿美元、拖到 2040 年，且未围绕 Starship 或 New Glenn 等新火箭重新设计。有前 ExoMars 项目参与者以该任务多次推迟至 2028 年为例，表达对深空探测前景的担忧但仍希望任务日后重启；也有人强调中国天问三号将于 2028 年尝试火星采样返回，构成平行竞争。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.science.org/content/article/nasa-s-mars-sample-return-mission-dead">NASA&#x27;s Mars Sample Return mission is dead - Science | AAAS</a></li>
<li><a href="https://www.spacedaily.com/t-perseverance-mars-sample-return-congress-cancelled-2026/">The programme to return Perseverance&#x27;s rock samples from Mars was ...</a></li>
<li><a href="https://www.nasa.gov/news-release/nasa-sets-path-to-return-mars-samples-seeks-innovative-designs/">NASA Sets Path to Return Mars Samples, Seeks Innovative Designs</a></li>
<li><a href="https://en.wikipedia.org/wiki/Tianwen-3">Tianwen-3 - Wikipedia</a></li>
<li><a href="https://english.www.gov.cn/news/202507/23/content_WS68803af3c6d0868f4e8f45d3.html">Chinese scientist details first planned Mars sample-return mission Tianwen-3</a></li>
<li><a href="https://www.space.com/astronomy/mars/china-on-track-to-launch-mars-sample-return-mission-in-2028-if-accurate-this-represents-a-sputnik-moment">China on track to launch Mars sample-return mission in 2028: &#x27;If accurate, this represents a Sputnik moment&#x27; | Space</a></li>

</ul>
</details>

**标签**: `#space`, `#nasa`, `#mars-sample-return`, `#engineering-programs`, `#china-space`

---

<a id="item-tech-news-3"></a>
### [M6 Mac mini 实测：多核追平 Intel 旗舰，GPU 大幅提升](https://www.bilibili.com/video/BV1JQhz6fE1x) ⭐️ 8.0/10

据极客湾 Geekerwan 的实测报告，苹果新款 M6 Mac mini 的 CPU 采用 2+4+6 核心配置，基于台积电 N2 工艺，超大核频率为 4.8 GHz。其多核性能已与 Intel Panther Lake X9 388H 打平，单核继续领先，较 M4 提升超过 50%。GPU 升级至 12 核，光线追踪和游戏表现大幅增强，游戏性能接近 M4 的两倍。功耗方面，CPU 满载约 25W，双烤整机约 65W。上述数据来自单一来源的基准测试汇总，尚未经过独立验证。

telegram · zaihuapd · 9月21日 16:32

**「背景」** 苹果 M 系列芯片自 2020 年首发以来，按代际更新并逐步从 5nm 过渡到更先进制程，Mac mini 一直是首批搭载新芯片的机型之一。此次 M6 采用台积电 N2（2nm）工艺，是苹果首款 2nm 处理器，CPU 架构调整为 2+4+6 核并配备 12 核 GPU。作为对比，Intel Panther Lake 是其面向移动/桌面市场的新一代平台，X9 388H 为该系列旗舰型号。

**「影响」** 若该实测数据成立，M6 Mac mini 将在多核性能上追平 Intel Panther Lake 旗舰 X9 388H，而后者在独立测试中已较上代 Core Ultra 9 285H 多核提升近 21%，这意味着苹果在桌面级多核竞争中首次与 Intel 最新旗舰处于同一水平。不过这些数据来自单一来源的未独立验证跑分，实际量产表现仍待确认。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.notebookcheck.net/Compact-powerhouse-with-the-2-nm-M6-SoC-Apple-Mac-mini-2026-Review.1401148.0.html">Compact powerhouse with the 2 nm M 6 SoC - Apple Mac mini 2026...</a></li>
<li><a href="https://www.techpowerup.com/345531/intel-core-ultra-x9-388h-passmark-results-show-impressive-gains">Intel Core Ultra X9 388H PassMark Results Show Impressive Gains | TechPowerUp</a></li>
<li><a href="https://wccftech.com/intel-core-ultra-x9-388h-benchmarked-on-geekbench/">Intel Core Ultra X9 388H Flagship Panther Lake CPU Benchmarks Leak: Trades Blows With Ryzen AI Max+ 395 In Single-Core &amp; 21% Faster Vs Core Ultra 9 285H</a></li>
<li><a href="https://www.tomsguide.com/computing/we-just-benchmarked-the-intel-core-ultra-x9-388h-amd-is-officially-on-notice">We just benchmarked the Intel Core Ultra X9 388H — AMD is officially on notice | Tom&#x27;s Guide</a></li>

</ul>
</details>

**标签**: `#Apple Silicon`, `#hardware`, `#benchmarks`, `#GPU`, `#semiconductor`

---

<a id="item-tech-news-4"></a>
### [Linear 重构 CI 应对 AI 编码吞吐量](https://linear.app/now/ci-bottleneck-reworked) ⭐️ 7.0/10

Linear 发布工程文章，介绍其如何重构 CI 流水线以跟上 AI 辅助编码带来的吞吐量增长。核心改动是将工作负载从 GitHub Actions 迁移到第三方 runner，这些机器拥有更快的 CPU、更高性能的存储和更好的缓存基础设施，从而在相同流水线上获得更快的执行速度。文章将 CI 视为 AI 编码普及后的新瓶颈，并引发社区对 CI、代码审查与测试环节瓶颈的讨论。

hackernews · julian\_digital · 9月21日 19:23 · [社区讨论](https://news.ycombinator.com/item?id=49792067)

**「背景」** GitHub Actions 是 GitHub 内置的持续集成与持续交付（CI/CD）服务，因与代码托管平台深度集成而被广泛采用，但其运行速度与稳定性长期受到开发者诟病。Linear 是一家提供项目管理与问题追踪工具的软件公司，其工程团队在 AI 辅助编码大幅提升代码产出后，发现原有的 CI 流水线成为新的瓶颈。为此，Linear 将工作负载从 GitHub Actions 迁移到第三方运行器，这些运行器提供更快的 CPU、更高性能的存储和更好的缓存基础设施，据其对比，迁移前后两天内平均任务耗时缩短了 34%。

**「影响」** Linear 将 CI 工作负载从 GitHub Actions 迁移到第三方运行器的做法，与开发者因可靠性、性能和定价问题而离开 GitHub Actions 的更广泛趋势一致，这可能促使更多团队重新评估其 CI 平台选择。

**「社区讨论」** 评论者普遍认同 GitHub Actions 虽方便但速度慢、可靠性存疑，预计会有更多组织迁移到其他流水线方案。也有人指出真正的瓶颈未必是 CI，而是人工测试与判断产品是否符合用户预期；另有评论质疑整体开发提速并未带来产品体验的明显改善，并调侃 Linear 自身功能演进。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://runtimewire.com/article/linear-reworks-ci-ai-coding-verification-bottleneck">Linear reworks CI as coding agents make validation the ...</a></li>
<li><a href="https://news.lavx.hu/article/ai-coding-has-made-ci-a-bottleneck-so-we-reworked-ours-to-keep-up">AI coding has made CI a bottleneck, so we reworked ours to ...</a></li>
<li><a href="https://hn.nuxt.dev/item/49792067">Nuxt HN | AI coding has made CI a bottleneck, so we reworked ...</a></li>
<li><a href="https://www.webpronews.com/developers-ditch-github-actions-over-reliability-and-pricing-issues/">Developers Ditch GitHub Actions Over Reliability and Pricing ...</a></li>
<li><a href="https://testkube.io/blog/great-github-migration-developers-seeking-alternatives">GitHub vs Alternatives: Why Teams Are Switching - testkube.io</a></li>
<li><a href="https://www.besthub.dev/articles/why-github-s-reliability-issues-are-driving-users-away-64a354fabefd">Why GitHub’s Reliability Issues Are Driving Users Away</a></li>

</ul>
</details>

**标签**: `#ci-cd`, `#ai-coding`, `#developer-tools`, `#github-actions`, `#software-engineering`

---

<a id="item-tech-news-5"></a>
### [mathmain npm 包加密加载器分析](https://safedep.io/mathmain-encrypted-loader/) ⭐️ 7.0/10

安全公司 SafeDep 发布分析文章，解释 npm 包 mathmain 为何使用加密加载器，揭示了一种针对性的供应链攻击机制。该恶意包以特定 3x3 矩阵作为触发条件，只有在满足该条件时才会解密并执行后续载荷。JFrog 此前已破解其加密密码，使后续分析成为可能，而社区成员指出第二阶段载荷实际上完全失效。讨论还延伸到模块格式安全，认为 CommonJS 的动态 require\(\) 难以被 grep 和静态分析，而 ESM 的 import 更易审查。

hackernews · abhisek · 9月21日 18:33 · [社区讨论](https://news.ycombinator.com/item?id=49791378)

**「背景」** npm 是全球最大的 JavaScript 软件包注册表，托管超过两百万个包，因此常被攻击者用作供应链攻击的载体。此次事件涉及的包是 mathmain@1.0.0，它伪装成一个数学求解库，却在可见加载器中隐藏了加密代码，只有调用方传入能生成正确密码的矩阵数据时才会解密执行。JFrog 的研究人员此前破解了该密码，才使后续分析得以展开。

**「影响」** 该事件表明，恶意 npm 包可通过加密加载器与特定 3×3 Pascal 矩阵触发条件隐藏远程访问植入物，使依赖 mathjs 等流行库的开发者面临难以通过常规代码审查发现的供应链风险。

**「社区讨论」** 评论者指出文章需要读很久才提到 JFrog 破解密码的工作，并质疑为何选择特定 3x3 矩阵作为触发条件，猜测攻击者可能在寻找进行特定数值分析的目标。有人提到第二阶段载荷完全失效，显得更加反常；也有观点认为这提醒人们应淘汰 CommonJS，因为其动态 require\(\) 难以被 grep 和静态分析，而 ESM 的 import 更易审查。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://safedep.io/mathmain-encrypted-loader/?ref=upstract.com">Why Does an npm Math Library Need an Encrypted Loader ?</a></li>
<li><a href="https://news.ycombinator.com/item?id=49791378">Why Does an NPM Math Library Need an Encrypted Loader ?</a></li>
<li><a href="https://www.npmjs.com/">npm | Home</a></li>
<li><a href="https://safedep.io/mathmain-encrypted-loader/?ref=upstract.com">Why Does an npm Math Library Need an Encrypted Loader ?</a></li>
<li><a href="https://news.ycombinator.com/item?id=49791378">Why Does an NPM Math Library Need an Encrypted Loader ?</a></li>

</ul>
</details>

**标签**: `#supply-chain-security`, `#npm`, `#malware-analysis`, `#javascript`, `#commonjs`

---

<a id="item-tech-news-6"></a>
### [xAI 发布 Grok 4.7，社区关注定价与性能](https://x.ai/news/grok-4-7) ⭐️ 7.0/10

xAI 发布了新一代前沿模型 Grok 4.7，引发 Hacker News 上关于其定价、速度、基准测试定位与竞争格局的讨论。据社区评论，Grok 4.7 的权重比 Grok 4.6 多约 40%，但价格保持不变，为每百万输入 token 2 美元、每百万输出 token 6 美元。有评论者指出该模型发布比原定时间推迟了近两周，且赶在传闻中的 Opus 5.5 发布前一天推出，并对其基准表现持怀疑态度。另有用户反馈 Grok 4.7 明显更慢、更贵，感觉像是通过消耗更多 token 来提升基准分数，但尚不清楚其是否真正跨过了实用智能门槛。

hackernews · meetpateltech · 9月21日 15:50 · [社区讨论](https://news.ycombinator.com/item?id=49788838)

**「背景」** Grok 4.7 是 xAI 于 2026 年 9 月 21 日发布的新一代前沿大模型，可通过 Cursor、Grok Build 和 xAI API 访问，标准 API 定价为每百万输入 token 2 美元、每百万输出 token 6 美元，与上一代 Grok 4.6 保持一致。据外部报道，该模型拥有 2.1 万亿参数，并使用了 SpaceX 工程数据集进行训练，同时改进了安全护栏。在基准测试方面，Grok 4.7 在 CursorBench 和 AA-Briefcase 上略落后于竞品，而在 Terminal-Bench 4.0 的智能体编程任务中仅得 26%，明显低于 GPT-6 Astra 的 60% 和 Claude Fable 5.1 的 55%。

**「影响」** 对成本敏感的高并发智能体工作流用户而言，Grok 4.7 在权重增加约 40% 的情况下维持每百万输入 2 美元、输出 6 美元的定价，可能使其在单位任务成本上更具吸引力；但社区反馈指出其速度更慢，且第三方对比显示在 CursorBench 等基准上仍落后于 Fable 5.1 max，Opus 5 max 得分接近但单任务评估成本更高。

**「社区讨论」** 社区对 Grok 4.7 的评价存在分歧：部分用户认为其发布节奏加快、质量持续改善，并期待今年晚些时候的 Grok 5 带来更大提升；但也有用户表示 Grok 4.6 在实际编码和代理工作流中表现不佳，而 4.7 更慢更贵，是否达到可用水平仍不明确。还有评论者对基准测试本身表示怀疑，并提到在 OpenRouter 与 xAI API 直接调用之间观察到推理 token 数量的异常差异。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://the-decoder.com/xai-launches-grok-4-7-at-bargain-prices-but-benchmarks-reveal-a-wide-gap-to-claude-and-gpt-6/">xAI launches Grok 4.7 at bargain prices, but benchmarks reveal a wide gap to Claude and GPT-6</a></li>
<li><a href="https://www.androidheadlines.com/2026/09/grok-4-7-ai-launch-coding-upgrades-pricing.html">Grok 4.7 Brings Big Coding Upgrades to Challenge Claude AI at Unchanged Pricing</a></li>
<li><a href="https://kingy.ai/blog/grok-4-7-release-features-pricing-access/">Grok 4.7 Is Out: New Features, Pricing and How to Try It</a></li>
<li><a href="https://kingy.ai/blog/grok-4-7-benchmarks-specs-frontier-comparison/">Grok 4.7 Benchmarks vs GPT, Claude &amp; Gemini</a></li>

</ul>
</details>

**标签**: `#llm`, `#xai`, `#model-release`, `#benchmarks`, `#ai-industry`

---

<a id="item-tech-news-7"></a>
### [Cloudflare Python Workers 正式发布](https://blog.cloudflare.com/python-workers-ga/) ⭐️ 7.0/10

Cloudflare 宣布其 Workers 平台上的 Python 支持结束两年预览期，正式进入通用可用（GA）阶段，成为该开发者平台上“一等公民、完全支持”的语言。其实现方式是在 WebAssembly 上运行 CPython，并通过 PEP 783 标准化 PyEmscripten 包支持，同时向上游 HTTP 客户端（如 urllib3 和 Requests）贡献代码，使其能在 WebAssembly 环境中直接通过 JavaScript 的 fetch API 发起请求。这一发布意味着开发者可以在 Cloudflare 的边缘无服务器环境中以稳定方式部署 Python 应用，并复用标准 Python 包生态。

hackernews · torutofu · 9月21日 13:38 · [社区讨论](https://news.ycombinator.com/item?id=49787142)

**「背景」** Cloudflare 的 Python Workers 在预览约两年后进入正式可用阶段，其核心思路是把 CPython 编译到 WebAssembly 上运行，从而在 Workers 的 JavaScript 运行时中执行 Python 代码。为了让 Python 包生态在 WebAssembly 环境中可用，Cloudflare 提出并推动 PEP 783 获得通过，该标准定义了 PyEmscripten，用于把 Python 包交叉编译为 WebAssembly，并已为 cibuildwheel 添加相应支持。此前 urllib3 等 HTTP 客户端已通过 Pyodide/Emscripten 及 JSPI 支持为这一路线打下基础。

**「影响」** 对 Python 开发者而言，Cloudflare Workers 现在无需 JavaScript 胶水代码即可直接运行 CPython 应用，且通过 PEP 783 标准化的 PyEmscripten 包支持降低了迁移成本。不过，社区讨论指出部分架构限制仍然存在，实际可用性可能因具体应用场景而异。

**「社区讨论」** 社区讨论总体认可这一进展，Wasmer 的 syrusakbary 称赞 Cloudflare 在包支持方面取得实质进步，尤其是 PyEmscripten 通过 PEP 783 标准化，但也指出部分架构层面的问题仍待解决。urllib3 维护者 illia-v 补充了上游贡献的背景，说明相关 Pyodide/Emscripten 与 JSPI 支持由外部贡献者实现并获得资助，而非维护者本人。另有评论将此事与 2008 年的 Google App Engine 相类比，认为某种意义上是回归原点。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blog.cloudflare.com/python-workers-ga/">Python Workers are now generally available | Cloudflare Blog</a></li>
<li><a href="https://daily.dev/posts/python-workers-are-now-generally-available-zvtxnlpob">Python Workers are now generally available | daily.dev</a></li>
<li><a href="https://blog.cloudflare.com/python-workers-ga/">Python Workers are now generally available | Cloudflare Blog</a></li>
<li><a href="https://runtimewire.com/article/cloudflare-python-workers-ga-no-javascript-glue">Cloudflare makes Python first-class in Workers, no JavaScript ...</a></li>

</ul>
</details>

**标签**: `#python`, `#webassembly`, `#cloudflare`, `#serverless`, `#open-source`

---

<a id="item-tech-news-8"></a>
### [TypeSafe AI 发布 Jev：输出类型化概率决策的“决策模型”](https://simonwillison.net/2026/Sep/21/jev/) ⭐️ 7.0/10

TypeSafe AI 上周发布了 Jev，这是其称为“System One 模型”的新类别模型的第一个实例，Simon Willison 更倾向于称之为“决策模型”。Jev 仍接受文本输入，但不输出文本，而是返回对应类别、是/否问题、评分的浮点数及置信度：是/否问题（内部称 Noul，源自伯努利分布）返回 0 到 1 的置信度，选择题返回各选项的概率分布，评分题返回区间内的浮点分数。它只对输入计费、输出免费，首个模型输入价格为每百万 token 0.042 美元，低于 OpenAI GPT-5 Nano 的 0.05 美元；API 接受单个 state（字符串、字符串数组或名值对）并并行评估多个问题，适合分类、垃圾邮件检测、标签建议、排序和搜索重排等任务。Willison 指出 Jev 进一步走向黑箱，只返回浮点数而不提供理由，因此偏见风险突出，评估和结构化实验更为重要；发布不到一周已出现 jevchat、jev-leftpad、jev-2048 等社区项目，以及基于 Qwen 3.5 的开源复刻 Kev 和 JevBench 基准。

rss · Simon Willison · 9月21日 23:09

**「背景」** 传统大语言模型以自回归方式逐词生成文本，输出按 token 计费，且输出价格通常高于输入。TypeSafe AI 提出的“System One 模型”（亦称“决策模型”）改变了这一范式：输入仍为文本，输出则是类型化的概率决策与置信度分数，而非文本。据 TypeSafe AI 官方博客介绍，其首个公开模型 Jev 采用全新模型架构、并行采样器，以及名为“校准决策强化学习”（RLCD）的训练方法，目前处于早期访问阶段。

**「影响」** 对开发者而言，Jev 以每百万输入 token 0.042 美元、输出免费的价格，使分类、排序、搜索重排等任务的大规模实验成本降至几美分级别；同时其仅返回浮点分数、不提供理由的黑盒特性，意味着偏见与评估风险需由使用者自行承担。发布不到一周已出现 Kev 等基于 Qwen 3.5 的开源复现（0.8B、4B、9B）以及 JevBench 等针对“Jev 类决策模型”的基准，显示生态正在快速跟进。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://typesafe.ai/blog/introducing-system-one-models-and-jev">Introducing System One Models &amp; Jev - TypeSafe AI Blog</a></li>
<li><a href="https://www.datacamp.com/blog/system-one-models-jev">Jev: TypeSafe&#x27;s System One Model That Never Hallucinates</a></li>
<li><a href="https://www.mindstudio.ai/blog/jev-system-one-model-launch">Jev Explained: Typesafe AI&#x27;s Non-Autoregressive System-1 Model | MindStudio</a></li>
<li><a href="https://simonwillison.net/2026/Sep/21/jev/">Jev introduces a new shape of LLM—System One, aka Decision ...</a></li>
<li><a href="https://benchmarkheaven.com/jev-models">Jev -class decision models — JevBench v1.2 | Benchmark Heaven</a></li>

</ul>
</details>

**标签**: `#LLM`, `#AI models`, `#inference`, `#model architecture`, `#AI industry`

---

## 科技博客

<a id="item-tech-blog-1"></a>
### [美国陆军 MH-1A 浮动核电站的兴衰](https://hackaday.com/2026/09/21/the-first-floating-nuclear-power-station/) ⭐️ 6.0/10

rss · Hackaday · 9月21日 17:00

**「背景」** 20 世纪 50 年代，核能迎来快速发展期，战后各国争相探索原子的和平用途，核反应堆开始接入电网并驱动舰船与潜艇。一个自然浮现的想法是：能否让装载反应堆的船只充当浮动核电站？这一设想在 60 年代中期由美国陆军付诸实践。

**「方案」** 作者讲述，首个浮动核电站并非出自美苏海军，而是美国陆军的核动力计划，其成果是搭载 MH-1A 反应堆的 USS Sturgis 号。反应堆合同于 1961 年授予 Martin Marietta，MH-1A 意为“移动式高功率”，是使用低浓缩铀的压水堆，装在 350 吨的 containment 容器内，铭牌容量 10 兆瓦。船体并非全新设计，而是由二战自由轮 SS Charles H. Cugle 改装，拆除了推进系统，因为长期固定系泊运行，维持自主航行能力被认为不经济。反应堆在 Fort Belvoir 附近的 Gunston Cove 安装，1967 年 1 月首次达到临界，7 月交付陆军，随后 11 个月为 Fort Belvoir 供电。1968 年巴拿马运河因旱季缺水，需在发电与船闸用水间取舍，陆军遂部署 Sturgis 与 20 兆瓦柴油动力驳船 Andrew J. Weber，为运河区供电以释放船闸用水，使运河每日多通行 15 艘船；作者指出这也有利于越战期间美国经此路线的后勤运输。Sturgis 一直驻留到 1975 年，被日立涡轮发电机取代，1976 年退役，1977 年返美并在 Fort Belvoir 卸料，随后长期封存于 James River Reserve Fleet。2014 年授予 3500 万美元合同进行退役与处置，2019 年完成，世界首座浮动核电站就此消失。

**「启示」** 作者认为，Sturgis 的故事颇为奇特：军方设想浮动核电站极具价值，建成后很快找到完美用途，而一旦用途不再重要便被迅速封存。此后全球浮动核电站寥寥，俄罗斯 2019 年仅建成一座核动力驳船，后续计划未落地；作者判断，现代文明连陆上新建反应堆都困难重重，可按需部署的浮动机组更难，需求不足以支撑其成批存在。

**标签**: `#nuclear-power`, `#naval-history`, `#energy-infrastructure`, `#military-technology`

---