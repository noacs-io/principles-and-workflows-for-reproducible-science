---
name: log-decision
description: Append a project decision to DECISIONS.md. Use when the user or agent makes a lasting choice about pedagogy, tooling, scope, repo layout, TBL delivery, AI policy, or process that others should follow.
---

# Log a decision

## When to use

Any decision that should outlive a single chat: tooling defaults, scope cuts, pedagogy, naming, delivery platform, AI policy, etc.

## Steps

1. Open [`DECISIONS.md`](../../../DECISIONS.md).
2. Read the newest ID; next ID is `D00N` with N = last + 1.
3. Insert a new entry **at the top** (below the intro), newest first.
4. Do **not** edit or delete prior entries. To reverse a decision, add a new entry that supersedes the old ID.

## Entry template

```markdown
## YYYY-MM-DD — D00N: Short title

- **Status:** Accepted | Provisional | Superseded by D00X
- **Context:** Why this came up (1–3 sentences).
- **Decision:** What we will do.
- **Alternatives considered:** (optional)
- **Consequences:** What changes in the repo, teaching, or tooling.
```

## Quality bar

- One decision per entry when possible.
- Link related files (e.g. `plan/session-master.qmd`, `AGENTS.md`) if the decision changes them.
- If `AGENTS.md` standing rules must change, update that file in the same change set.
