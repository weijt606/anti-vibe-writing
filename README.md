# anti-vibe-writing

[![中文](https://img.shields.io/badge/README-%E4%B8%AD%E6%96%87-15803d?style=flat-square)](./README.md)
[![English](https://img.shields.io/badge/README-English-1f6feb?style=flat-square)](./README.en.md)
[![License: MIT](https://img.shields.io/badge/License-MIT-111111?style=flat-square)](./LICENSE)
[![Skill version](https://img.shields.io/badge/skill-1.3.0-orange?style=flat-square)](./CHANGELOG.md)

> **目标只有一个：让 AI 说话，倍儿地道。**

一个用于去除文档"AI 生成感"的 agent 写作技能。同时支持中英文，并提供可选模式用于贴合特定作者的语言风格。

它最适合放在初稿之后做最终润色——Claude Code、Codex 等任何基于大模型的 agent 起完稿之后，由它收尾。目标不是把文字写得更花。目标是在不改原意的前提下，去掉那些明显的生成式痕迹：模板措辞、空泛抽象、咨询腔、过重的 Markdown 结构、过度分层的大纲，以及那种"什么都讲一点、什么都不下判断"的伪平衡。

如果默认的"干净模式"还不够，skill 还提供：
- **人味儿质感模式**：在合适的位置注入倒装、语气词、残句、非标准标点等真人写作痕迹（可选）
- **学习模式**：基于用户提供的真实样本提取一份可复用的 host profile，让后续稿子像"那个人写的"
- **场景预设**：针对推特 / 微博 / 博客 / 播客 / 专业报告五个场景的具体约束

## 快速上手

这是一个 Claude Code skill，三步就能用上。

**1. 装进 Claude Code**

把 `skills/anti-vibe-writing/` 整个目录复制到 Claude Code 的 skills 目录：
- 想全局都能用：`~/.claude/skills/anti-vibe-writing/`
- 只在某个项目里用：`<你的项目>/.claude/skills/anti-vibe-writing/`

或者直接 clone 本仓库再复制过去：

```bash
git clone https://github.com/weijt606/anti-vibe-writing.git
cp -r anti-vibe-writing/skills/anti-vibe-writing ~/.claude/skills/
```

**2. 调用它**

在 Claude Code 里打斜杠命令，把稿子贴进去：

```text
/anti-vibe-writing
把下面这段去掉 AI 味：
<粘贴你的草稿>
```

也可以不打命令，直接说"帮我把这段改地道点 / 这段太像 AI 写的了"，skill 会自动触发。

**3.（可选）说清场景和模式**

一句话给够上下文，结果差很多：
- 场景：「这是一条推特 / 一篇公众号 / 一份技术备忘」
- 放松：「放松一点 / 博客风 / 像本人写的」→ 启用人味儿质感模式
- 学风格：贴几段你自己写的，说「学我的风格」→ 启用学习模式

拿不准就先什么都不说，默认的"干净模式"对大多数稿子都够用。

## 快速示例

外部读者扫一眼就能看到的前后对照在 [examples/](./examples/) 目录下。完整的回归基准仍放在 `references/` 里。

## 仓库结构

```text
agents/
  README.md
  anti-vibe-writing-dev.agent.md           # 本地，不进 git
  anti-vibe-writing-dev.agent.example.md
skills/
  anti-vibe-writing/
    SKILL.md
    references/
      patterns-to-remove.md                # 英文 AI 味
      chinese-patterns-to-remove.md        # 中文 AI 味
      before-after-benchmarks.md           # 英文基准
      chinese-before-after.md              # 中文基准
      common-problems-and-fixes.md
      human-passes.md
      human-texture.md                     # 可选不规范
      learning-mode.md                     # 样本驱动的风格学习
      scenario-presets.md                  # 分场景约束
    assets/
      final-pass-checklist.md
      rewrite-prompt-template.md
      host-profile-template.md             # 可填的 host profile
      style-extraction-prompt.md           # 一次性提取提示词
examples/
  ...
CHANGELOG.md
CONTRIBUTING.md
README.md                                    # 中文（默认）
README.en.md                                 # English
LICENSE
```

## 三种声音模式

| 模式 | 适用场景 | 触发方式 |
|---|---|---|
| 默认（干净） | 大部分产品、文档、专业稿件 | 默认行为，无需声明 |
| 人味儿质感 | 个人博客、创始人笔记、社交媒体 | "放松一点 / 博客风 / 像本人写的" |
| 学习模式 | 系列内容、个人 newsletter、声音一致的对外沟通 | 用户提供样本，或说"学我的风格" |

模式可与场景预设（推特 / 微博 / 博客 / 播客 / 报告）叠加。冲突时的优先级在 `SKILL.md` 里写明。

## 适用场景

- 社交媒体（X、微博、即刻、小红书）
- 博客、newsletter、公众号
- 播客 show notes 与视频脚本
- README 清理
- 产品文档、落地页文案
- 提案、创始人笔记、技术备忘、内部报告

## 目标输出

- 更像人写的节奏
- 更有意图的结构
- 更干净的措辞
- 更明确的声音
- 更少的"AI 味"
- 读起来像有人选过每一个字，而不是被系统组装出来

## 文件使用说明

技能文件会进入版本控制。开发用 agent 文件默认为本地文件，并通过 Git 忽略，方便每个贡献者单独调整而不污染公开仓库。

如果你要创建本地 agent 文件，可以将 `agents/anti-vibe-writing-dev.agent.example.md` 复制为 `agents/anti-vibe-writing-dev.agent.md`。

如果你需要某个具体 agent 平台自动发现这些文件，仍然可能需要把它们同步到该平台要求的位置。

## 参考与致谢

这个 skill 借鉴了几个开源的 de-AI / humanizer 项目和文章。下面这些 pattern 是研究后改写进本项目自己的结构里的，原始分析和措辞归原作者所有。感谢：

英文：
- [blader/humanizer](https://github.com/blader/humanizer) —— 30 条 pattern 的 humanizer skill（MIT）。启发了英文的句子级痕迹：回避系动词、否定式排比、同义词循环、假范围、结构预告、按改动写而非按现状写。
- [hardikpandya/stop-slop](https://github.com/hardikpandya/stop-slop) —— AI slop 检测 skill（MIT）。`assets/final-pass-checklist.md` 里那套可选的五维打分（直接 / 节奏 / 信任 / 真人感 / 密度）来自它。

中文：
- [op7418/Humanizer-zh](https://github.com/op7418/Humanizer-zh) —— 24 条 pattern 的中文 humanizer skill，本身是 blader/humanizer 的中文改编（MIT）。启发了中文轨里"回避系动词'是'"和"同义词循环"两条。
- [yage.ai《AI 中文翻译腔》](https://yage.ai/share/ai-chinese-translationese-20260418.html) —— 对中文翻译腔的拆解（用身体动作词写抽象 / 形容词加冒号替读者下判断 / 抽象名词当主语）。启发了 `references/chinese-patterns-to-remove.md` 的"翻译腔层"。
- [X 上的 @dotey](https://x.com/dotey/status/2022774029220749538) —— 关于去 AI 味提示词技巧的讨论（身份设定、负向约束），影响了"改写心态"一节和中文改写提示词块。

这些都是各自独立、各有边界的项目，本仓库借鉴的是思路，不是代码。如果你是其中某个项目的维护者、想调整致谢写法，欢迎开 issue。

## 贡献

新增 pattern、benchmark、场景预设的规则见 [CONTRIBUTING.md](./CONTRIBUTING.md)。

## 许可证

本项目采用 MIT 协议开源，见 `LICENSE`。

## 贡献说明

- 保留原意，不要在润色过程中改动事实。
- 优先给出具体改写，不要给空泛风格建议。
- 只有在结构确实帮助读者时才保留结构。

## 版本亮点

**1.3.0**
- 中文表达更地道：新增"翻译腔 / 欧化句式"层（被字句、作为一个……、不仅……而且……、对……进行……、复数"们"）、"四字成语堆砌"规则，以及"改写心态"一节——改写时不当资深文案 / 营销专家，换成发微信的朋友 / 公众号编辑 / 资深媒体人来写，改完念一遍
- 新增英文句子级痕迹（回避系动词、否定式排比、同义词循环、假范围、结构预告、按改动写），改编自开源 humanizer 项目——见「参考与致谢」
- 新增三个示例：中文推特 / X 发帖（`07`）、中文翻译腔专项（`08`）、英文句子级痕迹（`09`）
- `assets/rewrite-prompt-template.md` 新增"中文改写（带负向约束）"提示词块；final-pass 清单新增可选的五维打分

**1.2.0**
- 中文 AI 味规则与中文前后对照基准（`references/chinese-*.md`）
- 人味儿质感模式（`references/human-texture.md`）
- 学习模式与 host profile 工作流（`references/learning-mode.md`）
- 五个场景预设：X / 微博 / 博客 / 播客 / 报告（`references/scenario-presets.md`）
- host profile 模板与一次性风格提取提示词
- 修正 SKILL.md 中 `tools:` 字段为 Claude Code 真实工具名

完整版本历史见 [CHANGELOG.md](./CHANGELOG.md)。
