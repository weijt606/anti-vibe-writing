# Patterns to Remove

Use this reference when a draft still sounds generated after a first rewrite pass.

## Typographic Tells (Strip These First)

These are the cheapest signals to catch and the ones readers, platforms, and AI detectors flag fastest. The characters below are rare on a real keyboard or phone but constant in model output, so their mere presence reads as machine-set text. Removing them is not a trick to fool a detector. It makes the writing genuinely look like something a person typed.

- **The em-dash `—` (and the en-dash `–` used as a connector).** This is the single most recognizable sign of AI prose. Models splice clauses with it constantly; most people don't, because it isn't a key you press. Replace it by the job it was doing:
  - hard stop → period: "The tool does one thing — it finishes drafts." → "The tool does one thing. It finishes drafts."
  - introduce → colon: "It does one thing: it finishes drafts."
  - aside → parentheses or commas: "the system — the engine —" → "the system (the engine)"
  - light pause → comma, or just rewrite into two sentences.
  The em-dash itself isn't wrong; humans use it. The tell is the *density* and the typographic form. Aim for rare and deliberate, never the auto-inserted kind.
- **Smart quotes and curly apostrophes** `“ ” ‘ ’` come from autoformatting, not keyboards. Use straight quotes `" '`. Keep curly quotes only if the publication's house style sets them everywhere; a mix of curly and straight is itself the tell.
- **The ellipsis character `…`** → three periods `...`, or better, cut the trailing-off entirely.
- **Stray symbols dropped into prose**: `→`, `•`, `·`, `▪` mid-sentence. Use words or restructure.
- **Decorative bolding of key terms** and **Title Case On Every Heading** both scan as generated. Bold sparingly; use sentence case for headings unless the house style says otherwise.

One honest caveat: none of this defeats a determined detector by itself, and that is not the goal. The goal is that the text stops *being* machine-set. Tell-stripping lowers false-positive flags as a side effect of the writing actually reading like a person.

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

In most technical and product writing, these make the document feel more templated, not more human.

## Stock Markdown Modules

Watch for sections that appear because a model likes the shape, not because the document needs them:

- Overview
- Key Features
- Benefits
- Why It Matters
- In Summary
- Conclusion
- FAQ with invented questions

Keep the sections that do real work. Collapse or remove the rest.

## Sentence-Level Tells

These survive even after the buzzwords are gone. Surfaced by community humanizer projects (see Credits in the README).

Copula avoidance: the model dodges plain "is" / "has":
- Weak: The tool serves as a final pass. It boasts three modes and features bilingual support.
- Strong: The tool is a final pass. It has three modes and works in two languages.

Negative parallelism / tailing negation: "It's not X, it's Y" used as a reflex:
- Weak: This isn't about speed. It's about trust.
- Strong: This is about trust. (Make the claim; drop the setup.) One per piece at most.

Synonym cycling: renaming the same thing to avoid repetition:
- Weak: The model... the system... the assistant... the engine... (all the same thing)
- Strong: Pick the clearest term and repeat it. Repetition reads as precision, not poverty.

False ranges: "from X to Y" where there's no real spectrum:
- Weak: Everything from onboarding to analytics to billing.
- Strong: Onboarding, analytics, and billing. List the items; don't fake a range.

Signposting announcements: narrating the structure instead of writing it:
- Cut: "Let's dive in", "Here's what you need to know", "Now, let's talk about", "But first..."
- Just say the thing. The reader doesn't need a tour guide.

Diff-anchored writing: describing what changed instead of what is:
- Weak: We've now updated the API to also support streaming.
- Strong: The API supports streaming. (Unless the change itself is the point, describe the current state.)

## Faux Warmth

Some drafts try to sound human by sounding extra friendly.

Watch for:

- We are excited to share
- Hopefully this helps
- Thoughtfully designed
- Delightful experience
- Friendly but empty encouragement

Warmth should come from useful detail, respect for the reader, and confident restraint.
