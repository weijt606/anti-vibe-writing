# Rewrite Prompt Template

Use this template when another agent needs a direct instruction block.

## Full Rewrite

Rewrite the following draft as a final editorial pass.

Goals:
- Keep the meaning, claims, names, numbers, and technical accuracy intact.
- Make the writing sound written, not generated.
- Remove templated phrasing, consultant-speak, vague abstraction, stock markdown modules, emoji or icon headings, decorative bolding, and empty balance.
- Strip typographic AI tells: replace em-dashes (—) and en-dash connectors with periods, commas, colons, or parentheses; turn smart quotes “ ” ‘ ’ into straight quotes; replace the … character with three periods. (Leave Chinese full-width quotes alone.)
- Reduce markdown unless it clearly helps the reader.
- Keep warmth through specificity, cadence, and judgment rather than friendly filler.
- Prefer direct sentences and concrete nouns and verbs.
- Do not add new facts, examples, proof, or hype.

Output:
- Return revised copy first.
- Add a short note only if facts are ambiguous, proof is missing, or the structure changed materially.

Audience:
[Describe the reader]

Medium:
[README, memo, proposal, landing page, docs, etc.]

Desired voice:
[Optional constraints]

Structure preference:
[Preserve, reduce, or rebuild markdown structure]

Must keep:
[Terms, names, claims, links, or sections that cannot change]

Draft:
[Paste source text]

## Light Cleanup

Tighten the following draft without fully rewriting it.

Goals:
- Remove the most obvious AI markers.
- Keep the current structure unless it is clearly hurting readability.
- Cut emoji, icon headings, decorative markdown, and filler transitions.
- Remove em-dashes (—), smart quotes, and the … character (the typographic tells platforms and detectors catch first) by swapping in plain keyboard punctuation.
- Make the wording more concrete and the rhythm less robotic.
- Do not add new facts or change the intended meaning.

Return the edited text directly.

## 中文改写（带负向约束）

中文稿的 AI 味和英文不一样，提示词要写得更"狠"。下面这段可以直接丢给另一个 agent。

把下面这段中文做一遍"去 AI 味"的润色。保留原意、事实、数字、专有名词不变。

身份设定：
- 你不是"资深文案"，也不是"营销专家"。把自己当成发微信的普通朋友 / 公众号编辑 / 做了十年的媒体人。
- 想清楚读者是谁、这是什么场景，按那个场景里人会说的话来写。

负向约束（禁止出现）：
- 互联网黑话：赋能、打通、闭环、抓手、对齐、心智、链路、底层逻辑、一站式、全链路、端到端
- 营销腔：打造、致力于、助力、释放潜能、极致、丝滑、无缝、干货满满、强烈推荐
- 说教词：让我们一起、不可否认、毋庸置疑、综上所述、总而言之、值得注意的是、总之、归根结底、说到底、记住真正重要的是
- 欧化 / 翻译腔句式：不仅……而且……、一方面……另一方面……、作为一个……、被……所……、对……进行……
- 结构套路：首先 / 其次 / 最后、【】段头、emoji 段头、三连排比、段尾升华到"行业 / 时代 / 未来"、"在这个 XX 的时代我们每个人都……"开头、"以前……现在……"成段对比、"不是 X 而是 Y"成段对比、鸡汤 / 口号收尾
- 标点痕迹：破折号 `——` 别用密（最容易被一眼认出是 AI，平台和检测也最先盯它），多数换成逗号、句号、冒号或括号；别夹弯引号、`…`、`→` 这类符号。中文全角引号 `""` 正常，不用动。

正向要求：
- 多用短句，多用大白话；一句最多一个四字成语，能用动词就别名词化。
- 论点早出现，例子要具体到能复现（哪个产品 / 哪个数字 / 哪个场景）。
- 不编事实，不加新内容，不替原作者强化立场。
- 改完把句子念一遍，不像平时说话的地方再改。

直接返回改好的中文，不要解释。

待改文本：
[粘贴原文]
