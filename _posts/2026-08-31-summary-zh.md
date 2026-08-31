---
layout: default
title: "Horizon Summary: 2026-08-31 (ZH)"
date: 2026-08-31
lang: zh
---

> 从 57 条内容中筛选出 20 条重要资讯。

---

**科技新闻**
1. [QubesOS 复制到虚拟机错误报告后通道存在任意代码执行漏洞](#item-tech-news-1) ⭐️ 8.0/10
2. [Omarchy 漏洞：任意用户进程可提权至 root](#item-tech-news-2) ⭐️ 8.0/10
3. [ChatGPT Work 双版本解析：云端与本地](#item-tech-news-3) ⭐️ 8.0/10
4. [多数 Neocloud 安全防护不足](#item-tech-news-4) ⭐️ 8.0/10
5. [多智能体系统在开放世界中自主发现数学新结果](#item-tech-news-5) ⭐️ 8.0/10
6. [基于双 X 光轮廓与统计形状模型的 3D 骨骼重建](#item-tech-news-6) ⭐️ 8.0/10
7. [Haiku R1/beta6 发布：社区反馈启动回归与热情](#item-tech-news-7) ⭐️ 7.0/10
8. [组织协调的逆风：组织如何像黏菌一样运作](#item-tech-news-8) ⭐️ 7.0/10
9. [地球表面最长直线路径的验证与扩展](#item-tech-news-9) ⭐️ 7.0/10
10. [欧盟委员会在 ProtectEU 战略中重启加密后门推动](#item-tech-news-10) ⭐️ 7.0/10
11. [PyTorch 从零实现 Kimi K3](#item-tech-news-11) ⭐️ 7.0/10
12. [加州议会通过法案豁免开源系统遵守年龄验证法](#item-tech-news-12) ⭐️ 7.0/10
13. [NASA 罗曼空间望远镜搭乘猎鹰重型火箭升空，侧助推器成功回收](#item-tech-news-13) ⭐️ 7.0/10
14. [OpenAI Codex 测试以换窗替代摘要式压缩](#item-tech-news-14) ⭐️ 7.0/10

**科技博客**
1. [拆解致命万能旅行适配器](#item-tech-blog-1) ⭐️ 6.0/10
2. [低成本人形机器人：DIY 执行器方案](#item-tech-blog-2) ⭐️ 6.0/10
3. [科技周报：罗马望远镜升空与 EVE Online 迁移 Python 3](#item-tech-blog-3) ⭐️ 5.0/10
4. [NES 光学存储扩展：复古硬件的趣味实验](#item-tech-blog-4) ⭐️ 5.0/10
5. [木炉助手：安全监控炉温](#item-tech-blog-5) ⭐️ 5.0/10
6. [激光平滑 FDM 3D 打印表面](#item-tech-blog-6) ⭐️ 5.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [QubesOS 复制到虚拟机错误报告后通道存在任意代码执行漏洞](https://www.qubes-os.org/news/2026/08/29/qsb-118/) ⭐️ 8.0/10

QubesOS 披露了一个严重漏洞（QSB-118），该漏洞允许通过复制到虚拟机（copy-to-VM）的错误报告后通道实现任意代码执行。该漏洞仅影响从 Dom0 执行的复制操作，因为其错误报告函数使用了 system\(\) 调用，而虚拟机版本的 qvm-copy-to-vm 不受影响。此漏洞凸显了错误报告机制作为攻击向量的风险，对以安全为核心卖点的操作系统构成重大威胁。相关代码由 Marek Marczykowski-Górecki 提交，而创始人 Joanna Rutkowska 已于 2018 年离开项目。

hackernews · vntok · 8月30日 08:51 · [社区讨论](https://news.ycombinator.com/item?id=49496918)

**「背景」** Qubes OS 是一个以安全为核心的操作系统，采用基于 Xen 的隔离架构，将不同任务分配到独立的虚拟机（称为 qubes）中。Dom0 是系统的管理域，负责控制其他虚拟机，通常不建议用于日常操作。qvm-copy-to-vm 是用于将文件从 Dom0 复制到其他虚拟机的工具。该漏洞存在于 qvm-copy-to-vm 的错误处理路径中：当复制操作出错时，Dom0 会显示一个包含目标虚拟机报告的文件名的对话框，而该文件名在传递给 system\(\) 函数时未经过充分清理，导致恶意虚拟机可以构造特殊文件名，在 Dom0 中执行任意代码。

**「影响」** 使用 QubesOS 并依赖 Dom0 进行复制操作的用户面临任意代码执行风险，可能危及整个系统安全。由于 Dom0 通常不用于日常操作，实际攻击面有限，但漏洞的严重性不容忽视。

**「社区讨论」** 社区对此漏洞反应强烈，认为即使 QubesOS 攻击面很小，仍存在被忽视的漏洞。有用户指出错误报告后通道是常被忽略的攻击向量，并提及 OpenBSD 的类似问题。部分用户对 QubesOS 的长期安全性表示信心，但也有人提到图形硬件加速缺失等限制。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.qubes-os.org/news/2026/08/29/qsb-118/">QSB-118: Dom0 arbitrary code execution in qvm-copy-to-vm error reporting</a></li>
<li><a href="https://news.lavx.hu/article/qsb-118-qubes-os-patches-dom0-arbitrary-code-execution-bug-in-qvm-copy-to-vm">QSB-118: Qubes OS patches dom0 arbitrary code execution bug in qvm-copy ...</a></li>

</ul>
</details>

**标签**: `#security`, `#QubesOS`, `#vulnerability`, `#arbitrary code execution`, `#operating systems`

---

<a id="item-tech-news-2"></a>
### [Omarchy 漏洞：任意用户进程可提权至 root](https://0xcc.io/posts/omarchy-root-creds/) ⭐️ 8.0/10

安全研究员 trap0xcc 披露了 Linux 发行版 Omarchy 的一个严重漏洞，该漏洞允许任意用户进程将权限提升至 root。这一缺陷源于系统对用户进程的权限管理不当，使得任何本地用户都能完全控制系统。Omarchy 是一个基于 Arch Linux 的发行版，近期因 YouTube 等媒体的大力宣传而受到广泛关注。该漏洞的严重性在于，它绕过了常规的权限隔离机制，使恶意软件或攻击者能够轻易获得最高权限。目前尚无官方修复补丁发布，用户应谨慎使用该系统，并关注后续更新。

hackernews · trap0xcc · 8月30日 15:59 · [社区讨论](https://news.ycombinator.com/item?id=49499854)

**「背景」** Omarchy 是一个基于 Arch Linux 的发行版，因其在媒体和 YouTube 上的宣传而受到关注。该漏洞源于 Omarchy 默认的 Docker 配置，使得用户桌面会话中运行的几乎所有程序都能在没有密码、sudo 或权限提示的情况下提升至 root 权限。该问题已在 4.0.1 版本中修复。

**「影响」** 对于 Omarchy 用户而言，该漏洞意味着任何能够执行代码的进程（包括恶意软件或本地攻击者）都可以直接获得 root 权限，从而完全控制整个系统，窃取数据或安装持久后门。由于 Omarchy 近期在媒体上获得大量曝光，其用户群体可能包含许多新手，他们可能未意识到该发行版的安全风险，因此实际影响可能被放大。

**「社区讨论」** 社区评论普遍对 Omarchy 的安全性表示担忧，并指出该发行版存在其他严重问题，例如之前发现的 USB 描述符直接流入 shell 的漏洞。多位用户认为，不应盲目采用媒体热炒的发行版，并建议使用更成熟的 Arch Linux 或等待更稳定的替代方案。也有评论指出，Linux 桌面环境普遍缺乏有效的沙箱机制，因此此类提权漏洞并非 Omarchy 独有，但 Omarchy 的快速开发模式加剧了风险。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://0xcc.io/posts/omarchy-root-creds/">Omarchy: Any User Process Can Escalate to Root</a></li>

</ul>
</details>

**标签**: `#security`, `#linux`, `#vulnerability`, `#privilege escalation`, `#omarchy`

---

<a id="item-tech-news-3"></a>
### [ChatGPT Work 双版本解析：云端与本地](https://simonwillison.net/2026/Aug/30/understanding-chatgpt-work/) ⭐️ 8.0/10

OpenAI 于 7 月 9 日发布了 ChatGPT Work，这是一个面向付费订阅者的强大工具，但存在两个不同版本：云端版（Work Cloud）和本地版（Work Local）。云端版可通过 chatgpt.com 或移动应用访问，提供代码执行环境（可访问互联网）、完整的无头 Chrome 浏览器、持久化共享文件系统、发布 ChatGPT Sites 的能力，以及支持 Sol、Luna、Terra 模型和多种推理级别。本地版则通过桌面应用（原 Codex）运行，可访问本地文件和程序。目前，ChatGPT Work 仅向每月 20 美元及以上的订阅者开放，免费用户和每月 8 美元的 Go 用户无法使用。作者 Simon Willison 认为，Work 的核心优势在于其代码执行环境能够与互联网交互，并支持运行 JavaScript 操作网页 DOM，这使其成为比普通 ChatGPT Chat 更强大的任务执行工具。

rss · Simon Willison · 8月30日 23:59

**「背景」** ChatGPT Work 是 OpenAI 在 2026 年推出的产品，旨在将 ChatGPT 从简单的对话工具扩展为能够完成复杂任务的代理。其前身是 Codex，一个面向开发者的编程代理，而 Work 则试图将其能力包装成更易用的界面。OpenAI 在 2023 年开创了代码解释器模式，允许模型执行代码，但此前该环境无法访问互联网，而 Work 的云端版突破了这一限制。

**「影响」** 对于每月支付 20 美元及以上的 ChatGPT 订阅者，Work Cloud 提供了前所未有的能力，例如让 AI 直接克隆 GitHub 仓库、安装依赖并访问外部网站，这显著提升了自动化任务的效率。然而，由于该功能仅限付费用户，且模型选择与计费方式（与 Codex 配额挂钩）可能造成混淆，用户需要仔细评估其实际价值。

**标签**: `#OpenAI`, `#ChatGPT`, `#AI tools`, `#product analysis`, `#software engineering`

---

<a id="item-tech-news-4"></a>
### [多数 Neocloud 安全防护不足](https://newsletter.semianalysis.com/p/most-neoclouds-suck-at-security) ⭐️ 8.0/10

SemiAnalysis 发布的一份详细分析指出，大多数 neocloud 平台在安全方面存在严重缺陷，尤其是在多租户 GPU 基础设施中。文章揭示了具体的技术漏洞，包括容器逃逸、内核绕过和网络策略缺陷，并对比了 OpenAI 与 HuggingFace 等主要提供商的安全姿态。分析强调，这些平台在隔离租户工作负载方面存在不足，可能导致数据泄露或未经授权的访问。文章还预告了 ClusterMAX 3.0 的预览，暗示其可能提供改进的安全功能。对于依赖 AI 基础设施的工程师和安全专业人员而言，这些发现具有高度重要性。

rss · SemiAnalysis · 8月30日 15:46

**「背景」** Neocloud（新型云服务）是指提供多租户 GPU 基础设施的云平台，通常用于 AI 训练和推理。这类平台在共享硬件上运行多个用户的容器，因此安全性至关重要。SemiAnalysis 是一家专注于半导体和 AI 的独立研究机构，其在 ClusterMAX 3.0 测试中发现了多个跨租户安全漏洞，涉及容器逃逸、内核绕过和网络策略等问题。此外，Red Hat 披露的 RHSB-2026-009 漏洞表明，Linux 内核的 IPv6 分片路径存在缺陷，可被利用进行任意内核读写，进而实现容器逃逸。

**「影响」** 对于使用 neocloud 平台部署多租户 GPU 工作负载的组织，这些安全漏洞可能导致敏感数据泄露或计算资源被滥用，迫使他们在选择提供商时更加重视安全审计。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.mytokencap.com/choicenews/3516847.html">SemiAnalysis releases in-depth security report on Neocloud ...</a></li>
<li><a href="https://access.redhat.com/security/vulnerabilities/RHSB-2026-009">RHSB-2026-009 IPv6 Fragmentation Container Escape - Linux ...</a></li>

</ul>
</details>

**标签**: `#neocloud`, `#security`, `#multi-tenancy`, `#GPU infrastructure`, `#container security`

---

<a id="item-tech-news-5"></a>
### [多智能体系统在开放世界中自主发现数学新结果](https://www.reddit.com/r/MachineLearning/comments/1w2fl67/r_autonomous_mathematical_discovery_in_an/) ⭐️ 8.0/10

一项研究展示了在名为“Station”的开放世界多智能体环境中，来自不同模型家族的 AI 智能体在没有中央协调器或脚本化流程的情况下，自主选择研究方向、进行实验、协作并构建共享科学文献，从而实现了自主数学发现。在 AlphaEvolve 目录中的 12 个构造问题及两个额外案例研究中，该系统在五个问题上取得了相对于先前文献的新结果：有限域 Kakeya 集合的新无限族、维度 11 中新的精确 604 点亲吻构型、离散化 Kakeya 针和符号不确定性问题的记录改进，以及 Erdős 最小重叠问题的显著改进下界。此外，智能体还发现了 Book Ramsey 数的新无限族。重要的是，智能体不仅产生了数值构造，还提供了解释这些构造原理的定理和分析，使结果更具可解释性，便于数学家进一步研究。所有原始智能体对话、证明和验证代码均已发布，为这些发现的产生过程提供了透明记录。

reddit · r/MachineLearning · /u/progenitor414 · 8月30日 11:55

**「背景」** 数学发现传统上依赖人类直觉和推理，而近年来 AI 在辅助证明和构造方面取得进展，但通常需要大量人工监督或针对特定问题设计。多智能体系统通过多个 AI 智能体协作，模拟科研团队的工作方式，有望在更开放的环境中自主探索和发现新数学结果。Station 环境的设计旨在测试这种自主协作能力，其成果表明 AI 不仅能解决已知问题，还能在无人干预下产生可验证的新数学知识。

**「影响」** 该研究为 AI 驱动的数学研究提供了实证，表明多智能体系统能够自主发现可验证的新数学结果，可能加速数学研究进程，并为其他科学领域的自主发现提供范式。

**标签**: `#multi-agent systems`, `#autonomous discovery`, `#mathematical research`, `#AI research`, `#open-world`

---

<a id="item-tech-news-6"></a>
### [基于双 X 光轮廓与统计形状模型的 3D 骨骼重建](https://www.reddit.com/r/MachineLearning/comments/1w2go6l/reconstructing_3d_bone_geometry_from_2_xray/) ⭐️ 8.0/10

该研究提出了一种无需 CT 或神经网络的 3D 骨骼重建流程，仅利用两张正交 X 光片（PA 和侧位）重建患者特定的股骨远端几何。方法基于从 MedShapeNet 的 50 个 CT 股骨网格构建的 PCA 形状模型，并使用 PyTorch3D 的软光栅化器进行可微渲染，通过 sigma 退火、10 个形状系数、马氏距离先验和 Adam 优化器（约 1000 次迭代）拟合轮廓。在 5 个留出股骨上的留一验证中，目标范围内的重建精度为 0.86-1.43 毫米，但两个极端案例因超出模型覆盖范围而失败。作者发现 sigma 退火终点必须与参考渲染的 sigma 精确匹配，否则精度会下降 87 倍，将其固定为 camera\_extent × 1e-4 可解决此问题。目前仍在进行真实 X 光验证和自动分割工作。

reddit · r/MachineLearning · /u/mxl069 · 8月30日 12:47

**「背景」** 从二维 X 光图像重建三维骨骼几何是医学影像和计算机视觉中的经典问题，传统方法通常需要 CT 扫描或大量训练数据。统计形状模型（SSM）通过主成分分析（PCA）捕捉形状变化，可微渲染则允许通过梯度优化将 3D 模型拟合到 2D 图像。该研究结合这两种技术，旨在减少对 CT 的依赖，并提高重建的准确性和效率。

**「影响」** 该流程为骨科手术规划、假体设计等应用提供了一种低成本、高精度的 3D 骨骼重建方案，尤其适用于缺乏 CT 设备的场景。然而，其有效性受限于形状模型的覆盖范围，极端解剖变异可能导致重建失败，且真实 X 光验证尚未完成，实际临床效果仍需进一步评估。

**标签**: `#medical imaging`, `#3D reconstruction`, `#differentiable rendering`, `#statistical shape model`, `#computer vision`

---

<a id="item-tech-news-7"></a>
### [Haiku R1/beta6 发布：社区反馈启动回归与热情](https://www.haiku-os.org/news/2026-08-26_haiku_r1_beta6) ⭐️ 7.0/10

Haiku R1/beta6 已正式发布，这是这款开源操作系统的又一个重要里程碑。社区反馈显示，部分用户在 Beta 6 中遇到了启动回归问题，例如 ThinkPad X1 Yoga 3rd Gen 在启动时挂起，但通过安全模式或在内核提示符下输入“continue”可以绕过。尽管如此，许多用户仍对 Haiku 的设计和潜力充满热情，认为它是视觉上最优雅的操作系统之一，并期待其在音乐制作等专业领域发挥作用。然而，也有用户指出，Haiku 在轻量级优势上正面临 Linux 的竞争，且可访问性支持仍是一个重大短板。

hackernews · metrofun · 8月30日 16:01 · [社区讨论](https://news.ycombinator.com/item?id=49499867)

**「背景」** Haiku 是一个开源的、受 BeOS 启发的操作系统，旨在提供快速、高效且美观的桌面体验。该项目自 2001 年开始开发，历经多年，于 2026 年 8 月 26 日发布了 R1/beta6 版本，距离上一个测试版（R1/beta5，2026 年 9 月发布）仅约一年，且恰逢项目 25 周年纪念。该版本是 Haiku 迈向稳定版的重要一步，但社区反馈显示存在启动回归问题。

**「影响」** 对于 Haiku 的现有用户和测试者，Beta 6 的启动回归可能导致部分硬件无法正常启动，但通过安全模式或内核命令可临时解决；对于潜在用户，可访问性支持的缺失仍是采用的主要障碍。

**「社区讨论」** 社区对 Beta 6 的反馈呈现两极分化：一方面有用户报告了具体的启动回归问题，另一方面许多用户表达了对 Haiku 设计理念和未来潜力的强烈支持，同时也有用户指出其在轻量级和可访问性方面的不足。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.haiku-os.org/news/2026-08-26_haiku_r1_beta6/">Haiku R 1 / beta 6 has been released ! | Haiku Project</a></li>
<li><a href="https://www.phoronix.com/news/Haiku-R1-Beta-6">Haiku R 1 Beta 6 Released After Two Years, BeOS-Inspired... - Phoronix</a></li>

</ul>
</details>

**标签**: `#Haiku`, `#operating systems`, `#open source`, `#beta release`, `#community feedback`

---

<a id="item-tech-news-8"></a>
### [组织协调的逆风：组织如何像黏菌一样运作](https://komoroske.com/slime-mold/) ⭐️ 7.0/10

这篇文章将组织协调与黏菌的行为进行类比，探讨团队如何实现松散耦合但高度一致。文章指出，黏菌在觅食时能形成高效的网络，类似地，组织可以通过分散决策和局部信息共享来实现整体协调。作者认为，传统的自上而下控制往往效率低下，而模仿黏菌的分布式协调机制可能更有效。文章还讨论了这种类比在软件工程和管理实践中的应用，并引用了相关文献。尽管缺乏具体的技术细节，但这一视角为组织设计提供了新的思考方向。

hackernews · rzk · 8月30日 16:03 · [社区讨论](https://news.ycombinator.com/item?id=49499891)

**「背景」** 这篇文章是 Alex Komoroske 的一份演示文稿，用黏菌的行为来类比组织协调。黏菌是一种单细胞生物，却能通过集体行为高效地寻找食物和解决迷宫问题，这启发了对组织如何实现“松散耦合但高度一致”的思考。该演示文稿在科技行业和软件工程领域广为流传，引发了关于团队结构和管理的讨论。

**「影响」** 对于技术管理者而言，这一类比可能启发他们重新思考团队结构，尝试减少集中控制，增加自主性，但实际实施仍面临挑战，因为现有组织文化和流程可能阻碍这种转变。

**「社区讨论」** 评论者指出，这一概念与《The Art of Action》中的观点相似，并提到美国海军陆战队在实践中采用高层使命与基层决策相结合的方式。也有评论质疑在大型组织中实施这种模式的可行性，认为员工素质差异和招聘流程可能影响效果。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://komoroske.com/slime-mold/">Coordination Headwind - How Organizations Are Like Slime Molds</a></li>
<li><a href="https://saloni.website/navigating-coordination-headwinds-in-software-organizations-lessons-from-slime-mold-and-game-de84d3e202a2">Navigating Coordination Headwinds In Software Organizations - Medium</a></li>

</ul>
</details>

**标签**: `#organizational-design`, `#team-coordination`, `#management`, `#software-engineering`, `#tech-culture`

---

<a id="item-tech-news-9"></a>
### [地球表面最长直线路径的验证与扩展](https://arxiv.org/abs/1804.07389) ⭐️ 7.0/10

2018 年一篇 arXiv 论文（编号 1804.07389）通过计算验证并扩展了地球表面水上和陆地上的最长直线路径。研究者设计了一种智能算法，结合高程数据，确认了 Reddit 用户关于水上最长直线路径的猜测是正确的，并同时给出了陆地上的最长路径。该研究不仅验证了原始猜想，还提供了新的计算结果，引发了社区的热烈讨论和后续可视化工作。这项工作涉及计算几何和地理空间数据处理，虽非重大软件工程或 AI 突破，但具有趣味性和实际意义。

hackernews · joebig · 8月30日 08:23 · [社区讨论](https://news.ycombinator.com/item?id=49496782)

**「背景」** 该论文提出了一种基于分支定界算法的方法，用于计算地球表面水上和陆地上的最长直线路径。此前，Reddit 上的一位用户发布了一张图片，声称找到了水上最长直线路径，而这篇论文通过算法和海拔数据验证了这一说法，并进一步给出了陆地上的最长路径。

**「影响」** 该研究为地理空间计算和计算几何领域提供了一个有趣的案例，验证了社区猜想，并激发了后续的可视化创作和讨论，例如用户 mrgriscom 制作了第一人称视角渲染图。

**「社区讨论」** 社区讨论中，有用户指出论文可能遗漏了一条更长的陆地路径，因为该路径经过死海附近，而论文将低于海平面的区域视为水域。此外，用户 gcanyon 对水上路径的全球覆盖范围表示惊讶，并提供了可视化链接帮助理解。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/abs/1804.07389">[ 1804 . 07389 ] Longest Straight Line Paths on Water or Land on the ...</a></li>
<li><a href="https://arxiv.org/pdf/1804.07389">Straight Line Paths on Water or Land</a></li>

</ul>
</details>

**标签**: `#computational geometry`, `#geospatial data`, `#algorithm`, `#earth science`, `#hacker news`

---

<a id="item-tech-news-10"></a>
### [欧盟委员会在 ProtectEU 战略中重启加密后门推动](https://reclaimthenet.org/eu-protecteu-strategy-encryption-backdoor-law-enforcement) ⭐️ 7.0/10

欧盟委员会在其 ProtectEU 战略中重新推动强制加密后门，引发技术专家对安全和隐私的担忧。该战略旨在为执法机构提供更有效的工具，但批评者认为这会削弱加密系统的安全性。目前尚无具体立法文本，但此举标志着欧盟在数字安全政策上的重大转向。这一政策若实施，将影响所有使用加密技术的用户和企业，并可能开创政府强制后门的先例。

hackernews · nickslaughter02 · 8月30日 15:12 · [社区讨论](https://news.ycombinator.com/item?id=49499394)

**「背景」** 欧盟委员会于 2025 年 4 月发布的“保护欧盟”（ProtectEU）内部安全战略，旨在应对混合威胁、有组织犯罪和恐怖主义等安全挑战。该战略中提及“为执法部门提供更有效的工具”，被解读为可能推动加密后门或“合法访问”机制，即要求科技公司在加密通信中预留访问权限。这一做法长期存在争议，因为加密后门可能削弱所有用户的数据安全，并引发隐私与安全之间的权衡。

**「影响」** 如果该政策得以实施，欧盟境内的加密通信和存储服务可能被迫降低安全性，使用户数据面临更大的被攻击和滥用风险。

**「社区讨论」** 评论者普遍批评欧盟委员会权力过大且缺乏问责，担心后门政策与未来威权领导人结合会加剧隐私侵犯。还有人指出，在 AI 安全尚未解决的情况下削弱加密是危险的，并质疑文章对欧盟文本的解读是否准确。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://reclaimthenet.org/eu-protecteu-strategy-encryption-backdoor-law-enforcement">EU &#x27;s ProtectEU Plan Renews Push for Encryption Backdoors</a></li>
<li><a href="https://www.techradar.com/vpn/vpn-privacy-security/weakening-encryption-would-make-european-security-worse-the-vpn-industry-reacts-to-the-eus-plan-for-end-to-end-encryption-backdoors">&quot;Weakening encryption would make European security...&quot; | TechRadar</a></li>
<li><a href="https://balkaninsight.com/2025/04/01/protecteu-strategy-to-counter-hybrid-threats-targets-encrypted-communications/">‘ ProtectEU ’ Strategy to Counter Hybrid Threats Targets Encrypted ...</a></li>

</ul>
</details>

**标签**: `#encryption`, `#policy`, `#privacy`, `#EU`, `#security`

---

<a id="item-tech-news-11"></a>
### [PyTorch 从零实现 Kimi K3](https://www.reddit.com/r/MachineLearning/comments/1w2aupi/implementing_kimi_k3_from_scratch_in_pytorch_p/) ⭐️ 7.0/10

一位 Reddit 用户（/u/Winter\_Mistake\_3185）在 r/MachineLearning 社区发布帖子，宣布他们从零开始用 PyTorch 实现了 Kimi K3 模型。该实现旨在为机器学习从业者提供关于这一近期重要模型内部机制的深入技术见解。帖子本身未提供实现细节，但表明该项目可能以开源形式发布，供社区参考和学习。这一工作对希望理解 Kimi K3 架构和训练细节的研究者与开发者具有潜在价值。

reddit · r/MachineLearning · /u/Winter\_Mistake\_3185 · 8月30日 07:28

**「背景」** Kimi K3 是由中国初创公司 Moonshot AI 设计的大型开放权重模型，拥有近 3 万亿参数，是目前最大的开放权重模型。其架构沿序列长度、网络深度和模型宽度三个维度扩展信息流，每个块中结合了三个 Kimi Delta Attention \(KDA\) 层和一个 Gated MLA 层，以实现高效的长上下文处理。该模型是去年发布的 Kimi Linear 模型的规模化生产版本，参数量从 48B 扩展到 2.8T。

**「影响」** 对于关注 Kimi K3 内部机制的机器学习从业者，这一从零实现可能提供可参考的代码示例，降低理解该模型的门槛。但由于帖子缺乏具体细节，其实际影响尚不确定。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://builtin.com/articles/kimi-k3-model">Moonshot AI&#x27;s Kimi K3 Model: What We Know | Built In</a></li>
<li><a href="https://arxiv.org/pdf/2607.24653">Kimi K3: Open Frontier Intelligence - arXiv.org</a></li>
<li><a href="https://sebastianraschka.com/blog/2026/kimi-k3-architecture-notes.html">Kimi K3 Architecture Notes | Sebastian Raschka, PhD</a></li>

</ul>
</details>

**标签**: `#PyTorch`, `#Kimi K3`, `#Model Implementation`, `#Deep Learning`, `#Open Source`

---

<a id="item-tech-news-12"></a>
### [加州议会通过法案豁免开源系统遵守年龄验证法](https://www.tomshardware.com/software/linux/california-lawmakers-unanimously-pass-linux-exemption-from-age-verification-law-software-distributed-under-the-gpl-mit-bsd-and-apache-licenses-are-exempt) ⭐️ 7.0/10

加州议会一致通过 AB 1856 法案，将按 GPL、MIT、BSD 或 Apache 等开放许可证分发的操作系统排除在《数字年龄保障法》之外。参议院以 39 比 0 通过，法案已送交州长，法律原定 2027 年 1 月 1 日生效。Debian、Fedora、Ubuntu、Arch 及 BSD 系列不在范围内；Windows、macOS、iOS 和 Android 仍须自该日起在账户设置时收集年龄信息。SteamOS 是否适用尚不明确。

telegram · zaihuapd · 8月30日 11:04

**「背景」** 加州《数字年龄保障法》原定于 2027 年 1 月 1 日生效，要求在线服务在账户设置时收集用户年龄信息，以保护未成年人。该法律引发了开源社区的担忧，因为许多开源操作系统和项目可能难以满足合规要求。为此，加州议会通过了 AB 1856 法案，豁免按 GPL、MIT、BSD 或 Apache 等开放许可证分发的操作系统，使其无需遵守年龄验证规定。

**「影响」** 该法案将减轻开源操作系统发行版在加州履行年龄验证义务的负担，而专有系统仍需遵守，可能影响用户对系统选择及隐私保护的考量。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.phoronix.com/news/California-AB-1856-Passes">California Passes AB - 1856 For Open - Source Relief Over Age ...</a></li>
<li><a href="https://overcentral.com/en/california-exempts-linux-age-verification/">California Exempts Linux from Age Verification Law</a></li>
<li><a href="https://www.elseif.net/stories/california-passes-ab-1856-for-open-source-relief-over-age-verification-44d326c">California passes AB - 1856 exempting open - source projects... — elseif</a></li>

</ul>
</details>

**标签**: `#open-source`, `#legislation`, `#linux`, `#privacy`, `#california`

---

<a id="item-tech-news-13"></a>
### [NASA 罗曼空间望远镜搭乘猎鹰重型火箭升空，侧助推器成功回收](https://weibo.com/6560646233/RfOLkeG70) ⭐️ 7.0/10

美国国家航空航天局（NASA）的新一代旗舰级太空观测平台南希·格雷斯·罗曼空间望远镜（Roman）搭乘 SpaceX 猎鹰重型火箭从佛罗里达州发射升空。发射后，两枚侧助推器返回地球，并精准降落在卡纳维拉尔角太空军基地，实现同步回收。Roman 望远镜拥有与哈勃同等级成像能力，但视野更广，能够在较短时间内获取大范围、高分辨率的宇宙图像，被视为 NASA 下一阶段研究暗能量、星系演化和系外行星的重要观测平台。此次发射标志着 Roman 望远镜任务的关键一步，为未来的天文巡天奠定基础。

telegram · zaihuapd · 8月30日 11:49

**「背景」** 南希·格雷斯·罗曼空间望远镜（Roman）是 NASA 的新一代旗舰级太空观测平台，旨在研究暗能量、星系演化和系外行星。它拥有与哈勃望远镜同等级的成像能力，但视野更广，能够在较短时间内获取大范围、高分辨率的宇宙图像。该望远镜原计划于 2026 年 8 月 30 日从佛罗里达州肯尼迪航天中心 39A 发射台搭乘 SpaceX 猎鹰重型火箭升空。

**「影响」** 此次发射成功将直接推动暗能量、星系演化和系外行星研究，为天文学家提供前所未有的广域高分辨率观测数据，同时 SpaceX 的助推器回收技术进一步降低了发射成本。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://science.nasa.gov/mission/roman-space-telescope/">Nancy Grace Roman Space Telescope - NASA Science</a></li>
<li><a href="https://nextspaceflight.com/launches/details/6983/">Roman Space Telescope | Falcon Heavy | Next Spaceflight</a></li>

</ul>
</details>

**标签**: `#NASA`, `#Roman Space Telescope`, `#SpaceX`, `#Falcon Heavy`, `#Astronomy`

---

<a id="item-tech-news-14"></a>
### [OpenAI Codex 测试以换窗替代摘要式压缩](https://github.com/openai/codex/pull/27488) ⭐️ 7.0/10

OpenAI 正在为 Codex 测试一种新的上下文窗口管理方案，用「换窗」替代原有的「摘要式压缩」。以往对话超出限制时，系统会生成摘要来压缩历史，既消耗 token 又容易丢失细节；新方案下，模型可主动申请开启全新窗口继续工作，手动或自动清理也统一走新窗口流程，不再生成摘要。同时配套历史记录与笔记能力，换窗后模型可按需找回此前内容、延续工作状态，避免任务中断。相关功能仍处开发阶段，尚未正式上线，涉及 GitHub PR \#27488、\#29743 和 \#39827。

telegram · zaihuapd · 8月31日 00:02

**「背景」** OpenAI Codex 是一款在本地运行的轻量级编码代理（coding agent），其上下文窗口大小直接影响可处理的代码量。此前，当对话超出上下文限制时，系统会通过生成摘要来压缩历史记录，但这种方式既消耗 token 又可能丢失细节。近期，OpenAI 将 Codex 的上下文窗口从 372k 缩减至 272k，这一变化使得更高效的上下文管理方案变得更为迫切。

**「影响」** 若该方案落地，使用 Codex 的开发者将减少因摘要压缩导致的 token 消耗和细节丢失，长会话中的任务连续性有望提升，但具体效果和兼容性仍需等待正式发布验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/openai/codex">GitHub - openai / codex : Lightweight coding agent that runs in your...</a></li>
<li><a href="https://www.linkedin.com/posts/bok-mykola-725a6721a_openai-cutting-codexs-context-window-from-activity-7484568416163414016-rVZI">OpenAI Codex Context Window Reduced to 272k | Bok... | LinkedIn</a></li>

</ul>
</details>

**标签**: `#OpenAI Codex`, `#context window`, `#AI tooling`, `#developer experience`, `#token efficiency`

---

## 科技博客

<a id="item-tech-blog-1"></a>
### [拆解致命万能旅行适配器](https://hackaday.com/2026/08/30/dissecting-a-lethal-universal-travel-adapter/) ⭐️ 6.0/10

rss · Hackaday · 8月30日 20:00

**「背景」** 由于全球电源插座标准不一，旅行适配器市场蓬勃发展，但廉价产品往往以牺牲安全为代价。作者拆解了一款售价 9.26 美元的万能旅行适配器，发现其存在严重安全隐患。

**「方案」** 拆解发现，当任意一组插头插入插座时，其他两组插头也会同时带电，因为它们直接连接到同一根汇流条。虽然插头完全缩回时不带电，但适配器并未强制要求缩回，容易误触。此外，其 USB 端口虽标称 5V/2.1A，但缺乏硬性过流保护。作者建议移除不常用的美标和英标插头，将其改作仅带 USB 充电功能的适配器，这样相对安全。

**「启示」** 作者强调，廉价旅行适配器可能因设计缺陷而致命，用户应谨慎使用，或将其改造为更安全的 USB 充电器。

**标签**: `#travel adapter`, `#electrical safety`, `#teardown`, `#mains voltage`, `#USB charger`

---

<a id="item-tech-blog-2"></a>
### [低成本人形机器人：DIY 执行器方案](https://hackaday.com/2026/08/30/lower-cost-humanoid-robot-leverages-diy-actuators/) ⭐️ 6.0/10

rss · Hackaday · 8月30日 14:00

**「背景」** 人形机器人通常价格高昂，即便是缩小版也不例外。Berkeley Humanoid Lite 项目旨在通过将设计核心放在 3D 打印执行器上来降低成本，这些执行器构成了机器人框架的大部分。

**「方案」** 该机器人的执行器由电机、打印的摆线齿轮箱和嵌入式磁编码器组合而成，具有模块化特点，即使不打算复刻整个机器人，其设计细节也可能在其他应用中发挥作用。Berkeley Humanoid Lite 并非成品，而是一个开源、易于定制的参考设计，GitHub 仓库提供了所有必要资源，并展示了包括 VR 远程操作在内的基本演示。整个机器人硬件成本低于 5000 美元，虽然仍不便宜，但比其他开源或非开源人形机器人经济得多。不过，有评论指出每个执行器 188 美元的成本对 DIY 项目而言偏高，且缺乏扭矩和寿命评级；也有评论认为其摆线减速器与更便宜的预制行星减速器相比，属于不同类型的比较。

**「启示」** 作者认为，即使不打算构建完整机器人，这种模块化执行器设计也值得关注，因为它为降低人形机器人成本提供了一种可行的开源途径。

**标签**: `#humanoid robots`, `#DIY actuators`, `#cycloidal gearboxes`, `#open-source hardware`, `#robotics`

---

<a id="item-tech-blog-3"></a>
### [科技周报：罗马望远镜升空与 EVE Online 迁移 Python 3](https://hackaday.com/2026/08/30/hackaday-links-august-30-2026/) ⭐️ 5.0/10

rss · Hackaday · 8月30日 23:00

**「背景」** 本周科技新闻亮点纷呈，从太空探索到软件迁移，再到能源与系统安全，展现了技术领域的多元进展。其中，NASA 的南希·格蕾丝·罗马太空望远镜成功发射，标志着天文观测的新纪元；而 EVE Online 的 Python 3 迁移则反映了老旧代码库面临的维护挑战。

**「方案」** 罗马望远镜搭乘猎鹰重型火箭升空，正前往距地球 150 万公里的 L2 拉格朗日点，其视野比哈勃大 100 倍，主相机为 3 亿像素红外相机，预计三周后启动。EVE Online 的开发者宣布将 2.4 百万行代码从 Python 2.7 迁移至 Python 3，原因是工具库不兼容及性能提升需求。英国通过法规允许居民自行安装插电式太阳能系统，每户限四块面板，总输出 2 千瓦，但逆变器最大 800 瓦。Citrix 推出基于 Linux 的 UniconOS，作为 Windows 受损时的备用启动系统，类似传统 Live CD。此外，Defrag98 网站重现了经典磁盘碎片整理工具，带来怀旧体验。

**「启示」** 作者认为，这些新闻展示了技术演进中的新旧交替：从太空探索的雄心到软件维护的务实，再到能源自主和系统韧性的创新，体现了技术社区持续解决问题的精神。

**标签**: `#space telescope`, `#python migration`, `#solar power`, `#endpoint resiliency`, `#retro computing`

---

<a id="item-tech-blog-4"></a>
### [NES 光学存储扩展：复古硬件的趣味实验](https://hackaday.com/2026/08/30/giving-the-nes-an-optical-data-storage-add-on/) ⭐️ 5.0/10

rss · Hackaday · 8月30日 11:00

**「背景」** 在游戏机发展史上，光盘介质曾带来存储容量的革命，但任天堂的 NES 和 SNES 时代仍以卡带为主，CD 扩展计划最终未能实现。如今，一位名为 Throaty Mumbo 的爱好者通过自制硬件，为 NES 添加了 CD 驱动器，让玩家得以一窥如果 NES 在 1980 年代拥有 CD 附加组件会是什么样子。

**「方案」** 该项目利用 NES 前装式主机上几乎未使用的扩展端口，设计了一块定制 PCB，其上搭载 RP2350B 微控制器，负责协调 Everdrive N8 Pro 卡带与 IDE CD 驱动器之间的通信，并通过 PCM5102 音频 DAC 将音频样本发送至主机的音频混合输入引脚。启动后，微控制器从 CD 读取游戏 ROM，并通过 USB 流式传输至 Everdrive。尽管作者最初计划为 SNES 制作 CD 附加组件，但最终选择了 NES，因为其硬件限制更具挑战性。项目还结合了作者此前复活 NES 日本在线服务的工作，为经典主机爱好者带来了更多乐趣。然而，有评论者质疑其实际意义，因为 Everdrive 本身已支持 SD 卡，速度更快且容量更大，而此方案却绕道 CD，似乎只是“因为可以”的炫技之作。

**「启示」** 作者认为，这个项目虽然技术上并非必要，但体现了复古硬件改造的“酷”之所在，为爱好者提供了探索经典主机潜力的新视角。

**标签**: `#NES`, `#CD-ROM`, `#retro gaming`, `#hardware hacking`, `#Everdrive`

---

<a id="item-tech-blog-5"></a>
### [木炉助手：安全监控炉温](https://hackaday.com/2026/08/30/woodstove-assistant-keeps-the-heat-on-safely/) ⭐️ 5.0/10

rss · Hackaday · 8月30日 08:00

**「背景」** 木炉虽能带来温暖，但操作不当可能引发烟囱火灾。真正的危险并非炉火过旺，而是燃烧温度过低，导致未完全燃烧的木材在烟囱内积聚可燃的杂酚油。

**「方案」** Reddit 用户\[nas886\]开发了名为 Oru 的系统，通过在烟囱管道中放置温度探头监测废气温度。当温度过低时，ESP32 会远程通知用户，并通过定制胡桃木外壳内的状态 LED 提示添加木材或增加气流；若温度过高，LED 变色以提醒关闭空气。该系统适应不同木炉的尺寸、效率和热质量差异，适用于从需要频繁添柴的小炉子到追求整夜燃烧的大型炉具。作者已成功销售数台，并计划量产，但该方案也易于自行复制。

**「启示」** 作者强调，通过简单的温度监测和提醒，可以显著降低木炉使用风险，避免因低温燃烧导致的杂酚油积聚，从而保障家庭安全。

**标签**: `#woodstove`, `#ESP32`, `#temperature monitoring`, `#creosote`, `#home automation`

---

<a id="item-tech-blog-6"></a>
### [激光平滑 FDM 3D 打印表面](https://hackaday.com/2026/08/29/laser-your-way-to-smoother-fdm-3d-prints/) ⭐️ 5.0/10

rss · Hackaday · 8月30日 05:00

**「背景」** FDM 3D 打印件表面常留有层纹，传统平滑方法如打磨、底漆或 ABS 蒸汽平滑各有缺点。作者介绍了一种替代方案：使用激光熔化表面，实现类似蒸汽平滑的效果，且避免了化学品的风险。

**「方案」** 作者\[I changed a thing\]将两个二极管激光器安装在打印机 X 轴上，分别处理打印件的顶面和侧面。顶面平滑相对容易，因为激光可以直接照射；而侧面需要斜向照射，效果取决于物体尺寸和几何形状，目前更像是一门艺术而非精确科学。作者尝试了逐层熔化和多种侧面处理方法，但最佳方案因对象而异。该技术与其先前用激光改善层间附着力的工作相关，但并非首创，此前已有项目采用非平面运动进行激光后处理。

**「启示」** 激光平滑 FDM 打印件是一种有前景的替代方案，但当前仍处于实验阶段，需要更多参数优化和硬件改进。

**标签**: `#3D printing`, `#laser smoothing`, `#FDM`, `#maker projects`, `#surface finishing`

---