---
layout: default
title: "Horizon Summary: 2026-09-01 (ZH)"
date: 2026-09-01
lang: zh
---

> 从 69 条内容中筛选出 22 条重要资讯。

---

**科技新闻**
1. [谷歌从 Chrome 网上应用店移除 MV2 扩展，包括 uBlock Origin](#item-tech-news-1) ⭐️ 8.0/10
2. [滑动窗口注意力在长上下文推理上超越线性注意力](#item-tech-news-2) ⭐️ 8.0/10
3. [库克卸任苹果 CEO，特努斯接棒聚焦 AI](#item-tech-news-3) ⭐️ 8.0/10
4. [DeepSeek 发布实验性多模态模型 V4-Flash-Vision-Exp](#item-tech-news-4) ⭐️ 8.0/10
5. [llama.cpp b10728 发布：CUDA 闪存注意力优化](#item-tech-news-5) ⭐️ 7.0/10
6. [将安防摄像头改造为自动鸟类识别系统](#item-tech-news-6) ⭐️ 7.0/10
7. [RavynOS：基于 Darwin 与 FreeBSD 的预 alpha 开源操作系统](#item-tech-news-7) ⭐️ 7.0/10
8. [NAT 与互联网中心化：历史与争议](#item-tech-news-8) ⭐️ 7.0/10
9. [Wrapture：扩展猴子补丁的 Python 测试与追踪库](#item-tech-news-9) ⭐️ 7.0/10
10. [GNN 时间泄漏问题与 SynthFin-AML 数据集](#item-tech-news-10) ⭐️ 7.0/10
11. [OpenClaw 2.0 发布：史上最大更新，汇集逾 1.6 万个拉取请求](#item-tech-news-11) ⭐️ 7.0/10
12. [华为 2026 半年报：营收增 9.6%，净利降 37%](#item-tech-news-12) ⭐️ 7.0/10
13. [中国法院冻结安世半导体 3 亿美元资产，闻泰索赔 80 亿元](#item-tech-news-13) ⭐️ 7.0/10
14. [MiniMax 与智谱中期业绩：收入大增但仍亏损](#item-tech-news-14) ⭐️ 7.0/10
15. [寒序科技公布 MRAM 推理产品路线，uHBM 带宽 24 TB/s](#item-tech-news-15) ⭐️ 7.0/10
16. [欧盟认定 ChatGPT、Reddit、Roblox 为超大型服务，面临更严监管](#item-tech-news-16) ⭐️ 7.0/10

**科技博客**
1. [USB-C 适配传统喷灌系统](#item-tech-blog-1) ⭐️ 7.0/10
2. [什么是 Mu 金属？](#item-tech-blog-2) ⭐️ 7.0/10
3. [修复昂贵的 Amprobe 电缆追踪器：NAND 闪存位翻转之谜](#item-tech-blog-3) ⭐️ 6.0/10
4. [能量采集名片：NFC 供电的 LED 设计](#item-tech-blog-4) ⭐️ 6.0/10
5. [PteroSim：在虚幻引擎中模拟无人机](#item-tech-blog-5) ⭐️ 5.0/10
6. [用换热器对抗热水系统中的军团菌](#item-tech-blog-6) ⭐️ 5.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [谷歌从 Chrome 网上应用店移除 MV2 扩展，包括 uBlock Origin](https://webiterate.dev/google-removed-extensions-ublock-origin-108/) ⭐️ 8.0/10

谷歌已从 Chrome 网上应用店移除所有 Manifest V2（MV2）扩展，包括广受欢迎的广告拦截工具 uBlock Origin。这一变化是谷歌逐步淘汰 MV2、转向 Manifest V3（MV3）计划的一部分，MV3 限制了广告拦截器的能力。用户仍可暂时使用已安装的 MV2 扩展，但无法再更新或重新安装。此举引发了社区对谷歌网络控制权的担忧，并促使许多用户转向 Firefox，因为 Firefox 继续支持 MV2，且 uBlock Origin 在 Firefox 上表现更佳。

hackernews · twapi · 8月31日 21:10 · [社区讨论](https://news.ycombinator.com/item?id=49514878)

**「背景」** Chrome 扩展程序基于清单（Manifest）系统构建，Manifest V2 是旧版框架，允许扩展程序使用强大的网络请求拦截功能，如动态过滤，这对 uBlock Origin 等广告拦截器至关重要。Google 为提升安全性和隐私保护，推出了 Manifest V3，它限制了远程代码执行和网络请求修改能力，导致 uBlock Origin 等扩展无法在 Chrome 中正常工作。Google 多年来逐步推进从 MV2 到 MV3 的过渡，最终在近期从 Chrome 网上应用店移除了所有剩余的 MV2 扩展。

**「影响」** 依赖 uBlock Origin 等 MV2 扩展的 Chrome 用户将失去有效的广告拦截和隐私保护能力，可能面临更多恶意广告和跟踪风险。开发者需要迁移到 MV3，但 MV3 的限制可能降低广告拦截效果。

**「社区讨论」** 社区评论普遍批评谷歌的决定，认为广告拦截已成为安全必需品，尤其是对易受恶意广告影响的用户。许多用户表示已转向 Firefox，并强调 uBlock Origin 在 Firefox 上表现最佳，同时表达了对单一公司控制网络信息的担忧。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://webiterate.dev/google-removed-extensions-ublock-origin-108/">Google Has Removed Manifest V2 Extensions From the Chrome Web Store, Including uBlock Origin</a></li>
<li><a href="https://thenextweb.com/news/chrome-manifest-v3-ublock-origin-content-blockers-disabled">Google is about to disable uBlock Origin and every other Manifest V2 extension in Chrome</a></li>
<li><a href="https://www.ghostery.com/blog/ublock-origin-not-supported-chrome">uBlock Origin No Longer Supported On Chrome: Best Fixes | Ghostery</a></li>

</ul>
</details>

**标签**: `#Chrome`, `#Manifest V2`, `#ad blocking`, `#uBlock Origin`, `#browser extensions`

---

<a id="item-tech-news-2"></a>
### [滑动窗口注意力在长上下文推理上超越线性注意力](https://www.reddit.com/r/MachineLearning/comments/1w3j1vw/slidingwindow_attention_beats_linear_on/) ⭐️ 8.0/10

一篇新的 arXiv 预印本（arXiv:2608.28444）由 Alexia Jolicoeur-Martineau、Rhea Sanjay Sukthanker、Pashmina Cameron 和 Emy Gervais 撰写，声称带有 sinks 的滑动窗口注意力（SWA）在长上下文推理基准上比线性注意力变体性能高出 2 到 10 倍，具体任务包括 Needle-in-a-Haystack 和 BABILong。作者认为，线性注意力的研究路线未与更简单的基线进行适当比较，而 SWA 无需后训练即可运行，速度快且内存占用低。他们强烈建议改用 SWA 而非后训练线性模型，并指出线性注意力可能需要在从头训练或大量后训练后才能匹配 SWA。该预印本挑战了线性注意力作为长上下文效率解决方案的主流研究方向，但尚未经过同行评审，需进一步验证。

reddit · r/MachineLearning · /u/Justgototheeffinmoon · 8月31日 16:35

**「背景」** 标准 Transformer 的自注意力机制计算成本随序列长度呈二次方增长，这限制了其处理长上下文的能力。线性注意力通过近似或替代机制将复杂度降为线性，但通常需要从头训练或大量后训练才能保持性能。滑动窗口注意力（SWA）是一种更简单的替代方案，它只关注局部窗口内的 token，并引入“sink”token 来保持全局信息，无需额外训练即可直接应用于现有模型。

**「影响」** 如果该预印本的结论得到验证，研究线性注意力后训练管线的实验室和开发者可能需要重新评估其投入，转而考虑更简单的 SWA 基线，从而节省大量计算资源。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/abs/2608.28444">[ 2608 . 28444 ] Sliding - window beats linear attention</a></li>
<li><a href="https://www.alphaxiv.org/abs/2608.28444">Sliding - window beats linear attention | alphaXiv</a></li>
<li><a href="https://huggingface.co/papers/2608.28444">Paper page - Sliding - window beats linear attention</a></li>

</ul>
</details>

**标签**: `#attention mechanisms`, `#long-context reasoning`, `#LLM efficiency`, `#arXiv preprint`, `#machine learning research`

---

<a id="item-tech-news-3"></a>
### [库克卸任苹果 CEO，特努斯接棒聚焦 AI](https://www.bloomberg.com/news/articles/2026-08-30/apple-s-new-ceo-john-ternus-takes-reins-from-tim-cook-focusing-on-ai) ⭐️ 8.0/10

8 月 31 日是蒂姆·库克担任苹果 CEO 的最后一天，9 月 1 日起，51 岁的硬件工程老将约翰·特努斯接任 CEO，库克将留任执行主席。特努斯的首要任务是推动 AI 落地，弥补 Siri 升级延期等短板。苹果计划在 9 月 9 日的秋季发布会上推出首款折叠屏 iPhone，据称配备 12GB RAM 并深度集成 Siri AI，可结合屏幕、日历与相机理解现实场景。这一变动标志着苹果进入以 AI 为核心的新时代。

telegram · zaihuapd · 8月31日 10:21

**「背景」** 蒂姆·库克自 2011 年起担任苹果 CEO，期间带领公司市值屡创新高。约翰·特努斯自 2013 年起在苹果硬件工程部门任职，2021 年成为高级副总裁，负责 iPhone、iPad、Mac 等产品的硬件工程。此次 CEO 交接是苹果历史上的重大人事变动，特努斯作为内部老将接任，表明苹果将继续延续现有战略。

**「影响」** 此次 CEO 更迭将直接影响苹果的产品战略方向，尤其是 AI 技术的整合与落地，开发者可预期未来苹果平台将更深度地集成 AI 功能，而消费者则可能在 9 月 9 日的发布会上看到首款折叠屏 iPhone。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.apple.com/leadership/john-ternus/">Apple Leadership - John Ternus - Apple</a></li>
<li><a href="https://apple.fandom.com/wiki/John_Ternus">John Ternus | Apple Wiki | Fandom</a></li>
<li><a href="https://www.theguardian.com/technology/2026/apr/20/john-ternus-apple-ceo-tim-cook">Who is John Ternus , Apple ’s next CEO ? | Apple | The Guardian</a></li>

</ul>
</details>

**标签**: `#Apple`, `#CEO transition`, `#AI`, `#Tim Cook`, `#John Ternus`

---

<a id="item-tech-news-4"></a>
### [DeepSeek 发布实验性多模态模型 V4-Flash-Vision-Exp](https://huggingface.co/deepseek-ai/DeepSeek-V4-Flash-Vision-Exp) ⭐️ 8.0/10

DeepSeek 发布了 DeepSeek-V4-Flash-Vision-Exp，这是 V4 系列首款实验性多模态模型，在 V4-Flash 架构上加入视觉模块并持续训练。相比 V4-Flash-0731，其多模态 agent 能力大幅提升，ApexBench 得分从 26.2 升至 36.5，而文本 agent 任务表现基本持平。该模型权重已在 Hugging Face 上发布，属于实验性权重而非完整生产模型。这一发布对开源 AI 社区具有重要意义，展示了多模态能力的显著进步。

telegram · zaihuapd · 8月31日 11:41

**「背景」** DeepSeek-V4-Flash-Vision-Exp 是 DeepSeek 于 2026 年 8 月 21 日发布的实验性多模态模型，属于 V4 系列。它在 V4-Flash 架构基础上加入视觉模块，能够同时处理文本和图像输入，同时保持基础模型的文本能力，包括智能体行为、推理和通用知识。该模型已在 DeepSeek API 平台上提供，是 DeepSeek 在开源多模态模型领域的最新尝试。

**「影响」** 对于使用 DeepSeek 模型进行多模态 agent 开发的开发者，该实验模型提供了显著的性能提升，ApexBench 得分提升 10.3 分，但需注意其仍为实验性权重，可能不适合直接用于生产环境。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://api-docs.deepseek.com/news/news260821/">DeepSeek-V4-Flash-Vision-Exp Release: Multimodal API Now Live</a></li>
<li><a href="https://emergent.sh/news/deepseek-v4-flash-vision-exp-officially">DeepSeek-V4-Flash-Vision-Exp: New Multimodal AI Launch</a></li>

</ul>
</details>

**标签**: `#DeepSeek`, `#multimodal`, `#AI model`, `#open source`, `#benchmark`

---

<a id="item-tech-news-5"></a>
### [llama.cpp b10728 发布：CUDA 闪存注意力优化](https://github.com/ggml-org/llama.cpp/releases/tag/b10728) ⭐️ 7.0/10

llama.cpp 发布了 b10728 版本，主要引入了一项针对 NVIDIA GPU 的 CUDA 优化：在闪存注意力（flash attention）中采用 XOR swizzle 技术，并将 K 和 V 矩阵的共享内存瓦片改为 fp16 格式。该优化通过改进共享内存访问模式和数据布局，有望提升注意力计算性能。此外，该版本还修复了 DGX Spark 上的共享内存竞争问题，并增加了相应的 swizzle 测试用例。此版本为增量更新，不影响其他平台和功能。

github · github-actions\[bot\] · 8月31日 21:46

**「背景」** llama.cpp 是一个用于在多种硬件上运行大型语言模型的开源推理引擎，支持 CPU、CUDA、Vulkan 等后端。Flash Attention 是一种优化注意力计算的算法，通过减少内存访问和利用共享内存来加速 Transformer 模型的推理。XOR swizzle 是一种内存布局优化技术，用于改善共享内存的访问模式，减少 bank 冲突，从而提升 GPU 上的性能。此次更新针对 NVIDIA GPU 上的 Flash Attention 实现进行了优化，并修复了在 DGX Spark 硬件上出现的共享内存竞争问题。

**「影响」** 使用 NVIDIA GPU 运行 llama.cpp 的用户可能因闪存注意力优化而获得性能提升，尤其是在处理大规模提示或长上下文时。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://korshunov.ai/en/article/22026-llama-cpp-b10728-adds-cuda-xor-swizzle-flash-attention-and-fixes-shared-memory/">llama . cpp b10728 adds CUDA XOR swizzle flash attention and fixes...</a></li>

</ul>
</details>

**标签**: `#llama.cpp`, `#CUDA`, `#flash-attention`, `#performance`, `#NVIDIA`

---

<a id="item-tech-news-6"></a>
### [将安防摄像头改造为自动鸟类识别系统](https://jasontucker.blog/how-i-turned-my-security-cameras-into-an-automatic-bird-identification-system-with-birdnet-go/) ⭐️ 7.0/10

一位开发者分享了如何利用 BirdNET-Go 将安防摄像头改造成自动鸟类识别系统，通过 RTSP 流获取音频并进行分类。该系统支持多种硬件，如树莓派和 Unifi 门铃摄像头，但需要注意音频采样率需为 48kHz，而部分摄像头（如 Aqara）仅支持 16kHz，可能需要外接麦克风。该项目展示了 AI 在鸟类识别中的实际应用，并引发了社区关于硬件兼容性和改进方案的讨论。

hackernews · speckx · 8月31日 16:47 · [社区讨论](https://news.ycombinator.com/item?id=49511856)

**「背景」** BirdNET 是由康奈尔大学鸟类学实验室开发的一个基于人工智能的鸟类鸣声识别项目，能够从音频中自动识别鸟类物种。BirdNET-Go 是该项目的一个实时声音分析工具，受 BirdNET-Pi 项目启发，通常运行在树莓派等设备上，用于持续监听环境声音并进行分类。传统上，这类系统需要专用的麦克风或树莓派设备，但本文作者展示了如何利用现有的安全摄像头（通过 RTSP 流）作为音频源，配合 BirdNET-Go 实现自动鸟类识别，从而无需额外硬件。

**「影响」** 对于拥有兼容 RTSP 安防摄像头的用户，可以低成本实现自动化鸟类监测，但需注意音频采样率限制，部分设备可能需要额外硬件支持。

**「社区讨论」** 社区成员分享了类似经验，如使用 Unifi 门铃摄像头和 BirdNet-Go 成功识别，以及因麦克风风噪和采样率问题而改用外接麦克风。还有用户提到 Merlin Bird ID 应用对鸟类识别很有帮助，并讨论了显示界面中的字符渲染问题。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://jasontucker.blog/how-i-turned-my-security-cameras-into-an-automatic-bird-identification-system-with-birdnet-go.md">jasontucker.blog/how-i-turned-my- security - cameras -into-an-automatic...</a></li>
<li><a href="https://www.kyleniewiada.org/blog/2025/05/backyard-bird-tracking-with-ai/">Backyard Bird Tracking With AI-Powered BirdNET - Go</a></li>

</ul>
</details>

**标签**: `#birdnet`, `#ai`, `#security-cameras`, `#raspberry-pi`, `#diy`

---

<a id="item-tech-news-7"></a>
### [RavynOS：基于 Darwin 与 FreeBSD 的预 alpha 开源操作系统](https://ravynos.com/) ⭐️ 7.0/10

RavynOS 是一个预 alpha 阶段的开源操作系统，旨在结合 macOS 的美观与 FreeBSD 的自由，基于 Darwin、FreeBSD 及 Apple 开源组件构建。该项目在 Hacker News 上获得 165 分和 102 条评论，引发社区广泛关注。其目标是在非 Apple 硬件上提供 macOS 兼容性，类似于 ReactOS 对 Windows 的兼容努力。目前项目处于早期阶段，缺乏截图，主要沟通渠道为 Discord。技术新颖性和社区参与度使其具有潜在影响力，但实际应用尚需时日。

hackernews · Bluestein · 8月31日 16:19 · [社区讨论](https://news.ycombinator.com/item?id=49511534)

**「背景」** RavynOS 是一个处于早期（pre-alpha）阶段的开源操作系统项目，基于 Darwin、FreeBSD 以及 Apple 的开源代码构建，目标是在 x86-64（未来计划支持 ARM）平台上提供与 macOS 相似的体验和一定程度的兼容性。其设计目标包括实现 macOS 应用程序的源代码兼容性（即可以在 RavynOS 上编译并运行 Mac 应用）、采用类似的图形界面隐喻和用户交互方式，以及兼容 macOS 的目录结构（如 /Library、/System、/Users、/Volumes）和文件系统（如 HFS+、APFS），同时完整支持 ZFS。该项目借鉴了 ReactOS、GNUstep 和 Darling 等类似项目的思路，所有使用的代码均为开源许可。

**「影响」** 对于寻求在非 Apple 硬件上运行 macOS 应用的开发者和爱好者，RavynOS 提供了潜在的开源替代方案，但预 alpha 状态意味着目前仅适合技术探索，而非日常使用。

**「社区讨论」** 社区对 Darwin 内核的实际优势提出疑问，认为除 macOS 兼容性外可能并无显著不同；同时，缺乏截图和依赖 Discord 作为沟通渠道被视为项目展示和可访问性的短板。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://ravynos.com/">ravynOS - Finesse of macOS. Freedom of Open Source.</a></li>
<li><a href="https://github.com/ravynsoft/ravynos/tree/darwin/">GitHub - ravynsoft/ravynos: An open-source OS project that ...</a></li>
<li><a href="https://github.com/ravynsoft/ravynos">GitHub - ravynsoft/ravynos: An open-source OS project that ... RavynOS: Open Source MacOS With Same BSD Pedigree - Hackaday ravynOS: Can Open Source Build a macOS Alternative? FAQ - ravynOS RavynOS: The Open Source macOS-Like BSD OS</a></li>

</ul>
</details>

**标签**: `#operating systems`, `#Darwin`, `#FreeBSD`, `#open source`, `#macOS compatibility`

---

<a id="item-tech-news-8"></a>
### [NAT 与互联网中心化：历史与争议](https://dreamstation.systems/personal/ntppost.html) ⭐️ 7.0/10

一篇技术文章认为，NAT（网络地址转换）的地址共享设计削弱了用户托管服务器的能力，从而加剧了互联网的中心化趋势。文章将 NAT 视为互联网开放性的早期侵蚀者，并指出其促使人们将客户端-服务器模式视为自然现象。社区讨论中，Linux NAT 实现者 RustyRussell 承认其设计选择（避免端口预留以增加连接数）导致入站流量无法路由，从而削弱了公共端点能力。同时，有评论者认为 NAT 并非原罪，而 CGNAT 才是真正限制用户自由的概念，并指出家庭网关的 UX 和运营商惰性才是端口转发问题的根源。讨论还涉及 IPv6 部署缓慢以及替代协议如 Yggdrasil 的潜力。

hackernews · robinpie · 8月31日 02:23 · [社区讨论](https://news.ycombinator.com/item?id=49504905)

**「背景」** NAT 最初是为了应对 IPv4 地址短缺而设计的，它允许多个设备共享一个公共 IP 地址，但同时也使得外部设备难以直接访问内部设备。IPv6 旨在解决地址短缺问题，但部署进展缓慢。文章认为，NAT 的普及改变了互联网的架构，使得个人用户难以运行服务器，从而促进了云服务等集中化模式的发展。

**「影响」** 对于网络工程师和互联网架构研究者而言，这篇文章提供了对 NAT 历史角色的深入分析，并可能引发对 IPv6 部署和替代协议的更多关注。然而，其影响主要限于技术讨论层面，并未提出新的解决方案或改变现有技术格局。

**「社区讨论」** 社区评论中，有工程师对 IPv6 未完全取代 IPv4 表示沮丧，并建议投资于替代网络协议如 Yggdrasil。Linux NAT 实现者 RustyRussell 承认其设计选择削弱了公共端点能力，但未明确表达后悔。另有评论者认为 NAT 并非原罪，CGNAT 才是真正的问题，并指出家庭网关的 UX 和运营商惰性才是端口转发困难的根源。

**标签**: `#networking`, `#NAT`, `#IPv6`, `#internet architecture`, `#centralization`

---

<a id="item-tech-news-9"></a>
### [Wrapture：扩展猴子补丁的 Python 测试与追踪库](https://simonwillison.net/2026/Aug/31/introducing-wrapture/) ⭐️ 7.0/10

Graham Dumpleton（wrapt、mod\_wsgi 和 New Relic Python 代理的作者）发布了 Wrapture，这是一个新的 Python 库，将 wrapt 中的猴子补丁思想扩展到测试和追踪领域。Wrapture 可以轻松包装任何函数或方法，实现对所有访问的追踪，或覆盖其返回值，作为 unittest.mock 的替代方案，并为现有项目提供追踪能力。该库包含 OpenTelemetry 支持，并提供了基于配置的机制来为 Python 项目添加追踪，例如通过 TOML 配置捕获摘要、观察特定类的方法，并将追踪输出到 JSON Lines 文件。Wrapture 还支持测试模式，如通过 binding 上下文管理器存根方法返回值，或使用 transforms\_result 修改原始方法的返回值。该项目仅有几周历史，但已展现出良好的前景，并且是 Dumpleton 首次尝试完全由 AI 代理驱动的项目，所有代码和文档均由 AI 助手在其指导下编写，他强调这是精心工程化的结果，而非“vibe coding”。

rss · Simon Willison · 8月31日 23:59

**「背景」** Wrapture 是 Graham Dumpleton 发布的一个新的 Python 库，基于其此前开发的 wrapt 库，将猴子补丁（monkeypatching）的理念扩展到测试与追踪场景。猴子补丁是一种在运行时动态修改或扩展代码（如函数或方法）的技术，常用于测试替身或在不改动原始代码的情况下添加功能。Wrapture 旨在提供比 Python 标准库 unittest.mock 更灵活、更安全的替代方案，并支持通过配置或代码绑定来观察和覆盖任意函数或方法的调用。

**「影响」** 对于 Python 开发者，Wrapture 提供了一种比 unittest.mock 更灵活、更专注于追踪的测试和观测工具，尤其适用于需要在不修改源代码的情况下监控或覆盖第三方代码行为的场景。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://grahamdumpleton.me/posts/2026/08/introducing-wrapture/">Introducing wrapture - Graham Dumpleton</a></li>
<li><a href="https://github.com/GrahamDumpleton/wrapture">GitHub - GrahamDumpleton/wrapture: Monkey patch, test, and ...</a></li>

</ul>
</details>

**标签**: `#Python`, `#testing`, `#tracing`, `#monkeypatching`, `#open-source`

---

<a id="item-tech-news-10"></a>
### [GNN 时间泄漏问题与 SynthFin-AML 数据集](https://www.reddit.com/r/MachineLearning/comments/1w3imxy/your_gnn_is_probably_just_an_overcomplicated_mlp/) ⭐️ 7.0/10

该帖子指出，在动态图上训练图神经网络（GNN）时，标准基线存在普遍的时间泄漏问题，即模型在训练期间可能看到未来的边，导致性能虚高。作者发布了 SynthFin-AML v10.0 数据集，包含 10 万个节点和 120 万条边，通过严格的因果划分（训练图边≤第 7 天，验证图边≤第 8 天，测试图边≤第 10 天）来强制时间边界。此外，数据集还消除了分布泄漏，使欺诈和正常交易金额遵循相同的对数正态分布（μ=8.517，σ=0.8）。在严格时间划分下，使用 11 个点时间图特征的 LightGBM 的 PR-AUC 为 0.848，而归纳式 GraphSAGE 为 0.881，表明 GNN 的优势虽小但真实。该基准已作为拉取请求提交给 PyTorch Geometric（PR \#10774）。

reddit · r/MachineLearning · /u/Glabmayt2075 · 8月31日 16:21

**「背景」** 图神经网络（GNN）在动态图上的评估常因时间泄漏而失真：若在静态快照上训练，模型可能通过消息传递看到未来边，从而在测试时“作弊”。SynthFin-AML 是一个合成反洗钱（AML）基准数据集，旨在通过严格的时间因果划分（如训练、验证、测试图分别限制在特定天数内）来强制正确的评估协议。该数据集还通过让欺诈与正常交易金额共享相同的对数正态分布（μ=8.517, σ=0.8）来消除表格特征中的分布泄漏，从而更公平地比较 GNN 与传统机器学习模型。

**「影响」** 该数据集和评估方法为动态图上的 GNN 评估提供了更严格的因果标准，可能影响金融交易网络等领域的模型评估实践，促使研究者避免时间泄漏并更准确地衡量模型性能。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/valiyevoktay-cmd/synthfin-aml-">GitHub - valiyevoktay-cmd/ synthfin - aml -: A graph-native Anti-Money...</a></li>
<li><a href="https://huggingface.co/datasets/ovvaliyev/synthfin-aml">ovvaliyev/ synthfin - aml · Datasets at Hugging Face</a></li>
<li><a href="https://pypi.org/project/synthfin-aml/">synthfin - aml · PyPI</a></li>

</ul>
</details>

**标签**: `#graph neural networks`, `#temporal leakage`, `#dataset`, `#anti-money laundering`, `#evaluation methodology`

---

<a id="item-tech-news-11"></a>
### [OpenClaw 2.0 发布：史上最大更新，汇集逾 1.6 万个拉取请求](https://openclaw.ai/blog/openclaw-2-accidentally) ⭐️ 7.0/10

OpenClaw 于 8 月 30 日发布史上最大更新 2.0，由 933 名贡献者（含 569 名首次参与者）完成，汇集逾 1.6 万个拉取请求，约占项目迄今全部拉取请求的一半。此次更新覆盖安装、消息、记忆、技能、模型、浏览器、插件与安全等全部环节，团队为此近七周未发布新版本。同时，更新简化了安装流程，重建了浏览器端体验，并新增共享云端会话，支持多人协作。这一版本标志着 OpenClaw 在功能和社区参与度上的重大飞跃。

telegram · zaihuapd · 8月31日 04:38

**「背景」** OpenClaw 是一个开源的 AI 代理平台，此前以常规节奏发布更新。在 2.0 版本发布前，团队近七周未发布新版本，期间积累了来自 933 名贡献者（含 569 名首次参与者）的逾 1.6 万个拉取请求，约占项目迄今全部拉取请求的一半。该版本于 2026 年 8 月 31 日以 v2026.8.1 标签发布，社区经理 Hannes Rudolph 将发布帖命名为“OpenClaw 2.0, Accidentally”，意指这次发布并非意外，而是原本的例行更新因规模庞大而演变为重大版本。

**「影响」** 对于 OpenClaw 的用户和开发者，2.0 版本带来了更简化的安装、改进的浏览器体验和多人协作能力，显著提升了易用性和团队协作效率。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.explainx.ai/blog/openclaw-2-0-release-august-2026">OpenClaw 2.0 Release — 16K PRs, Rebuilt UI (2026 ...</a></li>
<li><a href="https://cybersecuritynews.com/openclaw-2-0-released/">OpenClaw 2.0 Released With Major Security Upgrades for AI ...</a></li>
<li><a href="https://shattered.io/openclaw-2-0-ai-assistant-release-2026/">OpenClaw 2.0 Release: 933 Coders, 16K PRs [2026]</a></li>

</ul>
</details>

**标签**: `#OpenClaw`, `#major release`, `#open source`, `#AI tools`, `#software engineering`

---

<a id="item-tech-news-12"></a>
### [华为 2026 半年报：营收增 9.6%，净利降 37%](https://mp.weixin.qq.com/s/gfpojf6yfdmneU0iZ1xpbQ) ⭐️ 7.0/10

华为于 8 月 31 日晚发布 2026 年上半年业绩，营收达 4678 亿元，同比增长约 9.6%；净利润为 234.27 亿元，同比下滑约 37%；研发投入增至 1210 亿元。利润下滑主要归因于存储芯片价格上涨以及加大半导体研发投入，公司上半年囤购原材料导致现金流为负 399 亿元。据 Counterpoint 数据，华为在 618 促销期间手机销量增长 19%，市占率超过两成，位居国内第一。华为计划于 9 月发布搭载自研 Kirin 芯片的旗舰新机。

telegram · zaihuapd · 8月31日 11:10

**「背景」** 华为近年来在半导体领域持续投入，以应对美国制裁带来的芯片供应限制，并推动自研芯片的商用。存储芯片价格波动直接影响其硬件成本，而研发投入的加大则反映了其长期技术战略。

**「影响」** 华为利润下滑但营收增长，显示其业务规模仍在扩大，但成本压力显著；新旗舰手机的发布可能进一步巩固其国内市场份额，并影响高端手机市场竞争格局。

**标签**: `#Huawei`, `#financial results`, `#semiconductors`, `#smartphones`, `#R&amp;D`

---

<a id="item-tech-news-13"></a>
### [中国法院冻结安世半导体 3 亿美元资产，闻泰索赔 80 亿元](https://www.reuters.com/world/asia-pacific/chinese-court-freezes-dutch-chipmaker-nexperia-bvs-stakes-four-china-units-2026-08-31/) ⭐️ 7.0/10

中国东莞中级人民法院在闻泰科技提起的诉讼中，冻结了荷兰芯片制造商安世半导体及其设备子公司最高 21.4 亿元人民币（约 3 亿美元）的资产。冻结措施涉及安世在四家中国企业的持股，包括其中国、无锡、上海半导体业务及设备子公司的无锡独资企业，于 8 月 20 日至 25 日生效，持续至 2029 年 8 月。闻泰科技去年被荷兰当局剥夺对安世的控制权，今年 5 月起诉安世及其设备子公司、母公司及三名高管，指控其执行歧视性荷兰限制，索赔 80 亿元。此案凸显中荷半导体领域法律纠纷升级，可能影响相关企业运营和跨境投资。

telegram · zaihuapd · 8月31日 12:26

**「背景」** 安世半导体原为荷兰半导体公司，后被中国闻泰科技收购。2025 年，荷兰政府以国家安全为由，剥夺了闻泰科技对安世半导体的控制权，并施加限制措施，导致安世荷兰实体停止向闻泰中国业务供应晶圆，闻泰科技在 2026 年上半年因此转为净亏损。

**「影响」** 此次资产冻结将直接限制安世半导体在华子公司的股权处置和运营灵活性，可能影响其中国业务布局和融资能力；同时，闻泰科技若胜诉，将获得 80 亿元赔偿，但诉讼结果存在不确定性，且可能加剧中荷科技领域的紧张关系。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.globaltimes.cn/page/202608/1368224.shtml">China&#x27;s Wingtech posts H1 loss amid Dutch restrictions on Nexperia ...</a></li>
<li><a href="https://www.digitimes.com/news/a20260608VL206/wingtech-nexperia-dutch-lawsuit-legal-governance.html">Wingtech sues Nexperia &#x27;s Dutch entities as cross-border control...</a></li>

</ul>
</details>

**标签**: `#semiconductors`, `#legal-dispute`, `#china`, `#netherlands`, `#wingtech-nexperia`

---

<a id="item-tech-news-14"></a>
### [MiniMax 与智谱中期业绩：收入大增但仍亏损](https://ir-upload.realxen.net/iis/0100/uploads/iis/2026/12300095-0.PDF) ⭐️ 7.0/10

MiniMax 与智谱公布了截至 2026 年 6 月底的半年业绩，两家公司收入均大幅增长但仍处于亏损状态。MiniMax 收入达 1.17 亿元，同比增长 283.1%，期内亏损 3.58 亿元，同比收窄 11%。智谱 2026 年上半年实现营业收入 9.54 亿元，同比增长 399.7%，其中云端部署收入占比提升至 86.5%，开放平台及 API 业务收入同比增长超 27 倍；归母净亏损 20.71 亿元，同比收窄 12.1%，经调整净亏损率同比收窄 3.5 倍。智谱 MaaS 平台用户数超 740 万，较年初增长 144%，付费日活用户增长 603%。这些数据表明两家公司业务扩张迅速，但盈利能力尚未实现。

telegram · zaihuapd · 8月31日 13:11

**「背景」** MiniMax 与智谱均为中国头部大模型创业公司，此前已推出多款基础模型与面向开发者的开放平台。两家公司此前均处于高投入、高亏损阶段，市场关注其商业化进展。

**「影响」** 对于关注中国 AI 行业的投资者和从业者而言，MiniMax 与智谱的强劲收入增长表明市场对 AI 服务的需求旺盛，尤其是云端部署和 API 业务，但持续亏损也提示行业仍处于投入期，盈利模式尚待验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://news.pedaily.cn/202608/568285.shtml">MiniMax 发布 中 期 财报：ARR达8亿美元，B端占比80%，Token...</a></li>
<li><a href="https://cloud.ofweek.com/news/2026-08/ART-178802-8110-30700863.html">MiniMax 不想掉队 - OFweek云计算网</a></li>

</ul>
</details>

**标签**: `#AI industry`, `#financial results`, `#MiniMax`, `#Zhipu`, `#China AI`

---

<a id="item-tech-news-15"></a>
### [寒序科技公布 MRAM 推理产品路线，uHBM 带宽 24 TB/s](https://mp.weixin.qq.com/s/adyFanNueXUHKnxr9m64kg) ⭐️ 7.0/10

寒序科技公布了基于 MRAM 的推理产品路线，首代 uHBM 片内读带宽设计值为 24 TB/s，uLPU 面向 4B 多模态模型提出超过 2000 Tokens/s 的 Decode 目标。该方案将模型权重驻留在 Persistent MRAM 阵列中，并在同片完成矩阵-向量运算，以减少权重重复搬运。其 SpinPU-ED01 验证芯片已通过第三方检测和 24 小时稳定运行验证。公司还披露了从芯片到 2U Tray 及 Rack 的产品规划。

telegram · zaihuapd · 8月31日 13:41

**「背景」** MRAM（磁随机存储器）是一种利用磁矩方向存储数据的非易失性存储器，兼具接近 SRAM 的读写速度与 DRAM 的存储密度，且断电后数据不丢失。寒序科技是国内首家 MRAM 磁计算公司，此前已实现亚洲首个 8nm eMRAM AI 芯片流片，此次发布的 uHBM 与 uLPU 架构旨在通过将模型权重驻留在 MRAM 阵列中，减少权重搬运，提升推理效率。

**「影响」** 该路线图若实现，可能显著提升 AI 推理的能效和速度，减少权重搬运开销，对依赖大模型推理的开发者与云服务商具有潜在价值，但当前仍处于验证阶段，实际性能需待产品落地确认。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.ijiwei.com/n/1097291">寒 序 科 技 发布 uHBM 与 uLPU 推 理 架构</a></li>
<li><a href="https://finance.sina.com.cn/tech/roll/2026-05-08/doc-inhxccuv8018886.shtml">国 产 重大突破！ 寒 序 科 技 实现亚洲首个8nm eMRAM AI芯片流片</a></li>

</ul>
</details>

**标签**: `#MRAM`, `#AI硬件`, `#推理加速`, `#芯片设计`, `#存储计算`

---

<a id="item-tech-news-16"></a>
### [欧盟认定 ChatGPT、Reddit、Roblox 为超大型服务，面临更严监管](https://www.euronews.com/next/2026/08/31/eu-places-chatgpt-reddit-and-roblox-under-strictest-digital-safety-rules) ⭐️ 7.0/10

欧盟委员会于 8 月 31 日依据《数字服务法》认定 ChatGPT 为超大型在线搜索引擎，并将 Reddit 和 Roblox 列为超大型在线平台，原因是这三项服务在欧盟的月均活跃用户均超过 4500 万人。被认定后，三者有四个月过渡期，须开展年度系统性风险评估、接受独立审计，并向监管机构及经审核的研究人员共享数据，重点涉及非法内容、未成年人保护和用户身心健康等。这一认定意味着这些平台将面临更严格的数字监管义务，对平台运营和 AI 治理具有重要影响。

telegram · zaihuapd · 8月31日 14:39

**「背景」** 欧盟《数字服务法》是欧盟针对大型在线平台和搜索引擎制定的全面监管法规，旨在打击非法内容、保护用户基本权利并提高透明度。该法规对月均活跃用户超过 4500 万的在线平台和搜索引擎设定了更严格的义务，包括系统性风险评估、独立审计和数据共享等。此前，欧盟已依据该法规认定了多批超大型在线平台和搜索引擎，此次新增的 ChatGPT、Reddit 和 Roblox 是依据同一标准被纳入监管范围。

**「影响」** 这一认定将迫使 ChatGPT、Reddit 和 Roblox 在欧盟市场投入更多资源用于合规，包括建立风险评估和审计机制，并可能调整内容审核和未成年人保护措施，从而影响其运营成本和产品设计。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://digital-strategy.ec.europa.eu/en/news/commission-designates-chatgpt-reddit-roblox-under-digital-services-act">Commission designates ChatGPT , Reddit , Roblox under Digital ...</a></li>

</ul>
</details>

**标签**: `#EU regulation`, `#Digital Services Act`, `#ChatGPT`, `#Reddit`, `#Roblox`

---

## 科技博客

<a id="item-tech-blog-1"></a>
### [USB-C 适配传统喷灌系统](https://hackaday.com/2026/08/31/usb-c-adapted-for-legacy-sprinkler-systems/) ⭐️ 7.0/10

rss · Hackaday · 8月31日 15:30

**「背景」** 传统自动喷灌系统通常依赖 24 VAC 电源驱动电磁阀，这种老式标准在现代改造中显得笨重且不灵活。作者 Ray Wang 在 OpenSprinkler 项目中探索了用 USB-PD 替代传统电源的可能性，以简化系统并利用 USB 的普及性。

**「方案」** 作者详细测试了四种驱动电磁阀的方法：单极性 PWM、双电压、从直流电源合成交流波，以及产生双极性方波。其中双极性方波效果最佳，能接近真实正弦波的行为，同时降低对功率电子器件的需求。实验使用 ESP8266 模块和真实示波器测量，展示了 USB-PD 如何通过协商电压（而非让电流通过 PD 芯片）直接为电路供电。作者还讨论了变压器与 USB-C 适配器的可靠性权衡，指出变压器虽耐用但可能因保险丝熔断而失效，而 USB-C 适配器因大规模生产而成本低廉。

**「启示」** 作者的核心论点是，USB-PD 不仅能提供足够的功率驱动传统 24 VAC 设备，而且通过巧妙的方法（如双极性方波）可以高效且可靠地替代传统电源，展示了通用标准在非预期场景中的适应潜力。

**标签**: `#USB-PD`, `#sprinkler systems`, `#24VAC`, `#solenoid driving`, `#embedded systems`

---

<a id="item-tech-blog-2"></a>
### [什么是 Mu 金属？](https://hackaday.com/2026/08/31/whats-mu-metal/) ⭐️ 7.0/10

rss · Hackaday · 8月31日 14:00

**「背景」** 在拆解老式电视或录音设备时，你可能会看到由某种奇特金属制成的屏蔽罩，老手会告诉你那是 mu 金属，用于“屏蔽”磁场。但与传统导电 RF 屏蔽不同，mu 金属并非真正阻挡磁场，而是为磁通提供一条更容易的路径，使其绕过需要保护的部件。

**「方案」** mu 金属属于软磁镍铁合金，典型配方约含 80%镍和 15%铁，其余为钼等元素。其关键特性是极高的磁导率，商用材料相对磁导率可达 10 万以上。其原理可类比电路中的电阻：磁路中的磁阻，高磁导率外壳让磁通更倾向于通过外壳而非内部空间，尤其对直流和低频磁场有效，这正是铜或铝屏蔽无能为力的频段。经典应用包括 CRT、磁带录音头、变压器和精密仪器，如今仍用于磁强计、电子显微镜和量子实验等。但 mu 金属有两个关键限制：一是加工或弯曲会引入应力，严重降低磁导率，因此高性能屏蔽罩需先成型再氢退火；二是饱和磁感应强度仅约 0.75 特斯拉，强磁场下需与高饱和材料组合使用。历史上，mu 金属于 1923 年由英国科学家为海底电报电缆发明，用于补偿海水电容，当时每 1.6 公里电缆需约 80 公里细 mu 金属丝。

**「启示」** mu 金属的核心原理是“引导”而非“阻挡”磁场，通过高磁导率提供低磁阻路径，这一策略至今仍是弱直流或低频磁场屏蔽的基础。尽管面临应力敏感和饱和限制，它依然在现代高精度仪器和量子技术中发挥着不可替代的作用。

**标签**: `#mu metal`, `#magnetic shielding`, `#soft magnetic alloys`, `#permeability`, `#electronics history`

---

<a id="item-tech-blog-3"></a>
### [修复昂贵的 Amprobe 电缆追踪器：NAND 闪存位翻转之谜](https://hackaday.com/2026/08/31/fixing-an-expensive-amprobe-cable-tracer-with-mystery-fault/) ⭐️ 6.0/10

rss · Hackaday · 8月31日 23:00

**「背景」** 一台价值 2000 英镑的 Amprobe 电缆追踪器在闲置数年后无法启动，制造商 Fluke 的维修报价高达 600 英镑，且需先支付 70 英镑咨询费。作者认为这种昂贵的维修报价不合理，于是将设备送往 YouTube 频道“Buy it Fix it”进行尝试性修复。

**「方案」** 修复过程首先排除了电源和显示问题，通过串口日志发现系统芯片（SoC）启动时 NAND 闪存中的引导镜像因损坏而验证失败。拆下 TSOP 48 封装的闪存芯片并读取数据后，初步检查看似正常，但经过与另一台追踪器固件的对比，发现引导加载程序区域存在少量位翻转，这很可能是闪存单元电荷泄漏所致。用修正后的镜像重新写入，设备成功启动至基于 Linux 2.6 的固件。作者指出，由于闪存单元存在泄漏，长期来看更换新芯片更为稳妥。

**「启示」** 作者通过这次修复表明，昂贵的维修报价并不总是必要的，简单的位翻转问题可以通过对比固件和重写闪存来解决。同时，这也提醒我们，NAND 闪存可能因电荷泄漏而出现数据损坏，长期可靠性需考虑更换硬件。

**标签**: `#NAND flash`, `#embedded repair`, `#bootloader`, `#cable tracer`, `#repair cost`

---

<a id="item-tech-blog-4"></a>
### [能量采集名片：NFC 供电的 LED 设计](https://hackaday.com/2026/08/31/building-an-energy-harvesting-business-card/) ⭐️ 6.0/10

rss · Hackaday · 8月31日 20:00

**「背景」** 在电子领域，名片不仅是联系方式，更是展示创意设计的机会。传统上，这类名片常依赖纽扣电池供电，但电池会增加厚度和复杂性。作者 Wilson Harper 希望探索一种更优雅的供电方式，利用现代智能手机普遍配备的 NFC 读取器，从手机中采集能量来驱动名片上的 LED。

**「方案」** Wilson Harper 设计了一款基于 PCB 的名片，尺寸与标准名片相同，上面集成了 21 个 Charlieplexed LED、一个微控制器和必要的支持元件。关键在于供电方式：名片通过 PCB 走线天线从手机的 NFC 场中采集能量，无需电池。天线设计借助了 STM 的感应电感工具，并通过 LLM 脚本集成到 KiCad 中。使用时，只需将名片放在手机背面，LED 便会动态闪烁。设计文件已开源在 GitHub 上，供爱好者参考和复现。

**「启示」** 作者通过这一项目展示了能量采集在低功耗设备中的实际应用潜力，将日常技术（NFC）转化为创意供电方案，为电子名片设计提供了新思路。

**标签**: `#energy harvesting`, `#NFC`, `#LED`, `#PCB design`, `#business card`

---

<a id="item-tech-blog-5"></a>
### [PteroSim：在虚幻引擎中模拟无人机](https://hackaday.com/2026/08/31/simulating-uavs-in-unreal-engine/) ⭐️ 5.0/10

rss · Hackaday · 8月31日 18:30

**「背景」** 真实飞行器的测试既昂贵又充满风险，需要寻找合适的飞行场地，并应对环境条件和可能的设备损坏。模拟测试能大幅降低这些风险，但现有的模拟平台往往缺乏对真实自动驾驶仪代码的支持。

**「方案」** 作者 AlexanderRex 开发了 PteroSim，一个开源的无人机模拟平台，旨在作为综合测试台。它能够直接运行 PX4、ArduPilot 和 Betaflight 的二进制文件，自动驾驶仪代码接收模拟传感器数据，并像在真实飞行器中一样输出执行器指令。模拟器使用 JSBSim 进行飞行动力学计算，并通过虚幻引擎 5 渲染场景。这种架构允许开发者在桌面电脑上快速迭代测试不同的自动驾驶仪设置，无需前往外场或冒险损坏硬件。

**「启示」** PteroSim 展示了将真实自动驾驶仪代码与高保真模拟环境相结合的可能性，为无人机开发者提供了一个安全、高效的测试平台，有望加速自动驾驶技术的迭代和验证。

**标签**: `#UAV simulation`, `#PX4`, `#ArduPilot`, `#JSBSim`, `#Unreal Engine`

---

<a id="item-tech-blog-6"></a>
### [用换热器对抗热水系统中的军团菌](https://hackaday.com/2026/08/31/defeating-bacteria-in-hot-water-systems-with-a-heat-exchanger/) ⭐️ 5.0/10

rss · Hackaday · 8月31日 17:00

**「背景」** 热水系统通常将水温维持在 49°C 左右，这个温度虽能抑制军团菌生长，却不足以将其杀死，而水流经管道时冷却又可能促进细菌繁殖。NIST 指出，现代低流量淋浴头使水在管道中停留更久，增加了军团菌等病原体的滋生风险。

**「方案」** 作者介绍了 NIST 设计的一种简单换热器，可安装在热水器顶部。热水从水箱流出时经过换热器，被进入水箱的冷水包围冷却，从而允许水箱在 70°C 高温下储存以杀灭军团菌，同时输出水温降至安全范围。冷水被预热，能量得以回收。原型机成本仅约 100 美元，对养老院、酒店等大型设施尤其有益。然而，评论指出，这本质上等同于更简单、更便宜的调温阀，后者已在许多地区成为标准配置，且能适应环境温度变化和间歇性加热。换热器可能增加管道冲洗时间和流量相关温度波动，而调温阀则能提供更稳定的输出。

**「启示」** 作者认为，利用冷水冷却热水的换热器是一种巧妙且廉价的提高热水安全性的方法，但评论者强调，调温阀等现有解决方案可能更简单有效。

**标签**: `#Legionella`, `#heat exchanger`, `#hot water systems`, `#NIST`, `#tempering valve`

---