# anti-vibe-writing

[![English](https://img.shields.io/badge/README-English-1f6feb?style=flat-square)](./README.md)
[![中文](https://img.shields.io/badge/README-%E4%B8%AD%E6%96%87-15803d?style=flat-square)](./README.zh-CN.md)
[![License: MIT](https://img.shields.io/badge/License-MIT-111111?style=flat-square)](./LICENSE)
[![Skill version](https://img.shields.io/badge/skill-1.2.0-orange?style=flat-square)](./CHANGELOG.md)

An agent writing skill that removes the AI-generated feel from documents. Works in English and Chinese, with optional modes for matching a specific author's voice.

It runs best as a final pass after drafting with Claude Code, Codex, or any LLM-backed agent. The goal is not to make the prose prettier. The goal is to keep the substance and remove the tells: templated phrasing, vague abstraction, consultant-speak, markdown-heavy formatting, over-structured outlines, and the cautious over-balancing that makes writing feel assembled.

If the default "clean" mode is not enough, the skill also supports:
- **Human-texture mode**: inject controlled irregularities (inversions, particles, half-sentences, non-standard punctuation) for personal voice
- **Learning mode**: build a reusable host profile from real samples so future drafts sound like the person who would write them
- **Scenario presets**: format and tone constraints tuned for tweets, Weibo, blogs, podcast show notes, and professional reports

## What's new in 1.2.0

- Chinese AI-smell rules and Chinese before/after benchmarks (`references/chinese-*.md`)
- Human-texture mode for opt-in irregularity (`references/human-texture.md`)
- Learning mode with host profile workflow (`references/learning-mode.md`)
- Five scenario presets: X / Weibo / blog / podcast / report (`references/scenario-presets.md`)
- Host profile template and one-shot style extraction prompt
- Fixed `tools:` field in SKILL.md to use Claude Code's real tool names

See [CHANGELOG.md](./CHANGELOG.md) for the full version history.

## Quick examples

Curated before/after snippets live in [examples/](./examples/) for anyone scanning the repo. The full regression set stays under `references/`.

## Repository layout

```text
agents/
  README.md
  anti-vibe-writing-dev.agent.md           # local, gitignored
  anti-vibe-writing-dev.agent.example.md
skills/
  anti-vibe-writing/
    SKILL.md
    references/
      patterns-to-remove.md                # English AI-smell
      chinese-patterns-to-remove.md        # 中文 AI 味
      before-after-benchmarks.md           # English benchmarks
      chinese-before-after.md              # 中文基准
      common-problems-and-fixes.md
      human-passes.md
      human-texture.md                     # Optional irregularity
      learning-mode.md                     # Sample-driven style learning
      scenario-presets.md                  # Per-scenario constraints
    assets/
      final-pass-checklist.md
      rewrite-prompt-template.md
      host-profile-template.md             # Fillable host profile
      style-extraction-prompt.md           # One-shot extraction prompt
examples/
  ...
CHANGELOG.md
CONTRIBUTING.md
README.md
README.zh-CN.md
LICENSE
```

## Voice modes

The skill runs in one of three modes:

| Mode | When to use | Triggered by |
|---|---|---|
| Default (clean) | Most product, docs, and professional copy | Default — no opt-in needed |
| Human texture | Personal blogs, founder notes, social posts | "Loosen it up" / "blog voice" / "make it feel personal" |
| Learning mode | Series content, personal newsletters, voice-consistent comms | User provides samples, or asks "learn my style" |

Modes combine with scenario presets (tweet / Weibo / blog / podcast / report). Conflict resolution rules are documented in `SKILL.md`.

## Use cases

- Social posts (X, Weibo, Jike, RedNote)
- Blogs, newsletters, public WeChat articles
- Podcast show notes and video scripts
- README cleanup
- Product docs and landing page copy
- Proposals, founder notes, technical memos, internal reports

## Output goals

- More human rhythm
- More intentional structure
- Cleaner phrasing
- Stronger voice
- Less AI smell
- Sounds chosen by a person, not assembled by a system

## Working with the files

Skill files are versioned. The developer agent file is local and gitignored by default, so contributors can adjust it without changing the public repository.

To create a local agent file, copy `agents/anti-vibe-writing-dev.agent.example.md` to `agents/anti-vibe-writing-dev.agent.md`.

If you want tool-specific auto-discovery, you may still need to mirror these files into the locations required by the target agent platform.

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md) for how to add new patterns, benchmarks, or scenario presets.

## License

This project is open source under the MIT License. See `LICENSE`.

## Contributor notes

- Preserve meaning. Sharpen the writing without changing facts.
- Prefer concrete edits over generic style advice.
- Keep structure only when it helps the reader.
