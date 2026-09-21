# AGENTS.md

Shared instructions for **any** AI coding agent working in this repository (Cursor, Claude Code / Cowork, Codex, Copilot, etc.).

Humans: see [`README.md`](README.md). Decisions: see [`DECISIONS.md`](DECISIONS.md).

## What this project is

Teaching materials for **two days** of sessions on principles and workflows for reproducible science, embedded in the KI doctoral course **K9F5740** (*Quality Assurance in Research From a Global Perspective*).

**Student endpoint:** create a durable **project folder + documentation** so a future self (≈5 years) can understand what was done and why — methodology-agnostic. Session outputs should transfer into the course **DMP** (Swedish Research Council template); the data collection protocol is only lightly touched.

**Team:** four people; first offering built in **under two weeks**. Prefer runnable materials over platform polish.

## Source of truth

| File | Role |
|------|------|
| [`plan/session-master.qmd`](plan/session-master.qmd) | **Teacher master**: purpose, outcomes, day run cues, App 1 planted-violation detail, Session → DMP map, scope, must-ship (D052 / D053) |
| [`DECISIONS.md`](DECISIONS.md) | Append-only project-wide decision log (newest first) |
| [`Swedish_Research_Council_Template__v5.docx`](Swedish_Research_Council_Template__v5.docx) | Course DMP assignment template (align session outputs here) |
| [`canvas/`](canvas/) | Canvas-ready drafts (`pages/`, `files/`) — publish exports; master remains canonical for the Session → DMP map |
| This file (`AGENTS.md`) | Standing rules for AI agents across tools |
| [`.agents/skills/`](.agents/skills/) | Reusable multi-step workflows (Agent Skills format) |

Do **not** duplicate long policy text across tool-specific files. Tool bridges (`CLAUDE.md`, `.cursor/rules`, Copilot instructions) should point here.

## How we work

1. **Small PRs / commits** with clear messages; stay on topic.
2. **Log material decisions** in `DECISIONS.md` (new entry at top, `D00N` IDs). Do not rewrite old entries; supersede with a new one.
3. **Protect the endpoint:** folder structure + documentation (+ responsible AI use). Stay inside the scope lock in [`plan/session-master.qmd`](plan/session-master.qmd); do not expand into a full programming or containers course.
4. **Definition then workflows (D025):** start from the Turing Way definition of reproducible research, note caveats (including qualitative auditability), and point to KI’s documentation/openness aims. Every material should say how the step supports that definition (or auditability) and the 5-year test — a tip with no link to the definition is not finished.
5. **Reuse before inventing:** KI open-science courses, Good Enough Practices, Turing Way — cite and link; avoid duplicating K8F6106-depth Git content.
6. **Versioning (D032 / D034 / D035):** teach a readable history of files and decisions. **Prefer one shared master in Office Online** on a KI Teams/SharePoint project site (GEP Single Master Online), with regular downloads into the project folder named per KI §6.1, plus a decision log for *why*. Google Docs or personal OneDrive are fine for shared **text** if the group prefers them. Dated copies + changelog remain OK when not co-writing online. Git allowed if already used; do not teach Git. Do not use “dual track” framing.
7. **AI in the materials:** sessions teach KI-preferable tools (e.g. Microsoft Copilot); require disclosure and human verification; never put personal/patient/sensitive research data in prompts or examples.
8. **TBL content is tool-agnostic:** write iRAT/tRAT/AE items in Markdown/CSV in-repo so InteDashboard *or* Canvas (+ Padlet) *or* later open-source TBL can load them.
9. **First-run TBL delivery:** prefer low friction for readiness tests (InteDashboard if available, else Canvas quizzes). Every application ends with **2–3 team findings on a shared board + whole-group discussion** (D049); within-team peer critique comes before that share-out when packages differ. The **full** 5-year rubric is a discussion guide in Day 1 App 1 and again at the end of Day 2 (no pass/fail; D030 / D041 / D046 / D048) — not classic simultaneous report. Do not block on new hosting unless already running.

## Repo conventions

- Prefer **Quarto (`.qmd`)** or Markdown for teaching docs; keep YAML frontmatter minimal and consistent.
- Prefer **project package** (whole hand-in) and **materials** (pieces); avoid “artefact(s)”.
- Synthetic / fictional data only in examples — no real personal data.
- Keep the backlog aligned with **Must ship / Explicitly defer** in the teacher master; ask before adding large new workstreams.
- English for course-facing materials (course language).
- **Plain prose:** avoid the AI writing tells in [`.agents/skills/plain-prose/SKILL.md`](.agents/skills/plain-prose/SKILL.md) (D024).

## When editing the teacher master or pedagogy

- Align activities to **K9F5740** ILOs that are marked core/supporting in the teacher master.
- Enact KI pedagogical policy: student-centred active learning, psychological safety, constructive alignment.
- Afternoons are **Team-Based Learning** (readiness tests + application exercises).

## Skills

Project skills live under `.agents/skills/*/SKILL.md` (portable [Agent Skills](https://agentskills.io) layout). Use them for repeatable workflows (draft materials, log a decision, review against the plan) and for **plain prose** when writing course-facing text. Cursor, Claude, and other compatible tools can discover these; see skill `description` fields for when to apply.

## Tool-specific bridges (do not fork content)

| Tool | Bridge file |
|------|-------------|
| Claude Code / Cowork | [`CLAUDE.md`](CLAUDE.md) imports this file |
| Cursor | [`.cursor/rules/`](.cursor/rules/) complements this file |
| GitHub Copilot | [`.github/copilot-instructions.md`](.github/copilot-instructions.md) points here |

If you change standing project rules, edit **`AGENTS.md`** (and log in `DECISIONS.md` when the change is a real decision).
