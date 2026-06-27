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
- Stock sections such as Overview, Key Features, or Conclusion are gone unless they earn their keep.
- Repetition is gone.
- The tone has a point of view instead of artificial balance.
- Warmth comes from specificity and cadence, not filler friendliness.
- The prose sounds written, not assembled.
- Facts, numbers, and technical claims remain unchanged.
- Any necessary nuance is carried in the sentence itself.
- The result is shorter or sharper, not just different.

## Optional Scoring Pass

For a borderline draft, score it on five dimensions (1–10 each) before returning. Adapted from the `stop-slop` rubric (see Credits in the README).

- **Directness**: states things; doesn't announce that it's about to state them.
- **Rhythm**: sentence lengths vary; no monotone march of equal clauses.
- **Trust**: respects the reader's intelligence; no over-explaining the obvious.
- **Authenticity**: reads like a person chose the words, not a system.
- **Density**: every sentence earns its place; no filler.

Below 35 / 50 means it still reads generated. Make another pass.

## Deterministic Gate (optional, run when you have a shell)

Some tells are exact strings, which makes them the easiest thing to miss by eye and the easiest to catch by command. Grep the draft before returning:

```bash
# Language-agnostic tells: em-dash, the … character, stray arrows / bullets in prose
grep -nE '—|…|→|•' draft.txt

# Chinese jargon and marketing-speak (run on Chinese drafts)
grep -nE '赋能|打通|闭环|抓手|对齐|链路|底层逻辑|一站式|全链路|端到端|打造|致力于|助力|释放潜能|丝滑|无缝|干货满满' draft.txt

# Chinese template openers / closers (greppable subset of the banned sentence structures)
grep -nE '让我们|值得注意的是|综上所述|总而言之|归根结底|说到底|在这个.*的时代|记住，真正' draft.txt
```

Each hit is a location to look at, not an automatic deletion. Two caveats:

- Double curly quotes (`“ ”`) are shared: an English smart quote (strip it) and a Chinese full-width quote (leave it) look identical to grep, so judge those by language, not by the command.
- The jargon line is a fast subset. The full lists live in [patterns-to-remove.md](../references/patterns-to-remove.md) and [chinese-patterns-to-remove.md](../references/chinese-patterns-to-remove.md).
