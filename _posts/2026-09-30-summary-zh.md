---
layout: default
title: "Horizon Summary: 2026-09-30 (ZH)"
date: 2026-09-30
lang: zh
---

> 从 71 条内容中筛选出 12 条重要资讯。

---

**科技新闻**
1. [Anthropic：GLM-5.3 与 Claude Mythos Preview 首次实现完整控制流劫持](#item-tech-news-1) ⭐️ 8.0/10
2. [OpenAI 开发者大会发布 Dots 智能体等 20 余项更新](#item-tech-news-2) ⭐️ 8.0/10
3. [实时太阳系可视化：52.6 万颗小行星与全部在轨卫星](#item-tech-news-3) ⭐️ 7.0/10
4. [德里电力损耗从 50%降至 5%的启示](#item-tech-news-4) ⭐️ 7.0/10
5. [PS5 Relapse 漏洞利用：基于 WebKit JavaScriptCore 的越狱](#item-tech-news-5) ⭐️ 7.0/10
6. [对话式 AI 代理的隐私分析：提示泄露与追踪](#item-tech-news-6) ⭐️ 7.0/10
7. [Tcl/Tk 9.1 发布，社区回顾其持久魅力](#item-tech-news-7) ⭐️ 7.0/10
8. [OpenAI 推出常驻代理产品 Dots](#item-tech-news-8) ⭐️ 7.0/10
9. [免费开源新书：从硅到智能体的 ML 性能工程](#item-tech-news-9) ⭐️ 7.0/10
10. [甲骨文就星际之门新墨西哥数据中心发不可抗力通知](#item-tech-news-10) ⭐️ 7.0/10
11. [Cloudflare 发布面向 AI Agent 的 cf CLI 开放测试版](#item-tech-news-11) ⭐️ 7.0/10
12. [苹果新 CEO 特努斯推动提速与组织精简](#item-tech-news-12) ⭐️ 7.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [Anthropic：GLM-5.3 与 Claude Mythos Preview 首次实现完整控制流劫持](https://simonwillison.net/2026/Sep/29/anthropic-frontier-red-team/) ⭐️ 8.0/10

Anthropic 前沿红队在内部二进制漏洞利用基准（Binary Exploitation benchmark）上随机抽取 100 项任务评估多个模型，发现 GLM-5.3 在 4% 的试验中实现了完整的控制流劫持，Claude Mythos Preview 则为 6%。该机构认为这标志着一个有意义的门槛已被跨越：此前的模型如 Claude Opus 4.6 和 GLM-5.2 在这些任务中无一成功。相关结论出自 Anthropic 的研究文章《GLM-5.3 and the spread of advanced cyber capabilities》，由 Simon Willison 引用。

rss · Simon Willison · 9月29日 22:20

**「背景」** 二进制漏洞利用基准测试用于衡量模型能否自主发现并利用软件漏洞，其中“控制流劫持”指攻击者改变程序执行路径，是完整端到端漏洞利用的关键一步。Anthropic 前沿红队（Frontier Red Team）长期评估前沿模型的网络攻击能力，此次针对智谱 AI（Z.ai）的开放权重模型 GLM-5.3 展开测试，并将其与 Claude Mythos Preview、Claude Opus 4.6、GLM-5.2 等模型对比。

**「影响」** 对安全从业者而言，这意味着具备自主漏洞利用能力的模型已不再局限于闭源前沿系统：GLM-5.3 作为开放权重模型，其能力可被用户改造以削弱拒答防护，从而扩大恶意行为者可获得的攻击工具面。不过该结论基于 Anthropic 内部 Binary Exploitation 基准的 100 项随机任务，4% 与 6% 的成功率仍属低比例，尚不足以推断真实场景中的普遍可利用性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.anthropic.com/research/glm-5-3-and-the-spread-of-advanced-cyber-capabilities">GLM-5.3 and the spread of advanced cyber capabilities - Anthropic</a></li>
<li><a href="https://simonwillison.net/2026/Sep/29/anthropic-frontier-red-team/">A quote from Anthropic Frontier Red Team - Simon Willison&#x27;s Weblog</a></li>
<li><a href="https://www.reddit.com/r/LocalLLaMA/comments/1wtg0vd/glm53_and_the_spread_of_advanced_cyber/">GLM-5.3 and the Spread of Advanced Cyber Capabilities \ Anthropic</a></li>

</ul>
</details>

**标签**: `#ai-security-research`, `#anthropic`, `#generative-ai`, `#cyber-capabilities`, `#benchmarks`

---

<a id="item-tech-news-2"></a>
### [OpenAI 开发者大会发布 Dots 智能体等 20 余项更新](https://openai.com/zh-Hant/index/devday-2026-recap/) ⭐️ 8.0/10

OpenAI 在其开发者大会回顾中宣布了 20 余项更新，核心包括可全天候自主运转、学习用户习惯并主动接管长线复杂工作的常驻智能体 Dots。模型方面推出 GPT-6.1 Sol 与 Astra Ultrafast：前者专精编程与电脑操控，据称以五分之一的价格获得接近 Astra 的智能水平；后者速度最高提升 8 倍，API 场景提升 6 倍。开发者能力上，Codex 登陆云端并支持语音操控与自动修障，Agents API 原生开放电脑操控与 AWS Bedrock 托管，另有聚焦 Luna 模型、用于文本/图像输入下有限选项分类、路由及 Agent 动作决策的轻量实时 Decisions API。生态方面推出“Sign in with ChatGPT”，可将订阅额度直接划拨至 Devin、Notion 等第三方工具，并新增 Pro 500 档位，算力额度为 Plus 的 25 倍且专享 Astra Ultrafast。上述速度与价格数据均来自厂商说法，暂无独立验证。

telegram · zaihuapd · 9月29日 17:52

**「背景」** OpenAI DevDay 是该公司面向开发者举办的年度发布活动，历届均集中公布模型、API 与开发者工具更新。2026 年的 DevDay 被官方称为迄今规模最大的一届，共发布 20 余项公告，涵盖 GPT-6 Astra、ChatGPT、Codex、API 与安全工具等方向。本次推出的 Dots 常驻智能体、GPT-6.1 Sol 与 Astra Ultrafast 等即属于该批发布内容。

**「影响」** 对开发者而言，Agents API 原生开放电脑操控并支持 AWS Bedrock 托管，意味着可在生产环境中构建更可靠的智能体；同时“Sign in with ChatGPT”允许将订阅额度划拨至 Devin、Notion 等第三方工具，可能改变第三方 AI 工具的计费与接入方式。不过上述能力与性能数据均来自 OpenAI 官方发布，尚待独立验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://openai.com/index/devday-2026-recap/">DevDay 2026 Recap | OpenAI</a></li>
<li><a href="https://www.gptunnel.ru/en/blog/openai-dots-gpt-6-1-sol">Dots and GPT - 6 . 1 Sol : what OpenAI launched · GPTunneL</a></li>
<li><a href="https://www.techmeme.com/260929/p35">Techmeme: OpenAI says users can message Dots through ChatGPT...</a></li>
<li><a href="https://www.cnbc.com/2026/09/29/openai-devday-2026-live-updates.html">OpenAI DevDay 2026: Live updates and announcements - CNBC</a></li>
<li><a href="https://simonwillison.net/2026/Sep/29/openai-devday-2026-live-blog/">OpenAI DevDay 2026 live blog - Simon Willison&#x27;s Weblog</a></li>
<li><a href="https://openai.com/index/introducing-the-agents-api/">Introducing the Agents API - OpenAI</a></li>

</ul>
</details>

**标签**: `#OpenAI`, `#AI agents`, `#developer APIs`, `#LLM models`, `#AI industry news`

---

<a id="item-tech-news-3"></a>
### [实时太阳系可视化：52.6 万颗小行星与全部在轨卫星](https://space.bl2.net/) ⭐️ 7.0/10

开发者 wanick 在 Hacker News 上发布了 space.bl2.net，一个在浏览器中以真实比例实时呈现太阳系的 WebGL2 可视化项目，渲染约 52.6 万颗小行星以及 CelesTrak 目录中所有被跟踪的卫星。数据来源包括 CelesTrak 的 TLE（用 SGP4 传播）、JPL SBDB 的小行星与彗星，以及 JPL Horizons 的航天器位置，并每日更新。轨道传播在 web workers 中运行，约 30 MB 的小行星数据集在后台加载；时间滑块可正反向运行，卫星会按发射日期出现或消失。该项目展示了开放天文数据与浏览器端高性能渲染结合的可行性，但评论者指出 Celestia 十多年前已实现类似甚至更多的功能。

hackernews · wanick · 9月29日 19:08 · [社区讨论](https://news.ycombinator.com/item?id=49898778)

**「背景」** TLE（两行轨道根数）是北美防空司令部及 CelesTrak 等机构发布的人造天体轨道数据格式，SGP4 是据此推算卫星位置的标准模型。JPL SBDB 收录小行星与彗星的轨道要素，JPL Horizons 则提供航天器的精确星历。Celestia 是 2001 年起流行的开源三维太空模拟软件，常被用作此类可视化项目的参照。

**「影响」** 对天文爱好者和开放数据开发者而言，该项目提供了一个无需安装、可直接在浏览器中查看真实尺度太阳系与在轨物体的工具，并验证了在客户端用 web workers 处理数十万条轨道传播的可行性。

**「社区讨论」** 评论者普遍称赞视觉效果，有人追踪 Europa Clipper 的第二次地球引力助推，也有人喜欢关闭卫星与航天器后场景的宁静感。一位用户指出自己的小行星（Minor Planet 31689 - Sebmellen）未被收录，另有评论认为 Celestia 十多年前已实现类似功能，作者则回应了数据来源与渲染实现细节。

**标签**: `#visualization`, `#webgl`, `#astronomy`, `#open-data`, `#web-workers`

---

<a id="item-tech-news-4"></a>
### [德里电力损耗从 50%降至 5%的启示](https://spectrum.ieee.org/delhi-electricity-loss) ⭐️ 7.0/10

IEEE Spectrum 报道称，德里将电力配电损耗从 50% 降至 5%，这是一项涉及电网基础设施、计量与治理的重大成就。Hacker News 的讨论补充了第一手背景：对许多当地居民而言，比降低损耗更具革命性的是消除了频繁的“拉闸限电”（非计划停电），过去一天可能停电数次，恢复供电时还常伴随电压浪涌，迫使人们匆忙拔掉电视、笔记本电脑等贵重电器。评论还提到，防窃电措施包括对进入社区的电力线路进行绝缘处理，这带来了一个意外副作用：猴子得以把电线当作“道路”，在社区间成群移动并接近公寓楼上层。另有评论者指出，印度其他地区（如泰米尔纳德邦 Tambaram 和 Chennai）在供水、污染和停电方面仍面临严重问题，说明德里的经验未必能简单复制。

hackernews · rbanffy · 9月29日 12:43 · [社区讨论](https://news.ycombinator.com/item?id=49892245)

**「背景」** 电力配送损耗指电力从电网输送到用户过程中因技术原因（如线路电阻、变压器效率）和商业原因（如窃电、计量不准确）而损失的电量，通常以占输入电量的百分比衡量。在印度等地区，窃电长期是损耗高企的重要原因，既涉及普通居民也涉及有势力者。德里此次将损耗从 50%降至 5%，属于配电系统治理与基础设施改造层面的成果。

**「影响」** 德里将配电损耗从 50%降至约 5%–6%，直接意味着电力公司能对更大比例的电量收费，从而改善其财务可持续性并减少为弥补损耗而加价的压力；对居民而言，社区讨论指出真正的改变还包括摆脱每日多次的非计划停电和恢复供电时的电压浪涌。

**「社区讨论」** 评论者普遍认可降低损耗的意义，但强调消除非计划停电才是更根本的改善，并回忆了停电与恢复供电浪涌带来的实际困扰。讨论还延伸到防窃电绝缘线路导致猴子借电线移动的意外后果，以及印度其他城市在供水、污染和停电方面仍存在的差距，显示该成就的适用范围和可复制性存在争议。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://spectrum.ieee.org/delhi-electricity-loss">How Delhi Cut Electricity Loss from 50 to 5 Percent - IEEE Spectrum</a></li>
<li><a href="https://news.ycombinator.com/item?id=49892245">How Delhi cut electricity loss from 50 to 5 percent | Hacker News</a></li>
<li><a href="https://spectrum.ieee.org/delhi-electricity-loss">How Delhi Cut Electricity Loss from 50 to 5 Percent - IEEE Spectrum</a></li>
<li><a href="https://timesofindia.indiatimes.com/city/delhi/from-50-losses-to-6-how-delhi-fixed-its-power-loses/articleshow/130121379.cms">From 50% losses to 6%: How Delhi fixed its power loses | Delhi News - The Times of India</a></li>
<li><a href="https://www.newsdirectory3.com/delhi-reduces-power-distribution-losses-from-50-to-6/">Delhi reduces power distribution losses from 50% to 6% - News Directory 3</a></li>

</ul>
</details>

**标签**: `#energy-infrastructure`, `#power-grid`, `#india`, `#technology-policy`, `#hardware`

---

<a id="item-tech-news-5"></a>
### [PS5 Relapse 漏洞利用：基于 WebKit JavaScriptCore 的越狱](https://github.com/ntfargo/Relapse-Exploit) ⭐️ 7.0/10

GitHub 上出现了名为 Relapse-Exploit 的 PS5 漏洞利用项目，作者为 ntfargo，该利用针对 WebKit 的 JavaScriptCore JavaScript 引擎中的漏洞。社区讨论指出，该漏洞可能通过 JIT 相关的攻击面实现越狱，并关注索尼是否会通过禁用 JIT 来缩小攻击面。该项目的实际影响尚不明确，因为目前没有可用的源代码内容或技术细节。

hackernews · therepanic · 9月29日 15:44 · [社区讨论](https://news.ycombinator.com/item?id=49895304)

**「背景」** PS5 的越狱通常需要串联多个漏洞：先通过浏览器等入口获得代码执行，再突破系统内核与引导链的限制。Relapse 属于这类漏洞利用链，据外部报道其覆盖固件 7.00 至 13.60，结合 WebKit 浏览器漏洞与内核 use-after-free 缺陷实现越狱。社区讨论中有人指出该漏洞位于 WebKit 的 JavaScriptCore 引擎，并关注 PS5 是否启用了 JIT，以及索尼是否会通过关闭 JIT 来缩小攻击面。

**「影响」** 对 PS5 用户而言，该漏洞的实际价值取决于其能否在目标固件版本上稳定触发，并可能促使索尼通过限制 WebKit 的 JIT 来收窄攻击面。

**「社区讨论」** 评论者关注该漏洞是否可用于备份游戏存档到 USB，因为 PS5 限制本地备份并强制使用 PS Plus 云备份。有人推测越狱社区可能持有更多零日漏洞用于突破引导程序，也有人担心索尼会通过禁用 JIT 来应对。另有评论希望该漏洞能等到《GTA6》发布后再公开，或期待能在 PS5 上玩 Steam PC 游戏。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://elsolitario.org/en/2026/09/29/relapse-repo-claims-ps5-exploit-firmware-7-00-to-13-60/">PS5 Jailbreak: What Is Relapse Exploit and Its Scope - El Solitario</a></li>
<li><a href="https://intragoals.com/article/new-ps5-jailbreak-tool-relapse-covers-firmware-7-00-through-13-60-91">New PS5 Jailbreak Tool Relapse Covers Firmware 7.00 Through 13.60</a></li>
<li><a href="https://news.ycombinator.com/item?id=49895304">PS5 Relapse Exploit - Hacker News</a></li>
<li><a href="https://news.ycombinator.com/item?id=49895304">PS5 Relapse Exploit - Hacker News</a></li>

</ul>
</details>

**标签**: `#security`, `#exploit`, `#PS5`, `#WebKit`, `#jailbreak`

---

<a id="item-tech-news-6"></a>
### [对话式 AI 代理的隐私分析：提示泄露与追踪](https://jorgegarciaherrero.com/wp-content/interactivos/20260916-Prompt-like-a-butterfly-sting-like-a-tracker-%28clean%29.pdf) ⭐️ 7.0/10

一篇题为《A Privacy Analysis of Web and Mobile Conversational AI Agents》的论文对网页端与移动端对话式 AI 代理进行了隐私分析，并在 Hacker News 上引发了关于提示泄露、追踪以及会话 URL 隐私薄弱的讨论。评论者 pbasista 指出，ChatGPT 在网页浏览器中会周期性地将未完成的提示发送到\`conversation/prepare\`端点，而不等待用户真正发送，这些部分提示数据可能被用于预热缓存，也可能被用于追踪用户的写作节奏、纠错风格以及想法演变。评论者 postalcoder 表示，许多 AI 聊天服务把 URL 中的 UUID 等同于隐私，Perplexity 即如此，访问过去的搜索 URL 会暴露完整对话。评论者 kdaniel\_03 将此与本月早些时候 Navier-Stokes 署名争议联系起来，指出无论涉及训练数据还是广告追踪，本应保持私密的提示和结果都未能得到保护。这些评论多为个人观察与轶事，而非严格证据。

hackernews · damaru2 · 9月29日 09:03 · [社区讨论](https://news.ycombinator.com/item?id=49890226)

**「背景」** 对话式 AI 服务通常以网页或移动应用形式提供，其界面往往直接嵌入标准的网页与移动端追踪器（如 Meta Pixel 等广告技术），因此隐私风险不仅限于面向消费者的聊天产品，也波及基于大模型的网页应用、定制客服机器人和第三方 AI 封装服务。该论文题为《Prompt like a Butterfly, Sting like a Tracker》，由 IMDEA 的研究人员撰写，分析了这些追踪机制如何将对话标题、对话 URL，乃至部分提示词和截图传递给以广告为主业的第三方公司。

**「影响」** 对使用网页版或移动端对话式 AI 的用户而言，未发送的提示词可能被提前传输、会话 URL 仅靠 UUID 保护，意味着私人对话内容存在被第三方追踪或意外暴露的风险。

**「社区讨论」** 社区讨论集中在提示数据在用户发送前被传输、基于 UUID 的会话 URL 可被直接访问，以及 AI 公司数据收集与广告追踪之间的张力。有评论者认为这些广告机制可能较为仓促，或与投资者对盈利的要求相冲突；也有人主张开源模型即便不完美也应胜出，因为可以跳过应用直接运行模型。整体上评论多为个人经验与推测，缺乏系统性验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://jorgegarciaherrero.com/wp-content/interactivos/20260916-Prompt-like-a-butterfly-sting-like-a-tracker-%28clean%29.pdf">Prompt like a Butterfly, Sting like a Tracker: A Privacy Analysis of</a></li>
<li><a href="https://dev.to/jamilxt/your-ai-chatbot-is-talking-to-advertisers-behind-your-back-what-a-new-tracking-study-found-1e2d">Your AI Chatbot Is Talking to Advertisers Behind Your Back: What a New Tracking Study Found - DEV Community</a></li>
<li><a href="https://leakylm.github.io/">LeakyLM — AI Assistants Are Leaking Your Conversations</a></li>

</ul>
</details>

**标签**: `#privacy`, `#conversational-ai`, `#web-tracking`, `#llm-security`, `#mobile-agents`

---

<a id="item-tech-news-7"></a>
### [Tcl/Tk 9.1 发布，社区回顾其持久魅力](https://www.tcl-lang.org/software/tcltk/9.1.html) ⭐️ 7.0/10

Tcl/Tk 9.1 已发布，这是这一长期存在的开源脚本语言与 GUI 工具包的最新版本。该消息在 Hacker News 上引发讨论，社区成员回顾了 Tcl/Tk 的历史地位：Tk 曾是 Unix 与 X Window System 上以开源方式快速构建“够用”图形界面程序的最简便途径，甚至比 XView 等更易用的 C 工具包还简单。评论者还称赞 Tcl 基于字符串的设计带来的独特元编程能力，以及项目在稳定性、务实性和轻量级跨平台开发方面的长期维护。不过，此次发布属于增量更新而非范式转变，现有信息主要来自发布页面与社区评论，缺少具体技术变更细节。

hackernews · dmux · 9月29日 17:13 · [社区讨论](https://news.ycombinator.com/item?id=49896712)

**「背景」** Tcl 是一种基于字符串的脚本语言，Tk 是其配套的跨平台 GUI 工具包，两者常合称 Tcl/Tk。Tcl/Tk 在 Unix 和 X Window System 时代因能相对轻松地构建“够用”的图形界面而流行，被视为开源 GUI 开发的先驱之一。Tcl 9.1 是 Tcl 9 系列的一个次要版本，相比 Tcl 9.0 引入了新特性和接口，同时要求 C 编译器支持 C11 的强制性特性。

**「影响」** 对依赖 Tcl/Tk 进行跨平台 GUI 开发的用户而言，9.1 在 9.0 基础上新增功能与接口，延续了该工具包以轻量和易用著称的定位；但作为面向 2026 年 9 月稳定版的开发工作，其具体变更细节在现有资料中尚不完整。

**「社区讨论」** 社区普遍对 Tcl/Tk 9.1 表示欢迎与祝贺，认为它是目前最简单的 GUI 系统之一，并赞赏核心团队对稳定性与跨平台轻量开发的长期投入。多位评论者强调 Tcl 基于字符串、可深度元编程的设计既有趣又独特，但也有人表示对其“过于聪明”的特性会保持谨慎，未必会在专业场景中使用。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/tcltk/tcl/releases">Releases · tcltk/tcl - GitHub</a></li>
<li><a href="https://core.tcl-lang.org/tips/doc/trunk/tip/715.md">TIP 715: Supported platforms and build environments for Tcl/Tk 9.1</a></li>
<li><a href="https://sourceforge.net/p/tcl/mailman/tcl-core/thread/b97aad53-f7f8-42b7-aa5b-a0e3cf2410f6@nist.gov/">Thread: [TCLCORE] Tk 9.1b1 RELEASED | Tcl - SourceForge</a></li>
<li><a href="https://www.tcl-lang.org/software/tcltk/9.1.html">Tcl/Tk 9.1</a></li>

</ul>
</details>

**标签**: `#tcl`, `#tk`, `#open-source`, `#gui-toolkit`, `#scripting-languages`

---

<a id="item-tech-news-8"></a>
### [OpenAI 推出常驻代理产品 Dots](https://openai.com/index/introducing-dots/) ⭐️ 7.0/10

OpenAI 发布了名为 Dots 的常驻代理（always-on agent）产品，其官方介绍页面为 openai.com/index/introducing-dots/。该消息在 Hacker News 上引发广泛讨论，帖子获得 469 分、356 条评论，讨论焦点集中在平台锁定、产品定位以及与 Codex、ChatGPT Work 之间的功能重叠。由于目前仅有标题、链接和评论摘录，缺乏技术细节、基准测试或能力说明，社区讨论多为推测性和战略层面的分析，而非已验证的技术突破。

hackernews · alvis · 9月29日 17:07 · [社区讨论](https://news.ycombinator.com/item?id=49896604)

**「背景」** OpenAI 于 2026 年 9 月 29 日发布 Dots，将其定位为可跨应用自主推进用户目标的常驻型（always-on）AI 智能体，被视为对 Meta 旗下个人智能体 Muse 的直接回应。据 VentureBeat 报道，Dots 被描述为一种持久化 AI 智能体，在员工关闭聊天窗口后仍继续工作，可监控项目并使用软件；OpenAI 同时推出了 ChatGPT Space，供智能体与人类团队协作。此前 Codex 与 ChatGPT Work 已覆盖部分编码与办公场景，因此社区对 Dots 与既有产品线的边界存在疑问。

**「影响」** 对开发者而言，Dots 这类常驻代理因深度集成、工作历史和云端环境而显著提高迁移成本，可能强化对 OpenAI 生态的锁定；但现有证据仅来自社区推测与二手报道，尚无官方技术细节或基准数据可证实其实际能力与差异化。

**「社区讨论」** 评论者普遍担忧常驻代理会加深平台锁定：aditya\_rs 指出，与可相对容易切换的模型不同，代理因涉及与其他平台的集成和工作历史，实质上相当于云端个人电脑，迁移成本更高。wxw 认为 Codex、ChatGPT Work 与 Dots 之间的界限日益模糊，并更看好 Meta 的 Muse，认为其可依靠广告补贴并在家族应用中获客。johnfahey 则批评 OpenAI 在凭借 Codex 订阅和模型效率赢得用户后，可能收紧此前的慷慨额度并推销非必要产品，并称 Anthropic 也有类似做法。jameslk 进一步提出，Muse、Dots 等常驻代理可能意味着 PC 时代的终结，这些服务面向的是非技术用户和下一代 AI 原住民。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.reuters.com/business/openai-takes-meta-with-always-on-dots-agent-enterprise-ai-push-2026-09-29/">OpenAI takes on Meta with dots agent in autonomous AI push | Reuters</a></li>
<li><a href="https://www.axios.com/2026/09/29/openai-dots-ai-assistant-devday">OpenAI launches dots AI assistant to take on Meta&#x27;s Muse - Axios</a></li>
<li><a href="https://venturebeat.com/technology/openai-launches-dots-always-on-ai-agent-coworkers-and-chatgpt-space-where-they-can-collaborate-with-human-teams">OpenAI launches Dots, always-on AI agent coworkers, and ChatGPT ...</a></li>
<li><a href="https://tech-insider.org/openai-dots-meta-muse-enterprise-agent-2026/">OpenAI Dots vs Meta Muse: 4,000-App Enterprise Agent</a></li>
<li><a href="https://www.facebook.com/ramonray/posts/blink-twice-if-your-openai-codex-is-down-sigh-its-realdont-panic-just-give-it-ti/10167990342832589/">OpenAI ChatGPT experiencing issues with elevated errors and latency</a></li>

</ul>
</details>

**标签**: `#AI agents`, `#OpenAI`, `#platform lock-in`, `#developer tooling`, `#industry analysis`

---

<a id="item-tech-news-9"></a>
### [免费开源新书：从硅到智能体的 ML 性能工程](https://www.reddit.com/r/MachineLearning/comments/1wt6ns4/i_wrote_a_free_opensource_book_on_making_ml/) ⭐️ 7.0/10

作者 /u/SoloTiger\_ 发布了一本免费开源的书《How to Make Your Model Fast: A Systems View of Efficient Machine Learning, from Silicon to Agents》，旨在讲解如何让机器学习模型真正变快。全书的核心论点是：减少 FLOPs 并不必然带来加速，优化前必须先判断系统究竟受限于计算、带宽、内存还是整体系统。内容从 roofline 分析和硬件讲起，逐层覆盖 kernel、编译器、量化、剪枝、视觉、端侧 LLM、机器人、性能剖析、服务化，最后延伸到智能体系统。作者希望读者能据此判断某个模型在给定硬件上的速度上限，以及量化、剪枝或 kernel 优化是否值得做。项目托管在 GitHub（usamahz/make-your-model-fast），作者欢迎 ML 系统、推理、编译器、边缘 AI 和性能工程领域的反馈与贡献。

reddit · r/MachineLearning · /u/SoloTiger\_ · 9月29日 10:35

**「背景」** 在机器学习性能工程中，FLOPs 常被当作效率指标，但实际运行速度往往由内存带宽、数据搬运和系统开销决定，因此单纯削减计算量未必能缩短延迟。Roofline 分析是判断一个工作负载受计算还是带宽限制的常用方法，而量化、剪枝、kernel 优化和编译器优化各自针对不同的瓶颈。这本书试图把这些分散的主题串成一条从底层硬件到上层智能体系统的完整推理链条。

**「影响」** 对从事推理优化、编译器、边缘 AI 和性能工程的开发者而言，这本书提供了一套可复用的系统级判断框架，帮助在动手优化前先定位真正的瓶颈。不过目前仅有作者本人的概述，尚无独立验证或社区评价。

**标签**: `#machine-learning`, `#performance-engineering`, `#model-optimization`, `#systems`, `#open-source`

---

<a id="item-tech-news-10"></a>
### [甲骨文就星际之门新墨西哥数据中心发不可抗力通知](https://www.bloomberg.com/news/articles/2026-09-24/oracle-cites-force-majeure-to-shield-itself-on-controversial-data-center) ⭐️ 7.0/10

据报道，甲骨文已就星际之门（Stargate）旗下新墨西哥州 Project Jupiter 数据中心发出不可抗力通知，原因是该项目 2.45GW 配套微电网的环境与供电审批迟迟未落地。甲骨文拟在外部因素导致延期时推迟部分付款，而该数据中心面临 2028 年投运延期的风险。事件引发市场对超大型 AI 数据中心建设进度的担忧，相关 180 亿美元银团贷款出现折价交易。目前星际之门多数项目仍处于土建、审批和能源配套阶段，仅得州阿比林园区等少数项目投产，得州也已暂停新数据中心项目审批。

telegram · zaihuapd · 9月29日 05:46

**「背景」** 星际之门（Stargate）是 OpenAI 与甲骨文等合作推进的超大规模 AI 数据中心计划，Project Jupiter 是其位于新墨西哥州的一个园区项目。甲骨文在该项目中承担付款责任，Blue Owl 等投资方已投入约 30 亿美元。此次不可抗力通知的背景是项目配套的 2.45GW 微电网环境与供电审批迟迟未获批，据报园区面临约一年的延期。

**「影响」** 由桑坦德、杰富瑞等银行牵头的约 180 亿美元杠杆贷款目前报价已跌至面值的 89 至 91 美分，显示市场不再将该债务视为无风险。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://news.google.com/stories/CAAqNggKIjBDQklTSGpvSmMzUnZjbmt0TXpZd1NoRUtEd2lua3MyQ0VoSHZIZ3lOMEhKYkJpZ0FQAQ?hl=en-PK&amp;gl=PK&amp;ceid=PK:en">Report: Oracle sends force majeure notice over data center project ...</a></li>
<li><a href="https://runtimewire.com/article/oracle-project-jupiter-force-majeure-power-delay">Oracle invokes force majeure as power delays test its New Mexico ...</a></li>
<li><a href="https://www.ft.com/content/a96bf05a-a299-4d6a-a753-b298dd0f4016?syn-25a6b1a6=1">Oracle on the hook to pay data centre investors even if site has no...</a></li>
<li><a href="https://www.martincid.com/business/oracle-project-jupiter-force-majeure/">Oracle bet $165B on Stargate AI . A gas pipeline permit is holding it up</a></li>

</ul>
</details>

**标签**: `#AI infrastructure`, `#data centers`, `#Oracle`, `#Stargate`, `#energy regulation`

---

<a id="item-tech-news-11"></a>
### [Cloudflare 发布面向 AI Agent 的 cf CLI 开放测试版](https://blog.cloudflare.com/cloudflare-cf-cli-launch/) ⭐️ 7.0/10

Cloudflare 发布了名为 cf 的命令行工具开放测试版，目标是让开发者和 AI Agent 通过命令行调用 Cloudflare 的全部 API。cf 由 API Schema 生成，覆盖超过 3,000 项 API 操作，而现有 Wrangler 仅覆盖约 280 种操作。该工具以 JSON 作为默认输出，并支持命令搜索和引导，便于 Agent 自动发现、执行操作并处理结果。Cloudflare 举例称，Agent 可通过同一工具创建和部署 Worker、监控服务、配置 Access 与 WAF，甚至购买域名。

telegram · zaihuapd · 9月29日 13:46

**「背景」** Cloudflare 此前主要通过 Wrangler 命令行工具管理 Workers 等产品，但 Wrangler 长期积累的操作仅约 280 项，无法覆盖 Cloudflare 完整的 API 面。cf CLI 则基于 Cloudflare 的 OpenAPI Schema 自动生成，由新开源的 Forge 流水线驱动，从而将覆盖范围扩展到 3,000 多项 API 操作。该工具于 2026 年 9 月 28 日发布开放测试版，定位为面向 AI Agent 的“agentic CLI”。

**「影响」** 对开发者与 AI Agent 构建者而言，cf 将 Cloudflare 的 API 操作从 Wrangler 的约 280 项扩展到 3,000 项以上，并以 JSON 默认输出和命令发现能力降低 Agent 自动调用与结果处理的集成成本。该工具目前处于开放测试阶段，且其 TypeScript 配置格式从 Workers 起步，实际覆盖范围与稳定性仍需观察。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blog.cloudflare.com/cloudflare-cf-cli-launch/">Introducing cf: the agentic CLI for the entire Cloudflare API | Cloudflare Blog</a></li>
<li><a href="https://daily.dev/posts/introducing-cf-the-agentic-cli-for-the-entire-cloudflare-api-2x4miixan">Introducing cf: the agentic CLI for the entire Cloudflare API | daily.dev</a></li>
<li><a href="https://blog.bokvi.com/blog/cloudflare-cf-cli/">Cloudflare&#x27;s cf CLI: The Whole API, and a Clock on Wrangler</a></li>
<li><a href="https://blog.cloudflare.com/cloudflare-cf-cli-launch/">Introducing cf : the agentic CLI for the entire... | Cloudflare Blog</a></li>
<li><a href="https://dev.to/mech_app_ai/cloudflares-cf-cli-agentic-design-patterns-for-command-line-tools-3ffo">Cloudflare &#x27;s cf CLI : Agentic Design Patterns for Command - Line Tools</a></li>
<li><a href="https://github.com/cloudflare/cf">GitHub - cloudflare / cf : The agentic CLI for the entire Cloudflare API</a></li>

</ul>
</details>

**标签**: `#cloudflare`, `#cli`, `#ai-agents`, `#developer-tools`, `#api`

---

<a id="item-tech-news-12"></a>
### [苹果新 CEO 特努斯推动提速与组织精简](https://www.bloomberg.com/news/articles/2026-09-29/apple-s-new-ceo-moves-to-overhaul-company-to-run-faster-and-leaner) ⭐️ 7.0/10

彭博社与路透社报道，苹果新任 CEO 约翰·特努斯（John Ternus）上任数周后已开始推动公司改革，目标是加快产品开发、扩大产品线，并让组织更精简、更聚焦工程。具体举措包括考虑减少对春季、秋季固定发布节奏的依赖，让新品在全年更灵活地推出，同时精简部分中层管理岗位，缩短工程团队与高层之间的决策链条。特努斯还在寻找新的收入来源，并探索如何从现有产品中获得更多收入。上述报道为简要的二手摘要，未提供已确认的具体细节。

telegram · zaihuapd · 9月30日 01:07

**「背景」** 约翰·特努斯长期担任苹果硬件工程负责人，于 2026 年 9 月 1 日接替蒂姆·库克出任苹果 CEO。苹果此前长期依赖春季与秋季的固定产品发布节奏，并维持层级较多的管理结构。特努斯上任数周后即推动改革，试图让产品开发更快、发布更灵活，并让工程团队更接近高层决策。

**「影响」** 若苹果减少对春秋两季固定发布节奏的依赖，其产品发布窗口将更分散，投资者和消费者对年度产品周期的预期可能随之改变；同时精简中层管理、缩短工程团队与高层的决策链条，可能加快工程决策速度，但也可能带来组织调整期的不确定性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.bloomberg.com/news/articles/2026-09-29/apple-s-new-ceo-moves-to-overhaul-company-to-run-faster-and-leaner">What Is Ternus’ Strategy for Apple? Running Faster and Leaner - Bloomberg</a></li>
<li><a href="https://macdailynews.com/2026/09/29/new-ceo-john-ternus-wants-apple-to-get-back-to-work/">New CEO John Ternus wants Apple to get back to work - MacDailyNews</a></li>
<li><a href="https://www.theapplepost.com/2026/09/29/72805/john-ternus-wants-apple-to-launch-more-products-faster-in-major-company-overhaul/">John Ternus wants Apple to launch more products faster in major company overhaul</a></li>
<li><a href="https://www.cnbc.com/2026/09/10/apple-makes-biggest-change-to-iphone-release-cadence-in-7-years.html">Apple makes biggest change to iPhone release cadence in 7 years in Ternus&#x27; first showcase as CEO</a></li>
<li><a href="https://www.gurufocus.com/news/9101859/apple-ceo-john-ternus-considers-overhaul-of-product-launch-strategy-aapl">Apple CEO John Ternus Considers Overhaul of Product Launch Strategy (AAPL)</a></li>
<li><a href="https://9to5mac.com/2026/09/29/john-ternus-apple-new-products-leaner/">John Ternus wants to reshape Apple, here&#x27;s how - 9to5Mac</a></li>

</ul>
</details>

**标签**: `#Apple`, `#tech industry`, `#organizational change`, `#product development`, `#leadership`

---