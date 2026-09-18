---
name: draft-session-materials
description: Draft teaching materials for the reproducible-science sessions (run sheets, TBL items, templates, Canvas copy). Use when creating or revising day plans, iRAT/tRAT questions, application exercises, README/DECISIONS templates, or student-facing instructions aligned to K9F5740.
---

# Draft session materials

## Before writing

1. Read [`plan/session-brief.qmd`](../../../plan/session-brief.qmd) first — it locks purpose, the five outcomes, the Turing Way definition + caveats, and what is out of scope.
2. Then read [`plan/session-plan.qmd`](../../../plan/session-plan.qmd) for detail — must-ship backlog, ILO mapping, and dual-track (Git vs decision log).
3. Skim recent entries in [`DECISIONS.md`](../../../DECISIONS.md) (D025 for definition-then-workflows).
4. Confirm the draft supports the **5-year folder + documentation** endpoint and, where relevant, can be pasted into the SRC DMP template (see the Session → SRC DMP map in [`plan/session-plan.qmd`](../../../plan/session-plan.qmd)).

## Framing (D025)

- **Definition then workflows:** activities link to the Turing Way definition (or qualitative auditability) and to KI’s documentation/openness aims — not to a homemade principles list.
- Constructive alignment: every activity maps to a session ILO and a relevant K9F5740 outcome.
- Active learning / TBL afternoons; mornings = accountable self-study.
- Dual track: Git *or* dated documentation — both valid.
- AI: teach responsible use (prefer KI Copilot); require disclosure; no sensitive data in prompts/examples.
- Keep scope small (four people, under two weeks).

## Output patterns

| Material | Suggested location |
|----------|-------------------|
| Day run sheets | `sessions/day-1/`, `sessions/day-2/` (create if missing) |
| TBL items (tool-agnostic) | `tbl/` as Markdown (canonical; export CSV at load time — D020) |
| Templates (README, DECISIONS, data dictionary) | `templates/` |
| Synthetic good/poor examples | `examples/good-project/`, `examples/poor-project/` |
| Canvas publish drafts | `canvas/pages/` (Pages), `canvas/files/` (Files); see `canvas/README.md` |

## TBL item quality bar

- iRAT/tRAT: **one-best-answer** items per D020 — vignette stem, closed lead-in that passes the cover-the-options test, four homogeneous options, no vague or cueing wording, no negative lead-ins. Conventions and format: [`tbl/README.md`](../../../tbl/README.md).
- Every item records what it tests (definition, KI aim, or workflow practice), the reading anchor, and the outcome; items must be answerable from the pre-reading assigned for that day.
- Short rationale for facilitators, plus a note on where teams are expected to split.
- Application exercises: significant problem, same for all teams, specific choice, simultaneous report.
- Write content so InteDashboard **or** Canvas can use it without rewrite.

## Done check

- [ ] Links the step to the Turing Way definition, qualitative auditability, or a KI documentation aim  

- [ ] Maps to an ILO / backlog item  
- [ ] No real personal data  
- [ ] Dual-track aware if relevant
- [ ] Prose passes the tells in `plain-prose`
- [ ] If it changes a team convention, prompt for a `DECISIONS.md` entry
