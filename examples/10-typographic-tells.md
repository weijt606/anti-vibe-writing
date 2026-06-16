# Example 10: Typographic tells (em-dash and friends) (1.5.0)

Demonstrates the AI tells added in 1.5.0 — both the symbols (em-dash `—` / `——`, smart quotes, the `…` character, stray `→ • ·`) and the layout forms (scattered bolding, a heading per chunk, `> callouts`, `---` rules). These are the fastest signals readers, platforms (Reddit and others), and detectors catch, and they survive even after the wording is clean. Mode: default (clean).

## English

### Before

```
We didn't build another note app — we built a thinking tool. It's fast,
it's quiet, and it's yours — no accounts, no sync, no cloud. “Just open it
and write,” as one early user put it… and that's the whole pitch.
```

### After

```
We didn't build another note app. We built a thinking tool. It's fast, it's
quiet, and it's yours: no accounts, no sync, no cloud. "Just open it and
write," as one early user put it. That's the whole pitch.
```

What changed: the first em-dash becomes a period (hard stop); the second becomes a colon (it introduces the list); the smart quotes `“ ”` become straight quotes `" "`; the trailing `…` becomes a plain period and the sentence finishes its thought.

## 中文

### Before

```
我们不是又做了一个笔记应用——而是做了一个思考工具。它快、它安静、它属于
你——不用注册、不用同步、不上云。"打开就写"——一个早期用户这么说……这就是
全部。
```

### After

```
我们不是又做了一个笔记应用，而是做了一个思考工具。它快，安静，属于你：不用
注册，不用同步，不上云。"打开就写"，一个早期用户这么说。这就是全部。
```

What changed: the first `——` becomes a comma (the turn rides inside the sentence); the second becomes a colon (it introduces the list); the third becomes a comma; the trailing `……` becomes a period. The Chinese full-width quotes `""` stay — those are normal, not a tell.

## Format forms (English)

Same idea, one level up: the AI *layout*, not just the symbols.

### Before

```
## Why It's Fast

**Local-first:** Everything runs on your machine.

**No sync:** Your notes never leave the device.

---

### Key takeaway

> It's fast because there's no network in the loop.
```

### After

```
It's fast because there's no network in the loop: everything runs on your
machine, and your notes never leave the device.
```

What changed: two bold-label blocks, a section heading, a `---` rule, and a `>` callout collapse into one plain sentence. Nobody types that scaffolding into a message, so it goes.

## Effect

Both before versions are grammatically fine and the wording is already decent. What gives them away is purely typographic: four em-dashes across three sentences, plus curly quotes and a trailing ellipsis. None of those characters are on a keyboard you'd reach for mid-sentence, so they read as machine-set. The after versions say the same thing with punctuation a person actually types, which is the point. Stripping the tells lowers false-positive flags as a side effect; it isn't a trick to beat a detector.
