Includes documents and resources for sessions on principles and workflows for reproducible science.

## Project documents

- [`plan/session-brief.qmd`](plan/session-brief.qmd) — **two-page scope lock**: purpose, learning outcomes, what happens each day, and what is out of scope
- [`plan/session-plan.qmd`](plan/session-plan.qmd) — working plan (course-outcome alignment, DMP assignment map, pedagogy, AI, tools, backlog)
- [`DECISIONS.md`](DECISIONS.md) — project-wide append-only decision log (curriculum, tooling, process)
- [`Swedish_Research_Council_Template__v5.docx`](Swedish_Research_Council_Template__v5.docx) — course DMP assignment template (VR / SRC)
- [`canvas/`](canvas/) — drafts for Canvas Pages (`pages/`) and Files (`files/`); see [`canvas/README.md`](canvas/README.md)
- [`tbl/`](tbl/) — tool-agnostic readiness-test item banks for the TBL afternoons; see [`tbl/README.md`](tbl/README.md)

## AI collaboration (Cursor, Claude, Copilot, …)

Standing instructions for coding agents live in one shared file so the team can use different tools without forking policy:

| File | Purpose |
|------|---------|
| [`AGENTS.md`](AGENTS.md) | **Canonical** shared rules for all agents |
| [`CLAUDE.md`](CLAUDE.md) | Thin Claude Code / Cowork bridge (`@AGENTS.md`) |
| [`.cursor/rules/`](.cursor/rules/) | Cursor project rules (point at `AGENTS.md`) |
| [`.github/copilot-instructions.md`](.github/copilot-instructions.md) | Copilot pointer to `AGENTS.md` |
| [`.agents/skills/`](.agents/skills/) | Portable project skills (draft materials, log decisions, review) |

Edit **`AGENTS.md`** when standing rules change; keep tool-specific files thin. Log material choices in `DECISIONS.md`.

This was an early short draft of what the sessions would be about:

These sessions introduces practical tools and workflows for conducting transparent and reproducible research. The course focuses on open and widely used platforms such as version control with Git, collaborative development through GitHub, and reproducible data management and analysis in R and RStudio. Participants will learn how to structure projects, track analytical decisions, document data processing, and share code and outputs in ways that allow others to understand and verify the work. The course emphasise everyday research practice rather than advanced programming.
 
Potential ILOs:
Use version control to track, organise, and document changes in a research project.
Structure a reproducible research workflow, including scripted data cleaning, analysis, and output generation.
Collaborate on code and research materials through an online repository following principles of open and reproducible science.
Assess the ethical implications of using open research practices and reproducible research workflows.

Currently these sessions will be part of the following course: https://doctoralcourses.application.ki.se/fubasextern/info?kurs=K9F5740

The sessions will take place over two days, Tuesday and Wednesday. Each day, there will be three hours of self-study in the morning (9-12) and three hours of TBL in the afternoons (13-16). **Day 1 afternoon:** room Future + Zoom. **Day 2 afternoon:** Zoom only. Shared link: https://ki-se.zoom.us/j/68142022512. There are no compulsory components for these two days.

By the end of these two days, students should be able to create a folder structure and know how to document their work, regardless of study methodology, in a way so that they or someone else can come back to their projects within 5 years and understand what was done and the decisions made.
