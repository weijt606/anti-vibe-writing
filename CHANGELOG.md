# Changelog

All notable changes to the `anti-vibe-writing` skill are recorded here.

The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) and the project uses [Semantic Versioning](https://semver.org/spec/v2.0.0.html) for the skill itself (declared in `skills/anti-vibe-writing/SKILL.md` frontmatter).

## [1.3.0] — 2026-06-05

### Added

- `examples/07-tweet-zh.md` — Chinese X/Twitter before/after, with a "为什么这版更地道" note that calls out the specific authenticity moves (口语判断句, no 四字成语 stacking, verbs over nominalization)
- `examples/08-translationese-zh.md` — Chinese translationese demo wiring each new 1.3.0 tell (身体动作写抽象 / 形容词+冒号 / 抽象名词主语 / 回避"是" / 同义词循环 / 四字成语 / 欧化句式) to a one-line fix
- `examples/09-sentence-tells-en.md` — English demo of the new sentence-level tells (copula avoidance, negative parallelism, synonym cycling, false ranges, signposting, diff-anchored writing)
- New layers in `references/chinese-patterns-to-remove.md`:
  - **翻译腔 / 欧化句式 layer** — machine-translation tells that survive even when no buzzword is present: over-dense subject pronouns, 被字句 overuse, 复数"们", 作为一个…, …之一, 不仅…而且… / 一方面…另一方面…, 对…进行… / 使…得到…
  - **四字成语堆砌** under the vocabulary layer — one chengyu per sentence max, prefer plain speech
  - **改写时的身份与心态 section** — drop the 资深文案 / 营销专家 stance (it opens the ad-vocabulary register), rewrite as a friend / 公众号 editor / seasoned journalist, pin down reader and scenario, favor short sentences and 大白话, and read the result aloud as a final check
- Two 快速识别法 signals (四字成语 stacking, 翻译腔 sentence shapes) and three 退化警报 entries in `references/chinese-before-after.md`
- Externally-sourced patterns studied from open humanizer projects and adapted into this skill's structure:
  - Chinese: 用身体动作写抽象 (机翻体感词 接住/击穿/收口…), 形容词+冒号预判读者, 抽象名词主语+评价谓语 (from yage.ai's translationese analysis); 回避系动词"是", 同义词循环 (from op7418/Humanizer-zh)
  - English: copula avoidance, negative parallelism, synonym cycling, false ranges, signposting announcements, diff-anchored writing in `references/patterns-to-remove.md` (from blader/humanizer)
- Optional five-dimension scoring pass (Directness / Rhythm / Trust / Authenticity / Density, threshold 35/50) in `assets/final-pass-checklist.md` (from hardikpandya/stop-slop)
- **Credits & references** section in both READMEs acknowledging blader/humanizer, hardikpandya/stop-slop, op7418/Humanizer-zh, yage.ai, and @dotey

### Changed

- `SKILL.md` `metadata.version` bumped from `1.2.0` to `1.3.0`
- `SKILL.md` "Editing Heuristics" gains two Chinese-specific heuristics: spot 翻译腔 / 欧化 sentence shapes, and adopt the non-marketing rewrite stance
- `assets/rewrite-prompt-template.md` gains a "中文改写（带负向约束）" block — a ready-to-hand instruction with role-setting, an explicit 禁止出现 list, and positive 短句 / 大白话 requirements
- `examples/README.md` and both top-level READMEs updated for the new examples and version
- Both READMEs gain a single, agent-agnostic **Quick start**: get the rules, feed them to any agent (one-off via the `assets/rewrite-prompt-template.md` prompt block, or persistently via a skills dir / `AGENTS.md` / system prompt — Claude Code is just one example), then optionally name the scenario and voice mode
- Use-cases section now leads with the flagship case: removing obvious AI traces from Chinese posts on X
- **Default README language is now Chinese.** `README.md` holds the Chinese version (GitHub's default landing page); the English version moved to `README.en.md`. The former `README.zh-CN.md` is removed (its content is now `README.md`). Language badges in both files switch between them.

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
