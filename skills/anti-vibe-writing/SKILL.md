---
name: anti-vibe-writing
description: 'Rewrite AI-generated drafts in a classic, polished, human style. Use for README cleanup, product docs, landing page copy, proposals, founder notes, and technical memos. Best as a final pass to remove templated phrasing, vague abstraction, consultant-speak, markdown-heavy formatting, over-structured outlines, and an overly balanced tone.'
argument-hint: 'Describe the draft, audience, and medium, or paste the text to rewrite.'
user-invocable: true
disable-model-invocation: false
---

# Anti-Vibe Writing

Use this skill as the final editorial pass on agent-produced writing.

It is for documents that are already directionally correct but still feel generated. The job is to keep the substance, then remove the habits that make the copy sound synthetic: template language, empty abstraction, padded transitions, symmetrical hedging, and markdown scaffolding that does more organizing than communicating.

## When to Use

- The draft is correct but flat, generic, or obviously AI-written.
- The document has too many headings, bullets, or numbered lists.
- The copy sounds cautious, polished, and empty at the same time.
- The writing leans on business-speak instead of saying what is true.
- The reader needs prose that sounds deliberate rather than generated.

## Best Fits

- README cleanup
- Product docs
- Landing page copy
- Proposals
- Founder notes
- Technical memos

## Output Goals

- More human rhythm
- More intentional structure
- Cleaner phrasing
- Stronger voice
- Less AI smell

## Core Rules

- Preserve facts, claims, scope, and technical meaning.
- Remove templated openers, throat-clearing, and filler transitions.
- Replace vague nouns and abstractions with concrete nouns and verbs.
- Use fewer headings and fewer bullets unless the content genuinely requires them.
- Collapse repetitive framing and duplicate summary language.
- Prefer an earned point of view over fake balance.
- Cut consultant-speak, hype, and process jargon.
- Keep sentences varied in length, but not ornamental.
- Do not invent examples, numbers, or evidence.
- Default to returning rewritten copy, not commentary.

## Procedure

1. Identify the document's actual job, audience, and medium.
2. Strip obvious AI markers first: generic setup, soft disclaimers, empty intensifiers, and repeated framing.
3. Rebuild the structure around natural reading flow, not default outline habits.
4. Rewrite paragraph by paragraph with concrete diction and firmer cadence.
5. Reduce markdown to the minimum structure that still helps the reader.
6. Run the final check in [final-pass-checklist.md](./assets/final-pass-checklist.md).
7. If needed, use [patterns-to-remove.md](./references/patterns-to-remove.md) and [rewrite-prompt-template.md](./assets/rewrite-prompt-template.md) as support material.

## Editing Heuristics

- If a heading only labels the obvious, cut it.
- If three bullets can become one sentence, merge them.
- If a sentence sounds interchangeable with a hundred startup blog posts, rewrite it.
- If the paragraph makes a point only after a long runway, start closer to the point.
- If the tone keeps "balancing" instead of deciding, make the claim and carry the nuance in the sentence rather than around it.

## Response Format

Return the revised text directly.

Add a short note only when one of these is true:
- The structure changed materially.
- Facts were ambiguous in the source.
- The source asked for a very specific voice that conflicts with this skill.

When adding a note, keep it to three lines or fewer.
