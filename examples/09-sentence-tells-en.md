# Example 9: English sentence-level tells (1.3.0 patterns)

Demonstrates the sentence-level tells added in 1.3.0: copula avoidance, negative parallelism, synonym cycling, false ranges, signposting, and diff-anchored writing. These survive after the obvious buzzwords are gone.

Scenario: a product landing section. Mode: default (clean).

## Before

```
This isn't just another database. It's a rethink of how state lives in your app.

Our engine serves as the source of truth. It boasts sub-millisecond reads and
features automatic replication. The platform — the system — handles everything
from caching to indexing to backups.

We've now updated it to also support vector search. Let's dive into what that means.
```

## After

```
Our database is the source of truth for your app's state. Reads are
sub-millisecond, and replication is automatic. It handles caching, indexing,
and backups.

It also does vector search: store embeddings next to your rows and query both
in one call.
```

## What changed (one tell per fix)

- **Negative parallelism** — "This isn't just another database. It's a rethink..." dropped; the piece opens on the claim itself
- **Copula avoidance** — "serves as", "boasts", "features" become "is", "are", "handles"
- **Synonym cycling** — "Our engine / The platform / the system" all named one thing; the rewrite says "database" once and reuses it
- **False range** — "everything from caching to indexing to backups" becomes a plain list: "caching, indexing, and backups"
- **Em-dash insertion** — the "— the system —" aside is gone
- **Diff-anchored writing** — "We've now updated it to also support vector search" becomes the present-state "It also does vector search"
- **Signposting** — "Let's dive into what that means" cut; the next sentence just says what it means

## Effect

The before version names the product four different ways, dodges "is" three times, and announces a section it never delivers. The after version is shorter, repeats "database" without apology, and replaces the signpost with the actual explanation (store embeddings next to rows, query both in one call).
