# anti-vibe-writing

[![English](https://img.shields.io/badge/README-English-1f6feb?style=flat-square)](./README.md)
[![中文](https://img.shields.io/badge/README-%E4%B8%AD%E6%96%87-15803d?style=flat-square)](./README.zh-CN.md)
[![License: MIT](https://img.shields.io/badge/License-MIT-111111?style=flat-square)](./LICENSE)

一个用于去除文档中典型“AI 生成感”的 agent 写作技能。

它最适合作为最终润色层，放在 Claude Code、OpenClaw、Codex、Hermes 等 agent 完成初稿之后使用。目标不是把文字写得更花，而是在保留原意的前提下，去掉那些明显的生成式痕迹：模板化措辞、空泛抽象、咨询腔、过重的 Markdown 结构、过度分层的大纲，以及那种看似周全实则不下判断的语气。

这个 skill 现在采用更接近 Claude 标准 skill 的组织方式：主 `SKILL.md` 保持简洁，把深入方法放进 `references/`，把可复用提示词和检查清单放进 `assets/`。

## 包含内容

- 一个可复用的技能目录，位于 `skills/anti-vibe-writing/`
- 一组辅助参考和素材文件，用于稳定重写质量
- 一个本地开发用 agent 文件，位于 `agents/anti-vibe-writing-dev.agent.md`，默认不进入 Git
- 一个可公开提交的模板文件，位于 `agents/anti-vibe-writing-dev.agent.example.md`，供贡献者复制使用

## 仓库结构

```text
agents/
  README.md
  anti-vibe-writing-dev.agent.md
skills/
  anti-vibe-writing/
    SKILL.md
    references/
      before-after-benchmarks.md
      common-problems-and-fixes.md
      human-passes.md
      patterns-to-remove.md
    assets/
      final-pass-checklist.md
      rewrite-prompt-template.md
README.md
README.zh-CN.md
```

## Skill 结构

- `SKILL.md` 保留高层原则、使用时机和输出约束，方便快速加载。
- `references/before-after-benchmarks.md` 提供具体的前后对照样例，便于后续做回归判断。
- `references/human-passes.md` 提供分阶段的人味儿编辑流程。
- `references/common-problems-and-fixes.md` 汇总常见 AI 文风问题和对应修法。
- `references/patterns-to-remove.md` 记录需要优先清理的措辞、格式和语气痕迹。
- `assets/` 用于存放可复用的提示词模板和最终检查清单。

## 适用场景

- README 清理与润色
- 产品文档
- 落地页文案
- 提案
- 创始人备忘或说明
- 技术备忘录

## 目标输出

- 更像人写的节奏
- 更有意图的结构
- 更干净的措辞
- 更明确的声音
- 更少的“AI 味”

## 文件使用说明

这个仓库将源文件放在一级目录下，便于项目本身保持清晰的结构。

技能文件会进入版本控制。开发用 agent 文件默认为本地文件，并通过 Git 忽略，方便每个贡献者单独调整而不污染公开仓库。

如果你要创建本地 agent 文件，可以将 `agents/anti-vibe-writing-dev.agent.example.md` 复制为 `agents/anti-vibe-writing-dev.agent.md`。

如果你需要某个具体 agent 平台自动发现这些文件，仍然可能需要把它们同步到该平台要求的位置。

## 许可证

本项目采用 MIT 协议开源，见 `LICENSE`。

## 贡献说明

- 保留原意，不要在润色过程中改动事实。
- 优先给出具体改写，不要给空泛风格建议。
- 只有在结构确实帮助读者时才保留结构。
