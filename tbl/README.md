# TBL item bank

Tool-agnostic readiness-test items for the two days of *Principles and workflows for reproducible science* (K9F5740). Content lives here as Markdown so it can be loaded into InteDashboard, Canvas quizzes, or a paper/IF-AT run without being rewritten (see TBL notes in [`plan/session-master.qmd`](../plan/session-master.qmd) and D004).

| File | Content |
|------|---------|
| [`day-1-irat.md`](day-1-irat.md) | Day 1 readiness test — the definition and the documentation it needs; based on the Turing Way definitions, KI Riktlinjer §§6–7 and the documentation guidelines, FAIR at KI, and GEP Introduction, Data Management 1–6, Project Organization, Collaboration 1 |
| [`day-2-irat.md`](day-2-irat.md) | Day 2 readiness test — readable history, storage, access, metadata, data quality, and responsibility; based on GEP Keeping Track of Changes, Data Management 7, Collaboration 2–5, the KI sharing and open-access pages, §6.1 naming, and the SRC sections drafted in the afternoon |

The section split across days is defined in [`plan/session-master.qmd`](../plan/session-master.qmd) (Day 1 / Day 2 morning reading lists). Items must be answerable from the pre-reading assigned for that day — an item that tests something students were never asked to read is a trust problem, not a difficulty problem.

## How these items are used

- **iRAT:** students answer individually, closed book, at the start of the afternoon. Ten items, roughly 10–15 minutes.
- **tRAT:** teams answer the **same** items and must reach one answer per team. No new items are written for the tRAT.
- **Clarification:** the facilitator teaches only the items teams got wrong. The facilitator notes below flag which items are expected to split a team — those are the teaching moments, not failures.
- **Reserve items:** each file ends with items that are written and conventions-compliant but outside the ten (D050). Swap one in if a live item is retired, or use them for a make-up test. Keep the live set at ten.

## Item format (one best answer)

Items follow the one-best-answer conventions in the NBME *Item-Writing Guide*:

- A stem (short vignette) and a **closed, focused lead-in**. The lead-in passes the **cover-the-options test**: a prepared student can answer it with the options hidden.
- Four options, one best answer, homogeneous — all options belong to the same category (all practices, all file names, all directories, all principles) so they can be judged true or false on a single dimension.
- No vague or cueing language: avoid *is associated with*, *is useful for*, *is important*, *may*, *could*, *usually*, *frequently*.
- No negative lead-ins (*which is NOT…*, *all of the following EXCEPT*), no *all of the above* / *none of the above*, no option that is longer or more hedged than the rest.
- Distractors are wholly or partly wrong, and each one is wrong for a reason a real student would recognise as their own mistake.
- Items are **conceptual**, not trivia: they test whether the student can apply the idea, not whether they remember a section number. This also keeps the readiness tests psychologically safe for students who do not use Git — no item may make Git the correct answer (D032).

Each item records **what it tests**, the **reading anchor**, and the **session outcome** it maps to (numbering follows the five outcomes in [`plan/session-master.qmd`](../plan/session-master.qmd)). The `Tests` line says whether the item is about the **definition** (Turing Way, and where it frays), a **KI aim** (documentation that can be traced, interpreted, and reproduced; openness with boundaries), or a **workflow practice** that serves one of those. Do not label items with a homemade principles vocabulary — D025 replaced that framing, and D050 replaced the old `Principle` field. An item that drills a habit without connecting it to the definition, a KI aim, or the 5-year test is not finished.

## Structure of each entry (keep it parseable)

```markdown
### D1-01 — Short title

- **Tests:** …
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

Both banks now cover the themes the teacher master names for each afternoon: the definition versus KI's documentation aims (including the method-agnostic documentation bar), raw versus derived, and FAIR versus open on Day 1; readable history, storage, access, metadata, data quality, and responsibility on Day 2 (aligned to the afternoon SRC paste targets after D054 / D055).

Open before the run:

- **AI disclosure** sits in reserve as D2-R3; re-check wording against whatever issue #15 ships if it returns to the live ten.
- Nothing yet tests the shared to-do list or communication strategies (Collaboration 2–3); both are read on Day 2 and neither is in the ten.
- The answer key is balanced by hand. Day 1 is A, D, B, A, C, C, B, B, C, B; Day 2 is C, B, A, B, A, D, B, C, D, B. Recheck it whenever an item is swapped.

Application exercises (4S) are a separate deliverable and are not in this folder yet — see the must-ship backlog in [`plan/session-master.qmd`](../plan/session-master.qmd).
