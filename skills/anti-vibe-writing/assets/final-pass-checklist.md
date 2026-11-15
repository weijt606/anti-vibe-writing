# Final Pass Checklist

Use this checklist before returning rewritten copy.

- The opening reaches the point quickly.
- The main claim feels chosen, with no padding around it.
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
- No newer-model reflexes used as filler or emphasis: "this matters" / "why X matters", dependable, quietly, "is more than an X, it's a Y", "not simply X", "rather than relying on X", source-gap hedges ("the available information does not establish..."), trailing ", highlighting / ensuring / reflecting..." clauses. Chinese: 过度拔高, three or more unsupported "最" in one paragraph, 学术套话 openers, fake "从 X 到 Y" ranges. A single plain "quietly" or "dependable" that states a fact stays.
- No tracking parameters (`utm_source=chatgpt.com`) or `↩` arrows. Any unfilled placeholder is left visible and listed in the closing note, never filled with an invented value.
- The ending stops where the facts stop: no "Despite these challenges" / 挑战与展望 wrap-up, no neater resolution than the source supports.
- Not over-corrected into staccato: no run of three or more short sentences, no comma-chopped sentence, no one-line paragraphs throughout, no lone fragment as the closer.
- The tone has a point of view instead of artificial balance.
- Warmth comes from specificity and cadence; there is no filler friendliness.
- No sentence is a stock part that could drop into any other draft.
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
grep -nE '不是.{1,20}而是|不在.{1,15}[，,] *在|从来不是|与其说|与其.{1,15}不如|应该被看作|不等于|不仅仅是|而不是简单|[Nn]ot (just|only|that|simply|merely) |isn.t (about|just|only)|[Ii]t.s not |more than (just )?an? [a-z]+, (it.s|it is)|rather than relying|treated as .{1,30} rather than' draft.txt

# Newer-model reflexes and source-gap hedges (English)
grep -niE 'this matters|why (it|this)( really)? matters|why does (it|this) matter|^(#+ *)?why .* matters?$|dependabl|quietly|multifaceted|another dimension|(information|sources?) (does|do) not establish|should not be confused|based on (the )?available|, (highlighting|underscoring|emphasizing|ensuring|reflecting|showcasing|contributing to) ' draft.txt

# Placeholders, tracking parameters, footnote arrows (any language)
grep -nE 'utm_source=(chatgpt|openai)|↩|\[Insert |\[Your (Name|Company|Title)|INSERT_[A-Z_]*(URL|HERE)|PASTE_[A-Z_]*_HERE|20[0-9]{2}-XX-XX|在此插入|\[需补充' draft.txt

# Chinese inflation, academic openers, fake ranges, and a count of 最
grep -nE '历史性|里程碑|关键时刻|决定性|意义深远|随着.{1,15}的(不断)?(发展|推进)([，,。而]|$)|近年来|有学者指出|从.{1,10}到.{1,10}，从' draft.txt
grep -oE '最([^后近终初]|$)' draft.txt | wc -l
```

Each hit is a location to look at; nothing here is an automatic deletion. Run the commands in a UTF-8 locale (the macOS and Linux default); under `LC_ALL=C` the `.{n}` ranges and bracket expressions break on Chinese text, so the `最` count and some Chinese lines may miss or mis-count. Four caveats:

- Double curly quotes (`“ ”`) are shared: an English smart quote (strip it) and a Chinese full-width quote (leave it) look identical to grep, so judge those by language.
- The contrast-frame line also hits plain negation ("这不是我的错", "it's not ready yet"). Only the setup-then-reveal shape is a tell.
- "quietly", "dependable", "决定性", "近年来", and a few "最" are ordinary words, and "从北京到上海，从上海到广州" is a real itinerary. They count when they cluster or repeat. "should not be confused with" counts only when nobody suggested confusing the two. The `最` count skips 最后 / 最近 / 最终 / 最初; the rule is three or more unsupported ones in a paragraph.
- The jargon line is a fast subset. The full lists live in [patterns-to-remove.md](../references/patterns-to-remove.md) and [chinese-patterns-to-remove.md](../references/chinese-patterns-to-remove.md).
