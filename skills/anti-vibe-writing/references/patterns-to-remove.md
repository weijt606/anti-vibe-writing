# Patterns to Remove

Use this reference when a draft still sounds generated after a first rewrite pass.

The specific facts in the Strong examples are illustrations. In a real rewrite, every concrete detail comes from the source; if the source has none, cut the empty phrase or ask the writer in the closing note.

## Typographic Tells (Strip These First)

These are the cheapest signals to catch. In drafts from older models, or text pasted straight out of a chat window, they are still what readers and platforms notice first. The characters below are rare on a real keyboard or phone, so a page full of them reads as machine-set. Removing them makes the writing look like something a person typed.

- **The em-dash `—` (and the en-dash `–` used as a connector).** Until late 2026 this was the most recognizable sign of AI prose: models spliced clauses with it constantly, and most people don't, because it isn't a key you press. The newest frontier models have largely dropped it (Graphite's 2026 analysis, reported by TechCrunch, measured a 99% cut from Claude Opus 5 to Opus 5.5, and Gemini 3.1 Pro barely uses it). Treat it as a tell for older-model output and pasted drafts, and remember that a draft with no em-dashes can still be fully machine-shaped. Replace it by the job it was doing:
  - hard stop → period: "The tool does one thing — it finishes drafts." → "The tool does one thing. It finishes drafts."
  - introduce → colon: "It does one thing: it finishes drafts."
  - aside → parentheses or commas: "the system — the engine —" → "the system (the engine)"
  - light pause → comma, or just rewrite into two sentences.
  Humans use the em-dash too. What gives it away is *density* and the typographic form, so aim for rare and deliberate, never the auto-inserted kind.
- **Smart quotes and curly apostrophes** `“ ” ‘ ’` come from autoformatting, not keyboards. Use straight quotes `" '`. Keep curly quotes only if the publication's house style sets them everywhere; a mix of curly and straight is itself the tell.
- **The ellipsis character `…`** → three periods `...`, or better, cut the trailing-off entirely.
- **Stray symbols dropped into prose**: `→`, `•`, `·`, `▪` mid-sentence. Use words or restructure.
- **Decorative bolding of key terms** and **Title Case On Every Heading** both scan as generated. Bold sparingly; use sentence case for headings unless the house style says otherwise.

A caveat: none of this defeats a determined detector, and the skill doesn't try to. Tell-stripping lowers false-positive flags as a side effect of the writing actually reading like a person. The reverse holds too: a couple of em-dashes in someone's post prove nothing on their own (see Weak Evidence at the end of this file).

## Copy-Paste Residue from Chat and Search Models

When a draft is pasted straight out of a chat or search-enabled model, it often carries machine-only tokens the model never meant for a reader. These are dead giveaways and pure noise. None of them belong in finished text; delete every one on sight. They are language-agnostic, so this applies to Chinese drafts too.

- **Citation and search scaffolding**: `contentReference`, `oaicite`, `:contentReference[oaicite:0]`, `turn0search0` / `turn1news2` / `turn0view1`, `filecite`, and trailing `[1][2][3]` reference brackets pasted out of a search answer.
- **Assistant-specific citation markup**: `[cite: 1]`, `[cite_start]`, `[span_1]`, `grok_card`, `ppl-ai-file-upload`, and similar internal tags.
- **Lenticular brackets `【 】` and dagger marks `† ‡`** used as citation or footnote scaffolding rather than real content. Keep `【】` only when it is genuine house style; as an auto-inserted label or reference marker, cut it.
- **Leftover conversational framing**: "Here is the revised version:", "Certainly! Below is...", "Sure, here's...", "I hope this helps! Let me know if...", "Would you like me to...", and a trailing "Sources:" block the reader never asked for.
- **Tracking parameters in links**: `utm_source=chatgpt.com`, `utm_source=openai`, and similar tags that chat search appends to URLs. Strip the parameter and keep the clean link.
- **Footnote return arrows `↩`** carried over from a chat interface's footnotes.
- **Unfilled placeholders**: `[Insert X]`, `[Your Name]`, `[Article Title 1]`, `2025-XX-XX`, `INSERT_SOURCE_URL`, `PASTE_..._HERE`, `example.com` links standing in for a real source the text cites, and notes addressed to the user such as "Delete this section before submission". Never fill a placeholder with an invented value. Leave it visible and name it in the closing note so the writer supplies the real thing.

These are exact strings, so a grep catches what the eye skims past. See the deterministic gate in the final-pass checklist.

## Format Forms → Plain Human Forms

AI doesn't only reach for AI *symbols*. It reaches for AI *layout*: bold on every key term, a heading over every short chunk, bullets where a sentence would do, rules and callouts between sections. Someone typing into a text box, an email, or a Slack message almost never formats like that. Swap each generated form for the plainest thing a person would actually type.

| AI form | What a person types instead |
|---|---|
| **Bold** on key terms throughout | Nothing. Let the words carry it; bold at most one thing, often zero |
| A `##` heading over every 2–3 sentence chunk | Fewer headings; let paragraphs do the work, or drop the heading |
| A bulleted list of full sentences | A paragraph, or an inline list: "a, b, and c" |
| Numbered `1. 2. 3.` framework | Prose; use "first… then…" only when order truly matters |
| `> Note:` / `> Callout` blockquotes | Fold the note into a sentence |
| `---` horizontal rules between sections | Delete. A blank line is enough |
| `Term — definition` dash list | A sentence: "X is Y." |
| `**Pros:** / **Cons:**` label blocks | Prose: "It's fast, but it costs more." |
| A table for 2–3 items | One sentence |
| `Title Case Headings` | sentence case |
| `TL;DR:` / `Key takeaway:` labels | Just put the point in the first sentence |

Rule of thumb: if you wouldn't type the formatting into a message to a friend, it probably doesn't belong in the writing either. Keep structure only where the reader genuinely navigates by it: real steps, real reference tables.

## Templated Phrasing

Cut or rewrite patterns such as:

- It is important to note that
- In today's fast-paced landscape
- This innovative solution
- Seamless, robust, scalable
- Whether you are a founder, builder, or operator
- At the end of the day
- In order to
- Leverage, unlock, facilitate, empower

These phrases sound pre-assembled. They signal polish without carrying meaning.

The vocabulary drifts by model generation, so no wordlist is final. The 2023-24 favorites (delve, tapestry, testament, intricate, meticulous) gave way to showcasing, highlighting, emphasizing, enhance, fostering, "align with", underscore, boasts. Models released in 2026 bring their own band. Graphite's 2026 analysis, reported by TechCrunch, found Claude Opus 5.5 writing "this matters" and "why X matters" about 100 times as often as human writers and "dependable" 23 times as often, and an OpenAI model leaning on "another dimension of" and soft benefit hedges such as "may provide" / "can provide". Wikipedia's "Signs of AI writing" adds quietly, multifaceted, prioritize, leverage, and echoed for mid-2026 output. Graphite also found that every model version has its own set of tells, so look for whatever this particular draft repeats with unusual regularity. A reflex counts whether the word is classic or brand new.

## Over-Structured Outlines

Watch for:

- A heading for every paragraph
- Lists where prose would read faster
- Numbered frameworks that do not clarify a real sequence
- Summaries before the reader has seen the argument
- Symmetry for its own sake

Generated drafts often confuse visible structure with clear thinking.

## Vague Abstraction

Replace abstract wording with what actually happened, what actually exists, or what the reader should actually do.

Weak:
- Improve collaboration across stakeholders
- Enhance strategic alignment
- Deliver meaningful outcomes

Stronger:
- Help product and engineering review the same decision in one place
- Make the tradeoff explicit before implementation starts
- Reduce setup time from thirty minutes to five

## Consultant Tone

Cut language that sounds polished but evasive:

- best-in-class
- value-add
- key learnings
- actionable insights
- holistic approach
- strategic lever
- future-proof

If the draft makes a claim, say the claim plainly.

## Over-Balanced Tone

Generated text often tries to avoid commitment by wrapping every claim in qualifiers.

Watch for:

- may, might, can, could, often, generally, typically stacked together
- every paragraph ending in a caveat
- empty gestures toward both sides when the writer clearly favors one

Keep nuance where it matters. Remove it where it only weakens the sentence.

## Markdown Overload

Prefer simpler structure when the content allows it.

Common cleanup moves:

- Turn shallow subsections into paragraphs.
- Merge lists that repeat the same idea.
- Remove decorative bolding.
- Keep only the headings the reader will use.

## Emoji and Icon Dressing

Generated drafts often try to add energy with decorative symbols instead of stronger wording.

Watch for:

- "✨ Key Features"
- "🚀 Getting Started"
- "💡 Pro Tip"
- Icons repeated across headings or bullets

In most technical and product writing, these make the document feel more templated.

## Stock Markdown Modules

Watch for sections a model adds because it likes the shape:

- Overview
- Key Features
- Benefits
- Why It Matters
- In Summary
- Conclusion
- FAQ with invented questions
- Challenges and Future Outlook / Challenges and Legacy, usually opening with "Despite these challenges..."

Keep the sections that do real work. Collapse or remove the rest.

The same reflex shapes endings even without a heading: every thread tied off, each problem paired with its solution, a last paragraph that turns hopeful. Real pieces often stop on an open question or a plain next step. If the ending resolves more neatly than the facts allow, cut back to what is actually known.

## Sentence-Level Tells

These survive even after the buzzwords are gone. Surfaced by community humanizer projects (see Credits in the README).

Copula avoidance: the model dodges plain "is" / "has":
- Weak: The tool serves as a final pass. It boasts three modes and features bilingual support.
- Strong: The tool is a final pass. It has three modes and works in two languages.

Negative parallelism / tailing negation: "It's not X, it's Y" and its variants ("Not that X. Just Y", "This isn't about X. It's about Y", "less X, more Y"). The setup knocks down a claim nobody made, and readers spot the shape instantly even when the words change. Default to none per piece: make the claim, and if the contrast really matters, fold X in as a concession.
- Weak: This isn't about speed. It's about trust.
- Strong: This is about trust.
- Weak: AI drafts have a problem. Not that they're wrong. They're just clearly assembled.
- Strong: Most AI drafts get the facts right and still read like a machine put them together.

Newer models disguise the same move. Watch for "is more than an X, it's a Y", "not simply X", "rather than relying on X", and "should be treated as X rather than Y": in Graphite's 2026 analysis, the "not simply" / "rather than" framing was the top tell of an OpenAI model (called Astra in TechCrunch's report), at more than 100 times human frequency.

Exception: in learning mode, keep it at the host's own rate if their samples use it.

Source-gap hedging: newer models narrate what the sources don't say instead of saying what they do:
- Cut: "the available information does not establish...", "based on available sources", "is not widely documented", "should not be confused with X" (when nobody suggested confusing them).
- State what is known. If something important is missing, say once, plainly, that it's unknown.

Trailing participle analysis: a clause tacked onto the end of a sentence to assign it significance:
- Weak: The team shipped the fix in two days, highlighting its commitment to reliability.
- Strong: The team shipped the fix in two days.
- Watch for ", highlighting...", ", underscoring...", ", ensuring...", ", reflecting...", ", contributing to..." at sentence ends. If the significance is real, give it its own sentence with evidence.

Staccato fragments (over-correction): the de-AI fix taken too far. Every thought gets chopped into short punchy sentences, paragraphs shrink to one line each, and a lone fragment closes the piece ("Works in English and Chinese."). It reads as staged, the way ad copy does, and it's as recognizable as the long-winded version. Let a sentence carry a whole thought and vary the length.
- Weak: It's fast. It's quiet. It's yours. No accounts. No sync. That's it.
- Strong: It's fast, quiet, and yours, with no account and no sync.

Rule of thumb: three or more short sentences in a row, or a piece where every paragraph is a single line, means merge.

Synonym cycling: renaming the same thing to avoid repetition:
- Weak: The model... the system... the assistant... the engine... (all the same thing)
- Strong: Pick the clearest term and repeat it. Readers take the repetition as precision.

False ranges: "from X to Y" where there's no real spectrum:
- Weak: Everything from onboarding to analytics to billing.
- Strong: Onboarding, analytics, and billing. List the items; don't fake a range.

Signposting announcements: narrating the structure instead of writing it:
- Cut: "Let's dive in", "Here's what you need to know", "Now, let's talk about", "But first..."
- Just say the thing. The reader doesn't need a tour guide.

Diff-anchored writing: describing what changed instead of what is:
- Weak: We've now updated the API to also support streaming.
- Strong: The API supports streaming. (Unless the change itself is the point, describe the current state.)

Sycophantic openers: chat residue where the model agrees or flatters before answering:
- Cut: "Great question!", "You're absolutely right", "That's a great point", "Excellent choice", and unprompted disclaimers ("It's worth noting I'm not a...").
- Finished prose has no one to flatter. Delete the throat-clearing and start on the substance.

Unsourced authority: leaning on evidence that isn't there:
- Weak: Studies show, experts agree, research indicates, it's widely known that... (with no study, expert, or source named).
- Strong: Name who said it and where, or drop the prop and make the claim in your own voice.

## Faux Warmth

Some drafts try to sound human by sounding extra friendly.

Watch for:

- We are excited to share
- Hopefully this helps
- Thoughtfully designed
- Delightful experience
- Friendly but empty encouragement

Warmth should come from useful detail, respect for the reader, and confident restraint.

## Weak Evidence (Don't Flag These Alone)

Some features show up in AI text and in plenty of careful human writing, so on their own they prove nothing. This list is about diagnosis: in critique mode, don't call a text AI-written because of these. In a rewrite, the typographic rules above still apply to em-dashes and curly quotes.

- Perfect grammar and spelling
- A mix of casual and formal registers
- A single "Additionally" or "However"
- Writing with no sources, common in older or informal pieces
- One or two em-dashes, or curly quotes from a word processor
- Prose that is plain, or prose that is fancy

What counts is co-occurrence: several tells in the same piece, or one reflex repeated. Judge by that.
