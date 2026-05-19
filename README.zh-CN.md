# anti-vibe-writing

[![English](https://img.shields.io/badge/README-English-1f6feb?style=flat-square)](./README.md)
[![中文](https://img.shields.io/badge/README-%E4%B8%AD%E6%96%87-15803d?style=flat-square)](./README.zh-CN.md)
[![License: MIT](https://img.shields.io/badge/License-MIT-111111?style=flat-square)](./LICENSE)
[![Skill version](https://img.shields.io/badge/skill-1.2.0-orange?style=flat-square)](./CHANGELOG.md)

一个用于去除文档"AI 生成感"的 agent 写作技能。同时支持中英文，并提供可选模式用于贴合特定作者的语言风格。

它最适合放在初稿之后做最终润色——Claude Code、Codex 等任何基于大模型的 agent 起完稿之后，由它收尾。目标不是把文字写得更花。目标是在不改原意的前提下，去掉那些明显的生成式痕迹：模板措辞、空泛抽象、咨询腔、过重的 Markdown 结构、过度分层的大纲，以及那种"什么都讲一点、什么都不下判断"的伪平衡。

如果默认的"干净模式"还不够，skill 还提供：
- **人味儿质感模式**：在合适的位置注入倒装、语气词、残句、非标准标点等真人写作痕迹（可选）
- **学习模式**：基于用户提供的真实样本提取一份可复用的 host profile，让后续稿子像"那个人写的"
- **场景预设**：针对推特 / 微博 / 博客 / 播客 / 专业报告五个场景的具体约束

## 1.2.0 新增

- 中文 AI 味规则与中文前后对照基准（`references/chinese-*.md`）
- 人味儿质感模式（`references/human-texture.md`）
- 学习模式与 host profile 工作流（`references/learning-mode.md`）
- 五个场景预设：X / 微博 / 博客 / 播客 / 报告（`references/scenario-presets.md`）
- host profile 模板与一次性风格提取提示词
- 修正 SKILL.md 中 `tools:` 字段为 Claude Code 真实工具名

完整版本历史见 [CHANGELOG.md](./CHANGELOG.md)。

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
README.md
README.zh-CN.md
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

## 贡献

新增 pattern、benchmark、场景预设的规则见 [CONTRIBUTING.md](./CONTRIBUTING.md)。

## 许可证

本项目采用 MIT 协议开源，见 `LICENSE`。

## 贡献说明

- 保留原意，不要在润色过程中改动事实。
- 优先给出具体改写，不要给空泛风格建议。
- 只有在结构确实帮助读者时才保留结构。
