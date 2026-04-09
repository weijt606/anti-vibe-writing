# Before and After Benchmarks

Use these examples as regression checks when refining the skill.

The goal is not to force every rewrite toward one house style. The goal is to keep a consistent direction: less template language, less markdown scaffolding, less synthetic balance, more concrete phrasing, more natural rhythm, and more human warmth.

## How to Use These Benchmarks

When you change the skill, compare new outputs against the patterns below.

- The rewrite should preserve the meaning and the practical point.
- The rewrite should reach the point sooner.
- The rewrite should sound more chosen and less assembled.
- The rewrite should not become theatrical, poetic, or ad-like.
- The rewrite should remove decorative markdown, icons, and stock structure unless they are genuinely useful.

## Benchmark 1: README Intro

**What it tests:**
- Cutting template headings
- Removing emoji and stock README framing
- Keeping a little structure without sounding stiff

**Before:**

```md
# Product Overview

## ✨ Introduction

Welcome to Anti-Vibe Writing, an innovative solution designed to help users enhance the quality of AI-generated content in a seamless and efficient way.

## 🚀 Key Features

- Helps improve readability
- Enables stronger messaging
- Facilitates clearer communication

## 💡 Why It Matters

In today's fast-paced landscape, it is important to ensure that content resonates with audiences in a meaningful way.
```

**After:**

```md
# anti-vibe-writing

Anti-Vibe Writing is a final pass for AI-drafted documents. It keeps the substance, then strips out the patterns that make generated writing feel generic: template phrasing, empty abstraction, consultant tone, and markdown scaffolding that does more organizing than communicating.

Use it when a draft is already correct but still doesn't sound like anyone meant it.
```

**Why this is better:**
- The point arrives immediately.
- The icons and stock headings are gone.
- The description is concrete without turning into marketing copy.

## Benchmark 2: Product Documentation

**What it tests:**
- Replacing abstract verbs with practical instructions
- Removing false polish from technical prose
- Preserving technical meaning while warming the tone slightly

**Before:**

```md
To facilitate a streamlined onboarding experience, users should navigate to the configuration interface and input their token credentials in the appropriate field. Once this process has been completed, the platform will seamlessly leverage the saved configuration for future workflows.
```

**After:**

```md
Open the config screen and paste in your token once. After that, the tool uses the saved value for future runs, so you don't have to pass it again each time.
```

**Why this is better:**
- The actor and action are clear.
- The sentence says what the user actually does and what happens next.
- The tone is cleaner and more helpful without becoming chatty.

## Benchmark 3: Founder Note

**What it tests:**
- Turning cautious positioning into a real point of view
- Keeping warmth without soft filler
- Avoiding startup-blog cadence

**Before:**

```md
We are excited to share that Anti-Vibe Writing represents an important step in our broader journey to empower teams to communicate more effectively in an AI-first era. Our goal is to thoughtfully support users as they unlock more authentic and impactful expression across a variety of writing contexts.
```

**After:**

```md
We're not building another tool that helps agents produce more text. We're building a final pass that helps the text sound like someone meant it. That matters more now that teams can draft anything in seconds and still struggle to publish something with a point of view.
```

**Why this is better:**
- The rewrite makes an actual claim.
- The warmth comes from conviction and clarity, not encouragement words.
- The language is specific enough to sound owned.

## Benchmark 4: Technical Memo

**What it tests:**
- Reducing over-structured memo formatting
- Keeping nuance while removing padded caution
- Converting abstract summary language into an explicit tradeoff

**Before:**

```md
## Summary

There are several considerations that may be relevant as we think about the current implementation strategy.

## Key Takeaways

- The current pipeline can potentially be maintained in the near term.
- There may be opportunities to improve reliability over time.
- Additional exploration could be beneficial before further decisions are made.

## Conclusion

In conclusion, a balanced approach is likely recommended.
```

**After:**

```md
The current pipeline is good enough to keep for now, but it is fragile in ways we already understand. If we leave it alone, we save time this quarter and keep paying the same reliability tax. If we tighten it now, we take a small delivery hit up front and stop revisiting the same failures later.
```

**Why this is better:**
- The memo now states the tradeoff instead of gesturing at one.
- The structure is lighter because the prose can carry the point.
- The rewrite keeps nuance, but it no longer hides behind it.

## Benchmark 5: Landing Page Paragraph

**What it tests:**
- Removing conversion-copy cliches without flattening the copy
- Replacing broad benefit claims with a sharper promise
- Keeping momentum without gimmicks

**Before:**

```md
Anti-Vibe Writing helps you unlock the full potential of your AI-assisted workflow by transforming generic drafts into compelling, high-impact communication that resonates with your audience and drives meaningful outcomes.
```

**After:**

```md
Anti-Vibe Writing takes a draft that is technically fine but obviously generated and makes it publishable. It cuts the phrases, structure, and tone that make readers feel they have seen the same paragraph before.
```

**Why this is better:**
- The promise is narrower and more believable.
- The language sounds like a product with a job, not a product with slogans.
- The paragraph keeps energy without sounding inflated.

## Failure Modes to Watch For

If a future rewrite drifts into any of these patterns, the skill is regressing:

- It becomes prettier but less specific.
- It becomes friendlier by adding filler.
- It removes too much structure and hurts usability.
- It keeps the headings but only rewrites the sentences underneath them.
- It swaps consultant language for generic creative-writing language.
- It makes stronger claims than the source supports.
