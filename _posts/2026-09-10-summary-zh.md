---
layout: default
title: "Horizon Summary: 2026-09-10 (ZH)"
date: 2026-09-10
lang: zh
---

> 从 65 条内容中筛选出 18 条重要资讯。

---

**科技新闻**
1. [Calif Research 称用 AI 九天造出微信通话零点击蠕虫](#item-tech-news-1) ⭐️ 9.0/10
2. [vLLM v0.29.0 发布：Model Runner V2 成为默认](#item-tech-news-2) ⭐️ 8.0/10
3. [Shopify 收购 Tailwind Labs](#item-tech-news-3) ⭐️ 8.0/10
4. [五角大楼被指要求 OpenAI 降低军事任务拒绝率](#item-tech-news-4) ⭐️ 8.0/10
5. [OpenAI 称 GPT-6 Astra 思维链可监测性显著下降](#item-tech-news-5) ⭐️ 8.0/10
6. [Hugging Face Transformers v5.17.0 发布，新增 HYV4 等模型](#item-tech-news-6) ⭐️ 7.0/10
7. [自动驾驶安全性证据与争议](#item-tech-news-7) ⭐️ 7.0/10
8. [循环 Transformer 与隐藏推理：GPT-6 Astra 传闻的技术解读](#item-tech-news-8) ⭐️ 7.0/10
9. [Qwen 3.8 推理轨迹与 GPT-5.5 Pro 重叠引争议](#item-tech-news-9) ⭐️ 7.0/10
10. [GNU Radio 通过 WebAssembly 在浏览器中运行](#item-tech-news-10) ⭐️ 7.0/10
11. [Read the Docs 披露绕过 Cloudflare 的 DDoS 攻击](#item-tech-news-11) ⭐️ 7.0/10
12. [谷歌广告被指可投放恶意软件](#item-tech-news-12) ⭐️ 7.0/10
13. [小米 OPPO vivo 荣耀统一碰一碰互传标准](#item-tech-news-13) ⭐️ 7.0/10
14. [OpenAI 用 AI 设计芯片，称 Luna 成本低于开源模型](#item-tech-news-14) ⭐️ 7.0/10
15. [ChatGPT 语音模式新增模型与 effort 档位选择](#item-tech-news-15) ⭐️ 7.0/10

**科技博客**
1. [追踪慕尼黑地热勘探中的振动卡车](#item-tech-blog-1) ⭐️ 6.0/10
2. [用机器视觉解码 NEC V20 微码 ROM](#item-tech-blog-2) ⭐️ 6.0/10
3. [GEM 桌面移植到 Linux 帧缓冲](#item-tech-blog-3) ⭐️ 5.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [Calif Research 称用 AI 九天造出微信通话零点击蠕虫](https://simonwillison.net/2026/Sep/10/calif-research/) ⭐️ 9.0/10

Calif Research 发布 WeWorm 演示，声称这是首个通过微信通话在 iOS 和 Android 上传播的零点击蠕虫：受害者无需接听电话，甚至无需与手机交互，即使接听也听不到任何声音，攻击仍会成功。该团队称，借助 AI，他们在约两天内找到漏洞并写出首个远程代码执行（RCE）利用程序，随后又用一周时间构建出蠕虫，总计约九天。Calif Research 表示，这种规模的蠕虫过去通常需要更大团队耗时数月，AI 已能完成其中大部分工作，人类团队主要负责判断攻击目标以及如何安全测试。该说法目前仅来自单一来源的简短引述，没有独立验证、技术细节或同行评审，应谨慎对待。

rss · Simon Willison · 9月10日 00:56

**「背景」** 零点击漏洞指攻击者无需受害者任何交互即可完成利用，而蠕虫则能借助受害者的设备或账号自动向他人继续传播，两者结合意味着攻击可在无人察觉的情况下自我扩散。Calif Research 自称其 WeWorm 是首个通过微信通话在 iOS 和 Android 上传播的零点击蠕虫，并称借助 AI 在约两天内找到漏洞并写出首个远程代码执行（RCE）利用，随后用约一周构建蠕虫。该说法目前仅来自 Calif Research 自身发布的内容，尚无独立验证或技术细节公开。

**「影响」** 若该漏洞真实存在，WeChat 用户无需接听或操作手机即可被控制，影响范围覆盖 iOS 与 Android 两大平台；据 The Register 报道，腾讯已修补该零点击漏洞。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://calif.io/research/weworm">WeWorm | Calif</a></li>
<li><a href="https://blog.calif.io/p/weworm">WeWorm</a></li>
<li><a href="https://x.com/calif_io/status/2097257198468641049">Calif on X: &quot;Today we published WeWorm, the first zero-click worm to spread through WeChat calls across iOS and Android. We call you on WeChat and, without you answering or doing anything, take over your account within seconds. Then we use your phone to call your friends. Story and demos: https:… / X</a></li>
<li><a href="https://www.theregister.com/security/2026/09/09/wechat-worm-could-pwn-a-friend-before-they-even-answered-the-call/5295234">WeChat worm could pwn a friend before they even answered the call</a></li>

</ul>
</details>

**标签**: `#security`, `#ai-security-research`, `#mobile-exploits`, `#zero-click`, `#ai-assisted-development`

---

<a id="item-tech-news-2"></a>
### [vLLM v0.29.0 发布：Model Runner V2 成为默认](https://github.com/vllm-project/vllm/releases/tag/v0.29.0) ⭐️ 8.0/10

vLLM 发布 v0.29.0，包含来自 277 位贡献者（其中 91 位新贡献者）的 594 次提交。该版本将 Model Runner V2（MRV2）设为所有模型的默认运行器，完成自池化模型开始的推广；MRV2 还新增 CUDA graph 显存分析用于 KV cache 自动定容、批分片采样将每步 logits 显存降低 1/TP、prompt embeds、extract\_hidden\_states 推测以及针对 spec decode 的 padded FULL cudagraph 调度。新模型支持包括腾讯 770B/49B 激活 MoE 的 Hy4-preview、Qwen3.8-Flash-Next、GraniteSWA/GraniteMoeSWA、NemotronH\_Omni\_Reasoning\_V3 以及 Kimi K3 NVFP4 检查点。性能方面，Kimi-K3 与 DeepSeek V4 获得多项内核优化，例如 K3 Mamba 元数据准备合并为单次 Triton 启动带来 6.6-7.6 倍内核加速，Hopper 低延迟 GEMM 调优后也调度到 SM100 并用于 eh\_proj，取得 12.9-25.2% 内核加速。破坏性变更包括移除十个已弃用模型架构、将 FlexOlmo、Olmo3 和 Hunyuan V1/VL 迁移到 Transformers 建模后端、移除 PyAV 视频解码后端，并弃用 python -m vllm.entrypoints.openai.api\_server 入口。

github · khluu · 9月9日 08:54

**「背景」** vLLM 是广泛使用的开源大语言模型推理与服务引擎，其 Model Runner 负责在 GPU 上执行模型前向计算。MRV2 是 vLLM 逐步推进的新一代运行器实现，此前已先在池化模型上启用，本次发布将其扩展到所有模型。MRV1 仍在少数 ROCm 模型以及 MRV2 尚未支持的功能上继续使用。

**「影响」** 使用 vLLM 部署推理服务的开发者将默认获得 MRV2 带来的显存与吞吐优化，但依赖已移除模型架构、PyAV 视频解码或旧 API 入口的现有部署需要相应迁移。

**标签**: `#vllm`, `#llm-inference`, `#model-serving`, `#open-source`, `#gpu-optimization`

---

<a id="item-tech-news-3"></a>
### [Shopify 收购 Tailwind Labs](https://tailwindcss.com/blog/tailwind-is-joining-shopify) ⭐️ 8.0/10

Shopify 已收购 Tailwind Labs，即广受欢迎的 Tailwind CSS 框架背后的公司，这一消息由 Tailwind 官方博客发布。此次收购发生在 Tailwind 商业模式因 AI 而承压的背景下：社区评论引用的一份 1 月 GitHub 讨论称，其工程团队 75% 的成员被裁员，且尽管 Tailwind 比以往更受欢迎，其文档流量较 2023 年初下降了约 40%。讨论的焦点在于该框架的未来走向、在 AI 驱动的变化下其商业模式的可持续性，以及在新项目中是否仍有必要使用 Tailwind。

hackernews · EdwinHoksberg · 9月9日 13:27 · [社区讨论](https://news.ycombinator.com/item?id=49626190)

**「背景」** Tailwind CSS 是一个开源、实用优先（utility-first）的 CSS 框架，允许开发者直接在 HTML 中编写样式，由 Tailwind Labs 开发并维护。Shopify 是一家总部位于加拿大渥太华的电商平台公司，此次收购将 Tailwind Labs 纳入其体系，Tailwind 方面称这为其找到了“稳定、长期的归宿”。据社区评论引述，Tailwind Labs 此前已受到 AI 冲击：其工程团队约 75% 成员被裁，文档流量较 2023 年初下降约 40%，这为理解此次收购的商业背景提供了重要线索。

**「影响」** 对依赖 Tailwind 付费产品（如 UI 模板）的开发者而言，此次收购意味着其商业支持与产品路线可能随 Shopify 的整合而调整；同时，Tailwind Labs 此前因 AI 导致文档流量下降约 40%、工程团队裁员 75%，凸显开源项目依赖单一文档渠道变现的脆弱性。

**「社区讨论」** 评论者普遍认为 Shopify 主要是在收购团队和品牌，并指出在 AI 时代销售 UI 模板可能已是死路，同时对 Adam 和团队表示祝福。有人质疑新项目是否还需要 Tailwind，认为在 AI 辅助编辑、人工维护痛点减少的情况下，使用原生 CSS 并利用最新特性可以简化依赖和构建流程；也有人表示使用 Tailwind 帮助自己更深入理解 CSS、HTML 与设计。还有评论指出，随着 LLM 编码能力提升，同时经营开源与商业组件的开发者工具公司正变得越来越难，成功者往往提供托管或大规模运维等难以复制的服务。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://seekingalpha.com/news/4641301-shopify-acquires-tailwind-labs">Shopify acquires Tailwind Labs (SHOP:NASDAQ) | Seeking Alpha</a></li>
<li><a href="https://betakit.com/tailwind-finds-stable-long-term-home-with-shopify-acquisition/">Tailwind finds “stable, long-term home” with Shopify acquisition | BetaKit</a></li>
<li><a href="https://www.pymnts.com/commerce/ecommerce/2026/shopify-brings-on-tailwind-labs-team-to-drive-custom-storefront-push">PYMNTS | Shopify Acquires Tailwind Labs to Drive Custom Storefront Pu…</a></li>
<li><a href="https://www.remio.ai/post/tailwind-css-ai-impact-docs-traffic-collapse-triggers-75-engineering-layoffs">Tailwind CSS AI Impact : Docs Traffic Collapse Triggers 75...</a></li>
<li><a href="https://bytesizedbets.com/p/the-brutal-impact-of-ai-on-tailwind">The Brutal Impact of AI on Tailwind - by TheAnkurTyagi</a></li>

</ul>
</details>

**标签**: `#open-source`, `#css`, `#acquisition`, `#ai-industry-impact`, `#web-development`

---

<a id="item-tech-news-4"></a>
### [五角大楼被指要求 OpenAI 降低军事任务拒绝率](https://theintercept.com/2026/09/08/pentagon-openai-military-contract/) ⭐️ 8.0/10

据 The Intercept 报道，泄露文件显示美国国防部曾要求 OpenAI 向美国军方提供其人工智能技术的特殊版本，使其尽可能不频繁地拒绝军事指挥。相关“最低拒绝率”条款出现在一份编号为“P00003”的合同更新文件中，该文件扩展了去年夏天国防部与 OpenAI 的原订交易。OpenAI 和五角大楼均否认同意此类“最小拒绝”语言，称泄露的“P00003”文件是草稿而非最终版本。OpenAI 发言人 Nate Evans 表示，公司从未同意要求“最低拒绝率”的合同语言，这种东西没有出现在双方执行的合同中。由于该说法仅基于一份真实性及最终状态均存在争议的泄露草稿，相关影响与准确性仍不确定。

telegram · zaihuapd · 9月9日 09:02

**「背景」** 美国国防部与 OpenAI 的合作源于去年夏天签署的一份原型协议，合同价值最高达 2 亿美元，为期两年。此次争议涉及的“P00003”版本是对该原型交易的扩展修订，其中出现了要求 OpenAI 提供“最低拒绝率”模型的条款。据 The Intercept 报道，该文件通过《信息自由法》诉讼被公开，其中将待测试的“OpenAI 任务模型”定义为“为国家安全性用例设计”且“具有最低拒绝率”的模型。OpenAI 与五角大楼均否认同意此类条款，称泄露文件为草稿而非最终版本。

**「影响」** 若该条款最终生效，OpenAI 将需向美国军方提供对军事指令拒绝率更低的模型版本，直接削弱其现有安全拒答机制；但双方均称该措辞未进入已执行合同，实际约束力尚不明确。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://theintercept.com/2026/09/08/pentagon-openai-military-contract/">The Pentagon Asked OpenAI for Artificial Intelligence Designed to...</a></li>
<li><a href="https://www.unite.ai/openai-pentagon-contract-defines-mission-models-by-minimal-refusal-rates/">OpenAI Pentagon Contract Defines ‘Mission Models’ by Minimal ...</a></li>
<li><a href="https://www.remio.ai/post/openai-pentagon-contract-records-reveal-a-disputed-demand-for-ai-that-rarely-say">OpenAI Pentagon Contract Records Reveal a Disputed Demand for...</a></li>
<li><a href="https://theintercept.com/2026/09/08/pentagon-openai-military-contract/">The Pentagon Asked OpenAI for Artificial Intelligence Designed to Rarely Say No</a></li>
<li><a href="https://dmnews.com/dmn-the-pentagon-asked-openai-for-minimal-refusal-rates-in-a-200m-contract-openai-says-the-phrase-never-made-the-final-signed-version/">The Pentagon asked OpenAI for &#x27;minimal refusal rates&#x27; in a $200M contract; OpenAI says the phrase never made the final signed version</a></li>

</ul>
</details>

**标签**: `#AI policy`, `#AI safety`, `#military AI`, `#OpenAI`, `#defense contracts`

---

<a id="item-tech-news-5"></a>
### [OpenAI 称 GPT-6 Astra 思维链可监测性显著下降](https://deploymentsafety.openai.com/gpt-6-astra) ⭐️ 8.0/10

OpenAI 披露，GPT-6 Astra 较前代模型出现“显著”的思维链（CoT）可监测性下降。首席科学家 Jakub Pachocki 表示，依赖 CoT 监测的能力正“逐步减弱”，原因之一是模型越来越能控制自身推理过程，并能在更少甚至无需语言化推理的情况下完成更复杂任务。官方开发文档同时提醒，Astra 的代理间消息可能出现语法或空格错误。英国 AI Safety Institute 的外部评估还发现，Astra 的原始推理更加压缩，含义不清的短语有所增加。

telegram · zaihuapd · 9月9日 09:45

**「背景」** 思维链（CoT）可监测性指模型在输出中显式呈现推理步骤，使外部审查者能够据此发现不当意图或行为，是当前 AI 安全监督的重要依赖手段之一。OpenAI 此前将 CoT 监测作为对前沿模型进行安全评估与部署后监督的核心机制。此次 GPT-6 Astra 相较前代模型 GPT-5.6 Sol 出现可监测性下降，意味着这一监督路径的可靠性正在减弱。

**「影响」** 对依赖思维链监测进行 AI 监督的机构而言，GPT-6 Astra 的可监测性下降意味着原有基于 CoT 的审计与风险发现手段可能失效；OpenAI 系统卡显示，在禁止推理时 Astra 可完成的任务范围较前代大幅扩展，英国 AISI 评估提示其无 CoT 时间跨度可能提升约一个数量级。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://lifeboat.com/blog/2026/09/chainofthought-monitorability-is-decliningopenai-admits-it-cant-catch-gpt6-astra">Chainofthought Monitorability Is DecliningOpenAI Admits It...</a></li>
<li><a href="https://www.youtube.com/watch?v=8WiUse_l2M0">GPT - 6 Astra Explained: Smarter, Safer… Harder to Monitor ? - YouTube</a></li>
<li><a href="https://www.eweek.com/news/openai-gpt-6-astra-ai-safety-monitoring/">GPT - 6 Astra : Why OpenAI ’s New Model Is So Controversial | eWeek</a></li>
<li><a href="https://deploymentsafety.openai.com/gpt-6-astra">GPT-6 Astra System Card - OpenAI Deployment Safety Hub</a></li>

</ul>
</details>

**标签**: `#AI safety`, `#chain-of-thought`, `#OpenAI`, `#model interpretability`, `#LLM evaluation`

---

<a id="item-tech-news-6"></a>
### [Hugging Face Transformers v5.17.0 发布，新增 HYV4 等模型](https://github.com/huggingface/transformers/releases/tag/v5.17.0) ⭐️ 7.0/10

Hugging Face Transformers 发布 v5.17.0，新增多个模型架构。其中最受关注的是 HYV4（Hy4-Preview），一个 780B 参数的混合专家（MoE）语言模型，每个 token 激活 49B 参数，每层含 256 个路由专家加 1 个始终激活的共享专家，每个 token 路由到其中 8 个，上下文窗口达 1M token。其架构结合了多头潜在注意力（MLA）、DeepSeek 稀疏注意力（DSA，借助 IndexShare 让标记为 &quot;full&quot; 的层运行索引器、&quot;shared&quot; 层复用上一层选择）、带可学习注意力汇的门控 MLA，以及独立超连接（iHC）；实现不执行多 token 预测（MTP）层，但发布的检查点保留这些权重供其他运行时用于推测解码。该版本还新增 VibeVoice 长语音合成框架、NeoMME 多语言多模态编码器、Fun-ASR-Nano 语音识别模型、KimiLinear 混合线性注意力架构和 Canary-1B-v2 语音识别与翻译模型，并包含一项破坏性变更：视觉 2D/3D 旋转嵌入被统一到集中式 RoPE 频率计算模块。

github · vasqu · 9月9日 15:42

**「背景」** Hugging Face Transformers 是广泛使用的开源模型库，其版本发布通常集中引入新模型架构与推理优化。混合专家（MoE）通过为每个 token 只激活部分专家来在扩大总参数量的同时控制计算量，而 MLA、稀疏注意力和线性注意力则用于降低长上下文下的键值缓存与注意力开销。

**「影响」** 依赖自定义视觉模型并自行实现注意力层或模型级 RoPE 网格交错逻辑的用户，需要迁移到新的集中式 modeling\_rope\_utils.py 实现，否则升级后可能无法正常工作。

**标签**: `#transformers`, `#mixture-of-experts`, `#large-language-models`, `#attention-mechanisms`, `#open-source`

---

<a id="item-tech-news-7"></a>
### [自动驾驶安全性证据与争议](https://spectrum.ieee.org/are-self-driving-cars-safe) ⭐️ 7.0/10

IEEE Spectrum 发表文章，梳理了自动驾驶汽车能够减少致命事故的证据，认为这类车辆在安全表现上优于人类驾驶。文章引发 Hacker News 上约 355 条评论的激烈讨论，焦点集中在安全数据比较方法是否成立。评论者指出，美国交通死亡数据高度偏斜：约 44% 的死者未系安全带，29% 的事故与超速相关，约 30% 涉及酒精，约 20% 的死亡者是行人或骑行者。有人质疑 Waymo 将自身事故率与普通驾驶员而非其实际替代的网约车司机相比，因为网约车司机的严重事故率更低，对比结果会显得不那么亮眼。讨论还延伸到更广泛的政策取舍，包括是否应把资源投入公共交通，以及保险成本变化可能让自驾变成少数人的特权。

hackernews · bookofjoe · 9月9日 17:14 · [社区讨论](https://news.ycombinator.com/item?id=49629886)

**「背景」** 自动驾驶汽车通常按 SAE 分级，从 L0 到 L5，级别越高系统承担的责任越多；L4 意味着车辆可在特定区域内无需人类干预运行，Waymo 的无人驾驶出租车服务即属此类。围绕安全性的讨论常以人类驾驶为基准进行比较，但基准的选取（如普通驾驶员还是网约车司机）以及事故数据的统计口径会显著影响结论。Waymo 在 2024 年 3 月发布的独立研究显示，其车辆在可比城市驾驶场景中致命或严重伤害事故比人类驾驶员少 92%，相当于 13 倍的降低；不过 Waymo 也指出，目前其行驶里程尚不足以在仅统计死亡事故时达到统计显著性。

**「影响」** 若自动驾驶事故率确实低于人类驾驶，保险定价可能率先反映这一差异，使自动驾驶车辆的保费相对下降、人类驾驶保费相对上升，从而加速其普及。不过，这一后果取决于安全数据能否经受住社区对基准比较方法（如与网约车司机而非普通司机对比）的质疑。

**「社区讨论」** 评论者普遍认可自动驾驶可能减少事故，但强烈质疑现有对比数据的代表性：有人强调死亡数据被未系安全带、超速、酒驾和弱势道路使用者等类别严重扭曲，也有人批评 Waymo 选择普通驾驶员作为基准而非网约车司机。另一派观点认为，与其投入自动驾驶，不如建设公交、轻轨和自行车等公共交通基础设施，因为汽车在空间和能源效率上远逊于这些方式。还有评论预测，保险定价变化可能使人类驾驶逐渐变成富裕人群的“ prestige”行为。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://spectrum.ieee.org/are-self-driving-cars-safe">Are Self Driving Cars Safe as Early Data Suggests? - IEEE Spectrum</a></li>
<li><a href="https://waymo.com/safety/impact/">Waymo Safety Impact</a></li>
<li><a href="https://pubmed.ncbi.nlm.nih.gov/39485678/">Comparison of Waymo rider-only crash data to human benchmarks at 7.1 million miles - PubMed</a></li>

</ul>
</details>

**标签**: `#autonomous-vehicles`, `#ai-safety`, `#transportation`, `#data-analysis`, `#public-policy`

---

<a id="item-tech-news-8"></a>
### [循环 Transformer 与隐藏推理：GPT-6 Astra 传闻的技术解读](https://magazine.sebastianraschka.com/p/gpt-6-astra-looped-transformers-and) ⭐️ 7.0/10

Sebastian Raschka 发表文章讨论循环 Transformer（looped transformers）与隐藏推理，起因是有关 GPT-6“Astra”的报道。据 Hacker News 评论者 libraryofbabel 转述，《The Information》的报道称 GPT-6 Astra 使用了“循环深度”或“循环 Transformer”，并将其描述为一种让思维链监控更困难的神秘“秘密技术”。Raschka 的核心观点是，循环 Transformer 本质上与堆叠更多 Transformer 层相同，区别在于复用权重，从而节省 GPU 显存。评论者 shawntan 引用了 Will Merrill 关于思维链所需计算量的研究（arXiv:2310.07923）以及关于通用 Transformer 的论文，作为理解该话题的学术背景。由于条目未提供文章正文，且 GPT-6 Astra 的产品说法尚未得到证实，相关技术细节与影响无法完全核实。

hackernews · ModelForge · 9月9日 14:37 · [社区讨论](https://news.ycombinator.com/item?id=49627370)

**「背景」** 循环 Transformer（也称通用 Transformer）指在推理时复用同一组权重、把模型多次迭代地作用于自身，从而在不增加参数量的前提下获得类似“加深层数”的效果。据 The Information 报道，GPT-6 Astra 据称采用了被称为“recurrent depth”或“looped transformers”的技术，该报道称其会掩盖部分或全部思维链，引发了对推理可监控性的担忧。Sebastian Raschka 的文章即针对这一说法，讨论循环 Transformer 与隐藏推理之间的关系。

**「影响」** 对关注模型可解释性与推理监控的研究者和开发者而言，循环复用权重的通用 Transformer 在计算能力上并不必然超越堆叠更多层，其推理能力仍受链式思考长度等条件约束，因此围绕 GPT-6 Astra 的“隐藏推理”担忧缺乏充分依据。

**「社区讨论」** 评论者普遍认为循环 Transformer 并非全新概念，libraryofbabel 强调它只是复用权重的层堆叠，并推荐关注 LLM 内部机制的人阅读 Raschka。wolttam 认为将整个 Transformer 模型循环回自身按定义就构成隐藏推理，因为推理轨迹被重新输入而非直接输出。shawntan 提供了关于思维链计算复杂度与通用 Transformer 的学术参考，而 siva7 则抱怨 Astra 在周二后表现下滑、疑似被替换为“Sol”。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/GPT-6_Astra">GPT-6 Astra - Wikipedia</a></li>
<li><a href="https://magazine.sebastianraschka.com/p/gpt-6-astra-looped-transformers-and">GPT-6 Astra, Looped Transformers, and Hidden Reasoning</a></li>
<li><a href="https://ai-tldr.dev/releases/sebastian-raschka-looped-transformers-sep9/">Sebastian Raschka — looped transformers and what… | AI/TLDR</a></li>
<li><a href="https://arxiv.org/abs/2310.07923">[2310.07923] The Expressive Power of Transformers with Chain of Thought</a></li>
<li><a href="https://nyudatascience.medium.com/beyond-transformers-recent-work-by-cds-phd-student-william-merrill-30c8b031cb4a">Beyond Transformers: Recent Work By CDS PhD Student William Merrill | by NYU Center for Data Science | Medium</a></li>
<li><a href="https://nyudatascience.medium.com/beyond-chain-of-thought-how-padding-tokens-give-transformers-more-power-without-sacrificing-speed-2b5425ea5142">Beyond Chain of Thought: How Padding Tokens Give Transformers More Power Without Sacrificing Speed | by NYU Center for Data Science | Medium</a></li>

</ul>
</details>

**标签**: `#transformers`, `#LLM reasoning`, `#AI research`, `#chain-of-thought`, `#GPT-6`

---

<a id="item-tech-news-9"></a>
### [Qwen 3.8 推理轨迹与 GPT-5.5 Pro 重叠引争议](https://gist.github.com/wsxiaoys/e0286dc6bb624ff5fdf49e7f4c528ba3) ⭐️ 7.0/10

一份 gist 与 Hacker News 讨论围绕 Qwen 3.8 的推理轨迹是否与 GPT-5.5 Pro 的输出重叠展开，进而引发对模型蒸馏与推理轨迹获取途径的质疑。评论者指出，相关方法来自一篇论文（stolen-thoughts.com/paper.pdf），作者曾利用该技术从 OpenAI 和 Anthropic 模型中恢复可读的思维链；其做法是先用最先进模型跑基准测试、恢复其思维链，再把思维链的前 1% 作为开源模型自身推理的起点来运行，以寻找蒸馏痕迹。讨论中有人提出替代解释：两组模型可能只是直接训练在研究者基准测试的相同解答上，而非蒸馏。另有评论者对能否获取原始推理 token 表示怀疑，认为公开得到的通常只是摘要，并指出 Qwen 3.8 0902 是在该论文 8 月 10 日发布之后训练的，因此可能见过这些特定思维链。整体上，证据仅来自一份未经核实的 gist，相关主张仍存争议。

hackernews · wsxiaoys · 9月9日 17:24 · [社区讨论](https://news.ycombinator.com/item?id=49630026)

**「背景」** 该讨论涉及“推理轨迹窃取”这一技术：Anthropic、OpenAI 和 Google 会向 API 客户端返回加密的思维链（chain-of-thought）块，而《Stealing Reasoning Traces from Proprietary LLM APIs》论文表明，仅凭标准的非特权 API 访问，就能把这些加密轨迹重放到较弱的同系列模型中，从而以明文形式还原前沿模型的隐藏推理内容。社区评论指出，该 gist 的作者正是这一知名漏洞的发现者，他们用类似方法检测蒸馏：先用前沿模型跑基准测试、恢复其 CoT，再把 CoT 的前 1% 作为开源模型自身推理的起点来运行。

**「影响」** 若该 gist 的蒸馏指控成立，Qwen 3.8 等开源模型的基准成绩可能因蒸馏数据混入评测集而被高估，从而影响开发者与研究者对其真实能力的判断；但当前证据仅为单一未经验证的 gist，且社区提出共享基准解答等替代解释，结论尚不确定。

**「社区讨论」** 评论者就重叠成因存在分歧：一方认为是蒸馏或训练污染，另一方（nzeid）提出两组模型可能只是训练在相同的基准解答上。c7b 质疑是否真能访问原始推理 token，认为公开的往往只是摘要，但指出公开输出的重叠仍可能指示蒸馏；7734128 则强调 Qwen 3.8 0902 训练时间晚于论文发布，可能已见过这些思维链。hermitShell 从本地模型用户角度提问，这类“魔法咒语”是否能普遍提升开源模型性能，并认为该方法似乎并不通用。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://ai-tldr.dev/releases/stolen-thoughts-reasoning-extraction/">Stolen Thoughts — encrypted reasoning pulled out… | AI/TLDR</a></li>
<li><a href="https://uppu.fun/news/en/stolen-thoughts-llm-reasoning-traces-api-keys">Researchers decoded the hidden reasoning of models from Anthropic ...</a></li>
<li><a href="https://simonwillison.net/2026/Aug/11/stealing-reasoning-traces/">Stealing Reasoning Traces from Proprietary LLM APIs</a></li>
<li><a href="https://arxiv.org/html/2510.04850">Detecting Distillation Data from Reasoning Models</a></li>
<li><a href="https://mbrenndoerfer.com/writing/benchmark-contamination-llm-detection-mitigation">Benchmark Contamination in LLMs: Detection - Interactive</a></li>
<li><a href="https://paperswithcode.co/paper/2510.04850">Detecting Distillation Data from Reasoning ... | Papers with Code</a></li>

</ul>
</details>

**标签**: `#LLM distillation`, `#reasoning traces`, `#Qwen`, `#GPT-5`, `#AI research`

---

<a id="item-tech-news-10"></a>
### [GNU Radio 通过 WebAssembly 在浏览器中运行](https://gnuradioworld.com/) ⭐️ 7.0/10

GNU Radio 现已通过 WebAssembly 在浏览器中运行，项目主页为 gnuradioworld.com。这一进展对软件定义无线电（SDR）与数字信号处理（DSP）从业者具有实际工具价值，因为它把原本需要本地安装的 GNU Radio 环境搬进了浏览器。社区评论中，开发者 thomashabets2 提到自己正撰写博客，介绍如何让连接 USRP B200 的宽带射频扫描器通过 WebUSB 在 WASM 中工作，并给出了 rf-survey.habets.se 等示例，此外还有 AX.25 解码器和普通 FM 接收机的 WASM 版本。不过有评论者指出该演示的入门引导和文档较弱：ghostly\_s 表示不清楚页面在展示什么，认为“Description”文字难以阅读，并质疑是否本就没有音频输出。

hackernews · kristianpaul · 9月9日 15:53 · [社区讨论](https://news.ycombinator.com/item?id=49628576)

**「背景」** GNU Radio 是一个开源的软件定义无线电（SDR）与数字信号处理（DSP）开发框架，用户通常通过 GNU Radio Companion（GRC）以图形化方式搭建信号处理流图，但传统上需要在本地安装运行。GNU Radio World 将这一环境移植到浏览器中，提供 GRC 风格的编辑器、数百个 DSP 模块、实时 QT GUI 绘图以及 RTL-SDR 支持，并包含常用的树外模块（OOT）和可直接运行的示例流图，无需安装即可使用。

**「影响」** 对软件定义无线电与 DSP 实践者而言，GNU Radio 的浏览器/WASM 版本提供了一种无需本地安装即可试用和演示信号处理流程的途径，并与社区已有的 WebUSB/WASM 射频工具（如 USRP B200 宽带扫描器、AX.25 解码器）形成互补。不过评论指出该演示的入门引导与文档薄弱，可能限制新用户的采用。

**「社区讨论」** 社区普遍认可这一项目的技术趣味性，baileynoack 称其让人想起 MaxMSP 和信号处理课程，miki\_tyler 也表达了祝贺。但反馈存在分歧：ghostly\_s 认为作为项目介绍，该演示未能有效说明用途，界面留白过多而说明文字不可读；jcims 则回顾自己 2012 年前后接触 GNU Radio 时因缺乏 DSP 背景而觉得晦涩难用，表示或许会再试一次。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://gnuradioworld.com/">GNU Radio World — GNU Radio flowgraphs in your browser</a></li>
<li><a href="https://github.com/777arc/gnuradio-world">GitHub - 777arc/ gnuradio - world · GitHub</a></li>
<li><a href="https://alternativeto.net/software/gnu-radio-world/about/">GNU Radio World: Build and run GNU Radio ... | AlternativeTo</a></li>

</ul>
</details>

**标签**: `#software-defined radio`, `#WebAssembly`, `#DSP`, `#GNU Radio`, `#open source`

---

<a id="item-tech-news-11"></a>
### [Read the Docs 披露绕过 Cloudflare 的 DDoS 攻击](https://about.readthedocs.com/blog/2026/09/2026-ddos-attack/) ⭐️ 7.0/10

Read the Docs 发布了一篇关于近期遭受 DDoS 攻击的第一手事件报告，指出攻击绕过了 Cloudflare 的防护。该事件引发了关于 L7 层缓解能力、ISP 级过滤以及法律追责途径的讨论。社区评论者指出，Cloudflare 在防御 L4 DDoS 方面表现良好，但在 L7 场景下效果有限，并质疑“under attack”模式能否应对这种自适应攻击。有评论者推测这可能是一次由 AI 驱动、针对 Read the Docs 的测试性攻击，也有人质疑攻击者攻击以静态内容为主的文档托管服务能获得什么收益。

hackernews · davidfischer · 9月9日 15:55 · [社区讨论](https://news.ycombinator.com/item?id=49628614)

**「背景」** DDoS 攻击通过大量分布式流量耗尽目标服务的资源，通常按网络层（L3/L4）和应用层（L7）区分：前者以带宽和连接数冲击为主，后者则模拟正常 HTTP 请求，更难与真实用户流量区分。Cloudflare 等 CDN 与防护服务常被用来吸收和过滤这类流量，但其对 L7 攻击的缓解效果取决于限流、缓存和挑战策略的调优。据 Cloudflare 2026 年上半年威胁报告，其网络检测到的超大规模 DDoS 攻击激增 519%，1 Tbps 级攻击显著增多。

**「影响」** 对依赖 Cloudflare 等 CDN/WAF 防护的开发者服务而言，此次事件表明 L7 应用层 DDoS 仍可能绕过现有缓解措施，需重新评估防护策略。Cloudflare 在 H1 2026 每小时缓解 5,343 次网络层攻击，但社区讨论指出其 L4 防护强于 L7，这一差距对静态文档托管等场景尤为关键。

**「社区讨论」** 评论者普遍认为 Cloudflare 对 L4 DDoS 防护较强，但对 L7 攻击的缓解效果不佳，并怀疑“under attack”模式能否应对这种自适应攻击。有人主张采取更强硬的法律手段，包括追踪 IP、起诉设备制造商并援引 CFAA 等条款；也有人质疑为何不在 ISP 层面解决该问题，并猜测攻击动机可能是 AI 实验室为阻断竞争对手训练数据而发起的测试性攻击。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://radar.cloudflare.com/">Worldwide Overview | Cloudflare Radar</a></li>
<li><a href="https://contentbuffer.com/news/read-docs-fights-off-55m-rpm-ddos-attack-a7651e39">Read the Docs Fights Off 5.5M Rpm DDoS Attack</a></li>
<li><a href="https://www.intelligentcio.com/me/2026/09/01/cloudflare-ddos-threat-report-h1-2026-1-tbps-attacks-soar-as-dns-floods-and-geopolitical-tensions-drive-a-new-wave/">Cloudflare DDoS Threat Report H1 2026 : 1 Tbps attacks soar as DNS...</a></li>

</ul>
</details>

**标签**: `#DDoS`, `#Cloudflare`, `#infrastructure security`, `#incident report`, `#open source infrastructure`

---

<a id="item-tech-news-12"></a>
### [谷歌广告被指可投放恶意软件](https://xlii.space/eng/malicious-software-on-google-ads/) ⭐️ 7.0/10

一篇由作者 xlii 撰写的实践者文章详细记录了恶意软件如何通过 Google Ads 进行广告投放，并引发社区对自动化审核与平台责任的广泛讨论。该文以第一手技术叙述呈现了广告平台机制与审核漏洞的具体细节，在 Hacker News 上获得 354 分和 214 条评论，显示出安全与广告技术从业者的强烈关注。作者在评论中更新称，其账户已被恢复，但他认为问题之所以得到解决，是因为在互联网上抱怨并被 Hacker News 放大，而非平台主动发现。评论者还指出，谷歌在 YouTube 等产品上同样充斥着诈骗广告，AdSense 发布端也面临恐吓软件内容问题，并批评大型企业用自动化系统屏蔽用户申诉。

hackernews · xlii · 9月9日 11:43 · [社区讨论](https://news.ycombinator.com/item?id=49624856)

**「背景」** Google Ads 是 Google 的在线广告投放平台，广告主通过竞价让广告展示在搜索结果等位置。Google 官方政策禁止广告指向包含恶意软件、强制下载、欺骗性软件或被入侵落地页的链接，并会在检测到此类内容时拒登广告。这一审核机制主要依赖自动化系统，而该案例正是围绕其被滥用的可能性展开讨论。

**「影响」** 对广告主而言，该案例表明 Google Ads 的自动化审核可能被绕过，恶意软件广告得以投放，而合规账户也可能因“恶意软件”等政策原因被暂停，需通过申诉恢复。对平台而言，这凸显了自动化审核与人工申诉机制之间的张力，社区讨论中多位用户指出大型科技公司普遍以自动化系统削弱用户对单方面决策的质疑能力。

**「社区讨论」** 评论普遍认为谷歌的自动化审核与申诉机制存在严重缺陷，有用户以向 Google Maps 添加特斯拉超级充电站被快速拒绝为例，批评平台缺乏有效的人工复核渠道。多位评论者指出，谷歌在 YouTube 等产品上投放的广告中诈骗内容比例极高，AdSense 发布端也因恐吓软件内容而难以使用。作者 xlii 补充称账户已恢复，但强调问题解决依赖网络舆论压力而非平台自身机制。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blog.sucuri.net/2024/01/how-to-fix-google-ads-disapproved-due-to-malicious-software.html">How to Fix Google Ads Disapproved Due to Malicious or Unwanted...</a></li>
<li><a href="https://support.google.com/google-ads/thread/48466553/disapproved-ads-malicious-software?hl=en">Disapproved Ads - Malicious Software - Google Ads Community</a></li>
<li><a href="https://hq17.help/">Google Ads Suspended? Policy-Compliant Landing Pages for...</a></li>
<li><a href="https://devjoynal.com/service/google-ads/">Google Ads Malware Removal &amp; Suspension Appeal - Joynal Abdin</a></li>
<li><a href="https://support.google.com/google-ads/answer/9841640?hl=en-4">Google Ads account suspensions overview - Google Ads Help</a></li>

</ul>
</details>

**标签**: `#security`, `#advertising`, `#google-ads`, `#malware`, `#platform-moderation`

---

<a id="item-tech-news-13"></a>
### [小米 OPPO vivo 荣耀统一碰一碰互传标准](https://finance.sina.com.cn/tech/roll/2026-09-09/doc-inirfivw8597070.shtml) ⭐️ 7.0/10

9 月 9 日，荣耀宣布其主导制定的《碰一碰互传技术标准》正式落地，MagicOS 11 支持跨品牌碰一碰分享，荣耀 Magic9 首发搭载，小米、OPPO、vivo 已陆续接入。该功能通过 NFC 触发配对、Wi-Fi 直连传输，文件不经云端、不消耗流量且不压缩画质，1 GB 视频实测约 8—12 秒传完。使用需手机支持 NFC 并更新至相应系统，跨品牌传输文件通常上限为 2 GB。

telegram · zaihuapd · 9月9日 12:30

**「背景」** 此前各安卓厂商的近距离互传功能多限于自家生态，跨品牌传输往往依赖云端或第三方应用，速度与画质受限。NFC 负责快速配对、Wi-Fi Direct 负责点对点高速传输，是这类方案常见的技术组合。

**「影响」** 对小米、OPPO、vivo、荣耀用户而言，跨品牌大文件传输可摆脱云端与流量依赖，但需手机支持 NFC、升级对应系统，且跨品牌单次传输通常受 2 GB 上限约束。

**标签**: `#mobile`, `#file-transfer`, `#interoperability`, `#nfc`, `#wi-fi-direct`

---

<a id="item-tech-news-14"></a>
### [OpenAI 用 AI 设计芯片，称 Luna 成本低于开源模型](https://www.reuters.com/world/china/openai-offers-ai-chip-design-touts-cost-advantage-over-open-source-cfo-says-2026-09-09/) ⭐️ 7.0/10

OpenAI 首席财务官萨拉·弗里尔表示，公司正将 AI 拓展至芯片设计、生命科学和金融服务领域，并称在云端部署低价 Luna 模型的成本低于中国开源替代方案。OpenAI 称其自研 Jalapeno 芯片在 9 个月内完成设计定稿。Luna 模型降价 80% 后，使用量增加约 10 倍。上述说法来自高管表态，目前尚无技术细节或独立验证。

telegram · zaihuapd · 9月9日 13:06

**「背景」** OpenAI 首席财务官萨拉·弗里尔是在高盛 Communacopia + Technology 大会上披露上述信息的。所谓“流片”（tape out），是指芯片设计定稿并送交工厂生产的阶段，因此“9 个月完成流片”意味着从设计到定稿的周期。Luna 是 OpenAI 的模型产品，其降价发生在 2026 年 7 月 30 日，API 价格下调 80%，即从每百万 token 输入 1.00 美元、输出 6.00 美元降至 0.20 美元和 1.20 美元。

**「影响」** 若 OpenAI 的芯片自研与低价模型策略成立，将直接冲击中国开源模型在云端部署中的成本优势，并推动其通过自研芯片掌控算力栈。不过相关数据均来自高管表态，尚无独立验证，实际影响仍待观察。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://forkast.news/openai-used-its-own-ai-models-to-design-the-jalapeno-chip-the-compute-landlord-thesis-just-went-recursive/">OpenAI Used Its Own AI Models to Design the Jalapeno Chip – The...</a></li>
<li><a href="https://www.firstpost.com/tech/openai-offers-ai-for-chip-design-touts-cost-advantage-over-open-source-cfo-says-14044256.html">OpenAI offers AI for chip design , touts cost advantage over...</a></li>
<li><a href="https://beninwebtv.com/en/openai-pushes-its-ai-into-chip-design-following-the-jalapeno-experiment/">OpenAI pushes its AI into chip design following the Jalapeño ...</a></li>
<li><a href="https://www.linkedin.com/posts/davidelkington_openai-cut-gpt-56-lunas-price-80-twenty-one-activity-7490104612868288512-ak6j">OpenAI Luna Price Drops 80 % in 21 Days Amid AI Price War | LinkedIn</a></li>
<li><a href="https://nodemini.com/en/blog/2026-gpt-5-6-price-cut-openai-luna-terra-sol.html">Why OpenAI Cut GPT-5.6 Luna &#x27;s Price 80 % (And Left Sol...) | NodeMini</a></li>

</ul>
</details>

**标签**: `#AI chips`, `#OpenAI`, `#AI industry`, `#model pricing`, `#hardware design`

---

<a id="item-tech-news-15"></a>
### [ChatGPT 语音模式新增模型与 effort 档位选择](https://x.com/athyuttamre/status/2097761052939125132) ⭐️ 7.0/10

据 Telegram 频道转发的一则帖子，ChatGPT 语音模式现已支持用户自选模型与 effort 档位，Pro 用户可在 GPT-5.6 Sol 和 GPT-6 Astra 之间选择。语音在需要搜索或推理时会调用所选模型。该消息来自 Atty Eleti（@athyuttamre）的 X 帖子，属于简短的二手转述，未提供技术细节、基准数据或官方一手确认，两个模型名称也无法从现有内容独立核实。

telegram · zaihuapd · 9月10日 00:20

**「背景」** ChatGPT 的模型体系此前已按订阅层级区分：据 OpenAI 帮助中心，GPT-6 Pro 由 GPT-6 Astra 驱动，面向 Pro $100、Pro $200、Business 和 Enterprise 计划提供；GPT-5.6 Sol 与新的推理强度滑块正向符合条件的付费计划推送，而 GPT-5.6 Luna 成为 Free 和 Go 用户的默认模型。第三方报道将 GPT-6 Astra 描述为 OpenAI 的最新前沿模型、GPT-5.6 Sol 的继任者，在推理、编程等多项基准上表现更好。语音模式此前并不提供这种按用户选择的模型与 effort 档位机制，因此本次更新是把既有的分层模型选择扩展到语音交互场景。

**「影响」** 若该更新属实，ChatGPT Pro 用户将能在语音模式中直接选择 GPT-5.6 Sol 或 GPT-6 Astra 并调整 effort 档位，使语音交互在搜索或推理时调用所选模型，从而获得更可控的响应质量与深度。不过该消息来自二手 Telegram 帖子，模型名称与具体可用范围尚未获得 OpenAI 官方确认，实际推送时间和限制仍待核实。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://help.openai.com/en/articles/20001354-GPT-5.6">GPT - 5 . 6 and GPT - 6 Pro in ChatGPT | OpenAI Help Center</a></li>
<li><a href="https://www.tomsguide.com/ai/chatgpt/chatgpt-6-astra-is-here-this-one-prompt-shows-what-it-can-really-do">ChatGPT - 6 Astra is here — this one prompt shows what... | Tom&#x27;s Guide</a></li>
<li><a href="https://help.openai.com/en/articles/20001274">ChatGPT Voice | OpenAI Help Center</a></li>

</ul>
</details>

**标签**: `#ChatGPT`, `#voice-mode`, `#OpenAI`, `#model-selection`, `#AI-products`

---

## 科技博客

<a id="item-tech-blog-1"></a>
### [追踪慕尼黑地热勘探中的振动卡车](https://hackaday.com/2026/09/09/hunting-the-wild-vibrotruck/) ⭐️ 6.0/10

rss · Hackaday · 9月9日 15:18

**「背景」** 慕尼黑正在开展一项名为 GIGA-M 的大规模三维地震勘探，目的是绘制地下约 3 公里处侏罗纪含水层的分布，为地热供暖与发电选址。作者从自家社区出现的橙色地震检波器（geophone）出发，追踪并记录了这一勘探过程。

**「方案」** 勘探的基本原理是向地下发送振动并接收反射：不同岩层的声速差异会产生反射，反射到达时间可换算为界面深度。作业时，检波器以约 20 米间距布设成南北向测线，测线间距约 300 米；振动卡车沿东西向行驶，每 20 米激发一次。整个 1000 平方公里区域包含超过 12 万个采样点、约 8.6 万次激发，因此需要持续较长时间。作者在现场观察到，卡车先震动、随后发出低频轰鸣并逐渐升高后停止，说明其采用频率扫描（sweep），频率大约从 6 Hz 升到 96 Hz。这种扫描类似声呐 chirp，使同时到达的多个反射因音高不同而可区分，也便于通过互相关在全部检波器上追踪走时，最终反演地下三维结构。作者向现场工程师了解到，单个检波器没有 GPS 授时，因为成本太高；安装时用带 GPS 的笔记本电脑记录位置并校准时钟，回收时再次记录位置并检查时钟漂移，然后导出带时间戳的数据。卡车成对作业是为了获得双倍振动能量，两车通过 GPS 驯服时钟实现相位同步，从而作为一个整体震源发射，并精确知道每次循环的起始时刻以计算走时。作者还提到，自己遇到的只是较小的“城市型”振动卡车。

**「启示」** 作者认为，这类勘探把熟悉的信号处理思想——频率扫描与互相关——放大到了城市尺度，令人印象深刻；而社区评论补充指出，实际处理中还需用振动板上的加速度计记录震源信号，并与检波器记录做互相关，才能将反射压缩成易于识别的 Klauder 子波。

**标签**: `#seismology`, `#geothermal`, `#geophones`, `#signal-processing`, `#field-engineering`

---

<a id="item-tech-blog-2"></a>
### [用机器视觉解码 NEC V20 微码 ROM](https://hackaday.com/2026/09/09/decoding-the-nec-v20-microcode-rom/) ⭐️ 6.0/10

rss · Hackaday · 9月9日 11:00

**「背景」** NEC V20 是一款与 Intel 8088 兼容的处理器，但拥有自己的微码实现。对于想要构建周期精确模拟器的开发者而言，必须拿到 V20 真实的微码 ROM 内容，而这份微码只存在于芯片的裸片照片中，需要从图像里逐位还原。

**「方案」** 作者 GloriousCow 的目标是解码 V20 裸片照片中的微码 ROM，生成可用的 ROM 镜像。ROM 区域共有 29,928 个比特，纯手工解析耗时巨大，因此他尝试借助 Travis Goodspeed 的 MaskRomTool 自动识别比特。但该裸片照片对比度不足，MaskRomTool 无法可靠工作，不过它仍提供了每个比特的位置，并据此导出了 42×42 像素的 PNG 图像。随后作者训练了一个卷积神经网络（CNN）来区分 0 和 1，这仍需人工标注 1,000 张图像，但效果尚可；对于被标记为模糊的少量比特，作者选择用肉眼直接判断，而不是继续调整模型。拿到微码后，便可将其与 V20 内部架构对应，弄清各部分的功能。目前工作尚未完成，但已有 GitHub 仓库记录进展。

**「启示」** 当裸片照片对比度不足、传统比特识别工具失效时，用工具定位比特、再用 CNN 分类并辅以人工复核，是一条可行的微码 ROM 提取路径。作者认为，这类逆向工作最终能帮助还原 V20 的完整内部行为，为周期精确模拟器提供基础。

**标签**: `#microcode`, `#reverse-engineering`, `#CPU architecture`, `#machine-vision`, `#retrocomputing`

---

<a id="item-tech-blog-3"></a>
### [GEM 桌面移植到 Linux 帧缓冲](https://hackaday.com/2026/09/09/sick-of-wayland-vs-xorg-how-about-gem/) ⭐️ 5.0/10

rss · Hackaday · 9月9日 08:00

**「背景」** Digital Research 的 GEM 桌面在 DOS 时代被 Macintosh System 和 Microsoft Windows 夹击，未能普及，后来在 Atari 家用电脑上延续了生命。如今开发者 Tomaz Stih 基于 OpenGEM/FreeGEM 的原始代码，把 GEM 图形桌面移植到了 Linux 帧缓冲上——它不是 X 或 Wayland 下的窗口管理器或桌面环境，而是一套完全独立的图形显示系统，运行在最小化 Linux 安装的帧缓冲中。

**「方案」** 作者强调这个移植刻意保持了高度可移植性：实现 HID 设备（鼠标和键盘）只需一个 gem\_hid\_poll 函数，绘制帧缓冲则实现 gem\_raster\_resync、gem\_raster\_shutdown、gem\_raster\_surface、gem\_raster\_present、gem\_raster\_present\_rect 和 gem\_raster\_set\_palette 这几个函数，写完这些 GEM 就能在任何地方运行。架构上既可以直接使用 libvdi 和 libaes 做单进程 GEM，也可以通过 gemd 守护进程经 libgem 串行化 GEM 调用，实现多进程 GEM。示例应用包括时钟和日历，API 与 Atari ST 应用兼容，按代码库推测也应匹配 DOS 版本。GEM 代码仅约 190KB，适合黑白矩阵 LCD 和旧硬件；但作者也承认，很少有人会因此放弃 Wayland 或 XServer，不过在某些场景下仍有价值。评论中有人指出 GEM 完全以鼠标为中心且仅支持单点触控，用于触摸屏仍需大量工作；也有人提到 Open Computer 2 这类模拟 RV64 环境跑不动完整 X 或 Wayland 桌面，GEM 可能是不错的替代方案。

**「启示」** 作者的核心观点是：GEM 移植的价值不在于取代主流 Linux 桌面，而在于用极小的代码体积和极简的移植接口，为嵌入式、复古硬件或资源受限环境提供一种轻量图形界面的可能。

**标签**: `#GEM`, `#Linux framebuffer`, `#embedded GUI`, `#retrocomputing`, `#lightweight desktop`

---