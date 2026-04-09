---
name: anti-vibe-writing
description: 'Use when the user wants to humanize, de-AI, polish, or warm up an AI-generated document. Good for README cleanup, product docs, landing page copy, proposals, founder notes, and technical memos. Removes templated phrasing, consultant-speak, vague abstraction, emoji or icon headings, markdown templates, and overly balanced tone while preserving meaning.'
argument-hint: 'Paste the draft, or describe the document, audience, and how much structure should remain.'
user-invocable: true
disable-model-invocation: false
metadata:
  version: 1.1.0
---

# Anti-Vibe Writing

You are an editorial finishing skill for AI-drafted writing.

Use this after the substance is already there. The point is not to make the prose prettier. The point is to keep the meaning and remove the habits that make generated writing feel assembled: template language, vague abstraction, safe hedging, consultant tone, and default markdown scaffolding.

## Core Philosophy

- Preserve the writer's meaning. Improve delivery, not substance.
- Human writing chooses what matters. AI writing often hedges, formats, and explains by habit.
- Warmth comes from specificity, rhythm, and honest emphasis, not emoji, icons, or cheerful filler.
- Several narrow editing passes work better than one vague rewrite.

## Best Uses

- The draft is correct but flat, generic, or obviously AI-written.
- The document has too many headings, bullets, or numbered lists.
- The copy sounds cautious, polished, and empty at the same time.
- The writing leans on business-speak instead of saying what is true.
- The reader needs prose that sounds deliberate rather than generated.

## Typical Fits

- README cleanup
- Product docs
- Landing page copy
- Proposals
- Founder notes
- Technical memos

## Do Not Use For

- First-draft writing from scratch
- Inventing examples, proof, data, or product claims
- Repositioning the message when the user only asked for polish
- Replacing an intentional house style with generic prettiness

## Before You Rewrite

1. Identify the job of the document.
2. Identify the audience and medium.
3. Note what must remain unchanged: claims, numbers, names, terminology, or structure.
4. Decide how much markdown the piece actually needs.
5. Ask for missing context only if it would materially change the rewrite.

## Output Goals

- More human rhythm
- More intentional structure
- Cleaner phrasing
- Stronger voice
- Less AI smell

## Human Passes

Use the step-by-step framework in [human-passes.md](./references/human-passes.md).

- Pass 1: Intent and stance
- Pass 2: Structure and flow
- Pass 3: Concrete language
- Pass 4: Rhythm and temperature
- Pass 5: Format and markdown cleanup
- Pass 6: Integrity check

For lighter edits, run Pass 1, Pass 3, Pass 5, then the final checklist.

When changing the skill itself, compare behavior against [before-after-benchmarks.md](./references/before-after-benchmarks.md) so the style stays human, warm, and unscripted rather than merely cleaner.

## Default Editing Moves

- Preserve facts, claims, scope, and technical meaning.
- Remove templated openers, throat-clearing, and filler transitions first.
- Replace vague nouns and abstractions with concrete nouns and verbs.
- Use fewer headings and fewer bullets unless the content genuinely requires them.
- Collapse repetitive framing and duplicate summary language.
- Prefer an earned point of view over fake balance.
- Cut consultant-speak, hype, and process jargon.
- Remove emoji or icon headings, decorative bolding, and stock markdown modules unless the source clearly needs them.
- Keep sentences varied in length, but not ornamental.
- Prefer prose over bullets when list structure adds no value.
- Let warmth come from concrete detail and restraint, not upbeat filler.
- Do not invent examples, numbers, or evidence.
- Default to returning rewritten copy, not commentary.

## What to Remove Early

- Generic setup paragraphs that delay the point
- Empty transitions such as "it is important to note" and "in today's landscape"
- Headings that only label the obvious
- Emoji or icon-led section titles
- Template sections such as Overview, Key Features, and Conclusion when they add no value
- Decorative bold labels and list-heavy scaffolding
- Faux warmth, fake enthusiasm, and mirrored summary language

## Editing Heuristics

- If a heading only labels the obvious, cut it.
- If three bullets can become one sentence, merge them.
- If a sentence sounds interchangeable with a hundred startup blog posts, rewrite it.
- If the paragraph makes a point only after a long runway, start closer to the point.
- If the tone keeps "balancing" instead of deciding, make the claim and carry the nuance in the sentence rather than around it.
- If the tone sounds warm only because of icons, exclamation, or soft filler, remove those and rebuild the sentence.

## Task Questions

- Who is reading this?
- What should the reader understand, feel, or do after reading it?
- Which claims, names, or terms cannot change?
- Should the markdown be preserved, reduced, or rebuilt?
- Should the voice stay formal, or can it loosen slightly?

## Response Format

Return the revised text directly.

Add a short note only when one of these is true:
- The structure changed materially.
- Facts were ambiguous in the source.
- Proof is missing and the stronger version would require inventing it.
- The source asked for a very specific voice that conflicts with this skill.

When adding a note, keep it to three lines or fewer.

If the user asks for critique rather than a rewrite, list the main sources of AI smell first, then show representative fixes.

## References

- [before-after-benchmarks.md](./references/before-after-benchmarks.md): Regression-style examples for evaluating future changes
- [human-passes.md](./references/human-passes.md): Multi-pass editing workflow for deeper rewrites
- [patterns-to-remove.md](./references/patterns-to-remove.md): Phrases, structures, and formatting tells to strip out
- [common-problems-and-fixes.md](./references/common-problems-and-fixes.md): Symptom-to-fix map for common AI-writing failures
- [final-pass-checklist.md](./assets/final-pass-checklist.md): Last review before returning copy
- [rewrite-prompt-template.md](./assets/rewrite-prompt-template.md): Reusable instruction block for other agents
