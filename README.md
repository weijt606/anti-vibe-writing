# anti-vibe-writing

[![English](https://img.shields.io/badge/README-English-1f6feb?style=flat-square)](./README.md)
[![中文](https://img.shields.io/badge/README-%E4%B8%AD%E6%96%87-15803d?style=flat-square)](./README.zh-CN.md)
[![License: MIT](https://img.shields.io/badge/License-MIT-111111?style=flat-square)](./LICENSE)

An agent writing skill for removing the typical AI-generated feel from documents.

It works best as a final pass after drafting with agents such as Claude Code, OpenClaw, Codex, or Hermes. The goal is not decorative prose. The goal is to keep the substance and remove the tells: templated phrasing, vague abstraction, consultant-speak, markdown-heavy formatting, over-structured outlines, and the cautious over-balancing that makes writing feel assembled.

## Included

- A reusable skill in `skills/anti-vibe-writing/`
- Supporting references and assets for consistent rewrites
- A local developer agent file at `agents/anti-vibe-writing-dev.agent.md`, kept out of git by default

## Repository layout

```text
agents/
  README.md
  anti-vibe-writing-dev.agent.md
skills/
  anti-vibe-writing/
    SKILL.md
    references/
      patterns-to-remove.md
    assets/
      final-pass-checklist.md
      rewrite-prompt-template.md
README.md
README.zh-CN.md
```

## Use cases

- README cleanup
- Product docs
- Landing page copy
- Proposals
- Founder notes
- Technical memos

## Output goals

- More human rhythm
- More intentional structure
- Cleaner phrasing
- Stronger voice
- Less AI smell

## Working with the files

The repository keeps the source files in top-level folders for a cleaner project layout.

The skill files are versioned. The developer agent file is local and gitignored by default, so contributors can adjust it without changing the public repository.

If you want tool-specific auto-discovery, you may still need to mirror these files into the locations required by the target agent platform.

## License

This project is open source under the MIT License. See `LICENSE`.

## Contributor notes

- Preserve meaning. Sharpen the writing without changing facts.
- Prefer concrete edits over generic style advice.
- Keep structure only when it helps the reader.

