# CLAUDE.md

@AGENTS.md

## Claude-specific notes

- Prefer reading [`AGENTS.md`](AGENTS.md) as the project source of truth; keep this file thin.
- Project skills: `.agents/skills/*/SKILL.md` (Agent Skills format). If your environment also looks under `.claude/skills/`, treat `.agents/skills/` as canonical — do not maintain a divergent copy.
- When you make a design or tooling choice that others should follow, append an entry to [`DECISIONS.md`](DECISIONS.md).
- For multi-step teaching-material tasks, use the project skills (`draft-session-materials`, `log-decision`, `review-against-plan`, `plain-prose`) when relevant.
