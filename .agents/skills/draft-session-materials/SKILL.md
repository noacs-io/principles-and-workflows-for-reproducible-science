---
name: draft-session-materials
description: Draft teaching materials for the reproducible-science sessions (run sheets, TBL items, templates, Canvas copy). Use when creating or revising day plans, iRAT/tRAT questions, application exercises, README/DECISIONS templates, or student-facing instructions aligned to K9F5740.
---

# Draft session materials

## Before writing

1. Read [`plan/session-brief.qmd`](../../../plan/session-brief.qmd) first — it locks purpose, the five outcomes, each day's principle in focus, and what is out of scope.
2. Then read [`plan/session-plan.qmd`](../../../plan/session-plan.qmd) for detail — must-ship backlog, ILO mapping, and dual-track (Git vs decision log).
3. Skim recent entries in [`DECISIONS.md`](../../../DECISIONS.md).
4. Confirm the draft supports the **5-year folder + documentation** endpoint and, where relevant, can be pasted into the SRC DMP template (see the Session → SRC DMP map in [`plan/session-plan.qmd`](../../../plan/session-plan.qmd)).

## Principles

- **Name the principle:** the folder and the DMP are the vehicle, not the subject. Every activity states which principle of reproducible research it serves (transparency, provenance, raw vs derived, FAIR vs open, accountability).
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

- [ ] Names the principle it teaches (not only the steps)  
- [ ] Maps to an ILO / backlog item  
- [ ] No real personal data  
- [ ] Dual-track aware if relevant  
- [ ] If it changes a team convention, prompt for a `DECISIONS.md` entry  
