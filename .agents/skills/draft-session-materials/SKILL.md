---
name: draft-session-materials
description: Draft teaching materials for the reproducible-science sessions (run sheets, TBL items, templates, Canvas copy). Use when creating or revising day plans, iRAT/tRAT questions, application exercises, README/DECISIONS templates, or student-facing instructions aligned to K9F5740.
---

# Draft session materials

## Before writing

1. Read [`plan/session-plan.qmd`](../../../plan/session-plan.qmd) — especially ILOs, must-ship backlog, and dual-track (Git vs decision log).
2. Skim recent entries in [`DECISIONS.md`](../../../DECISIONS.md).
3. Confirm the draft supports the **5-year folder + documentation** endpoint and, where relevant, can be pasted into the SRC DMP template ([`assignment/session-to-dmp-map.md`](../../../assignment/session-to-dmp-map.md)).

## Principles

- Constructive alignment: every activity maps to a session ILO and a relevant K9F5740 outcome.
- Active learning / TBL afternoons; mornings = accountable self-study.
- Dual track: Git *or* dated documentation — both valid.
- AI: teach responsible use (prefer KI Copilot); require disclosure; no sensitive data in prompts/examples.
- Keep scope small (four people, under two weeks).

## Output patterns

| Material | Suggested location |
|----------|-------------------|
| Day run sheets | `sessions/day-1/`, `sessions/day-2/` (create if missing) |
| TBL items (tool-agnostic) | `tbl/` as Markdown or CSV |
| Templates (README, DECISIONS, data dictionary) | `templates/` |
| Synthetic good/poor examples | `examples/good-project/`, `examples/poor-project/` |

## TBL item quality bar

- iRAT/tRAT: clear stem, one best answer, short rationale for facilitators.
- Application exercises: significant problem, same for all teams, specific choice, simultaneous report.
- Write content so InteDashboard **or** Canvas can use it without rewrite.

## Done check

- [ ] Maps to an ILO / backlog item  
- [ ] No real personal data  
- [ ] Dual-track aware if relevant  
- [ ] If it changes a team convention, prompt for a `DECISIONS.md` entry  
