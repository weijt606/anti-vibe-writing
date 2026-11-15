# Final Pass Checklist

Use this checklist before returning rewritten copy.

- The opening reaches the point quickly.
- The main claim feels chosen rather than padded.
- The main point appears early.
- The wording is concrete enough that a reader can picture the thing being described.
- The draft no longer leans on template phrases or startup jargon.
- Headings and bullets remain only where they help the reader.
- Emoji, icons, and decorative markdown are gone unless the source clearly requires them.
- No typographic AI tells: em-dashes (`—` / `——`), smart quotes, the `…` character, and stray `→ • ·` are replaced or restructured (English quotes straightened; Chinese full-width quotes left as is) unless the house style genuinely uses them everywhere.
- No AI layout left over: scattered bolding, a heading per short chunk, bullets that should be a sentence, `> callouts`, and `---` rules are swapped for plain prose. Would you type this formatting in a message to a friend? If not, it's gone.
- No copy-paste residue from chat or search models: `contentReference` / `oaicite` / `turn0search0` / `[cite: 1]` / `grok_card` / `ppl-ai-file-upload`, stray `【】` or `†` citation scaffolding, leftover "Here is the revised version" / "Sources:" framing, and unsourced `[1][2]` brackets.
- Stock sections such as Overview, Key Features, or Conclusion are gone unless they earn their keep.
- Repetition is gone.
- No "not X, but Y" frames ("it's not X, it's Y", "Not that X. Just Y", 不是……而是, 不在……在, 从来不是): the claim is stated directly.
- No newer-model reflexes: "this matters" / "why X matters", dependable, genuinely, quietly, "is more than an X, it's a Y", "not simply X", "rather than relying on X", source-gap hedges ("the available information does not establish..."), trailing ", highlighting / ensuring / reflecting..." clauses. Chinese: 过度拔高, a pile of unsupported "最", 学术套话 openers, fake "从 X 到 Y" ranges.
- No tracking parameters (`utm_source=`), footnote arrows `↩`, or unfilled placeholders. Placeholders are flagged in the closing note, never filled with invented values.
- The ending stops where the facts stop: no "Despite these challenges" / 挑战与展望 wrap-up, no neater resolution than the source supports.
- Not over-corrected into staccato: no run of three or more short sentences, no comma-chopped sentence, no one-line paragraphs throughout, no lone fragment as the closer.
- The tone has a point of view instead of artificial balance.
- Warmth comes from specificity and cadence, and filler friendliness is gone.
- The prose sounds like a person wrote it.
- Facts, numbers, and technical claims remain unchanged.
- Any necessary nuance is carried in the sentence itself.
- The result is shorter or sharper than the draft.

## Optional Scoring Pass

For a borderline draft, score it on five dimensions (1–10 each) before returning. Adapted from the `stop-slop` rubric (see Credits in the README).

- **Directness**: states things; doesn't announce that it's about to state them.
- **Rhythm**: sentence lengths vary; no monotone march of equal clauses, and no staccato run of fragments either.
- **Trust**: respects the reader's intelligence; no over-explaining the obvious.
- **Authenticity**: reads like a person chose the words.
- **Density**: every sentence earns its place; no filler.

Below 35 / 50 means it still reads generated. Make another pass.

## Deterministic Gate (optional, run when you have a shell)

Some tells are exact strings, which makes them the easiest thing to miss by eye and the easiest to catch by command. Grep the draft before returning:

```bash
# Language-agnostic tells: em-dash, the … character, stray arrows / bullets in prose
grep -nE '—|…|→|•' draft.txt

# Copy-paste residue from chat / search models (any language)
grep -nE 'contentReference|oaicite|turn[0-9]+(search|news|view)|\[cite[:_]|grok_card|ppl-ai-file-upload' draft.txt

# Chinese jargon and marketing-speak (run on Chinese drafts)
grep -nE '赋能|打通|闭环|抓手|对齐|链路|底层逻辑|一站式|全链路|端到端|打造|致力于|助力|释放潜能|丝滑|无缝|干货满满' draft.txt

# Chinese template openers / closers (greppable subset of the banned sentence structures)
grep -nE '让我们|值得注意的是|综上所述|总而言之|归根结底|说到底|在这个.*的时代|记住，真正' draft.txt

# "Not X, but Y" contrast frames, including the 2026 variants (Chinese and English)
grep -nE '不是.{1,20}而是|不在.{1,15}[，,] *在|从来不是|与其说|不等于|不仅仅是|而不是简单|[Nn]ot (just|only|that|simply) |isn.t (about|just|only)|[Ii]t.s not |more than an? [a-z]+, it.s|rather than relying' draft.txt

# Newer-model reflexes and source-gap hedges (English)
grep -niE 'this matters|why [a-z ]+ matters|dependabl|genuinely|quietly|multifaceted|another dimension|(may|can) provide|does not establish|should not be confused|based on (the )?available' draft.txt

# Placeholders, tracking parameters, footnote arrows (any language)
grep -nE 'utm_source=|↩|\[Insert|\[Your |INSERT_|PASTE_|XX-XX|在此插入|需补充' draft.txt

# Chinese inflation, academic openers, fake ranges, and a count of 最
grep -nE '历史性|里程碑|关键时刻|决定性|意义深远|随着.{1,15}的(发展|推进)|近年来|有学者指出|从.{1,10}到.{1,10}，从' draft.txt
grep -o '最' draft.txt | wc -l
```

Each hit is a location to look at; nothing here is an automatic deletion. Four caveats:

- Double curly quotes (`“ ”`) are shared: an English smart quote (strip it) and a Chinese full-width quote (leave it) look identical to grep, so judge those by language, not by the command.
- The contrast-frame line also hits plain negation ("这不是我的错", "it's not ready yet"). Only the setup-then-reveal shape is a tell.
- "genuinely", "quietly", "近年来", and a few "最" are ordinary words. They count when they cluster or repeat, and the `最` count only means something against the length of the draft.
- The jargon line is a fast subset. The full lists live in [patterns-to-remove.md](../references/patterns-to-remove.md) and [chinese-patterns-to-remove.md](../references/chinese-patterns-to-remove.md).
