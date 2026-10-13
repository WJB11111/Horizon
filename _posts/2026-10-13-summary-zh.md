---
layout: default
title: "Horizon Summary: 2026-10-13 (ZH)"
date: 2026-10-13
lang: zh
---

> 从 71 条内容中筛选出 13 条重要资讯。

---

**科技新闻**
1. [80 岁供体血细胞重编程为分子年龄不足 20 岁的干细胞](#item-tech-news-1) ⭐️ 8.0/10
2. [Python 3.15 发布：PEP 810 惰性导入与采样分析器](#item-tech-news-2) ⭐️ 8.0/10
3. [learnc：自动调优现有 C 代码常量，JPEG 缩小 9.1%](#item-tech-news-3) ⭐️ 8.0/10
4. [Intel D270 数据中心 GPU：最高 480 GB LPDDR5X](#item-tech-news-4) ⭐️ 7.0/10
5. [用 C 构建现代 Web 应用的技术实践](#item-tech-news-5) ⭐️ 7.0/10
6. [黑客远程触发欧洲超市冷柜自动除霜](#item-tech-news-6) ⭐️ 7.0/10
7. [开发者将 WiFi 7 路由器改造为 320 Msps SDR 接收器](#item-tech-news-7) ⭐️ 7.0/10
8. [Codex CLI 默认安装自更新后台守护进程](#item-tech-news-8) ⭐️ 7.0/10
9. [Meta 发布 Muse Wonder 模型，社区实测褒贬不一](#item-tech-news-9) ⭐️ 7.0/10
10. [循环扩散 Transformer：采样时可调循环深度](#item-tech-news-10) ⭐️ 7.0/10
11. [DeepSeek 拟领投前腾讯科学家机器人实验室](#item-tech-news-11) ⭐️ 7.0/10
12. [Anthropic 称反蒸馏防护使被提取数据减少 90% 至 99%](#item-tech-news-12) ⭐️ 7.0/10

**科技博客**
1. [计算机内存的“谎言”：从缓存到压缩内存](#item-tech-blog-1) ⭐️ 5.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [80 岁供体血细胞重编程为分子年龄不足 20 岁的干细胞](https://doi.org/10.1111/acel.70751) ⭐️ 8.0/10

一项发表于同行评审期刊《Aging Cell》的研究报告称，研究人员将一名 80 岁供体的血细胞重编程为干细胞，其分子年龄低于 20 岁。该结果属于细胞重编程与衰老研究领域的技术进展，表明衰老相关的分子特征在体外可能被显著逆转。需要指出的是，这仍是体外早期发现，并非已证实的疗法，其长期效果与安全性尚待进一步验证。

hackernews · arunc · 10月12日 23:34 · [社区讨论](https://news.ycombinator.com/item?id=50064536)

**「背景」** 细胞重编程技术此前主要应用于胚胎干细胞或诱导多能干细胞（iPSC）的制备，而本研究采用的是直接重编程路径，将老年供体的血液前体细胞转化为神经干细胞。表观遗传时钟是衡量细胞分子年龄的常用工具，通过 DNA 甲基化等标记评估细胞的生物学年龄，而非供体的实际年龄。随着年龄增长，造血干细胞产生新血细胞的能力下降，老年人更易出现贫血、免疫力降低和血液癌症，因此逆转细胞分子年龄具有潜在的临床意义。

**「影响」** 该发现目前仍属体外早期研究，尚不能直接转化为抗衰老疗法；但若能在生物体层面实现，将首先影响细胞重编程与衰老研究领域，并可能引发关于延长寿命技术公平性与伦理的讨论。

**「社区讨论」** 有评论者表示受此类新闻影响开始更关注自身健康，希望活到抗衰老疗法成熟之时；也有人将其类比为灯塔水母的细胞重置机制，并提及 Michael Levin 关于生物电与细胞重编程的研究。另有评论对技术可能被用于非治疗目的（如为 AI 负载培养类脑组织）以及被权力者利用表达了担忧，整体讨论在期待与警惕之间并存，部分内容带有推测性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://medicalxpress.com/news/2026-10-blood-cells-year-donor-stem.html">Blood cells from 80 - year - old donor become stem cells with...</a></li>
<li><a href="https://bioengineer.org/blood-cells-from-80-year-olds-rejuvenated-into-brain-cells-with-molecular-age-under-20/">Blood Cells From 80 - Year - Olds Rejuvenated Into Brain Cells With...</a></li>
<li><a href="https://www.lifeextension.com/magazine/2022/3/human-age-reversal">Reverse Aging In Human: Is That Possible? - Life Extension</a></li>
<li><a href="https://interestingengineering.com/science/12-innovations-that-could-make-reverse-aging-a-reality">12 innovations that could make reverse aging a reality</a></li>

</ul>
</details>

**标签**: `#stem-cells`, `#aging-research`, `#cellular-reprogramming`, `#biotechnology`, `#research`

---

<a id="item-tech-news-2"></a>
### [Python 3.15 发布：PEP 810 惰性导入与采样分析器](https://simonwillison.net/2026/Oct/12/python-3-15/) ⭐️ 8.0/10

Python 3.15 已正式发布，官方 What&\#x27;s New 指南由 3.14 和 3.15 发布经理 Hugo van Kemenade 整理。最受关注的新特性是 PEP 810 显式惰性导入，允许用 \`lazy import json\` 和 \`lazy from pathlib import Path\` 语法，让模块在首次使用符号时才真正导入，直接缓解插件等场景的启动开销。PEP 798 为推导式引入解包语法，例如 \`\[\*sublist for sublist in lists\]\` 等价于嵌套循环，并支持集合与字典解包。标准库新增高频统计采样分析器 Tachyon（profiling.sampling），原有 tracing profiler 从 cProfile 更名为 profiling.tracing；采样分析器可附加到运行中的进程、生成报告、火焰图和热图，并支持 Firefox profiler 格式。性能方面，Miguel Grinberg 对 3.15.0rc3 的测试显示整体与 3.14 基本持平，仅实验性 JIT 在 Fibonacci 测试中带来约 1.2 倍提升。作者同时指出，随着 3.10 结束支持，他作为维护跨版本开源软件的开发者将告别 3.10，并开始使用 3.11 的特性。

rss · Simon Willison · 10月12日 18:15

**「背景」** Python 每年发布一个新的大版本，每个版本通常获得约五年的支持周期，因此新版本发布往往伴随旧版本进入生命周期尾声。PEP 810 的惰性导入针对的是 Python 启动时导入大量模块带来的固定开销，这一问题在依赖重型库的插件生态中尤为明显。PEP 798 则扩展了 2015 年 Python 3.5 中 PEP 448 引入的解包语法，将其带入推导式。

**「影响」** 对需要兼容多个 Python 版本的开源维护者而言，3.10 结束支持意味着可以开始使用 3.11 的语言特性，而惰性导入为插件和 CLI 工具提供了标准库层面的启动优化手段。

**标签**: `#python`, `#programming-languages`, `#release`, `#pep-810`, `#open-source`

---

<a id="item-tech-news-3"></a>
### [learnc：自动调优现有 C 代码常量，JPEG 缩小 9.1%](https://www.reddit.com/r/MachineLearning/comments/1x4dlbm/learnc_fit_the_constants_in_existing_c_code_to/) ⭐️ 8.0/10

learnc 是一个 MIT 许可的工具，能够针对用户用 C 编写的评分函数，自动调优未经修改的 C 代码中的具名常量，并将新值写回同一文件。在留出数据上，它把 stb\_image\_write.h 的 128 个量化表条目在 12 张 Kodak 图像上训练、另 12 张上测试，在等 SSIM 下取得 9.1% 的 BD-rate 增益，并已在 libjpeg 中用 scikit-image 独立验证；作为对比，mozjpeg 的量化表仅取得 2.7%。在 Google WebRTC VAD 上，它调优了 vad\_core.c 中的全部常量（在 LibriParty dev 上训练），使 LibriParty eval 的 F1 从 0.810 提升到 0.859。该工具最适合数十到数百个常量的场景，不适用于大型权重集，且在低于 1 bpp 时对 JPEG 没有增益。

reddit · r/MachineLearning · /u/keep\_up\_sharma · 10月12日 20:51

**「背景」** 在 C 代码中，许多行为由具名常量决定，例如 JPEG 编码器中的量化表数值或语音活动检测（VAD）的阈值参数。传统上这些常量由人工经验设定或通过手工调参优化，而 learnc 的思路是把它们当作可调参数，用用户自定义的 C 评分函数在数据上自动搜索更优取值，并直接改写原文件中的常量。该工具以 MIT 许可证开源，作者为 devanmolsharma。

**「影响」** 对使用 WebRTC VAD 的开发者而言，该工具表明无需改动算法结构、仅调整 vad\_core.c 中的常量即可将 LibriParty 评测集上的 F1 从 0.810 提升至 0.859；但 WebRTC VAD 本身是面向实时的简单模型，在音乐、鸟鸣等类人声干扰下误报率较高，因此这一提升未必能解决此类场景的误报问题。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://stackoverflow.com/questions/51463146/python-webrtc-voice-activity-detection-is-wrong">audio - python webrtc voice activity detection is wrong - Stack Overflow</a></li>

</ul>
</details>

**标签**: `#C`, `#optimization`, `#machine-learning`, `#jpeg`, `#open-source`

---

<a id="item-tech-news-4"></a>
### [Intel D270 数据中心 GPU：最高 480 GB LPDDR5X](https://www.intel.com/content/www/us/en/products/details/discrete-gpus/data-center-gpu/d-series.html) ⭐️ 7.0/10

Intel 推出 D 系列数据中心 GPU 中的 D270，最高配备 480 GB LPDDR5X 显存，面向大模型 AI 推理。据讨论中引用的数据，其显存带宽约 1.5 TB/s、算力约 1.3 PFLOPS。该产品引发技术社区关注，讨论集中在内存带宽与算力的平衡、单用户与并发推理的差异，以及缺乏快速多 GPU 互联带来的限制。目前官方定价尚未公布，评论者对其成本与适用场景存在明显分歧。

hackernews · hurricanepootis · 10月12日 21:35 · [社区讨论](https://news.ycombinator.com/item?id=50063365)

**「背景」** Intel D270 是 Intel 面向数据中心推出的推理优化 GPU，定位为服务智能体 AI、长上下文和高并发推理场景，而非 3D 图形渲染。根据第三方数据库，该卡采用 LPDDR5X 显存，配备 256 位内存接口，核心频率 2100 MHz、可加速至 2500 MHz，显存等效速率 16 Gbps。Intel 官方页面与媒体报道均强调其在功耗和成本上的实用性，但具体定价尚未公布。

**「影响」** 对于关注大模型推理的开发者而言，D270 的 480 GB LPDDR5X 与 1.5 TB/s 带宽更适合单用户、内存受限的解码场景；社区评论指出其缺乏快速多 GPU 互联，并发用户增多时性能会明显受限，且定价尚未公布。

**「社区讨论」** 有评论者认为 1.5 TB/s 带宽值得更多宣传，并指出该卡缺乏快速多 GPU 互联，更像“伪装成服务器卡的消费级卡”，适合单用户解码场景，但并发用户下性能会明显下降。也有人质疑 480 GB 显存显卡的定价可能极高，并询问预期售价；另有用户分享在 2 张 RTX 3090 加 128 GB 内存上运行 180B 量化模型的实践经验，指出上下文填满后代理类任务会变慢。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.intel.com/content/www/us/en/products/details/discrete-gpus/data-center-gpu/d-series.html">Intel GPU D270 │ Inference-Optimized Data Center GPU</a></li>
<li><a href="https://www.techpowerup.com/gpu-specs/d270.c4452">Intel D270 Specs | TechPowerUp GPU Database</a></li>
<li><a href="https://www.notebookcheck.net/Intel-s-new-GPU-packs-up-to-480GB-of-memory-but-skips-3D-graphics.1422369.0.html">Intel&#x27;s new GPU packs up to 480GB of memory — but skips 3D ...</a></li>

</ul>
</details>

**标签**: `#AI accelerators`, `#Intel GPUs`, `#hardware`, `#LLM inference`, `#data-center GPUs`

---

<a id="item-tech-news-5"></a>
### [用 C 构建现代 Web 应用的技术实践](https://prophitt.me/writing/a-modern-web-app-in-c) ⭐️ 7.0/10

一篇技术文章详细介绍了如何用 C 语言构建现代 Web 应用，重点展示了通过 pledge 和 chroot 实现权限降级，以及极简技术栈的部署方式。文章引发了关于最小化依赖部署与权限分离的深入讨论，社区成员补充了 busybox 内置 CGI 支持、FastCGI 等替代方案的实际经验。讨论中既有对简洁性的赞赏，也有对每次请求由 nginx 调用二进制文件这一模式的质疑，部分开发者更倾向于使用带状态的常驻后端进程。整体而言，这是一种小众的复古/替代技术栈实践，而非范式转变，但提供了关于部署权衡的具体技术细节。

hackernews · prophittcorey · 10月12日 16:13 · [社区讨论](https://news.ycombinator.com/item?id=50058528)

**「背景」** CGI（通用网关接口）是 1990 年代动态网站的标准做法：把 C 程序放进 cgi-bin 目录，由 Apache 等服务器按请求 fork 执行。文章作者 Corey Prophitt 以此为基础，展示如何用 C 构建现代 Web 应用，并借助 pledge、chroot 等机制降低权限。社区讨论还提到 busybox 内置 cgi-bin 支持，以及 fastcgi 等替代方案。

**「影响」** 对于考虑采用 C 语言 CGI 方案部署 Web 应用的开发者而言，该文章展示的 pledge/chroot 权限降级实践提供了可参考的安全加固路径，但社区评论也指出每次请求由 nginx 调用二进制的无状态模式可能不适合需要保持状态的复杂后端。

**「社区讨论」** 社区普遍认可文章关于权限降级（pledge/chroot）的论证，有评论者指出 busybox 内置 CGI 支持可作为替代方案，也有人分享了自己用 C 和 FastCGI 构建并成功商业化的经历。不过也有开发者表示不确定是否喜欢 nginx 每次请求都调用二进制文件的模式，更倾向于让后端进程保持状态，并提到自己现在使用 Rust 配合 Tokio、Actix Web 和 Diesel 等框架。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://zeli.app/story/50058528">A Modern Web App in C · 153 HN comments | Zeli</a></li>
<li><a href="https://braindetox.kr/en/posts/modern_web_app_in_c_bchs_cgi_2026.html">Decisions Behind a Commercial Web App Built in C and CGI ...</a></li>

</ul>
</details>

**标签**: `#C`, `#web development`, `#systems programming`, `#deployment`, `#security`

---

<a id="item-tech-news-6"></a>
### [黑客远程触发欧洲超市冷柜自动除霜](https://www.tomshardware.com/tech-industry/cyber-security/unprecedented-cyberattack-cripples-supermarket-fridges-across-europe-as-hackers-activate-automatic-defrosting-delivery-and-store-prices-also-impacted-by-incident) ⭐️ 7.0/10

据多家媒体报道，法国超市连锁 Intermarché 等欧洲零售商的制冷系统遭到网络攻击，黑客远程激活了冷柜的自动除霜功能，导致约 150 家门店的运营受到影响，商品配送和门店价格显示也出现异常。攻击目标指向联网的工业制冷控制器，安全研究机构 Claroty 的 Team82 此前曾披露 Danfoss 制冷控制器存在相关漏洞。社区讨论指出，涉事设备可能包括已停止支持的旧型号，如 Danfoss SM800（2021 年终止支持）和 SC355（2016 年终止支持）。该事件凸显了零售关键基础设施中联网工业控制器长期存在的安全隐患。

hackernews · Zeekaas · 10月12日 12:16 · [社区讨论](https://news.ycombinator.com/item?id=50055304)

**「背景」** Danfoss 是丹麦的制冷与空调控制设备制造商，其生产的商用制冷控制器（如 SM800、SC355 等型号）被广泛用于超市冷柜和冷库。这些控制器通常支持联网，以便远程诊断、启动除霜和跨门店比较能效，但部分型号已停止支持（SM800 于 2021 年 EOS，SC355 于 2016 年 EOS），长期未更新固件。安全研究机构 Claroty 的 Team82 此前已披露 Danfoss 制冷控制器存在漏洞，说明此类联网工业控制器长期面临被远程操控的风险。

**「影响」** 此次事件表明，暴露在互联网上的老旧制冷控制器（如已停止支持的 Danfoss SM800、SC355 及 AK-SM 8xxA 系列）可被远程利用，攻击者不仅能关闭制冷，还能伪造温度显示以掩盖攻击，直接威胁超市的食品安全与库存。Claroty Team 82 已披露相关漏洞，Danfoss 为 AK-SM 8xxA 系列提供了修复，但大量已过支持期的设备可能无法获得补丁。

**「社区讨论」** 评论者普遍认为，问题根源在于成本压力：旧控制器缺乏安全审查和定期更换，而厂商又通过联网远程诊断和能效优化来推销连接功能。有用户以医院实验室设备必须订阅联网才能运行测试为例，反驳“为什么要把冷柜连上网”的质疑。另有评论提到，Danfoss 漏洞可能与 2026 年 8 月底美国军事基地发生的类似事件有关，但尚不确定是否为同一攻击者。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://cybernews.com/security/danfoss-refrigeration-hack-france-supermarkets/">Refrigeration Cyberattack Hits French Supermarkets | Cybernews</a></li>
<li><a href="https://tech-insider.org/au/french-supermarket-fridge-cyberattack-danfoss-2026/">French Supermarket Fridge Hack Hits 50°C [2026]</a></li>
<li><a href="https://shattered.io/french-supermarket-fridge-cyberattack-2026/">French Supermarket Fridge Cyberattack Hits 150 Stores</a></li>
<li><a href="https://www.claroty.com/team82/research/freeze-the-controller-defrost-the-food-uncovering-vulnerabilities-in-danfoss-refrigeration-controllers">Freeze the Controller , Defrost the Food: Uncovering Vulnerabilities in...</a></li>
<li><a href="https://www.linkedin.com/posts/claroty_team82-activity-7371876691859746816-y04c"># team 82 | Claroty</a></li>
<li><a href="https://teamwin.in/hackers-can-turn-off-refrigeration-while-the-temperature-display-still-looks-normal/">Hackers Can Turn Off Refrigeration While the Temperature Display Still</a></li>

</ul>
</details>

**标签**: `#cybersecurity`, `#IoT`, `#industrial-control-systems`, `#vulnerability`, `#retail-technology`

---

<a id="item-tech-news-7"></a>
### [开发者将 WiFi 7 路由器改造为 320 Msps SDR 接收器](https://github.com/h0m3us3r/w1700k-sdr) ⭐️ 7.0/10

开发者 h0m3us3r 在 GitHub 上发布项目 w1700k-sdr，演示如何将一款 WiFi 7 路由器改造为 320 Msps 的软件定义无线电（SDR）接收器，工作频段为 5 GHz。该项目在 Hacker News 上引发 SDR 与嵌入式社区关注，被认为是以极低成本获取 320 Msps、5 GHz 接收能力的罕见方案。社区评论指出，同一开发者此前还基于 ESP32 Wi-Fi 微控制器做过 SDR 项目 eSpDR，而 espargos 团队也在 ESP32 上实现过类似功能，并有 5 GHz 变体可提供更宽的扫描范围与更高分辨率。有评论者根据芯片组判断，该方案很可能同样适用于内置 PCIe（用于 NVMe）的 Banana Pi R4。

hackernews · djfergus · 10月12日 12:41 · [社区讨论](https://news.ycombinator.com/item?id=50055593)

**「背景」** 软件定义无线电（SDR）用软件处理射频信号，传统上依赖专用接收硬件，成本较高。该项目把消费级 Wi-Fi 7 路由器 Gemtek W1700K 改造成宽带 SDR 接收机：其 MediaTek MT7996 射频芯片可输出最高 320 Msps 的原始 14 位 IQ 数据，由 Airoha AN7581 SoC 经 10 GbE 传输到 Linux 主机，在浏览器中显示实时频谱与瀑布图，并支持 2.4、5、6 GHz 频段和任意本振调谐。此前同一开发者还曾用 ESP32 Wi-Fi 微控制器实现过 SDR。

**「影响」** 对 SDR 与嵌入式开发者而言，该项目提供了一条以消费级 WiFi 7 路由器芯片获取 5 GHz、320 Msps 接收能力的低成本路径，社区还指出同芯片方案可能兼容带 PCIe/NVMe 的 Banana Pi R4。不过其覆盖范围并非全频段，实际可用性仍取决于具体硬件与固件支持。

**「社区讨论」** 社区普遍认为该项目技术含量高且成本极低，有人感叹不知道还有更便宜的方式获得 5 GHz、320 Msps 接收器。讨论中提及 espargos 在 ESP32 上的同类工作及其 5 GHz 变体，以及同一开发者的 eSpDR 项目，并推测 Banana Pi R4 因采用相同芯片组而可能兼容。另有评论者由此引申，质疑手机厂商要求第三方签署合同才能使用 FM 收音机，是否因为如今许多手机射频已由软件定义。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/h0m3us3r/w1700k-sdr">GitHub - h0m3us3r/w1700k-sdr</a></li>
<li><a href="https://hackaday.com/2026/10/12/wifi-router-does-software-defined-radio/">WiFi Router Does Software-Defined Radio | Hackaday</a></li>
<li><a href="https://zeli.app/story/50055593">Wi-Fi 7 router turned into a 320 Msps · 56 HN comments | Zeli</a></li>

</ul>
</details>

**标签**: `#software-defined-radio`, `#wifi-7`, `#embedded-hardware`, `#open-source`, `#rf-signal-processing`

---

<a id="item-tech-news-8"></a>
### [Codex CLI 默认安装自更新后台守护进程](https://github.com/openai/codex/issues/48195) ⭐️ 7.0/10

据 GitHub issue \#48195 报告，OpenAI 的 Codex CLI 默认会安装一个持久化、可自我更新的后台守护进程，引发社区对磁盘占用、权限问题和缺乏文档化退出选项的讨论。发帖人 whimblepop 指出目前没有文档化的禁用设置，但存在一个功能开关，可在 ~/.codex/config.toml 中通过 \[features\] daemon\_auto\_start = false 关闭；该守护进程还会在 ~/.codex 下写入 pid 文件、锁文件等，用户可删除并替换为指向 /dev/null 的符号链接，再用 chattr +i 标记为不可写。评论者 icantevenhold 称旧版本累积占用约 12 GB 磁盘空间，dllu 则报告自动更新会随机破坏权限、使 .git 变为只读并阻塞任务。该 issue 在 Hacker News 上获得 488 分和 252 条评论，反映出开发者对这类默认后台行为的普遍关注。

hackernews · whimblepop · 10月12日 18:29 · [社区讨论](https://news.ycombinator.com/item?id=50060694)

**「背景」** Codex CLI 是 OpenAI 推出的命令行编程工具，其守护进程自动启动功能在 v0.156.0 中作为可选特性引入，并在 v0.157 的 alpha 周期内被提升为默认行为。v0.157.0 于 2026 年 9 月 25 日发布，同日 @openai/codex@0.157.0 上线 npm，随后用户提交了要求将 daemon\_auto\_start 改为可选加入的 issue \#48195。

**「影响」** 受影响的 Codex CLI 用户可能面临磁盘占用膨胀、权限被破坏以及后台守护进程反复出错导致任务中断等具体问题，且官方文档未提供关闭该守护进程的说明。社区给出的缓解方式（如修改 ~/.codex/config.toml 中的 daemon\_auto\_start 标志、将相关文件链接到 /dev/null 并设为不可写）属于非官方变通手段，其长期有效性尚不确定。

**「社区讨论」** 评论者普遍对 Codex CLI 的默认后台守护进程表示不满，icantevenhold 称其占用约 12 GB 磁盘空间，dllu 报告自动更新会破坏权限并频繁阻塞任务，认为其可靠性不如 Claude Code。timdorr 指出 Claude Code 采用类似的后台版本管理模型，而 reacharavindh 则推荐使用更精简的 hax 工具链，认为过度工程化的 harness 反而带来负担。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/openai/codex/issues/48195">CLI: make `daemon_auto_start` opt-in — a persistent, self ...</a></li>
<li><a href="https://codex.danielvaughan.com/2026/09/25/codex-cli-daemon-auto-start-stable-default-v0157/">Daemon Auto-Start Is Now the Stable Default in Codex CLI v0 ...</a></li>
<li><a href="https://www.solosoft.dev/post/codex-cli-daemon-audit/">Codex CLI Now Starts a Self-Updating Daemon by Default: 373 ...</a></li>

</ul>
</details>

**标签**: `#ai-coding-tools`, `#codex-cli`, `#developer-tooling`, `#open-source`, `#software-reliability`

---

<a id="item-tech-news-9"></a>
### [Meta 发布 Muse Wonder 模型，社区实测褒贬不一](https://research.meta.ai/blog/muse-wonder) ⭐️ 7.0/10

Meta 发布了名为 Muse Wonder 的前沿 AI 模型，相关讨论在 Hacker News 上引发大量关注。由于原始条目仅提供标题和链接，缺少技术细节、基准数据和一手内容，目前可确认的信息主要来自社区实测。有开发者用图像转 HTML 任务对比后认为 Muse Wonder 明显弱于 Opus 5.5，水平更接近 Sonnet 或 Haiku，并对其公布的基准成绩与实际表现不符表示意外。另有用户报告在通过 Muse Code 站点登录 Meta 账号时，登录授权界面中出现了与自己无关的其他开发者资料，怀疑 Meta 正在向他人暴露用户资料和邮箱，且无法访问账号设置来停用账号。

hackernews · meetpateltech · 10月12日 16:48 · [社区讨论](https://news.ycombinator.com/item?id=50059115)

**「背景」** Muse 是 Meta 推出的个人 AI 智能体产品线，运行在名为 Muse Secure VM 的专用安全虚拟机上，可代表用户跨日常应用执行任务。该系列由 Meta 于 2026 年 4 月发布的首个模型 Muse Spark 驱动，也是公司首席 AI 官 Alexandr Wang 主导重构 AI 部门后的首个成果。此后 Meta 陆续推出 Muse Glimmer 等开放权重模型，并计划公开 Muse Spark 1.2 的权重，而本次讨论的 Muse Wonder 属于该系列的新成员。

**「影响」** 对尝试 Muse Wonder 的开发者而言，社区反馈显示其在图像转 HTML 任务上明显弱于 Opus 5.5，接近 Sonnet 或 Haiku 水平，与所公布的基准成绩不符；同时有用户报告登录 Muse Code 时看到无关开发者资料，疑似 Meta 正在向他人暴露个人资料和邮箱，且账户设置无法访问以停用账户。上述问题均来自社区单方面描述，尚未得到 Meta 确认。

**「社区讨论」** 评论者态度分化：有人从行业格局出发，认为前沿模型厂商越多越好，可避免单一公司主导递归自我改进后的权力集中；也有人通过图像转 HTML、SVG 绘制鹈鹕等具体测试给出对比结果，认为 Muse Wonder 表现不及预期。最受关注的是账号隐私问题，有用户称登录时看到陌生人的资料和邮箱，并持续收到登录验证码骚扰，且无法停用账号。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://about.fb.com/news/2026/09/introducing-muse-personal-ai-agent/">Introducing Muse : The World’s First Personal AI Agent Built for Everyone</a></li>
<li><a href="https://www.nytimes.com/2026/09/08/technology/meta-muse-ai-agent.html">Meta Introduces Muse , an A.I. Agent That Can Send Your Emails and...</a></li>
<li><a href="https://www.cnbc.com/2026/08/10/meta-muse-glimmer-open-weight-ai.html">Meta launches Muse Glimmer open-weight AI model</a></li>

</ul>
</details>

**标签**: `#AI models`, `#Meta`, `#LLM benchmarks`, `#privacy`, `#Hacker News`

---

<a id="item-tech-news-10"></a>
### [循环扩散 Transformer：采样时可调循环深度](https://www.reddit.com/r/MachineLearning/comments/1x49d61/looped_diffusion_transformer_the_same_blocks_run/) ⭐️ 7.0/10

一篇 Reddit 帖子介绍了一篇题为《Looped Diffusion Transformer》的论文（arXiv 2609.40305，9 月 30 日），该架构并非扩大文本到图像 DiT 的规模，而是在每个去噪步骤内多次运行一组共享的 transformer 块。作者报告称，朴素循环并不可靠地带来帮助，并通过在每个循环上施加深度监督以及自调制注意力来修复这一问题；他们声称，一个 260M 的循环模型在若干基准上击败了一个大 6.5 倍的模型，且推理计算量减少 4.9 倍，并且在固定推理预算下，增加循环深度比增加去噪步骤更有帮助。B/16 代码和权重以 MIT 许可发布（权重在 Hugging Face 上由 sensenova 提供），发帖者在 M5 Pro 上使用 PyTorch MPS、fp32、100 个 Euler 步骤、CFG 6.0 运行了它，每个提示使用一个种子，循环深度为 1 到 4；该模型在深度 4 上训练，但 README 称其他深度无需重新训练即可使用。发帖者报告称，大部分变化发生在深度 3 之前，深度 3 和 4 在每个展示的提示上都非常接近，深度 1 时每张图像约需 23–24 秒，深度 4 时约需 43–47 秒。这些说法尚未得到社区验证，且 arXiv 标识符看起来不太可能，因此应将其视为有趣但尚未确立的进展。

reddit · r/MachineLearning · /u/Fit-Ant2238 · 10月12日 18:13

**「背景」** 扩散 Transformer（DiT）是当前文生图模型的主流骨干，通常通过增大参数量来提升生成质量，但推理算力也随之上升。循环（looped）与循环深度（recurrent-depth）结构此前已在语言模型中用于在不增加参数的情况下动态调整计算量，其思路是让同一组权重被多次复用。Looped-DiT 将这一思路引入扩散模型：在每个去噪步骤内重复运行共享的 Transformer 块，并通过中间循环的深度监督与自调制注意力来稳定循环中的特征更新。

**「影响」** 若该架构的收益可复现，文本到图像开发者将能在采样时按需选择循环深度，以更低推理算力换取更高质量，而无需重新训练或更换模型权重。不过，目前这些结论仅来自单一 Reddit 帖子的个人实验，尚未获得社区验证，且 arXiv 编号 2609.40305 存疑，实际效果仍需谨慎对待。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/abs/2609.40305">[2609.40305] Looped Diffusion Transformer - arXiv.org</a></li>
<li><a href="https://arxiv.org/pdf/2609.40305">Looped Diffusion Transformer - arXiv.org</a></li>
<li><a href="https://arxivb.org/abs/2609.40305">Looped Diffusion Transformer | arXivBangers</a></li>
<li><a href="https://arxiv.org/html/2609.40305">Looped Diffusion Transformer</a></li>
<li><a href="https://www.emergentmind.com/topics/looped-diffusion-transformer-looped-dit">Looped Diffusion Transformer ( Looped -DiT)</a></li>
<li><a href="https://huggingface.co/papers/2609.40305">Paper page - Looped Diffusion Transformer</a></li>

</ul>
</details>

**标签**: `#diffusion-models`, `#transformers`, `#model-architecture`, `#inference-efficiency`, `#text-to-image`

---

<a id="item-tech-news-11"></a>
### [DeepSeek 拟领投前腾讯科学家机器人实验室](https://www.bloomberg.com/news/articles/2026-10-12/deepseek-backs-ex-tencent-ai-scientist-s-400-million-robot-lab) ⭐️ 7.0/10

据知情人士透露，DeepSeek 拟领投由前腾讯科学家 Hu Han 创立的机器人 AI 初创公司 Winverse AI 的种子轮，融资金额达数千万美元，投后估值约 4 亿美元。美团的龙珠资本等投资方也已承诺出资。这将是 DeepSeek 迄今规模最大的初创投资之一，此前该公司还入股了宇树科技。不过交易尚未最终敲定，估值与参投方仍可能发生变化。相关消息由彭博社报道，除彭博社的归属说明外，目前尚无一手信源或技术细节披露。

telegram · zaihuapd · 10月12日 14:59

**「背景」** Winverse AI 是由前腾讯科学家 Hu Han 创立的机器人 AI 初创公司，目前公开信息有限，仅有 GitHub 组织页面和官网等基础存在痕迹。DeepSeek 此前已入股机器人厂商宇树科技（Unitree），在 2026 年 8 月宇树上海 IPO 中投资约 2080 万美元，并约定共同开发 AI 模型与具身智能技术。此次若领投 Winverse AI，将是 DeepSeek 在机器人领域战略布局的延续。

**「影响」** 若交易最终敲定，这将成为 DeepSeek 迄今规模最大的初创投资之一，继入股宇树科技后进一步把战略触角伸向机器人 AI 领域；但交易尚未最终敲定，估值与参投方仍可能变化。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/WinVerse-AI">WinVerse . AI has 2 repositories available. Follow their code on GitHub.</a></li>
<li><a href="https://winverse.ai/">winverse . ai</a></li>
<li><a href="https://www.reuters.com/world/asia-pacific/deepseek-invests-208-million-unitrees-shanghai-ipo-2026-08-06/">DeepSeek invests $20.8 million in Unitree&#x27;s Shanghai IPO</a></li>
<li><a href="https://finance.yahoo.com/technology/ai/articles/deepseek-invests-20-8-million-134424315.html?fr=sycsrp_catchall">DeepSeek invests $20.8 million in Unitree&#x27;s Shanghai IPO</a></li>

</ul>
</details>

**标签**: `#AI investment`, `#robotics`, `#DeepSeek`, `#startups`, `#industry news`

---

<a id="item-tech-news-12"></a>
### [Anthropic 称反蒸馏防护使被提取数据减少 90% 至 99%](https://www.anthropic.com/research/distillation-defenses) ⭐️ 7.0/10

Anthropic 于 10 月 12 日表示，初步证据显示其针对窃取 Claude 能力的模型蒸馏攻击所部署的新防护措施，已使被提取数据减少约 90% 至 99%。公司称已封禁数万个相关账号，部分账号在发起攻击后不到两小时即被封禁。这些措施包括限制推理内容跨会话、跨模型和跨账号流转，部署双阶段分类器，并持续修补绕过手法。Anthropic 表示误报率低于 0.1%，但部分开发者需要更新集成，且被拦截的请求仍可能被收费。

telegram · zaihuapd · 10月13日 01:25

**「背景」** 模型蒸馏本身是一种广泛使用且合法的训练方法，前沿 AI 实验室常借此把自家大模型压缩成更小、更便宜的版本供客户使用。但当外部方通过 API 流量大规模提取模型能力、试图克隆模型知识时，就演变为 Anthropic 所针对的“蒸馏攻击”，这类行为往往借助欺诈账号和暗网代理生态实现工业化、自动化运作。

**「影响」** 依赖 Claude 输出进行蒸馏或微调的开发者将直接受到冲击：部分集成需更新，且被拦截的请求仍可能计费，意味着防护生效并不等于成本豁免。Anthropic 同时以封禁数万账号（常在攻击开始后不到两小时内）作为威慑，误报率低于 0.1% 表明正常用户受影响有限，但该数据来自 Anthropic 自身，尚缺独立验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.anthropic.com/news/detecting-and-preventing-distillation-attacks">Detecting and preventing distillation attacks \ Anthropic</a></li>
<li><a href="https://nahornyi.ai/en/news/anthropic-distillation-defense-strategies-2026">Anthropic Distillation Defense &amp; Tactics | Nahornyi... | Vadym Nahornyi</a></li>
<li><a href="https://www.linkedin.com/posts/rsubhas_anthropics-distillation-battle-turns-to-activity-7501570545591898112-TjC3">Anthropic AI Distillation Attacks Exposed on Dark Web | LinkedIn</a></li>
<li><a href="https://www.anthropic.com/research/distillation-defenses">Strengthening our defenses against distillation attacks</a></li>
<li><a href="https://www.explainx.ai/blog/anthropic-distillation-defenses-preserved-thinking-classifier-90-99-percent-2026">Anthropic Distillation Defenses: 90-99% Less Data Stolen ...</a></li>

</ul>
</details>

**标签**: `#AI security`, `#model distillation`, `#Anthropic`, `#LLM`, `#abuse prevention`

---

## 科技博客

<a id="item-tech-blog-1"></a>
### [计算机内存的“谎言”：从缓存到压缩内存](https://hackaday.com/2026/10/12/your-computer-memory-is-a-lie/) ⭐️ 5.0/10

rss · Hackaday · 10月12日 14:00

**「背景」** 初学编程时，内存常被想象成一个简单的字节数组：给定地址就能读写。但在现代计算机上，这个模型几乎完全失真——地址未必是物理地址，数据未必来自 DRAM，甚至可能根本不在内存里。作者 Al Williams 试图梳理这一层层抽象背后的真实机制。

**「方案」** 文章从速度差距讲起：处理器每周期可执行多条指令，而访问 DRAM 需数百周期，于是有了多级缓存。L1 小而极快，常分为指令与数据；L2 更大更慢；L3 再大再慢。多核下各核通常独占 L1/L2、共享 L3，但布局因架构而异。缓存以缓存行（现代桌面常见 64 字节）为单位传输，因此顺序访问常远快于随机访问，预取器还会提前取数；若两个核修改同一缓存行中的不同变量，会反复使对方副本失效，MESI 协议（修改、独占、共享、无效）负责保持一致性，但并不能替代同步与内存序规则。地址本身也非真实：操作系统用虚拟内存，由 MMU 借助页表把虚拟地址映射为物理地址，TLB 缓存近期翻译，页通常为 4 KB，也支持大页。多处理器或特定多核布局下还有 NUMA，本地节点访问快，跨节点需经互连，操作系统尽量把内存放在使用它的处理器附近，线程迁移会改变内存性能。虚拟页未必由物理 RAM 支撑：缺页时操作系统可能分配新页、从可执行文件或内存映射文件取数，或从交换空间换回；可执行数据通常不可变，系统直接丢弃、需要时再加载。文件系统页缓存让 RAM 充当二级存储的缓存，SSD 自身也有缓存和闪存转换层。Linux 的 zram 在 RAM 中创建压缩块设备，zswap 则在交换设备前做压缩缓存，二者都以 CPU 时间换内存容量并减少存储 I/O，但需经交换子系统、缺页和搬移。Meta 的 Gregory Price 在 2026 年 10 月 Linux Plumbers 会议上提出 CRAM，把压缩内存作为特殊 NUMA 节点暴露，用现有内存管理机制在 DRAM 与压缩内存间移动页面，并借助硬件辅助压缩/解压实现比传统页粒度更细的访问；开发者报告部分测试读性能接近普通 DRAM，特定负载较 zram 大幅提升，但写入、压缩比、硬件要求与不可压缩数据仍是限制，项目尚处开发阶段。

**「启示」** 作者的核心论点是：内存层级——缓存、地址翻译、NUMA、压缩内存与持久存储——共同维持着“简单字节数组”的假象，抽象平时有效，但性能敏感时就会泄漏。CRAM 也提示，未来操作系统可能要在普通 RAM、压缩内存、更慢内存层与二级存储之间做选择。

**标签**: `#memory-hierarchy`, `#virtual-memory`, `#caching`, `#NUMA`, `#compressed-memory`

---