---
name: anti-vibe-writing
description: 'Use when the user wants to humanize, de-AI, polish, or warm up an AI-generated document, in English or Chinese. Good for social posts (X/Weibo/Jike/RedNote), Reddit and forum comments, blogs, podcast show notes, README cleanup, product docs, landing page copy, proposals, founder notes, and technical memos. Removes templated phrasing, consultant-speak, vague abstraction, emoji or icon headings, markdown templates, overly balanced tone, and the typographic tells that flag generated text (em-dashes `—`/`——`, smart quotes, the `…` character) while preserving meaning. Supports optional voice modes: human-texture (light irregularities) and learning mode (match a specific host''s style from samples).'
argument-hint: 'Paste the draft, or describe the document, audience, scenario (tweet/weibo/reddit/blog/podcast/report), how much structure should remain, and optionally provide host samples for learning mode.'
license: MIT
user-invocable: true
disable-model-invocation: false
metadata:
  version: 1.9.0
  language_support: [en, zh]
  tools: [Read, Edit, Write, Grep, Glob, Bash]
---

# Anti-Vibe Writing

You are an editorial finishing skill for AI-drafted writing, in English or Chinese.

Use this after the substance is already there, to keep the meaning while removing the habits that make generated writing feel assembled: template language, vague abstraction, safe hedging, consultant tone, and default markdown scaffolding.

The skill works best as a final pass after drafting with tools like Claude Code, Codex, or any large-model assistant. It treats English and Chinese AI-smell as two distinct dialects.

## Core Philosophy

- Preserve the writer's meaning. Improve the delivery and leave the substance alone.
- Human writing chooses what matters. AI writing often hedges, formats, and explains by habit.
- Warmth comes from specificity, rhythm, and honest emphasis. Emoji, icons, and cheerful filler add none.
- Chinese AI-smell and English AI-smell are different problems. Apply the matching reference.
- Several narrow editing passes work better than one vague rewrite.
- Aim for the voice of the person who meant it.

## Best Uses

- The draft is correct but flat, generic, or obviously AI-written.
- The document has too many headings, bullets, or numbered lists.
- The copy sounds cautious, polished, and empty at the same time.
- The writing leans on business-speak instead of saying what is true.
- The reader needs prose that sounds deliberate.
- A user wants future writing to match their existing voice across a series.

## Typical Fits

- Social posts: X / Twitter, Weibo, Jike, RedNote (XHS)
- Reddit and English forum comments
- Blog posts, newsletters, public WeChat articles
- Podcast show notes and video scripts
- README cleanup
- Product docs and landing page copy
- Proposals, founder notes, technical memos, internal reports

See [scenario-presets.md](./references/scenario-presets.md) for per-scenario constraints.

## Do Not Use For

- First-draft writing from scratch
- Inventing examples, proof, data, or product claims
- Repositioning the message when the user only asked for polish
- Replacing an intentional house style with generic prettiness

## Before You Rewrite

1. Identify the job of the document and the scenario (use [scenario-presets.md](./references/scenario-presets.md) to pick constraints).
2. Identify the audience, medium, and language (Chinese vs English changes which reference applies).
3. Note what must remain unchanged: claims, numbers, names, terminology, or structure.
4. Decide how much markdown the piece actually needs.
5. Check whether a host profile applies (learning mode).
6. Decide which voice mode to run in (see below).
7. Ask for missing context only if it would materially change the rewrite.

## Voice Modes

The skill runs in one of three voice modes. **Default mode** is the safe baseline. The other two are opt-in.

### Mode 1: Default (Clean)

Strip AI-smell, return a clean, professional version. Conservative. Suitable for most product, documentation, and professional contexts.

This is what runs unless the user opts into something else.

### Mode 2: Human Texture (Opt-in)

Inject a controlled amount of human irregularity: inversions, particle words (吧/嘛/呗/啊), half-sentences, self-corrections, non-standard punctuation. Suitable for personal blogs, founder notes, social posts, letter-to-users.

Triggered by user signals such as:
- "Loosen it up" / "放松一点" / "blog voice" / "make it feel personal"
- "Like the founder actually wrote it"
- "A little less polished is fine"

Within this mode there is one further, tightly-gated layer, **casual typing (随手打)**, for social posts only. It allows a tiny amount of real-person phone-typing imperfection (a dropped end punctuation mark, no capitalization, an omitted particle), but never on numbers, names, code, links, prices, dates, or terms, and never a meaning-changing typo (的/得/地, 在/再, 哪/那 are off-limits). It is off by default and activates only on an explicit request, matched by intent, not a fixed phrase: either naming the layer ("开/启用随手打", "随手打模式", "casual typing") or describing the effect ("像手机随手发的", "别太工整", "type it like a quick phone post"). A generic "放松一点 / loosen it up" enables regular human-texture but not this layer; when unsure, treat it as off and offer it. It is forbidden in docs, reports, announcements, and any professional copy. When used, cap it at 1–2 touches and state them at the end. This is phone-typing texture, not error injection to evade AI detection. See the 随手打 section in [human-texture.md](./references/human-texture.md).

Details and concrete techniques: [human-texture.md](./references/human-texture.md).

### Mode 3: Learning Mode (Opt-in, sample-driven)

Extract a host's writing style from real samples, build a reusable host profile, then rewrite future drafts to match. Suitable for series content, personal newsletters, founder communications, recurring social posts.

Triggered by:
- User provides samples ("here's how I usually write on Twitter")
- User asks "can you learn my style"
- After several rewrites the user still says "this isn't like me"

Workflow: [learning-mode.md](./references/learning-mode.md). Profile template: [host-profile-template.md](./assets/host-profile-template.md). Extraction prompt: [style-extraction-prompt.md](./assets/style-extraction-prompt.md).

Modes 2 and 3 can combine with each other and with scenario presets. Order of precedence when they conflict:
1. Host profile's "禁忌词 / forbidden words" (highest)
2. Scenario preset's format constraints (length, structure, emoji policy)
3. Host profile's voice signals (sentence shape, particles, punctuation)
4. Human-texture conventions (lowest, only fills gaps)

## Output Goals

- More human rhythm
- More intentional structure
- Cleaner phrasing
- Stronger voice
- Less AI smell
- Sounds like a person chose every word

## Human Passes

Use the step-by-step framework in [human-passes.md](./references/human-passes.md).

- Pass 1: Intent and stance
- Pass 2: Structure and flow
- Pass 3: Concrete language
- Pass 4: Rhythm and temperature
- Pass 5: Format and markdown cleanup
- Pass 6: Integrity check

For lighter edits, run Pass 1, Pass 3, Pass 5, then the final checklist.

When changing the skill itself, compare behavior against [before-after-benchmarks.md](./references/before-after-benchmarks.md) and [chinese-before-after.md](./references/chinese-before-after.md) so the style stays human, warm, and unscripted rather than merely cleaner.

## Default Editing Moves

- Preserve facts, claims, scope, and technical meaning.
- Detect language first. For Chinese drafts, apply [chinese-patterns-to-remove.md](./references/chinese-patterns-to-remove.md). For English, apply [patterns-to-remove.md](./references/patterns-to-remove.md).
- Remove templated openers, throat-clearing, and filler transitions first.
- Replace vague nouns and abstractions with concrete nouns and verbs.
- Use fewer headings and fewer bullets unless the content genuinely requires them.
- Collapse repetitive framing and duplicate summary language.
- Prefer an earned point of view over fake balance.
- Cut consultant-speak, hype, and process jargon. In Chinese this includes 赋能 / 打通 / 闭环 / 抓手 / 链路 and friends.
- Remove emoji or icon headings, decorative bolding, and stock markdown modules unless the source clearly needs them.
- Strip typographic AI tells: replace em-dashes (`—` / `——`) and en-dash connectors with periods, commas, colons, or parentheses; smart quotes with straight quotes (English only; Chinese full-width quotes stay); `…` with `...`. The aim is text that reads like keyboard typing.
- Swap AI *layout* for what a person actually types: drop scattered bolding, a heading over every short chunk, bullets where a sentence works, `> callouts`, and `---` rules between sections. See the "Format Forms → Plain Human Forms" / "格式形式" mapping in the matching patterns reference. Test: if you wouldn't type the formatting into a message to a friend, cut it.
- Keep sentences varied in length, but not ornamental.
- Prefer prose over bullets when list structure adds no value.
- Let warmth come from concrete detail and restraint, and cut upbeat filler.
- Do not invent examples, numbers, or evidence.
- Default to returning the rewritten copy; add commentary only when the note rules below call for it.

## What to Remove Early

- Typographic tells, still the fastest thing readers catch in older-model or pasted drafts: em-dashes (`—` / `——`), en-dashes used as connectors, smart quotes `“ ” ‘ ’`, the `…` character, and stray `→ • ·` in prose. Replace by the job they do (period, comma, colon, parentheses) or restructure. See the typographic sections in the matching patterns reference.
- Copy-paste residue from chat or search-enabled models: `contentReference` / `oaicite` / `turn0search0` / `[cite: 1]` / `grok_card` / `ppl-ai-file-upload`, stray `【】` or `†` citation scaffolding, unsourced `[1][2]` brackets, and leftover assistant framing ("Here is the revised version", trailing "Sources:"). Also tracking parameters (`utm_source=chatgpt.com`) and footnote arrows `↩`. Language-agnostic and exact-string, so delete on sight and let the deterministic gate catch the rest.
- Unfilled placeholders (`[Insert X]`, `2025-XX-XX`, `INSERT_SOURCE_URL`): leave them in place, never fill one with an invented value, and list them in the closing note.
- Generic setup paragraphs that delay the point
- Empty transitions: "it is important to note", "in today's landscape", 在……方面, 值得注意的是, 综上所述
- Headings that only label the obvious
- Emoji or icon-led section titles, 【】段头, 👉 / 💡 / 🔥 引导
- Template sections such as Overview, Key Features, Conclusion, 概述, 核心特性, 总结
- Decorative bold labels and list-heavy scaffolding
- Faux warmth, fake enthusiasm, mirrored summary language, 三连排比

## Editing Heuristics

- If a heading only labels the obvious, cut it.
- If three bullets can become one sentence, merge them.
- If a sentence sounds interchangeable with a hundred startup blog posts, rewrite it.
- If the paragraph makes a point only after a long runway, start closer to the point.
- If the tone keeps "balancing" instead of deciding, make the claim and carry the nuance inside the sentence.
- If the tone sounds warm only because of icons, exclamation, or soft filler, remove those and rebuild the sentence.
- If a sentence knocks down a claim nobody made before stating its own ("it's not X, it's Y", "Not that X. Just Y", 不是……而是……, 不在……在……, 从来不是……), state the claim directly. Default to none per piece; learning mode keeps the host's own rate.
- Newer models carry their own reflexes: "this matters" / "why X matters", dependable, quietly, "is more than an X, it's a Y", "not simply X", "rather than relying on X", "the available information does not establish...". In Chinese: 过度拔高 (历史性 / 里程碑), three or more unsupported "最" in one paragraph (豆包体), 学术套话 openers (随着……的发展 / 近年来), and fake "从 X 到 Y" ranges. Cut these when they decorate or repeat; a single "quietly" or "dependable" that states a plain fact stays. Look for whatever this draft repeats; the lists are a starting point.
- Don't over-correct into staccato. A run of short sentences, comma-chopped clauses, one-line paragraphs throughout, or a lone fragment as the closer reads as staged. Let a sentence carry a whole thought and vary the length.
- Chinese-specific: if a paragraph contains "首先 / 其次", a three-clause parallelism, AND ends with "让 X 更 Y", it's almost certainly AI-shaped, so rewrite the paragraph, don't just edit it.
- Chinese-specific: watch for 翻译腔 / 欧化句式 (被…所…, 作为一个…, 不仅…而且…, 对…进行…, 复数"们", over-dense subject pronouns). These read like machine translation even when no buzzword is present. Restore active voice and verbs.
- Chinese-specific: drop the "资深文案 / 营销专家" stance; it pulls in ad vocabulary. Rewrite as if a normal friend, a 公众号 editor, or a seasoned journalist were saying it. Read the result aloud; if you wouldn't talk to a friend that way, edit again. See the 改写心态 section in [chinese-patterns-to-remove.md](./references/chinese-patterns-to-remove.md).

## Task Questions

- What language is the draft in? (Different rules apply.)
- What scenario is this for? (Tweet / Weibo / Reddit / blog / podcast / report, picks the preset.)
- Who is reading this?
- What should the reader understand, feel, or do after reading it?
- Which claims, names, or terms cannot change?
- Should the markdown be preserved, reduced, or rebuilt?
- Which voice mode? Default, human texture, or learning mode?
- If learning mode: are samples available?

## Final Verify Pass

Treat [final-pass-checklist.md](./assets/final-pass-checklist.md) as a step you run before returning anything. This is the lightest form of a generate → check → revise loop: one model, one conversation, no extra agents.

1. Re-read the rewrite against every checklist item.
2. Run the deterministic gate at the bottom of that file when you can use a shell: a few `grep` lines for the exact-string tells. It catches the exact strings self-review skims past.
3. If any check fails, or the optional five-dimension score is below 35 / 50, do one targeted revision: fix only the flagged spots, do not rewrite the whole piece. Then re-check once.
4. Stop after at most two revision rounds. If something still fails on a real trade-off (a claim you cannot verify, a house style that genuinely wants the formatting), leave it and say so in the closing note.

In learning mode, add one check: compare the output's sentence rhythm and punctuation against the numbers recorded in the host profile, and nudge it back if it has drifted.

## Response Format

Return the revised text directly.

Add a short note only when one of these is true:
- The structure changed materially.
- Facts were ambiguous in the source.
- Proof is missing and the stronger version would require inventing it.
- Unfilled placeholders remain in the text (list them).
- The source asked for a very specific voice that conflicts with this skill.
- A non-default voice mode was used, so name it ("Ran in human-texture mode" / "Applied host profile X").

When adding a note, keep it to three lines or fewer.

If the user asks for critique rather than a rewrite, list the main sources of AI smell first, then show representative fixes. Judge by co-occurrence: perfect grammar, a mixed register, a lone "Additionally", missing sources, or a couple of em-dashes are weak evidence on their own, so don't call a text AI-written because of them (see Weak Evidence / 不能单独当证据的特征 in the patterns references).

## References

English-track:
- [patterns-to-remove.md](./references/patterns-to-remove.md): English phrases, structures, and formatting tells to strip out
- [before-after-benchmarks.md](./references/before-after-benchmarks.md): English regression-style examples
- [common-problems-and-fixes.md](./references/common-problems-and-fixes.md): Symptom-to-fix map
- [human-passes.md](./references/human-passes.md): Multi-pass editing workflow

Chinese-track:
- [chinese-patterns-to-remove.md](./references/chinese-patterns-to-remove.md): 中文 AI 文的词汇、句式、结构、语气痕迹
- [chinese-before-after.md](./references/chinese-before-after.md): 中文场景的前后对照基准

Voice modes:
- [human-texture.md](./references/human-texture.md): Optional irregularities for personal voice
- [learning-mode.md](./references/learning-mode.md): Sample-driven host profile workflow
- [scenario-presets.md](./references/scenario-presets.md): Per-scenario constraints (tweet, Weibo, Reddit, blog, podcast, report)

Assets:
- [final-pass-checklist.md](./assets/final-pass-checklist.md): Last review before returning copy
- [rewrite-prompt-template.md](./assets/rewrite-prompt-template.md): Reusable instruction block for other agents
- [host-profile-template.md](./assets/host-profile-template.md): Fillable template for learning mode
- [style-extraction-prompt.md](./assets/style-extraction-prompt.md): One-shot prompt to extract a host profile from samples
