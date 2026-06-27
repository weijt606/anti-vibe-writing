# Changelog

All notable changes to the `anti-vibe-writing` skill are recorded here.

The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) and the project uses [Semantic Versioning](https://semver.org/spec/v2.0.0.html) for the skill itself (declared in `skills/anti-vibe-writing/SKILL.md` frontmatter).

## [1.6.0] — 2026-06-27

### Added

- **Final Verify Pass** in `SKILL.md` — turns `assets/final-pass-checklist.md` from a passive reference into an executed step: re-read the rewrite against every item; if any check fails or the optional five-dimension score is below 35 / 50, do one *targeted* revision (fix only the flagged spots, no full rewrite) and re-check; stop after at most two rounds. This is the lightest form of a generate → check → revise loop — one model, one conversation, no subagents or orchestration, so the skill stays a pure set of markdown rules
- **Deterministic gate** in `assets/final-pass-checklist.md` — an optional one-line `grep` to run before returning, covering the exact-string tells self-review misses most (em-dash `—`, the `…` character, stray `→ •` in prose) plus a fast subset of the Chinese jargon list. Two caveats documented: shared double curly quotes `“ ”` are left to human judgment by language (so Chinese full-width quotes aren't stripped by mistake), and the full jargon lists still live in the `references/*patterns-to-remove.md` files
- **Learning-mode closing check** — the Final Verify Pass adds one line for learning mode: compare the output's sentence rhythm and punctuation against the numbers already recorded in the host profile, and nudge it back if it has drifted (closes the loop on numbers the profile template captures but nothing previously checked against)
- **Banned-sentence-structure patterns** — `references/chinese-patterns-to-remove.md` gains coverage for AI's template openers and closers that were previously uncovered: the "以前……现在……" time-contrast frame (added beside the existing "不是 X 而是 Y"), the "在这个 XX 的时代，我们每个人都……" opener, the "记住，真正重要的是……" preachy opener, and the "总之 / 综上所述 / 归根结底 / 说到底" summary-closer. 强行升华 now also names 鸡汤 / 口号 endings, and 伪平衡 calls out the slick all-correct-but-empty 圆滑结论. Synced into the 中文改写（带负向约束）block in `assets/rewrite-prompt-template.md` and a greppable subset added to the deterministic gate in `assets/final-pass-checklist.md`. Already-covered items from the same request (不是…而是, 值得注意的是, 让我们 openers, per-paragraph subheadings) were left as-is rather than duplicated
- `examples/11-sentence-structures-zh.md` — a Chinese before-after demonstrating the new sentence-structure tells (template opener, 以前…现在… time-contrast, summary-closer, 鸡汤/slogan ending, slick 圆滑结论) on a 公众号-style paragraph where every buzzword is already absent but the skeletons still read as AI. Existing examples (`01`, `03`, `04`, `06`, `07`) had their "what changed" notes annotated to name the now-covered patterns they already demonstrated (the era opener and the 圆滑结论)

### Changed

- `SKILL.md`: `metadata.version` `1.5.0` → `1.6.0`; new "Final Verify Pass" section before "Response Format"
- READMEs: version badge → 1.6.0, a 1.6.0 entry in Version highlights / 版本亮点; `examples/README.md` lists example `11`

## [1.5.0] — 2026-06-16

### Added

- **Typographic-tells layer** — a first-class category for the symbols that flag generated text fastest (with readers, platforms like Reddit, and detectors). Em-dash front and center:
  - English: a "Typographic Tells (Strip These First)" section at the top of `references/patterns-to-remove.md` covering the em-dash `—` / en-dash connector, smart quotes `“ ” ‘ ’`, the `…` character, and stray `→ • ·`, each with a job-based replacement (period / comma / colon / parentheses / straight quotes)
  - Chinese: a rewritten, em-dash-led `## 标点和排版的痕迹` section in `references/chinese-patterns-to-remove.md` — `——` overuse is called out as the most recognizable Chinese AI punctuation tell, with replacements; an explicit note that full-width quotes `“”` are normal and stay; plus a new 快速识别法 signal for `——` density
- **Format-forms mapping** — a "Format Forms → Plain Human Forms" table in `references/patterns-to-remove.md` and a parallel "格式形式：换成人最常用的写法" table in `references/chinese-patterns-to-remove.md`. Maps each AI *layout* habit (scattered bolding, a heading per short chunk, bullets where a sentence works, `1. 2. 3.` frameworks, `> callouts`, `---` rules, label blocks, tables for 2–3 items) to the plainest thing a person actually types, with the rule of thumb: if you wouldn't type the formatting into a message to a friend, cut it
- `examples/10-typographic-tells.md` — em-dash / smart-quote / ellipsis before-after in both English and Chinese, with the full-width-quote exception called out
- "Problem: Typographic AI Tells" entry in `references/common-problems-and-fixes.md`
- **Sixth scenario preset: Reddit / English forum comments** in `references/scenario-presets.md` — comment-as-genuine-help constraints, a hard "no em-dashes at all" rule (some subreddit automods flag em-dash density and auto-remove comments as low-effort/AI), break too-symmetric "it's not X, it's Y" parallelism, casual connectors, one oddly-specific real detail, plus disclosure/anti-sock-puppet guardrails. Framed the same honest way: write a genuinely human, useful comment; not getting falsely flagged is a side effect, not a trick to push ads past moderators

### Changed

- **Human-texture mode reconciled with the new layer.** `references/human-texture.md` Section 5 no longer recommends the em-dash as a "personal voice" move (AI overuse has turned it into a tell); it now offers parenthesis/period alternatives and caps em-dash use at rare-and-deliberate, especially in platform-scanned social copy. Section 4 self-correction and Section 3 half-sentence examples reworked off the em-dash.
- `SKILL.md`: `metadata.version` `1.4.0` → `1.5.0`; frontmatter description now names the typographic tells; new bullets under "What to Remove Early" and "Default Editing Moves" for both typographic tells and AI layout forms
- `assets/final-pass-checklist.md`: new checks for typographic tells (with the English-quotes-only / Chinese-quotes-stay distinction) and leftover AI layout forms
- `assets/rewrite-prompt-template.md`: typographic-tell instructions added to the Full Rewrite, Light Cleanup, and 中文改写（带负向约束）blocks
- Framing kept honest throughout: tell-stripping makes the text genuinely read like keyboard typing; it is **not** sold as a way to beat a detector, and lower false-positive flags are described as a side effect
- **Dogfooding sweep — the repo now practices what it preaches.** Removed the project's own prose em-dashes across both READMEs, `SKILL.md`, every reference and asset file, and the examples (converting to periods, commas, colons, or parentheses per the new rule), plus fixed Chinese full-width-punctuation slips in the README's flagship paragraph. Em-dashes that remain are deliberate: backtick character references that *teach* the rule, "before"-block AI text in the examples, and before→after demos. Also corrected three example *after*-blocks (`03`, `05`, `07`, alongside the earlier `04`) that had modeled the now-discouraged em-dash in exemplary output
- READMEs: version badge → 1.5.0, a 1.5.0 entry in Version highlights, and example `10` listed in `examples/README.md`

## [1.4.0] — 2026-06-05

### Added

- **"随手打" (casual typing) layer** under human-texture mode — a tightly-gated, social-only, default-off option for a tiny amount of real-person phone-typing imperfection (dropped end punctuation, no capitalization, an omitted particle), in `references/human-texture.md`. Hard guardrails:
  - Only in casual social scenarios (X / Weibo / Jike); forbidden in docs, reports, announcements, and any professional copy
  - Never touches numbers, names, code, links, prices, dates, or terms
  - Only omissions, never meaning-changing typos (的/得/地, 在/再, 哪/那 are off-limits)
  - Capped at 1–2 touches per post, stated at the end so the user can revert
  - Framed as phone-typing texture, explicitly **not** error injection to evade AI detection
- Cross-references to the 随手打 layer in the tweet and Weibo presets (`references/scenario-presets.md`)

### Changed

- `SKILL.md` Mode 2 (Human Texture) documents the casual-typing layer and its guardrails; `metadata.version` bumped `1.3.0` → `1.4.0`
- READMEs: version badge → 1.4.0, modes table note about the social-only casual-typing layer, and a 1.4.0 entry in Version highlights

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
