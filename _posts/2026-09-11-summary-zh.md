---
layout: default
title: "Horizon Summary: 2026-09-11 (ZH)"
date: 2026-09-11
lang: zh
---

> 从 61 条内容中筛选出 20 条重要资讯。

---

**科技新闻**
1. [Shopify 从 React Native 回归 Swift 与 Kotlin 原生开发](#item-tech-news-1) ⭐️ 8.0/10
2. [OpenAI 发布托管 Agents API](#item-tech-news-2) ⭐️ 8.0/10
3. [Forgejo 16.0.4 修复严重 RCE 漏洞](#item-tech-news-3) ⭐️ 8.0/10
4. [OpenAI 发布含 Lean 4 形式化证明的纳维-斯托克斯成果](#item-tech-news-4) ⭐️ 8.0/10
5. [trynix.dev：浏览器中运行任意 Nix 包](#item-tech-news-5) ⭐️ 8.0/10
6. [DeepSeek 发布 V4.1 Flash 多模态模型](#item-tech-news-6) ⭐️ 8.0/10
7. [研究者能否信任 OpenAI 处理未发表数学成果](#item-tech-news-7) ⭐️ 7.0/10
8. [Cognition 发布 SWE-2 编码模型，对标 Fable 5.1 与 GPT-Astra](#item-tech-news-8) ⭐️ 7.0/10
9. [PlanetScale 推出 Neki 分片 Postgres，社区质疑其定位与闭源](#item-tech-news-9) ⭐️ 7.0/10
10. [348M 参数模型从零训练，14 位算术近满分](#item-tech-news-10) ⭐️ 7.0/10
11. [真实果蝇连接组学打乒乓失败的技术审计](#item-tech-news-11) ⭐️ 7.0/10
12. [蚂蚁国际携手 Visa、Mastercard 制定 AI 支付标准](#item-tech-news-12) ⭐️ 7.0/10
13. [DeepSeek 发布 DeepSelect v1.0.0 TopK 内核](#item-tech-news-13) ⭐️ 7.0/10
14. [HBM 短缺推高中国 AI 芯片价格](#item-tech-news-14) ⭐️ 7.0/10
15. [腾讯混元开源音频编辑模型 AuK 及 4 步推理版 AuK-Flash](#item-tech-news-15) ⭐️ 7.0/10

**科技博客**
1. [机械 CPR 设备：LUCAS 与试验证据的反差](#item-tech-blog-1) ⭐️ 6.0/10
2. [用胶带与反卷积实现无镜头 3D 成像](#item-tech-blog-2) ⭐️ 5.0/10
3. [自制 AMOLED 颈饰：可穿戴屏幕的实战经验](#item-tech-blog-3) ⭐️ 5.0/10
4. [开源声学无人机探测：ESP32 并行算法方案](#item-tech-blog-4) ⭐️ 5.0/10
5. [ESP32-C3 电子纸实现 IPP 打印协议](#item-tech-blog-5) ⭐️ 5.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [Shopify 从 React Native 回归 Swift 与 Kotlin 原生开发](https://shopify.engineering/back-to-native) ⭐️ 8.0/10

Shopify 工程团队发布文章，说明公司正将移动应用从 React Native 迁回 Swift 与 Kotlin 原生开发。作者 fnthawar2 在讨论中表示，2020 年选择 React Native 时的一项核心假设已被 LLM 改变，因此团队重新评估了这一决定，而不是因为过去成功就固守旧方案。该消息在 Hacker News 上引发 500 多条评论的广泛讨论，焦点集中在跨平台框架的取舍以及 LLM 辅助迁移的可行性。

hackernews · fnthawar2 · 9月10日 14:09 · [社区讨论](https://news.ycombinator.com/item?id=49643982)

**「背景」** React Native 是 Meta 推出的跨平台移动开发框架，允许开发者用 JavaScript 编写一套代码同时运行在 iOS 和 Android 上，从而避免为两个平台分别用 Swift 和 Kotlin 重复实现相同功能。Shopify 在 2020 年基于这一逻辑采用 React Native，其理由包括减少重复开发、让开发者跨技术栈工作以及降低维护功能一致性的成本。

**「影响」** Shopify 的迁移表明，在大型应用规模下，原生 Swift 和 Kotlin 开发在深度优化和边缘场景支持上仍具优势，而 React Native 的“一次编写、多端运行”模式更适用于资源有限、可接受 90/10 方案的小型团队或初创公司。Shopify 同时警告，直接让 LLM 对 React Native 代码库进行一次性原生重写并不可行，这为考虑类似迁移的团队提供了重要参考。

**「社区讨论」** 多位开发者分享了类似经历：atonse 称借助 Codex 和 Maestro，在一夜之间完成了约 15-20 个屏幕应用的 Android 与 iOS 迁移，随后花几天做打磨；netshade 则表示自己参与过一次中型 React Native 应用重写为 Swift/Kotlin 的迁移，大部分工作在没有 LLM 辅助的情况下完成，因此不认同“LLM 才让迁移变得可负担”的说法。也有 iOS 工程师（hectdev）对回归原生表示认同，而 tonic\_note 认为 RN 的主要价值在于让 Web 开发者参与移动开发，如今代码大量由模型生成，直接做原生反而更合理。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://shopify.engineering/back-to-native">Native is now the future of mobile at Shopify (2026) - Shopify</a></li>
<li><a href="https://genztech.blog/p/shopify-react-native-back-to-native/">Shopify Ditches React Native , Rebuilds Apps in Swift and Kotlin</a></li>
<li><a href="https://dev.to/jamilxt/shopify-is-moving-its-mobile-apps-back-to-native-coding-agents-made-it-cheaper-to-build-twice-than-4bf9">Shopify Is Moving Its Mobile Apps Back to Native . - DEV Community</a></li>
<li><a href="https://shopify.engineering/back-to-native">Native is now the future of mobile at Shopify (2026) - Shopify</a></li>
<li><a href="https://news.ycombinator.com/item?id=49643982">Shopify moves back to Native from React Native | Hacker News</a></li>

</ul>
</details>

**标签**: `#react-native`, `#mobile-development`, `#swift`, `#kotlin`, `#cross-platform`

---

<a id="item-tech-news-2"></a>
### [OpenAI 发布托管 Agents API](https://developers.openai.com/api/docs/guides/agents-api/overview) ⭐️ 8.0/10

OpenAI 发布了托管的 Agents API，让开发者能够构建并运行具备可插拔工具、并可选自托管沙箱的智能体。该 API 提供托管式智能体运行框架与工具集成，同时允许开发者自行托管沙箱环境，从而在一定程度上缓解对单一供应商的依赖。Hacker News 上围绕该发布展开了约 75 条评论的讨论，焦点集中在智能体抽象设计、状态持久化以及供应商锁定与自托管替代方案之间的取舍。有评论者指出，自托管沙箱选项使该产品更具吸引力，并可能降低在不同供应商之间迁移的难度。

hackernews · aquir · 9月10日 19:43 · [社区讨论](https://news.ycombinator.com/item?id=49649213)

**「背景」** OpenAI 的 Agents API 属于其 Agents SDK 体系的一部分，开发者可通过一次 API 调用指定任务、模型、工具和环境，由 OpenAI 托管并维护 agent 的运行框架（harness）。Agent 可在沙箱中执行代码、编辑文件、连接 MCP 服务器并产出工件，模型与工具按所选模型及标准费率计费。需要区分的是，Agents API 会话、SDK 会话、Responses 对话和沙箱是彼此不同的资源。

**「影响」** 对开发者而言，该 API 的可选自托管沙箱降低了迁移成本，但工具集成与状态持久化仍绑定 OpenAI 的托管编排层，实际锁定程度取决于团队是否在抽象层后接入多提供商。

**「社区讨论」** 评论者普遍认为智能体作为产品的正确抽象仍处于探索阶段，自建运行框架（harness）是巨大的工程投入，而托管服务可让开发者按需接入工具。多位开发者分享了自托管实践，例如在 QEMU 虚拟机中运行 Codex 并通过远程控制使用，或自行开发类似概念的开源方案，认为不必被锁定。也有评论者表示，经过半年定制自有 Claude Code 运行框架后，倾向于假设 Anthropic 和 OpenAI 会处理大部分工作，自己只专注于将流程转化为技能。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://developers.openai.com/api/docs/guides/agents">Agents SDK | OpenAI API</a></li>
<li><a href="https://developers.openai.com/api/docs/guides/agents-api/overview">Agents API | OpenAI API</a></li>
<li><a href="https://openai.com/index/introducing-the-agents-api/">Introducing the Agents API | OpenAI</a></li>

</ul>
</details>

**标签**: `#agents`, `#OpenAI`, `#API`, `#LLM tooling`, `#self-hosting`

---

<a id="item-tech-news-3"></a>
### [Forgejo 16.0.4 修复严重 RCE 漏洞](https://codeberg.org/forgejo/forgejo/src/branch/forgejo/release-notes-published/16.0.4.md) ⭐️ 8.0/10

Forgejo 发布了 16.0.4 版本，修复了一个影响 16.0.3 及之前所有版本的严重远程代码执行（RCE）漏洞。该漏洞与从模板仓库生成新仓库时的变量模板展开有关：Forgejo 会克隆模板仓库、删除 .git 目录、对 .forgejo/template 中列出的文件执行变量模板展开，然后初始化新的 git 仓库，而这一过程可能被利用来执行任意代码。相关修复见 PR 14301，被标记为“Critical”。由于 Codeberg 的速率限制，部分用户反映发布说明一度无法正常访问。

hackernews · weierstass · 9月10日 15:57 · [社区讨论](https://news.ycombinator.com/item?id=49645907)

**「背景」** Forgejo 是一个自托管的 Git 代码托管平台，属于 Gitea 的分支项目。其“从模板仓库生成新仓库”功能会克隆模板仓库、删除 .git 目录，并对 .forgejo/template 中列出的文件执行变量模板展开，随后初始化新的 Git 仓库。该模板展开环节处理不当，导致 16.0.4 之前的版本存在远程代码执行漏洞（CVE-2026-89094）。

**「影响」** 运行 Forgejo 16.0.3 及更早版本的自托管实例应立即升级到 16.0.4（或 15.0.8），因为该模板展开缺陷可被利用实现远程代码执行。Gitea 维护者表示 Gitea 不受这两个问题影响。

**「社区讨论」** Gitea 项目领导层成员 techknowlogick 表示 Gitea 对这两个问题均免疫，并强调不应因安全事件指责报告者，以免降低漏洞上报意愿。有评论者认为，Forgejo 此前禁止 LLM 贡献代码，可能使自身在漏洞发现上处于劣势，而攻击者仍会使用 AI 寻找漏洞。另有用户因 Codeberg 速率限制无法阅读发布说明，转而贴出两个修复 PR 的内容。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://lwn.net/Articles/1093671/">Forgejo 16.0.4 and 15.0.8 address critical security vulnerability [LWN.net]</a></li>
<li><a href="https://www.thehackerwire.com/vulnerability/CVE-2026-89094/">CVE-2026-89094 - Critical Vulnerability - TheHackerWire</a></li>
<li><a href="https://codeberg.org/forgejo/forgejo/milestone/139655">Forgejo v16.0.4 - forgejo/forgejo - Codeberg.org</a></li>
<li><a href="https://lwn.net/Articles/1093671/">Forgejo 16.0.4 and 15.0.8 address critical security vulnerability [LWN.net]</a></li>

</ul>
</details>

**标签**: `#security`, `#open-source`, `#git`, `#vulnerability`, `#forgejo`

---

<a id="item-tech-news-4"></a>
### [OpenAI 发布含 Lean 4 形式化证明的纳维-斯托克斯成果](https://www.johndcook.com/blog/2026/09/09/formal-method-revolution/) ⭐️ 8.0/10

据 Hacker News 讨论，OpenAI 的一项发布据称包含针对纳维-斯托克斯相关结果的 Lean 4 形式化证明，但所提供的内容仅为博客链接与社区评论，并非原始论文或证明本身。讨论中涉及验证成本、智能体经济性与证明自动化等议题，其中关于费用与验证时间的说法多为二手信息且存在争议。有评论者引用数据称，费马大定理的 Lean 验证耗时约 15 小时、占用 230GB 内存，而智能体生成相应 Lean 代码约需 11 天，两者仅相差一个数量级。另有评论者指出，OpenAI 估算的智能体成本约为 4000 万美元，而按帖子中的数字换算，人力方案约为 88 万小时 × 150 美元/小时，即约 1.32 亿美元，因此并非“四个数量级”的差距。由于缺乏一手材料，这些具体数字与结论的准确性尚无法独立核实。

hackernews · ibobev · 9月10日 21:22 · [社区讨论](https://news.ycombinator.com/item?id=49650326)

**「背景」** 纳维-斯托克斯方程是描述粘性流体运动的三维偏微分方程，其光滑解是否会在有限时间内产生奇点，是克雷数学研究所悬赏的千禧年大奖难题之一。Lean 4 是一种交互式定理证明器，可让数学结果以机器可验证的形式呈现，从而把证明的正确性检查交给计算机。OpenAI 此次发布的仓库包含针对“纳维-斯托克斯有限时间爆破”和“欧拉方程有限时间爆破”结果的 Lean 4 形式化证明，但相关证明声明与署名归属仍存在争议。

**「影响」** OpenAI 已发布 Navier–Stokes 千禧年难题的 AI 生成解答，并在 GitHub 上提供 Lean 4 形式化证明，使该结果可被机器检查；据博客估算，其 Lean 形式化过程消耗约 100 万至 200 万美元算力，大致相当于 1 万个人类数学家小时。

**「社区讨论」** 评论者一方面惊叹于通用程序能解决如此量级的问题，并好奇新模型能否给出更直接的证明或归纳证明；另一方面则围绕验证成本与人力成本对比展开争论，认为协调百万小时智力劳动本身极难，成本比较意义有限。也有人质疑“每页四十小时”的经验法则已过时，认为它源于 2005 年缺乏证明自动化的状况，而 Lean 社区一直在努力改善这一点。此外，有评论者提出更根本的担忧：若 AI 解决了极难问题，而人类因智力或资源限制无法独立验证其证明，将会出现何种局面。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/openai/NavierStokesAndEuler">GitHub - openai/NavierStokesAndEuler: Lean certificates accompanying ...</a></li>
<li><a href="https://aitoolly.com/ai-news/article/2026-09-10-openai-shares-ai-generated-solution-and-formal-lean-proof-for-the-navier-stokes-millennium-prize-pro">OpenAI Shares AI Solution to Navier-Stokes Problem in Lean</a></li>
<li><a href="https://lean4.dev/proofs/navier-stokes">Navier-Stokes: a new proof claim, and a dispute over credit | Lean 4 Dev</a></li>
<li><a href="https://www.johndcook.com/blog/2026/09/09/formal-method-revolution/">The part of Navier-Stokes no one is talking about</a></li>
<li><a href="https://openai.com/index/navier-stokes-solution/">On the Navier–Stokes Millennium Prize Problem | OpenAI</a></li>
<li><a href="https://github.com/openai/NavierStokesAndEuler">GitHub - openai/NavierStokesAndEuler: Lean certificates accompanying Navier-Stokes and Euler results · GitHub</a></li>

</ul>
</details>

**标签**: `#formal verification`, `#Lean 4`, `#AI for mathematics`, `#Navier-Stokes`, `#proof automation`

---

<a id="item-tech-news-5"></a>
### [trynix.dev：浏览器中运行任意 Nix 包](https://simonwillison.net/2026/Sep/10/trynix/) ⭐️ 8.0/10

Farid Zakaria 发布了 trynix.dev，被他称为自己在 Nix 工作上的“magnum opus”。该站点通过 qemu-wasm 在浏览器内运行一个 x86\_64 Linux 虚拟机，可启动过去 13 年间的任意 Nix 包，并支持以 URL 寻址，例如访问 https://trynix.dev/?pkg=python3%403.6.2 并点击“Load”即可获得运行 2017 年 Python 3.6.2 的交互式 shell。在此基础上，他还推出了 trynix-preview GitHub Action，会在 pull request 中评论一个链接，让审阅者直接在浏览器里启动该 PR 的构建，无需服务器。

rss · Simon Willison · 9月10日 23:44

**「背景」** Nix 是一个包管理器与构建系统，其 nixpkgs 软件包集合持续维护了十余年，每个包版本都有对应的构建产物缓存。trynix 借助 ktock 的 qemu-wasm 项目，把 QEMU 编译为 WebAssembly，从而在浏览器中运行 x86\_64 Linux 虚拟机，并通过 virtio-9p 把 Nix store 传入客户机。据 Farid Zakaria 介绍，该站点可浏览 nixpkgs 超过 310,083 个包版本的历史，并从中任选一个在浏览器内启动 shell。

**「影响」** 对 Nix 生态的开发者而言，trynix-preview 这一 GitHub Action 可在 PR 上自动评论链接，让评审者直接在浏览器中启动该 PR 的构建进行验证，无需任何服务器。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/fzakaria/trynix">fzakaria/ trynix : Boot anything nixpkgs ever shipped, in your browser .</a></li>
<li><a href="https://trynix.dev/">trynix</a></li>
<li><a href="https://fzakaria.com/2026/09/04/any-nix-package-live-in-your-browser">Any Nix package , live in your browser | Farid Zakaria ’s Blog</a></li>
<li><a href="https://fzakaria.com/2026/09/09/review-a-pull-request-by-booting-it">Review a pull request by booting it | Farid Zakaria’s Blog</a></li>
<li><a href="https://simonwillison.net/2026/Sep/10/trynix/">Any Nix package, live in your browser</a></li>

</ul>
</details>

**标签**: `#nix`, `#webassembly`, `#virtualization`, `#developer-tools`, `#qemu`

---

<a id="item-tech-news-6"></a>
### [DeepSeek 发布 V4.1 Flash 多模态模型](https://mp.weixin.qq.com/s/qg0NU3NNUbp1co2PdkAPAg) ⭐️ 8.0/10

DeepSeek 正式发布 V4.1 Flash，这是其全新模型结构系列中尺寸最小的模型，采用 552B 参数的 Causal-Encoder-Decoder 结构，输入与输出激活分别为 8B 和 16B，并原生支持多模态视觉理解。该模型已上线 DeepSeek API，模型名为 deepseek-flash，新价格于 2026 年 9 月 10 日 12:00 生效。自 9 月 14 日 12:00 起，deepseek-v4-pro 的请求将被路由至 V4.1 Flash，并按 V4.1 Flash 的价格计费。该消息来自渠道推广式发布，未提供基准测试或技术细节，尚缺乏独立验证。

telegram · zaihuapd · 9月10日 05:54

**「背景」** DeepSeek 此前已推出多款大模型，V4.1 Flash 属于其全新模型结构系列中尺寸最小的一款。据 Hugging Face 模型页与第三方报道，该模型为 552B 参数的多模态混合专家（MoE）模型，支持最长一百万 token 的上下文，并采用非对称的 Causal-Encoder-Decoder 架构，每个输入 token 仅激活 8B 参数、每个输出 token 激活 16B 参数。

**「影响」** 对使用 DeepSeek API 的开发者而言，9 月 14 日 12:00 后 deepseek-v4-pro 请求将被路由至 V4.1 Flash 并按 Flash 价格计费，据外部测算其输出成本约下降 70%；同时旧模型名 deepseek-v4-flash 与 deepseek-v4-flash-vision-exp 仍被接受，但对应模型已退役，请求同样由 V4.1 Flash 承接并按 Flash 价格计费。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://huggingface.co/deepseek-ai/DeepSeek-V4.1-Flash">deepseek-ai/DeepSeek-V4.1-Flash · Hugging Face</a></li>
<li><a href="https://www.marktechpost.com/2026/09/10/deepseek-ai-released-deepseek-v4-1-flash-with-1m-context-fp4-kv-cache-and-cross-layer-attention-reuse/">DeepSeek AI Released DeepSeek-V4.1-Flash with 1M Context, FP4 KV Cache, and Cross-Layer Attention Reuse - MarkTechPost</a></li>
<li><a href="https://alphasignal.ai/news/deepseek-s-v4-1-flash-beats-its-own-flagship-at-a-quarter-of-the-memory-cost">DeepSeek&#x27;s V4.1-Flash Beats Its Own Flagship at a Quarter of the Memory Cost | AlphaSignal</a></li>
<li><a href="https://api-docs.deepseek.com/quick_start/pricing/">Models &amp; Pricing | DeepSeek API Docs</a></li>
<li><a href="https://www.orcarouter.ai/blog/deepseek-v4-1-new-base-model">DeepSeek V 4 . 1 Flash : New Base Model, Not a Point Release</a></li>

</ul>
</details>

**标签**: `#LLM`, `#DeepSeek`, `#model release`, `#multimodal`, `#API pricing`

---

<a id="item-tech-news-7"></a>
### [研究者能否信任 OpenAI 处理未发表数学成果](https://mathstodon.xyz/@andreasthom/117240535270608201) ⭐️ 7.0/10

Hacker News 上围绕数学家 Andreas Thom 在 Mathstodon 上提出的质疑展开讨论：研究者能否信任 OpenAI 处理未发表的数学想法。争议焦点在于，研究者在使用 OpenAI 模型进行合作时提供了新想法，而 OpenAI 随后发表了相关方向的工作却未给予署名，这若发生在人类合作者之间会被视为严重不端。OpenAI 则声称用于产生该结果的模型并未在这些合作对话上训练。讨论还涉及内部模型是否真在快速解决开放问题，以及研究者使用 Codex 推进开放问题时可能无意中向模型提供新鲜训练数据。该话题获得 644 分、619 条评论，但原始条目本身只是若干社交媒体链接的集合，缺乏一手技术材料。

hackernews · pred\_ · 9月10日 06:49 · [社区讨论](https://news.ycombinator.com/item?id=49639408)

**「背景」** 这一争议围绕 OpenAI 与外部数学研究者的合作展开。据 RT 报道，纽约大学数学家 Tristan Buckmaster 指控 OpenAI 是在得知他与 Anthropic 研究员 Levent Alpöge 已在相关方法上取得进展后，才投入大量资源攻克该问题。与此同时，OpenAI 向至少 10 万名研究者提供免费模型访问权限，其内部模型据称正以异常快的速度解决开放数学问题，这使研究者担心自己分享的未发表想法可能被用于训练并影响后续成果的归属。

**「影响」** 这一争议可能直接影响与 OpenAI 合作或使用 Codex 等工具的研究者：若用户数据被用于训练，未发表数学想法可能被模型吸收，从而引发署名与优先权纠纷。外部报道显示，围绕 Navier–Stokes 问题解法的争议已具体涉及 OpenAI 是否可能访问了 Buckmaster 和 Alpöge 在 Codex 中的提示数据，但目前尚无证据证明其确实这样做。

**「社区讨论」** 评论者用人类合作者作类比，认为 OpenAI 在合作后不署名发表相关成果在伦理上难以接受，并质疑其“模型未在合作内容上训练”的说法。也有人提出两种解释可以并存：模型可能在预训练中记住对话以改善直觉，同时通过可验证数学上的强化学习与大规模算力独立发现超人类技巧。另有评论怀疑 OpenAI 在得知某重要数学证明可能已进入训练数据后，仍从训练中的模型生成 3000 亿输出 token，感觉像是“平行构建”。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.rt.com/news/645362-openai-math-breakthrough-backlash/">OpenAI math breakthrough sparks controversy — RT World News</a></li>
<li><a href="https://news.ycombinator.com/item?id=49639408">More questions about whether researchers can trust OpenAI with...</a></li>
<li><a href="https://en.wikipedia.org/wiki/Navier%E2%80%93Stokes_priority_controversy">Navier–Stokes priority controversy - Wikipedia</a></li>
<li><a href="https://www.nytimes.com/2026/09/10/science/tristan-buckmaster-openai-math-navier-stokes.html">The Mathematician Crushed Between OpenAI and Anthropic Over...</a></li>
<li><a href="https://www.smithsonianmag.com/smart-news/ai-may-have-solved-a-longstanding-math-problem-with-a-million-dollar-prize-it-ignited-a-controversy-over-who-gets-credit-180989472/">A.I. May Have Solved a Longstanding Math Problem With...</a></li>

</ul>
</details>

**标签**: `#AI research ethics`, `#OpenAI`, `#mathematics`, `#AI-assisted research`, `#training data provenance`

---

<a id="item-tech-news-8"></a>
### [Cognition 发布 SWE-2 编码模型，对标 Fable 5.1 与 GPT-Astra](https://cognition.com/blog/swe-2) ⭐️ 7.0/10

Cognition 发布了新的编码模型 SWE-2，声称其性能可与 Fable 5.1 和 GPT-Astra 相抗衡。该模型据称是在 Kimi K3 基础上进行后训练（post-training）得到的，而非从零训练的全新模型。社区讨论对基准测试结果提出质疑，指出 Terminal Bench 2.1 得分 92.8% 与几周前发布的 Terminal Bench 4 得分 27.3% 之间存在巨大差距，这被解读为衡量模型对新问题泛化能力的指标，也引发了对“刷榜”程度的怀疑。此外，评论者还关注该模型是否为开放权重，并质疑在已有 DeepSeek Flash 4.1 等选择的情况下为何要使用另一个闭源模型。目前该发布缺乏主要技术细节、基准测试方法和独立验证。

hackernews · seelos · 9月10日 15:29 · [社区讨论](https://news.ycombinator.com/item?id=49645443)

**「背景」** Cognition 此前已推出 SWE-1.7 等编码模型，本次发布的 SWE-2 是在 Moonshot AI 的 Kimi K3 基础上进行后训练得到的。Kimi K3 是一个 2.8 万亿参数、已针对智能体编码做过大量强化学习的模型，Cognition 称其强化学习在 K3 之上仍找到明显提升空间，在多项基准上增加 5–6 分。社区讨论还提到，SWE-2 是首个带有 effort levels（努力等级）的 Cognition 模型，且其 Terminal Bench 2.1 与 Terminal Bench 4 得分差距巨大，被用来质疑模型的泛化能力。

**「影响」** 对开发者而言，SWE-2 在 Terminal Bench 2.1 上报告 92.8%、而在新发布的 Terminal Bench 4.0 上仅 27.3%，这一巨大落差意味着其宣称的竞争力可能难以泛化到新问题上，选型时应优先参考独立基准而非厂商自报成绩。

**「社区讨论」** 社区对 SWE-2 的基准测试成绩普遍持怀疑态度，认为 Terminal Bench 2.1 与 4 之间的巨大分差暴露了模型泛化能力不足和过度拟合基准的问题。有评论者指出 Cognition 过去曾演示过表现不佳的自主编码机器人，因此对其性能声明应持保留态度，但也承认基于已相当强大的 Kimi K3 进行后训练意味着模型不会太差。另有用户强烈质疑闭源权重策略，认为开发者更倾向于开放权重模型，并提到 DeepSeek Flash 4.1 可能促使大量用户转向开放模型。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://cognition.com/blog/swe-2">Introducing SWE - 2 : Pushing the Pareto Frontier | Cognition</a></li>
<li><a href="https://cognition.com/blog/swe-2">Introducing SWE - 2 : Pushing the Pareto Frontier | Cognition</a></li>
<li><a href="https://www.orcarouter.ai/blog/cognition-swe-2-release">Cognition SWE - 2 : Frontier Coding at 64% Off, Plus a Trap</a></li>
<li><a href="https://alphasignal.ai/news/cognition-s-swe-2-beats-gpt-5-6-sol-at-64-lower-cost">Cognition &#x27;s SWE - 2 Beats GPT-5.6 Sol at 64% Lower Cost | AlphaSignal</a></li>
<li><a href="https://www.tbench.ai/">TERMINAL - BENCH</a></li>
<li><a href="https://artificialanalysis.ai/evaluations/terminalbench-v4-0">Terminal - Bench v 4 .0 Benchmark Leaderboard | Artificial Analysis</a></li>
<li><a href="https://benchlm.ai/models/swe-2">SWE-2 Benchmarks &amp; Context (September 2026) | BenchLM.ai</a></li>

</ul>
</details>

**标签**: `#AI coding models`, `#benchmarking`, `#model releases`, `#open weights`, `#software engineering agents`

---

<a id="item-tech-news-9"></a>
### [PlanetScale 推出 Neki 分片 Postgres，社区质疑其定位与闭源](https://planetscale.com/blog/introducing-neki) ⭐️ 7.0/10

PlanetScale 发布了名为 Neki 的分片 Postgres 产品，但发布博客被批评未能清楚说明 Neki 究竟是什么、面向什么用途。社区评论指出，文章在“简介”“为什么选择 Neki”“Neki 如何工作”以及“分片之外还能得到什么”等章节中分别讨论了问题、替代方案、技术组件和部署方式，却始终没有直接定义产品本身。讨论还集中在该产品为闭源、以及 PlanetScale CEO 的公开言论上，有评论者提到 CEO 曾贬低 Supabase 的开源同类项目 multigres 并宣称 Neki 更优，但 Neki 并未开源。技术层面，有开发者提出分布式 Postgres 高可用方案中最终一致性不适合许多工作负载，并询问 Neki 如何在 CAP 定理约束下处理这一权衡，但发布内容未给出具体答案。

hackernews · simon\_weber · 9月10日 15:43 · [社区讨论](https://news.ycombinator.com/item?id=49645686)

**「背景」** Neki 是 PlanetScale 推出的分片 Postgres 产品，其每个分片都是真正的 Postgres，并额外加入路由器、边车（sidecar）和控制平面，以突破单机限制，扩展到数亿 QPS 和 PB 级数据且无需停机。PlanetScale 表示，待 Neki 经过真实生产负载的测试与验证后，会将其作为开源项目发布，目标是让分片 Postgres 更易获得，并由 PlanetScale 提供专业支持。

**「影响」** 对于评估分布式 Postgres 的工程团队而言，Neki 的闭源状态和未明确的 CAP 一致性取舍，使其难以直接替代 Supabase 的 Multigres 等开源方案。

**「社区讨论」** 评论普遍批评发布文章没有在开头段落说明 Neki 是什么及其用途，并质疑其闭源定位与 CEO 的公开言论，认为这影响了产品的可信度。也有开发者提出实质性问题：在 CAP 定理下，Neki 如何处理最终一致性与可用性之间的取舍，以及是否适合对一致性要求高的工作负载；另有评论者对其前景表示乐观，认为它可能成为新标准。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://neki.dev/?ref=upstract.com">Neki | Sharded Postgres by PlanetScale</a></li>
<li><a href="https://planetscale.com/neki">Neki — PlanetScale</a></li>
<li><a href="https://mcpservers.org/agent-skills/planetscale/neki">neki | Agent Skills Library | MCP Servers</a></li>
<li><a href="https://dev.to/dataformathub/serverless-postgresql-2025-the-truth-about-supabase-neon-and-planetscale-7lf">Serverless PostgreSQL 2025: The Truth About Supabase , Neon, and...</a></li>
<li><a href="https://news.ycombinator.com/item?id=44870012">This is exciting. The announcement says it will be open source .</a></li>

</ul>
</details>

**标签**: `#postgres`, `#distributed-databases`, `#sharding`, `#planetscale`, `#open-source`

---

<a id="item-tech-news-10"></a>
### [348M 参数模型从零训练，14 位算术近满分](https://www.reddit.com/r/MachineLearning/comments/1wc7hmu/i_trained_a_348m_model_trained_from_scratch_on/) ⭐️ 7.0/10

一位独立开发者从零训练了一个 348M 参数的语言模型，使用 22.7B tokens，并微调为通过展示列竖式过程（进位、借位、部分积）来解算术题，而非直接猜答案。该模型在九个 GPT-3 算术子任务上平均达到 99.4%，其中 3 至 5 位加法均为 100%，2 位乘法 100%，3 位减法 98.3%，5 位减法 99.0%，均以 n=300、贪心解码、精确匹配评测。模型原本只能干净处理 8 位加法，原因是训练中只出现过 6 个位值名称，扩展到 19 个名称后干净上限提升到 14 位，10 位和 12 位仍分别保持 95%和 100%。模型在 GSM8K 上仅 4%，ASDiv 16.5%，完全不会除法，4×4 乘法是硬墙，且必须使用贪心解码。作者还说明算术测试框架对减法操作数排序，因此表中无负数结果，负数单独测得 85%。

reddit · r/MachineLearning · /u/nkthebass · 9月10日 03:28

**「背景」** GPT-3 算术基准通常以少样本直接作答方式评测大模型的多位数加减乘能力，175B 模型在 4 至 5 位加法上准确率仅约 25%和 9%。该项目的思路是让模型在微调中学习输出逐列计算步骤，把算术转化为可验证的中间过程，从而用小模型超越直接作答的大模型。作者此前已发布过 326M 参数、10B tokens 的模型，本次数据量约为其 2.3 倍。

**「影响」** 对关注小语言模型和算术推理的开发者而言，该项目表明通过训练模型展示列式计算步骤，348M 参数模型可在多位加减乘任务上大幅超过 GPT-3 175B 的直接作答结果，且位值词表大小是限制外推位数的关键因素。不过所有数字均为作者自报，未经同行评审，且作者提到有独立测试者发现其中两个数字有误（一个因 n=24 而低估 40 分），现已更正。

**标签**: `#small language models`, `#arithmetic reasoning`, `#training from scratch`, `#benchmarks`, `#machine learning`

---

<a id="item-tech-news-11"></a>
### [真实果蝇连接组学打乒乓失败的技术审计](https://www.reddit.com/r/MachineLearning/comments/1wc67ci/i_tried_to_make_a_real_fly_connectome_learn_to/) ⭐️ 7.0/10

作者尝试用新发布的 MaleCNS v1.0 连接组（16.6 万神经元、真实电镜重建）的一个小子图，通过多巴胺式可塑性学习玩 Pong，结果未能学会。审计发现多个具体问题：neuPrint 正则表达式因全匹配与子串语义差异，静默将两个神经元群体清零；原始神经元选择中从光感受器到其他神经元根本没有通路，因为真实光感受器并不直接突触到运动检测器，中间缺失一整层；修复后开启与关闭学习得到逐位相同的结果，即使权重确实在变化，原因是 4 个可用运动神经元中有一半在模型中与任何感觉通路零突触，且仅因数组索引巧合被分到“球拍下移”组。作者随后基于视觉目标追踪的生物学假设重建电路，假设被数据否定，最终找到一条真正端到端连接的下降神经元，首次让学习开/关产生差异，但效果表现为学习规则整体抑制系统而非技能提升。作者还指出 Doom、Minecraft 和 Beat Saber 等病毒式项目自身也承认未通过验证或依赖手工注入行为。

reddit · r/MachineLearning · /u/oPeraza2007 · 9月10日 02:28

**「背景」** MaleCNS v1.0 是 Google Research 与 HHMI Janelia 合作发布的成年雄性果蝇中枢神经系统连接组数据集，包含超过 16.6 万个神经元，基于真实电子显微镜重建而非简化模型。连接组（connectome）指通过电子显微镜等手段重建的神经回路详细接线图，neuPrint 则是用于查询这些连接组数据的在线工具与 API。该数据集发布后，社区出现了多个用它驱动游戏角色的演示项目，但作者指出这些项目未必验证过回路本身是否真正在起作用。

**「影响」** 该审计为使用 MaleCNS v1.0 等真实连接组进行神经 AI 模拟的研究者提供了具体警示：连接组规模本身（166k 神经元、约 1.25 亿突触）并不保证下游行为有效，神经元选择、通路完整性和工具语义错误都可能让学习信号完全失效。作者同时指出，Doom、Minecraft 和 Beat Saber 等病毒式项目自身也承认未通过验证门槛、真实运动检测通路保持沉默或存在过拟合，因此这些演示不宜被当作连接组驱动学习的证据。

**「社区讨论」** 暂无社区评论可供总结。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.techspot.com/news/113780-google-mapped-fly-nervous-system-developers-using-play.html">Google mapped a fly &#x27;s nervous system and developers are... | TechSpot</a></li>
<li><a href="https://www.alextech.ai/en/news/a-fly-brain-mapped-by-google-plays-doom/">A fly brain mapped by Google plays Doom — AlexTech.ai</a></li>
<li><a href="https://en.wikipedia.org/wiki/Neural_circuit_reconstruction">Neural circuit reconstruction - Wikipedia</a></li>
<li><a href="https://www.virtualflybrain.org/docs/tutorials/apis/neuprint/">neuprint | Virtual Fly Brain</a></li>
<li><a href="https://hothardware.com/news/google-mapped-a-fruit-fly-brain-so-engineers-taught-it-to-play-doom">Google Mapped A Fruit Fly Brain , So Engineers Taught It To Play ...</a></li>
<li><a href="https://www.thegamer.com/fly-brain-playing-doom-minecraft-mario-64/">Doom Is Now Officially Being Played By A Fly Brain</a></li>
<li><a href="https://www.youtube.com/watch?v=BUkLWjcoBc0">I Put A Fly &#x27;s Conscious Brain into Minecraft - YouTube</a></li>

</ul>
</details>

**标签**: `#connectome`, `#neuroAI`, `#reinforcement-learning`, `#plasticity`, `#negative-results`

---

<a id="item-tech-news-12"></a>
### [蚂蚁国际携手 Visa、Mastercard 制定 AI 支付标准](https://www.cnbc.com/2026/09/10/ant-international-visa-mastercard-ai-agent-payment-standard.html) ⭐️ 7.0/10

蚂蚁国际宣布与 Visa、Mastercard 合作，为 AI 代理支付制定通用标准。三方将建立“了解你的代理”（Know Your Agent）机制，用于将 AI 代理关联到有效实体、评估其行为并监测风险，目标是提升不同支付系统之间的互操作性与安全性。三方援引麦肯锡预测称，到 2030 年 AI 代理可能处理全球消费者商业交易中的 3 万亿至 5 万亿美元。目前公布的信息未披露该标准的具体技术细节、发布时间表或落地范围。

telegram · zaihuapd · 9月10日 03:00

**「背景」** AI 代理支付指由人工智能代理代表用户发起或完成交易，这类代理的身份归属、行为授权与风险监测此前缺乏跨支付网络的统一规则。蚂蚁国际、Visa 与 Mastercard 于 2026 年 9 月 10 日宣布合作，共同制定识别、验证和监测参与支付的 AI 代理的通用标准，其“了解你的代理”框架旨在让在某一参与支付机构注册的代理无需在其他机构重复注册即可跨机构使用。

**「影响」** 若该标准落地，使用 AI 代理发起支付的消费者与商户将受益于跨 Visa、Mastercard 等支付系统的互操作性提升，以及通过“了解你的代理”机制对代理身份、行为与风险的统一识别与监测。三方将通过新加坡金融管理局召集的行业平台 BuildFin.ai 推进相关工作，但标准的具体技术细节与实施时间表尚未公布。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://political.org/2026/09/09/visa-mastercard-and-ant-international-develop-standards-for-ai-agent-payments/">Visa , Mastercard and Ant International Launch ‘ Know Your Agent ...</a></li>
<li><a href="https://crypto.news/ant-international-joins-visa-mastercard-to-build-ai-agent-payment-standards/">Ant International joins Visa , Mastercard to build AI agent payment ...</a></li>
<li><a href="https://www.hokanews.com/2026/09/visa-and-mastercard-back-ant.html">Visa and Mastercard Back Ant International ’s ‘ Know Your Agent ...</a></li>
<li><a href="https://political.org/2026/09/09/visa-mastercard-and-ant-international-develop-standards-for-ai-agent-payments/">Visa , Mastercard and Ant International Launch ‘Know Your Agent ...</a></li>
<li><a href="https://crypto.news/ant-international-joins-visa-mastercard-to-build-ai-agent-payment-standards/">Ant International joins Visa , Mastercard to build AI agent payment ...</a></li>
<li><a href="https://mitsloanindia.com/article/visa-mastercard-ant-push-common-standards-for-ai-agents-making-payments/">Visa , Mastercard , Ant Push Common Standards for AI Agents ...</a></li>

</ul>
</details>

**标签**: `#AI agents`, `#payments`, `#fintech`, `#standards`, `#security`

---

<a id="item-tech-news-13"></a>
### [DeepSeek 发布 DeepSelect v1.0.0 TopK 内核](https://github.com/deepseek-ai/DeepSelect) ⭐️ 7.0/10

DeepSeek-AI 于 2026 年 9 月 10 日发布 DeepSelect v1.0.0，这是一套面向 DeepSeek 稀疏注意力（DSA）与采样器的高性能 TopK 内核。该项目以开源形式发布在 GitHub 上，官方声称相比原生 torch.topk 可实现 2 至 20 倍的提速。TopK 操作是稀疏注意力筛选与采样过程中的关键步骤，因此该内核的优化对相关 AI 系统的推理性能具有实际意义。目前公开信息仅为简短发布通告，尚未提供基准测试方法、具体硬件条件或独立验证结果，实际加速效果仍需进一步确认。

telegram · zaihuapd · 9月10日 07:28

**「背景」** TopK 是从一组数值中选出最大（或最小）K 个元素的操作，在稀疏注意力中用于筛选每个查询需要关注的键值位置，在采样器中用于从模型输出的概率分布里挑出候选词元。DeepSeek 稀疏注意力（DSA）是 DeepSeek 系列模型采用的稀疏注意力机制，据其 GitHub 仓库说明，该机制被用于 DeepSeek V3.2、V4 和 V4.1 等模型。DeepSelect 即针对这一场景与采样器中的 TopK 计算提供的高性能 GPU 内核实现，官方称相较原生 torch.topk 可提速 2 至 20 倍。

**「影响」** DeepSelect 直接服务于 DeepSeek V3.2、V4 和 V4.1 模型中的稀疏注意力与采样器，其 2 至 20 倍的提速可降低这些模型推理时 TopK 选择的开销。不过该提速数据来自项目自述，尚缺独立基准测试验证，实际收益可能随 k 值、块大小和硬件配置而变化。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/deepseek-ai/DeepSelect">GitHub - deepseek - ai / DeepSelect : DeepSelect : TopK kernels for...</a></li>
<li><a href="https://trendshift.io/repositories/225882">deepseek - ai / DeepSelect — GitHub trending stats &amp; insights | Trendshift</a></li>
<li><a href="https://github.com/deepseek-ai/DeepSelect">GitHub - deepseek-ai/ DeepSelect : DeepSelect : TopK kernels for...</a></li>

</ul>
</details>

**标签**: `#TopK`, `#稀疏注意力`, `#GPU内核`, `#开源工具`, `#AI系统性能`

---

<a id="item-tech-news-14"></a>
### [HBM 短缺推高中国 AI 芯片价格](https://www.reuters.com/world/asia-pacific/chinas-ai-chipmakers-raise-prices-high-bandwidth-memory-shortage-bites-2026-09-10/) ⭐️ 7.0/10

全球高带宽存储器（HBM）供应紧张持续冲击中国 AI 芯片产业，华为、寒武纪等厂商已开始上调产品价格。华为升腾 950DT 芯片报价较两个月前上涨约 20%—50%，部分老款芯片价格上涨约 30%；寒武纪新一代思元 690 价格也预计上涨约 20%—30%。HBM 主要由 SK 海力士、三星和美光供应，美国出口限制进一步加剧中国市场供应压力。随着国内 AI 算力需求增长，HBM 短缺正成为制约国产 AI 芯片扩张的重要瓶颈。

telegram · zaihuapd · 9月10日 09:29

**「背景」** HBM（高带宽存储器）是 AI 加速芯片的关键配套内存，目前全球供应高度集中于 SK 海力士、三星和美光三家厂商。据 2025 年 10 月的报道，SK 海力士 2026 年的 HBM 及标准 DRAM、NAND 产能已基本售罄，下一代 HBM4 计划于 2025 年第四季度开始出货；2026 年第一季度的客户分配中，SK 海力士拿下英伟达 Rubin 平台 HBM4 约 70% 份额，三星则获得 AMD MI455X 的关键 HBM4 合作及谷歌 TPU 所用 HBM3E 的 60% 以上。这种高度集中的供应格局，叠加美国对华出口限制，使中国 AI 芯片厂商在获取 HBM 时面临额外压力。

**「影响」** 对依赖国产 AI 算力的开发者和企业而言，华为升腾 950DT 等主力训练芯片报价上涨约 20%—50%，将直接推高模型训练与推理的硬件采购成本。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blog.wistock.ai/practical-cases-experience-sharing/hbm-ai-2026/">HBM 记忆体后市分析 2026：美光、三星、海力士竞争格局与 AI 需求支撑</a></li>
<li><a href="https://www.sohu.com/a/949480247_122362510">HBM 产能告急！三星、SK 海力士、美光：2026 年订单已售罄，AI 算力需...</a></li>
<li><a href="https://momoview.com/blog/zh/posts/hbm-industry-analysis-sk-hynix-samsung-micron-2026-ai-memory-supercycle-investment-thesis/">HBM 三国杀：SK 海力士、三星、美光在 AI 内存超级周期中的格局与投资...</a></li>
<li><a href="https://linux.do/t/topic/2887064">路透社：中国 AI 芯片厂商 涨 价 ， HBM ... - LINUX DO</a></li>
<li><a href="https://www.mydigit.cn/thread-620124-1-1.html">国产AI加速卡集体调 价 ！ 华 为 950 DT 破25万， HBM ...</a></li>

</ul>
</details>

**标签**: `#AI chips`, `#HBM`, `#semiconductor supply chain`, `#export controls`, `#hardware`

---

<a id="item-tech-news-15"></a>
### [腾讯混元开源音频编辑模型 AuK 及 4 步推理版 AuK-Flash](https://x.com/TencentHunyuan/status/2097996926876795197) ⭐️ 7.0/10

腾讯混元宣布正式发布开源音频编辑模型 AuK，可通过自然语言指令和参考音频统一完成语音生成与编辑，支持零样本文本转语音、音色/风格/情绪编辑、去口音及多人语音分离等功能。同时发布的 AuK-Flash 采用 4 步推理，在匹配条件下速度约提升 4.5 倍。官方表示代码、模型权重和演示均已上线。该发布为语音与 AI 开发者提供了可获取的开源工具，但公告内容较为简短，缺少技术细节，性能提升数据尚未经第三方验证。

telegram · zaihuapd · 9月10日 11:56

**「背景」** AuK 是腾讯混元推出的开源基础模型，其核心思路是用自然语言指令加音频上下文这一统一接口，把语音生成与编辑整合到同一个模型中，而非分别依赖不同的专用系统。据项目主页与 GitHub、Hugging Face 仓库信息，AuK 提供基础版与 4 步蒸馏的 AuK-Flash 版本，并附带模型权重下载与推理命令。

**「影响」** AuK 以开源方式发布，代码、权重和演示均已上线，语音与 AI 开发者可直接基于其统一自然语言接口构建零样本 TTS、音色/风格/情绪编辑、去口音及多人语音分离等应用；AuK-Flash 的 4 步推理与约 4.5 倍加速若在匹配条件下成立，将降低此类音频编辑任务的推理成本。不过该发布为简短公告，性能数据尚未经独立验证，实际效果与部署条件仍需开发者自行评估。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://auk-project.github.io/">AuK — An Open - Source Foundational Model for Speech Generation...</a></li>
<li><a href="https://github.com/Tencent-Hunyuan/AuK">Tencent - Hunyuan / AuK : AuK : An Open - Source Foundational Model ...</a></li>
<li><a href="https://huggingface.co/tencent/AuK">tencent / AuK · Hugging Face</a></li>
<li><a href="https://github.com/Tencent-Hunyuan/AuK">Tencent - Hunyuan / AuK : AuK : An Open - Source Foundational Model ...</a></li>
<li><a href="https://www.orcarouter.ai/blog/auk-open-weights-speech-explained">AuK : Tencent &#x27;s Quiet Open -Weight 1.5B Speech Editor</a></li>
<li><a href="https://auk-project.github.io/">AuK — An Open - Source Foundational Model for Speech Generation...</a></li>

</ul>
</details>

**标签**: `#audio-editing`, `#text-to-speech`, `#open-source`, `#speech-generation`, `#Tencent-Hunyuan`

---

## 科技博客

<a id="item-tech-blog-1"></a>
### [机械 CPR 设备：LUCAS 与试验证据的反差](https://hackaday.com/2026/09/10/tech-in-plain-sight-meet-the-robot-that-does-cpr/) ⭐️ 6.0/10

rss · Hackaday · 9月10日 14:00

**「背景」** 心肺复苏中的胸外按压要求每分钟 100 至 120 次、深度约 5 至 6 厘米并保证胸廓完全回弹，是极耗体力的工作——研究显示按压深度在约 90 至 120 秒后就开始下降，因此急救团队通常每两分钟轮换一次。机械按压设备（如 LUCAS）正是为替代这一环节而生，但作者指出，大型随机试验并未证明它比高质量人工按压更能提高生存率。

**「方案」** LUCAS 源自瑞典隆德大学，2002 至 2003 年前后进入临床，早期为气动驱动，后续改用电机与电池。现款 LUCAS 3 形似小型台钻，跨在患者身上：背板置于躯干下方，框架锁定其上，电机通过皮带与滚珠丝杠驱动活塞，用吸盘状垫片按压胸骨，出厂设置约为每分钟 102 次、深度约 53 毫米。它的优势在于不知疲倦且不占用双手，让医护能同时处理通气、给药、除颤和静脉通路，并可在搬运、走廊转运和救护车中持续按压。但作者强调，证据并不支持常规替代人工按压：4,471 人的 PARAMEDIC 试验中 30 天生存率为 6.3%（LUCAS）对 6.8%（人工），无统计学差异；2,589 人的 LINC 试验四小时生存率为 23.6%对 23.7%，长期神经功能也无显著改善。ILCOR 因此不建议常规使用机械 CPR，仅将其视为持续人工按压不现实或会危及施救者时的合理替代。代价还包括安装时按压中断、可能更高的胸腔内损伤（如肺周出血）风险，以及罕见的设备故障或断电。同类设计还有 ZOLL AutoPulse 的环绕式载荷分布带，以及德国 corpuls cpr 的悬臂单臂活塞结构，后者可让胸部大部分区域保持无遮挡，便于心导管等操作。

**「启示」** 作者的核心结论是：机械 CPR 的价值不在于取代高质量人工按压，而在于人手不足、转运或施救者安全受威胁时提供持续、稳定的替代方案。这也提醒读者，技术上的“更精确、更不知疲倦”并不自动转化为临床生存获益。

**标签**: `#medical devices`, `#robotics`, `#CPR`, `#clinical trials`, `#emergency medicine`

---

<a id="item-tech-blog-2"></a>
### [用胶带与反卷积实现无镜头 3D 成像](https://hackaday.com/2026/09/10/3d-imaging-without-a-lens/) ⭐️ 5.0/10

rss · Hackaday · 9月10日 18:30

**「背景」** 常规 3D 成像依赖镜头与复杂数学，而\[okooptics\]此前已展示过一种更反直觉的做法：在 Raspberry Pi 相机上不装镜头，仅用一层透明胶带覆盖传感器充当散射体，再通过反卷积从模糊图像中恢复出真实画面。

**「方案」** 作者介绍，\[okooptics\]在此基础上把二维恢复推进到三维：对用于反卷积的点扩散函数（PSF）施加方向性偏置，使处理过程类似轻微移动相机位置，从而让前方物体呈现出略微不同角度的视图。文章称\[okooptics\]对背后的科学原理和实际局限做了不错的解释，并引用了深入探讨这些思路的研究论文，但作为一篇简短的二手报道，它没有给出第一手实验、测量结果或具体实现细节，例如 PSF 如何标定、采用何种反卷积算法、分辨率与质量之间如何权衡；其技术论断主要依托所链接的项目与论文，而非本文呈现的证据。评论区则补充了音频预失真、助听器补偿耳道几何以及定向超声等类比，但未对该成像方法本身提供验证。

**「启示」** 作者的核心观点是：从看似毫无信息的模糊图像中提取 3D 数据在数学上很重，但只要掌握正确方法就可行；对想深入了解的读者，值得进一步阅读\[okooptics\]此前用胶带替代镜头的相关工作。

**标签**: `#computational imaging`, `#lensless photography`, `#deconvolution`, `#point spread function`, `#3D imaging`

---

<a id="item-tech-blog-3"></a>
### [自制 AMOLED 颈饰：可穿戴屏幕的实战经验](https://hackaday.com/2026/09/10/custom-amoled-wearable-makes-great-icebreaker/) ⭐️ 5.0/10

rss · Hackaday · 9月10日 15:30

**「背景」** 如今小巧的 AMOLED 屏幕容易获取，但要把它们做成真正可穿戴的设备，仍面临显示驱动、供电和结构集成等实际挑战。作者 Donald Papp 在 Hackaday 上介绍了 Sophie D 设计的 OpenChoker——一款在 DEF CON 上颇受关注的 AMOLED 颈饰，并总结了其中的若干工程经验。

**「方案」** OpenChoker 由一块 AMOLED 触摸屏和两侧的 RGB LED 灯带组成，屏幕后方是搭载 RP2350 与 micro SD 卡槽的 PCB，颈饰后部则放置一枚 18650 电池供电；屏幕会实时生成动画，LED 同步闪烁。作者指出，PCB 设计的大部分工作量都花在与显示屏的接口上，因为找不到现成的封装或参考设计，因此使用 Hello Lighting HL020E21-02 2.14 英寸触摸屏的人可以直接参考 Sophie 的板子设计。续航方面，单枚 18650 电池可轻松支撑 16 小时，之后电压仍保持在 3.7 V，无需外接电池包。不过作者也提到一个值得注意的问题：该电容触摸屏接在开发电脑上时响应正常，一旦安装并隔离在颈饰上就几乎无法使用，虽然不影响其余功能，但同类设备需要留意。此外，作者还留下一个未解之谜：在只剩一天工期时，用于固定导线的胶水竟熔掉了导线绝缘层，露出裸铜，具体原因不明。

**「启示」** 作者认为，这个项目展示了 AMOLED 屏幕已足够轻薄、可被真正穿戴，同时也提醒可穿戴设计者：显示接口、触摸屏在隔离安装后的表现以及临期装配的意外，都是需要提前考虑的现实问题。

**标签**: `#wearables`, `#AMOLED display`, `#RP2350`, `#PCB design`, `#capacitive touch`

---

<a id="item-tech-blog-4"></a>
### [开源声学无人机探测：ESP32 并行算法方案](https://hackaday.com/2026/09/10/open-source-acoustic-drone-detection/) ⭐️ 5.0/10

rss · Hackaday · 9月10日 11:00

**「背景」** 小型多旋翼无人机速度快、难以目视发现，已成为一种现实威胁，而探测是应对它的第一步。在光纤无人机不再依赖射频信号的背景下，声学探测因其能捕捉螺旋桨特有的声音特征而重新受到关注。

**「方案」** 作者 Agam Rossen 的开源项目 VolAnti 采用四麦克风阵列，将四路 I2S 输出相加后送入 ESP32-S3，每 32 ms 执行一次 2048 点 FFT，并通过梳状评分在 70 Hz 至 2000 Hz 范围内匹配不同的桨叶通过频率。该设计最值得注意的一点是并行运行多种检测算法：作者发现，自适应噪声底会漏掉那些飞入区域后原地悬停的无人机——由于环境噪声不再变化，悬停目标会被噪声底滤除，因此四种算法中有一个不设噪声底，专门捕捉静止不动的目标。项目文件已发布在 GitHub 上。不过，这篇报道本身较短，主要是对他人项目的概述，没有给出实测探测距离、误报率或第一手测试数据；评论区虽有关于扩频 PWM 无法掩盖桨叶噪声等技术讨论，但属于读者观点而非文章内容。

**「启示」** 作者的核心洞见在于：单一的自适应噪声抑制策略会系统性地漏掉悬停目标，因此并行运行互补的检测算法比追求单一最优算法更可靠。这一思路对嵌入式声学感知乃至更广泛的信号检测场景都具有参考价值，但其实际性能仍有待实测验证。

**标签**: `#drone-detection`, `#acoustics`, `#embedded-systems`, `#esp32`, `#signal-processing`

---

<a id="item-tech-blog-5"></a>
### [ESP32-C3 电子纸实现 IPP 打印协议](https://hackaday.com/2026/09/10/if-its-electronic-paper-why-not-print-to-it/) ⭐️ 5.0/10

rss · Hackaday · 9月10日 08:00

**「背景」** 电子纸常被视为纸质书的电子替代品，但把内容送进设备的方式一直不如“打印”直观。Hackaday 报道了 Nishant Joshi 对 CrossPoint 固件的分支，让基于 ESP32-C3 的 Xteink X4 和 X3 电子阅读器能直接接收打印任务。

**「方案」** 该分支在 ESP32-C3 上实现了互联网打印协议（IPP），使设备在操作系统中显示为一台打印机：用户选择它并点击打印即可。设备向电脑声明自己支持 A5 纸、300 DPI、单面单色输出，并接受 Apple raster 与 PWG raster 格式。由于这些光栅图像远大于微控制器内存，像素按行接收并写入，既直接显示到屏幕，也保存到 SD 卡，SD 卡上的文件夹因此相当于打印机的出纸托盘。作者认为这种接口极其简单，并希望其他电子纸设备也能采用；评论者则补充了若干技术权衡：有观点指出 Xteink X3 的屏幕实际小于 A5 且低于 300 DPI，因此大量像素不会被渲染，真正困难的是尺寸与 DPI 向廉价打印机靠拢，而非传输协议；也有人建议支持 HP-GL、PostScript、PCL 等矢量格式以提升速度，或增加缩放、平移、翻页与直接保存原始文件的功能。另有评论从安全角度认为，打印过程把原始文件“打散”为位图，可充当恶意文件与安全可读文件之间的桥梁，但若想无损备份，仍需保留原始文件。

**「启示」** 作者的核心观点是，IPP 让电子纸设备以最通用的方式接收文档，这一思路值得推广；但评论也提醒，协议层的便利并不能替代显示尺寸与 DPI 这些决定“像纸一样阅读”的根本约束。

**标签**: `#e-ink`, `#embedded`, `#printing-protocols`, `#ESP32`, `#firmware-hacking`

---