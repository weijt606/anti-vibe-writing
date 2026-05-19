# Changelog

All notable changes to the `anti-vibe-writing` skill are recorded here.

The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) and the project uses [Semantic Versioning](https://semver.org/spec/v2.0.0.html) for the skill itself (declared in `skills/anti-vibe-writing/SKILL.md` frontmatter).

## [1.2.0] — 2026-05-19

### Added

- Chinese AI-smell coverage as a first-class track, parallel to English:
  - `skills/anti-vibe-writing/references/chinese-patterns-to-remove.md` — vocabulary, sentence shapes, structure, tone tells specific to Chinese AI drafts (赋能 / 打通 / 闭环 / 三连排比 / 【】段头 etc.)
  - `skills/anti-vibe-writing/references/chinese-before-after.md` — five Chinese before/after benchmarks
- Three voice modes formalized in `SKILL.md`:
  - **Default (clean)** — conservative AI-smell removal
  - **Human-texture mode** — opt-in irregularity (inversions, particles, half-sentences, non-standard punctuation), driven by `references/human-texture.md`
  - **Learning mode** — sample-driven host profile workflow, driven by `references/learning-mode.md`, with `assets/host-profile-template.md` and `assets/style-extraction-prompt.md`
- Five scenario presets in `references/scenario-presets.md`: X/Twitter, Weibo/Jike/RedNote, blog/newsletter, podcast show notes, professional report
- `examples/` directory at repo root with six curated before/after snippets for quick scanning
- `CHANGELOG.md` (this file)
- `CONTRIBUTING.md` with rules for adding patterns, benchmarks, and scenarios

### Changed

- `SKILL.md` `metadata.tools` now uses Claude Code's real tool names (`Read`, `Edit`, `Write`, `Grep`, `Glob`, `Bash`, `WebFetch`, `WebSearch`, `TaskCreate`, `Agent`) instead of the previous lowercase placeholders
- `SKILL.md` `metadata.version` bumped from `1.1.0` to `1.2.0`
- `SKILL.md` `description` and `argument-hint` updated to mention bilingual support, scenario presets, and voice modes
- `SKILL.md` now declares `language_support: [en, zh]` in metadata
- `SKILL.md` "Before You Rewrite" now includes scenario detection, language detection, and voice mode selection
- "Default Editing Moves" branches on language to apply the matching pattern reference
- `README.md` and `README.zh-CN.md` updated to reflect new modes, presets, and structure; removed references to ambiguous tool names ("OpenClaw", "Hermes") that did not match any active project

### Reference precedence

When voice modes and scenario presets conflict, resolution order is:

1. Host profile forbidden words (highest)
2. Scenario preset format constraints
3. Host profile voice signals
4. Human-texture conventions (lowest)

## [1.1.0] — Initial public refinement

### Added

- Claude-style skill structure: compact `SKILL.md` for discovery, deeper notes in `references/`, reusable prompts and checklists in `assets/`
- Six-pass editing workflow in `references/human-passes.md`
- English regression benchmarks in `references/before-after-benchmarks.md`
- Common problems and fixes mapping
- Patterns-to-remove catalogue
- Final-pass checklist and rewrite prompt template assets

## [1.0.0] — Initial scaffold

### Added

- First public version of the anti-vibe-writing skill
- Bilingual READMEs (English + Chinese)
- Local agent file with public template
- MIT License
