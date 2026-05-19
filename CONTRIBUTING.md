# Contributing

Thanks for considering a contribution. This project is small and opinionated. The bar isn't "more rules" — it's "rules that change how the rewrite reads on real drafts."

## Ground rules

- The skill should model the standard it asks other writing to meet. Don't write rules in AI-style prose.
- Preserve meaning. Edits must not change facts, claims, names, numbers, or technical accuracy.
- Concrete edits over generic style advice.
- Keep structure light unless hierarchy is genuinely useful.
- English and Chinese AI-smell are different problems. Don't translate one set of rules into the other — write the rules native to that language.

## What to contribute

The most useful contributions, in rough order:

1. **A new before/after benchmark** that exposes a failure mode the current skill misses (English or Chinese)
2. **A new pattern** with a specific phrase, sentence shape, or structural tell to remove
3. **A new scenario preset** for a writing context not yet covered
4. **Host profile examples** (anonymized) showing how learning mode works in practice
5. **Bug fixes** in existing references — typos, broken links, outdated examples

Less useful:

- Adding more decorative structure to existing files
- "Improving" the prose of `references/` files without adding new information
- Translating English rules into Chinese (or vice versa) without checking whether the rule actually applies

## Adding a new pattern

Use the existing `patterns-to-remove.md` or `chinese-patterns-to-remove.md` structure:

1. Pick the right file (English vs Chinese).
2. Place under the right section (词汇 / 句式 / 结构 / 语气 — or the English equivalent).
3. Give a 1-line description of why it signals AI writing.
4. Show a "weak → stronger" example, ideally with a real-looking sample.
5. If it's a Chinese-only or English-only phenomenon, don't try to make it bilingual.

## Adding a new benchmark

Use the `before-after-benchmarks.md` or `chinese-before-after.md` structure:

1. State what the benchmark tests (1–3 bullets)
2. Provide a realistic "before" sample
3. Provide a clean "after" sample
4. Explain in 3–5 bullets why "after" is better
5. If applicable, declare which voice mode and scenario preset were used

Avoid:

- Toy examples that no one would actually write
- "Before" samples that are so bad the comparison is meaningless
- "After" samples that change the meaning to look better

## Adding a new scenario preset

Add to `references/scenario-presets.md`. Each preset must specify:

- **Format constraints**: length, structure, emoji policy, markdown allowed/disallowed
- **Writing constraints**: opening rules, closing rules, voice rules
- **Forbidden phrases / patterns** for this scenario
- **Learning mode focus**: which features matter most when learning a host's style for this scenario

If the new preset overlaps significantly with an existing one, consider whether it's a real new scenario or just a variant.

## Adding to learning mode

The learning mode workflow has three artifacts:

- `references/learning-mode.md` — the method
- `assets/host-profile-template.md` — the template
- `assets/style-extraction-prompt.md` — the prompt

If you've used learning mode in practice and found a missing feature dimension, add it to the template **and** the extraction prompt at the same time — they need to stay in sync.

## Changing voice modes

Voice modes are in `SKILL.md`. Changing the mode model (adding a fourth mode, reordering precedence) is a larger change. Open an issue first to discuss before submitting.

## Versioning

This project uses [Semantic Versioning](https://semver.org/) for the skill, declared in `skills/anti-vibe-writing/SKILL.md` frontmatter:

- **Patch (1.2.x)**: bug fixes, typo fixes, example tweaks
- **Minor (1.x.0)**: new patterns, new benchmarks, new scenario presets, new voice mode features
- **Major (x.0.0)**: breaking changes to the voice mode model, removal of references, or structural reorganization that breaks links

Update `CHANGELOG.md` with every change. Bump the version in `SKILL.md` and in the README badge.

## Style for these contribution files themselves

This is meta but it matters: contribution docs should also avoid AI-smell. Specifically:

- No "we are excited to..." openings
- No emoji headings
- No three-clause parallelism in section descriptions
- No "in conclusion" closings
- Direct verbs, concrete examples

If a contribution PR adds AI-smell to the project's own docs, it will be asked to revise — same standard the skill applies to its inputs.

## Local development

- The skill is markdown-only — no build step
- Validate by reading the changed files in a markdown viewer and checking links
- The local developer agent in `agents/anti-vibe-writing-dev.agent.md` is gitignored; copy from `.example.md` to set yours up

## License

By contributing, you agree your contribution is licensed under the project's [MIT License](./LICENSE).
