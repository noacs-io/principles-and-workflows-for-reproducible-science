# TBL item bank

Tool-agnostic readiness-test items for the two days of *Principles and workflows for reproducible science* (K9F5740). Content lives here as Markdown so it can be loaded into InteDashboard, Canvas quizzes, or a paper/IF-AT run without being rewritten (see the TBL options table in [`plan/session-plan.qmd`](../plan/session-plan.qmd) and D004).

| File | Content |
|------|---------|
| [`day-1-irat.md`](day-1-irat.md) | Day 1 readiness test — transparency and provenance; based on GEP Introduction, Data Management 1–6, Project Organization, Collaboration 1 |
| [`day-2-irat.md`](day-2-irat.md) | Day 2 readiness test — openness with boundaries and accountability; based on GEP Keeping Track of Changes, Data Management 7, Collaboration 2–5 |

The section split across days is defined in [`plan/session-plan.qmd`](../plan/session-plan.qmd) (section *Pre-reading split: Good Enough Practices across the two days*). Items must be answerable from the pre-reading assigned for that day — an item that tests something students were never asked to read is a trust problem, not a difficulty problem.

## How these items are used

- **iRAT:** students answer individually, closed book, at the start of the afternoon. Ten items, roughly 10–15 minutes.
- **tRAT:** teams answer the **same** items and must reach one answer per team. No new items are written for the tRAT.
- **Clarification:** the facilitator teaches only the items teams got wrong. The facilitator notes below flag which items are expected to split a team — those are the teaching moments, not failures.

## Item format (one best answer)

Items follow the one-best-answer conventions in the NBME *Item-Writing Guide*:

- A stem (short vignette) and a **closed, focused lead-in**. The lead-in passes the **cover-the-options test**: a prepared student can answer it with the options hidden.
- Four options, one best answer, homogeneous — all options belong to the same category (all practices, all file names, all directories, all principles) so they can be judged true or false on a single dimension.
- No vague or cueing language: avoid *is associated with*, *is useful for*, *is important*, *may*, *could*, *usually*, *frequently*.
- No negative lead-ins (*which is NOT…*, *all of the following EXCEPT*), no *all of the above* / *none of the above*, no option that is longer or more hedged than the rest.
- Distractors are wholly or partly wrong, and each one is wrong for a reason a real student would recognise as their own mistake.
- Items are **conceptual**, not trivia: they test whether the student can apply the principle, not whether they remember a section number. This also keeps the readiness tests psychologically safe for students new to Git (see D002 / D014 — no item may make Git the only correct track).

Each item records the **principle** it tests, the **reading anchor**, and the **session outcome** it maps to (numbering follows the five outcomes in [`plan/session-brief.qmd`](../plan/session-brief.qmd)). Per the standing rule in `AGENTS.md`, an item that tests a step without naming a principle is not finished.

## Structure of each entry (keep it parseable)

```markdown
### D1-01 — Short title

- **Principle:** …
- **Reading:** …
- **Outcome:** …

**Stem.** …

**Lead-in.** …

A. …
B. …
C. …
D. …

**Answer:** A

**Rationale.** …

**Facilitator note.** …
```

## Export to a delivery platform

Markdown here is canonical; platform files are generated at load time and not kept in the repo, so there is only ever one version of an item to correct. Once the delivery tool for this run is chosen (issue #14), map the fields as follows:

| Field here | InteDashboard / Canvas quiz import |
|------------|------------------------------------|
| Stem + lead-in (joined) | Question text |
| `A`–`D` | Answer choices, in the same order |
| `**Answer:**` | Correct choice |
| `**Rationale.**` | Answer feedback shown after the tRAT |
| `**Facilitator note.**` | Not imported — facilitator copy only |

## Status and gaps

Drafted from the Good Enough Practices reading only. Still to write, once the other pre-readings are fixed:

- KI guidelines for research documentation and data management (Day 1)
- FAIR, and FAIR versus open (Day 1)
- AI use, disclosure, and verification (Day 2)
- Where the KI ELN ends and the project folder begins (Day 1)

Application exercises (4S) are a separate deliverable and are not in this folder yet — see the must-ship backlog in [`plan/session-plan.qmd`](../plan/session-plan.qmd).
