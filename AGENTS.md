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
| [`plan/session-brief.qmd`](plan/session-brief.qmd) | **Scope lock** (max two pages): purpose, learning outcomes, day-by-day summary, out-of-scope list |
| [`plan/session-plan.qmd`](plan/session-plan.qmd) | Working session plan (outcomes, DMP assignment map, pedagogy, tools, backlog) |
| [`DECISIONS.md`](DECISIONS.md) | Append-only project-wide decision log (newest first) |
| [`Swedish_Research_Council_Template__v5.docx`](Swedish_Research_Council_Template__v5.docx) | Course DMP assignment template (align session outputs here) |
| This file (`AGENTS.md`) | Standing rules for AI agents across tools |
| [`.agents/skills/`](.agents/skills/) | Reusable multi-step workflows (Agent Skills format) |

Do **not** duplicate long policy text across tool-specific files. Tool bridges (`CLAUDE.md`, `.cursor/rules`, Copilot instructions) should point here.

## How we work

1. **Small PRs / commits** with clear messages; stay on topic.
2. **Log material decisions** in `DECISIONS.md` (new entry at top, `D00N` IDs). Do not rewrite old entries; supersede with a new one.
3. **Protect the endpoint:** folder structure + documentation (+ responsible AI use). Stay inside the scope lock in [`plan/session-brief.qmd`](plan/session-brief.qmd); do not expand into a full programming or containers course.
4. **Reuse before inventing:** KI open-science courses, Good Enough Practices, Turing Way — cite and link; avoid duplicating K8F6106-depth Git content.
5. **Dual track:** Git/GitHub *or* dated decision-log documentation — both must satisfy the 5-year test.
6. **AI in the materials:** sessions teach KI-preferable tools (e.g. Microsoft Copilot); require disclosure and human verification; never put personal/patient/sensitive research data in prompts or examples.
7. **TBL content is tool-agnostic:** write iRAT/tRAT/AE items in Markdown/CSV in-repo so InteDashboard *or* Canvas (+ Padlet) *or* later open-source TBL can load them.
8. **First-run TBL delivery:** prefer low friction (InteDashboard if available, else Canvas quizzes + simultaneous report). Do not block on new hosting unless already running.

## Repo conventions

- Prefer **Quarto (`.qmd`)** or Markdown for teaching docs; keep YAML frontmatter minimal and consistent.
- Prefer **project package** (whole hand-in) and **materials** (pieces); avoid “artefact(s)”.
- Synthetic / fictional data only in examples — no real personal data.
- Keep the backlog aligned with **Must ship / Explicitly defer** in the session plan; ask before adding large new workstreams.
- English for course-facing materials (course language).

## When editing the plan or pedagogy

- Align activities to **K9F5740** ILOs that are marked core/supporting in the session plan.
- Enact KI pedagogical policy: student-centred active learning, psychological safety, constructive alignment.
- Afternoons are **Team-Based Learning** (readiness tests + application exercises).

## Skills

Project skills live under `.agents/skills/*/SKILL.md` (portable [Agent Skills](https://agentskills.io) layout). Use them for repeatable workflows (draft materials, log a decision, review against the plan). Cursor, Claude, and other compatible tools can discover these; see skill `description` fields for when to apply.

## Tool-specific bridges (do not fork content)

| Tool | Bridge file |
|------|-------------|
| Claude Code / Cowork | [`CLAUDE.md`](CLAUDE.md) imports this file |
| Cursor | [`.cursor/rules/`](.cursor/rules/) complements this file |
| GitHub Copilot | [`.github/copilot-instructions.md`](.github/copilot-instructions.md) points here |

If you change standing project rules, edit **`AGENTS.md`** (and log in `DECISIONS.md` when the change is a real decision).
