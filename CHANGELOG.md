# Changelog

All notable changes to the `anti-vibe-writing` skill are recorded here.

The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) and the project uses [Semantic Versioning](https://semver.org/spec/v2.0.0.html) for the skill itself (declared in `skills/anti-vibe-writing/SKILL.md` frontmatter).

## [1.9.0] - 2026-11-15

Catches up with how models write in late 2026 and fixes places where the skill broke its own rules. Sources: Wikipedia's "Signs of AI writing" (October 2026 revision), Graphite's 2026 model-by-model tell analysis as reported by TechCrunch, and 36kr's 2026 Chinese de-AI guide.

### Added

- **Newer-model reflexes** in `references/patterns-to-remove.md`: "this matters" / "why X matters" (about 100x human frequency in Claude Opus 5.5), dependable, genuine / genuinely, quietly, multifaceted, prioritize, leverage, echoed, "another dimension of", and "may/can provide" hedges, plus a note that about two thirds of measured tells are specific to one model family
- **2026 contrast-frame variants**: "is more than an X, it's a Y", "not simply X", "rather than relying on X", "should be treated as X rather than Y", and in Chinese 不仅仅是……更是 / 而不是简单的 / 应该被看作……而不是
- **Source-gap hedging** ("the available information does not establish...", "should not be confused with...") and **trailing participle analysis** (", highlighting...", ", ensuring...") as English sentence-level tells
- **Chinese**: 过度拔高 (历史性 / 里程碑 / 关键时刻 / "XX 的象征"), "最"字泛滥 (the 2026 "豆包体" tell), 学术套话 openers (随着……的发展 / 近年来 / 有学者指出), fake "从 X 到 Y" ranges, and 挑战与展望 endings. 快速识别法 gains items 11 and 12
- **Residue**: `utm_source=chatgpt.com` / `utm_source=openai` tracking parameters, `↩` footnote arrows, and unfilled placeholders (`[Insert X]`, `2025-XX-XX`, `INSERT_SOURCE_URL`, `[需补充真实数据]`). Placeholders are flagged in the closing note and never filled with invented values
- **Tidy endings**: "Despite these challenges" / Future Outlook sections and endings that resolve more neatly than the facts allow, in both languages
- **Weak evidence / 不能单独当证据的特征**: perfect grammar, mixed register, a lone "Additionally", missing sources, and a couple of em-dashes don't prove AI authorship alone. Critique mode now judges by co-occurrence
- Deterministic gate: four new `grep` lines (2026 contrast variants, newer-model reflexes, placeholders and tracking, Chinese inflation plus a `最` count), tested against a fixture with no false positives on clean lines

### Changed

- **Em-dash repositioned.** Frontier models released in 2026 have largely stopped using it, so the patterns references, `common-problems-and-fixes.md`, human-texture, and the prompt templates now treat it as a tell for older-model and pasted drafts, and say plainly that its absence proves nothing and that one or two dashes are no evidence of AI
- **The skill now follows its own contrast-frame rule.** About 30 "not X, but Y" sentences in `SKILL.md`, the references, the checklist, and both READMEs were rewritten, including the opening of `SKILL.md` and a "Strong" example ("Repetition reads as precision, not poverty"). Factual distinctions (`……` vs `...`) and deliberate human-texture demos were kept
- `SKILL.md` metadata `tools` trimmed to what a markdown skill uses (Read, Edit, Write, Grep, Glob, Bash)
- READMEs drop the long per-version highlights list (it duplicated CHANGELOG and the GitHub Releases) for a short "What's new" / "最近更新" line at the end that names the latest version and links to Releases and CHANGELOG

## [1.8.0] - 2026-11-15

The skill's own examples were caught using two tells: the "not X, but Y" frame, and rewrites chopped into strings of short fragments. This release fixes the examples and tightens the rules that let both through.

### Changed

- **"Not X, but Y" frames now default to zero.** The old rule tolerated one per piece (English) or flagged them only at two or more (Chinese). Both patterns references now treat the frame as a tell on sight and list the variants: it's not X, it's Y / Not that X. Just Y / This isn't about X. It's about Y / less X, more Y, and 不是 X，而是 Y / 不是 X，是 Y / 不在 X，在 Y / 从来不是 X，而是 Y / 与其说 X，不如说 Y / X 不等于 Y / 省的是 X，省不掉 Y. The fix is to state the claim, folding X in as a concession if it matters. Learning mode keeps the frame at the host's own rate when their samples use it
- **"多用短句" rebalanced.** The Chinese rewrite stance and prompt block used to push short sentences without a limit, which is how the examples got chopped. They now say to mix lengths and not split a single thought into four or five comma-separated pieces. `human-passes.md` and the human-texture 残句 section carry the same cap
- The 是……的 rule's "strong" example (这次改的是产品定位，不是功能) was itself a contrast frame; replaced

### Added

- **Staccato fragments (over-correction)** as a new tell in both patterns references: runs of short sentences, comma-chopped clauses, one-line paragraphs throughout, a lone fragment as the closer. Rule of thumb: three or more short sentences in a row, more than four commas in one sentence, or every paragraph a single line means merge. Added to the Chinese 快速识别法 (items 9 and 10) and the 格式形式 table
- `SKILL.md` editing heuristics, `final-pass-checklist.md`, and all three blocks of `rewrite-prompt-template.md` gain both rules. The scoring pass's Rhythm dimension now penalizes staccato as well as monotone
- Deterministic gate: a contrast-frame `grep` line for Chinese and English, with a caveat that plain negation also matches and only the setup-then-reveal shape counts
- Before/after comparison image at the top of each README (`anti-vibe-writing-before-after.png`, `-cn.png`), built from the real pairs in examples `03` and `07` with each removed tell struck through

### Fixed

- The "after" text in examples `03`, `07`, and `11` used the very "not X, but Y" frame the skill tells writers to drop ("Not that they're wrong. They're just clearly assembled", 毛病不在语法，在……, 从来不是打字，是……). Rewritten without it, and the notes in `07` that praised the frame are corrected. Example `10` keeps its symbols-only After for the punctuation demo, now followed by a full-pass version without the frame
- The rewrites in examples `03`, `07`, `10`, and `11` were over-corrected into strings of short clauses and lone fragments ("Works in English and Chinese."), which reads as staged. They now say the same thing in fewer, complete sentences
- Word counts in examples `03` (73 to 37 words, was "110+ to 30") and `07` (136 to 78 汉字, was "130 多到 60 出头") now match the actual text

## [1.7.1] - 2026-11-15

Packaging and repo hygiene only. The skill rules are unchanged.

### Added

- **One-step Claude Code install**: `.claude-plugin/plugin.json` and `.claude-plugin/marketplace.json` make the repo installable with `/plugin install anti-vibe-writing --marketplace weijt606/anti-vibe-writing`. The plugin ships the skill only (the dev agent template under `agents/` is excluded). Both READMEs lead Quick start with this line
- **Dogfood CI**: `scripts/check-own-prose.sh` plus a `prose-check` GitHub Action fail the build when the project's own prose (READMEs, CONTRIBUTING, CHANGELOG, SKILL.md, index files) contains an em-dash or copy-paste model residue. Code spans, fenced blocks, and the rule files that have to quote these tells are exempt

### Changed

- Removed the remaining prose em-dashes from `CONTRIBUTING.md`, `CHANGELOG.md`, the Chinese README, and example `10`, which the 1.5.0 sweep had missed
- Banner images recompressed to a 16-color palette: about 2.3 MB to 430 KB each, visually unchanged

## [1.7.0] - 2026-07-21

### Added

- **Copy-paste model-residue layer**: a new category for the machine-only tokens that current chat and search-enabled models leave behind when a draft is pasted straight out of them. These are exact strings, language-agnostic, and pure noise, which makes them both the easiest tell to miss by eye and the easiest to catch by command:
  - `references/patterns-to-remove.md` gains a "Copy-Paste Residue from Chat and Search Models" section covering search/citation scaffolding (`contentReference`, `oaicite`, `turn0search0`, `filecite`, trailing `[1][2]`), assistant citation markup (`[cite: 1]`, `[cite_start]`, `[span_1]`, `grok_card`, `ppl-ai-file-upload`), lenticular-bracket `【】` and dagger `† ‡` footnote scaffolding, and leftover conversational framing ("Here is the revised version:", trailing "Sources:")
  - `references/chinese-patterns-to-remove.md` adds the same residue note under 其他机器排版痕迹 (DeepSeek-style `【】`/`†` scaffolding called out specifically), plus an 附和 / 谄媚开头 item under 语气层 (问得好 / 你说得对 / 好的，下面是……) and an 无源的权威铺垫 item under 词汇层 (研究表明 / 数据显示 / 专家指出 with no source named)
  - A greppable subset added to the deterministic gate in `assets/final-pass-checklist.md`, a checklist bullet, and the residue instructions synced into all three blocks of `assets/rewrite-prompt-template.md`
- **Sentence-level tells for current models** in `references/patterns-to-remove.md`: sycophantic openers (chat residue: "Great question!", "You're absolutely right", unprompted disclaimers) and unsourced authority ("studies show" / "experts agree" with nothing named)
- **Generational-drift note** on the AI vocabulary list: the 2024 delve/tapestry set has partly given way to a newer high-frequency band (showcasing, highlighting, emphasizing, enhance, fostering, "align with", underscore, boasts); the tell is the reflex, not the exact word, so no single list is treated as final

### Changed

- `SKILL.md`: `metadata.version` `1.6.0` → `1.7.0`; new "What to Remove Early" bullet for copy-paste model residue
- READMEs: version badge → 1.7.0, a 1.7.0 entry in Version highlights / 版本亮点, and the copy-paste model-residue tell woven into the intro "what it removes" sentence in both languages so the new coverage is visible without scrolling to the version list
- No structural or design change: all additions are new pattern coverage folded into the existing references, gate, and prompt template. The skill stays a lightweight set of markdown rules

## [1.6.0] - 2026-06-27

### Added

- **Final Verify Pass** in `SKILL.md`: turns `assets/final-pass-checklist.md` from a passive reference into an executed step: re-read the rewrite against every item; if any check fails or the optional five-dimension score is below 35 / 50, do one *targeted* revision (fix only the flagged spots, no full rewrite) and re-check; stop after at most two rounds. This is the lightest form of a generate → check → revise loop: one model, one conversation, no subagents or orchestration, so the skill stays a pure set of markdown rules
- **Deterministic gate** in `assets/final-pass-checklist.md`: an optional one-line `grep` to run before returning, covering the exact-string tells self-review misses most (em-dash `—`, the `…` character, stray `→ •` in prose) plus a fast subset of the Chinese jargon list. Two caveats documented: shared double curly quotes `“ ”` are left to human judgment by language (so Chinese full-width quotes aren't stripped by mistake), and the full jargon lists still live in the `references/*patterns-to-remove.md` files
- **Learning-mode closing check**: the Final Verify Pass adds one line for learning mode: compare the output's sentence rhythm and punctuation against the numbers already recorded in the host profile, and nudge it back if it has drifted (closes the loop on numbers the profile template captures but nothing previously checked against)
- **Banned-sentence-structure patterns**: `references/chinese-patterns-to-remove.md` gains coverage for AI's template openers and closers that were previously uncovered: the "以前……现在……" time-contrast frame (added beside the existing "不是 X 而是 Y"), the "在这个 XX 的时代，我们每个人都……" opener, the "记住，真正重要的是……" preachy opener, and the "总之 / 综上所述 / 归根结底 / 说到底" summary-closer. 强行升华 now also names 鸡汤 / 口号 endings, and 伪平衡 calls out the slick all-correct-but-empty 圆滑结论. Synced into the 中文改写（带负向约束）block in `assets/rewrite-prompt-template.md` and a greppable subset added to the deterministic gate in `assets/final-pass-checklist.md`. Already-covered items from the same request (不是…而是, 值得注意的是, 让我们 openers, per-paragraph subheadings) were left as-is rather than duplicated
- `examples/11-sentence-structures-zh.md`: a Chinese before-after demonstrating the new sentence-structure tells (template opener, 以前…现在… time-contrast, summary-closer, 鸡汤/slogan ending, slick 圆滑结论) on a 公众号-style paragraph where every buzzword is already absent but the skeletons still read as AI. Existing examples (`01`, `03`, `04`, `06`, `07`) had their "what changed" notes annotated to name the now-covered patterns they already demonstrated (the era opener and the 圆滑结论)

### Changed

- `SKILL.md`: `metadata.version` `1.5.0` → `1.6.0`; new "Final Verify Pass" section before "Response Format"
- READMEs: version badge → 1.6.0, a 1.6.0 entry in Version highlights / 版本亮点; `examples/README.md` lists example `11`

## [1.5.0] - 2026-06-16

### Added

- **Typographic-tells layer**: a first-class category for the symbols that flag generated text fastest (with readers, platforms like Reddit, and detectors). Em-dash front and center:
  - English: a "Typographic Tells (Strip These First)" section at the top of `references/patterns-to-remove.md` covering the em-dash `—` / en-dash connector, smart quotes `“ ” ‘ ’`, the `…` character, and stray `→ • ·`, each with a job-based replacement (period / comma / colon / parentheses / straight quotes)
  - Chinese: a rewritten, em-dash-led `## 标点和排版的痕迹` section in `references/chinese-patterns-to-remove.md`. `——` overuse is called out as the most recognizable Chinese AI punctuation tell, with replacements; an explicit note that full-width quotes `“”` are normal and stay; plus a new 快速识别法 signal for `——` density
- **Format-forms mapping**: a "Format Forms → Plain Human Forms" table in `references/patterns-to-remove.md` and a parallel "格式形式：换成人最常用的写法" table in `references/chinese-patterns-to-remove.md`. Maps each AI *layout* habit (scattered bolding, a heading per short chunk, bullets where a sentence works, `1. 2. 3.` frameworks, `> callouts`, `---` rules, label blocks, tables for 2–3 items) to the plainest thing a person actually types, with the rule of thumb: if you wouldn't type the formatting into a message to a friend, cut it
- `examples/10-typographic-tells.md`: em-dash / smart-quote / ellipsis before-after in both English and Chinese, with the full-width-quote exception called out
- "Problem: Typographic AI Tells" entry in `references/common-problems-and-fixes.md`
- **Sixth scenario preset: Reddit / English forum comments** in `references/scenario-presets.md`: comment-as-genuine-help constraints, a hard "no em-dashes at all" rule (some subreddit automods flag em-dash density and auto-remove comments as low-effort/AI), break too-symmetric "it's not X, it's Y" parallelism, casual connectors, one oddly-specific real detail, plus disclosure/anti-sock-puppet guardrails. Framed the same honest way: write a genuinely human, useful comment; not getting falsely flagged is a side effect, not a trick to push ads past moderators

### Changed

- **Human-texture mode reconciled with the new layer.** `references/human-texture.md` Section 5 no longer recommends the em-dash as a "personal voice" move (AI overuse has turned it into a tell); it now offers parenthesis/period alternatives and caps em-dash use at rare-and-deliberate, especially in platform-scanned social copy. Section 4 self-correction and Section 3 half-sentence examples reworked off the em-dash.
- `SKILL.md`: `metadata.version` `1.4.0` → `1.5.0`; frontmatter description now names the typographic tells; new bullets under "What to Remove Early" and "Default Editing Moves" for both typographic tells and AI layout forms
- `assets/final-pass-checklist.md`: new checks for typographic tells (with the English-quotes-only / Chinese-quotes-stay distinction) and leftover AI layout forms
- `assets/rewrite-prompt-template.md`: typographic-tell instructions added to the Full Rewrite, Light Cleanup, and 中文改写（带负向约束）blocks
- Framing kept honest throughout: tell-stripping makes the text genuinely read like keyboard typing; it is **not** sold as a way to beat a detector, and lower false-positive flags are described as a side effect
- **Dogfooding sweep: the repo now practices what it preaches.** Removed the project's own prose em-dashes across both READMEs, `SKILL.md`, every reference and asset file, and the examples (converting to periods, commas, colons, or parentheses per the new rule), plus fixed Chinese full-width-punctuation slips in the README's flagship paragraph. Em-dashes that remain are deliberate: backtick character references that *teach* the rule, "before"-block AI text in the examples, and before→after demos. Also corrected three example *after*-blocks (`03`, `05`, `07`, alongside the earlier `04`) that had modeled the now-discouraged em-dash in exemplary output
- READMEs: version badge → 1.5.0, a 1.5.0 entry in Version highlights, and example `10` listed in `examples/README.md`

## [1.4.0] - 2026-06-05

### Added

- **"随手打" (casual typing) layer** under human-texture mode: a tightly-gated, social-only, default-off option for a tiny amount of real-person phone-typing imperfection (dropped end punctuation, no capitalization, an omitted particle), in `references/human-texture.md`. Hard guardrails:
  - Only in casual social scenarios (X / Weibo / Jike); forbidden in docs, reports, announcements, and any professional copy
  - Never touches numbers, names, code, links, prices, dates, or terms
  - Only omissions, never meaning-changing typos (的/得/地, 在/再, 哪/那 are off-limits)
  - Capped at 1–2 touches per post, stated at the end so the user can revert
  - Framed as phone-typing texture, explicitly **not** error injection to evade AI detection
- Cross-references to the 随手打 layer in the tweet and Weibo presets (`references/scenario-presets.md`)

### Changed

- `SKILL.md` Mode 2 (Human Texture) documents the casual-typing layer and its guardrails; `metadata.version` bumped `1.3.0` → `1.4.0`
- READMEs: version badge → 1.4.0, modes table note about the social-only casual-typing layer, and a 1.4.0 entry in Version highlights

## [1.3.0] - 2026-06-05

### Added

- `examples/07-tweet-zh.md`: Chinese X/Twitter before/after, with a "为什么这版更地道" note that calls out the specific authenticity moves (口语判断句, no 四字成语 stacking, verbs over nominalization)
- `examples/08-translationese-zh.md`: Chinese translationese demo wiring each new 1.3.0 tell (身体动作写抽象 / 形容词+冒号 / 抽象名词主语 / 回避"是" / 同义词循环 / 四字成语 / 欧化句式) to a one-line fix
- `examples/09-sentence-tells-en.md`: English demo of the new sentence-level tells (copula avoidance, negative parallelism, synonym cycling, false ranges, signposting, diff-anchored writing)
- New layers in `references/chinese-patterns-to-remove.md`:
  - **翻译腔 / 欧化句式 layer**: machine-translation tells that survive even when no buzzword is present: over-dense subject pronouns, 被字句 overuse, 复数"们", 作为一个…, …之一, 不仅…而且… / 一方面…另一方面…, 对…进行… / 使…得到…
  - **四字成语堆砌** under the vocabulary layer: one chengyu per sentence max, prefer plain speech
  - **改写时的身份与心态 section**: drop the 资深文案 / 营销专家 stance (it opens the ad-vocabulary register), rewrite as a friend / 公众号 editor / seasoned journalist, pin down reader and scenario, favor short sentences and 大白话, and read the result aloud as a final check
- Two 快速识别法 signals (四字成语 stacking, 翻译腔 sentence shapes) and three 退化警报 entries in `references/chinese-before-after.md`
- Externally-sourced patterns studied from open humanizer projects and adapted into this skill's structure:
  - Chinese: 用身体动作写抽象 (机翻体感词 接住/击穿/收口…), 形容词+冒号预判读者, 抽象名词主语+评价谓语 (from yage.ai's translationese analysis); 回避系动词"是", 同义词循环 (from op7418/Humanizer-zh)
  - English: copula avoidance, negative parallelism, synonym cycling, false ranges, signposting announcements, diff-anchored writing in `references/patterns-to-remove.md` (from blader/humanizer)
- Optional five-dimension scoring pass (Directness / Rhythm / Trust / Authenticity / Density, threshold 35/50) in `assets/final-pass-checklist.md` (from hardikpandya/stop-slop)
- **Credits & references** section in both READMEs acknowledging blader/humanizer, hardikpandya/stop-slop, op7418/Humanizer-zh, yage.ai, and @dotey

### Changed

- `SKILL.md` `metadata.version` bumped from `1.2.0` to `1.3.0`
- `SKILL.md` "Editing Heuristics" gains two Chinese-specific heuristics: spot 翻译腔 / 欧化 sentence shapes, and adopt the non-marketing rewrite stance
- `assets/rewrite-prompt-template.md` gains a "中文改写（带负向约束）" block: a ready-to-hand instruction with role-setting, an explicit 禁止出现 list, and positive 短句 / 大白话 requirements
- `examples/README.md` and both top-level READMEs updated for the new examples and version
- Both READMEs gain a single, agent-agnostic **Quick start**: get the rules, feed them to any agent (one-off via the `assets/rewrite-prompt-template.md` prompt block, or persistently via a skills dir / `AGENTS.md` / system prompt; Claude Code is just one example), then optionally name the scenario and voice mode
- Use-cases section now leads with the flagship case: removing obvious AI traces from Chinese posts on X
- **Default README language is now Chinese.** `README.md` holds the Chinese version (GitHub's default landing page); the English version moved to `README.en.md`. The former `README.zh-CN.md` is removed (its content is now `README.md`). Language badges in both files switch between them.

## [1.2.0] - 2026-05-19

### Added

- Chinese AI-smell coverage as a first-class track, parallel to English:
  - `skills/anti-vibe-writing/references/chinese-patterns-to-remove.md`: vocabulary, sentence shapes, structure, tone tells specific to Chinese AI drafts (赋能 / 打通 / 闭环 / 三连排比 / 【】段头 etc.)
  - `skills/anti-vibe-writing/references/chinese-before-after.md`: five Chinese before/after benchmarks
- Three voice modes formalized in `SKILL.md`:
  - **Default (clean)**: conservative AI-smell removal
  - **Human-texture mode**: opt-in irregularity (inversions, particles, half-sentences, non-standard punctuation), driven by `references/human-texture.md`
  - **Learning mode**: sample-driven host profile workflow, driven by `references/learning-mode.md`, with `assets/host-profile-template.md` and `assets/style-extraction-prompt.md`
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

## [1.1.0] - Initial public refinement

### Added

- Claude-style skill structure: compact `SKILL.md` for discovery, deeper notes in `references/`, reusable prompts and checklists in `assets/`
- Six-pass editing workflow in `references/human-passes.md`
- English regression benchmarks in `references/before-after-benchmarks.md`
- Common problems and fixes mapping
- Patterns-to-remove catalogue
- Final-pass checklist and rewrite prompt template assets

## [1.0.0] - Initial scaffold

### Added

- First public version of the anti-vibe-writing skill
- Bilingual READMEs (English + Chinese)
- Local agent file with public template
- MIT License
