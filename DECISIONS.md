# Decision log

Append-only log of design, tooling, and process decisions for the **entire** *Principles and workflows for reproducible science* project (not only the session plan).

**Scope:** curriculum design, pedagogy, infrastructure, AI use, repository conventions, publishing, and related project choices.

**How to use:** add a new dated entry at the top (newest first). Do not rewrite history; supersede earlier decisions with a new entry that references the old ID.

---

## 2026-09-11 — D008: Shared agent rules and portable project skills

- **Status:** Accepted
- **Context:** Collaborators will use different AI tools (Cursor, Claude Cowork/Code, Copilot, etc.). Divergent per-tool rule files would drift.
- **Decision:**
  1. Use **`AGENTS.md`** as the single canonical standing brief for all agents.
  2. Add thin bridges only: `CLAUDE.md` (`@AGENTS.md`), `.cursor/rules/*.mdc`, `.github/copilot-instructions.md`.
  3. Store reusable workflows as **Agent Skills** under `.agents/skills/` (`draft-session-materials`, `log-decision`, `review-against-plan`).
- **Consequences:** Update `AGENTS.md` (not each bridge) for lasting rule changes; use skills for multi-step teaching workflows; log further conventions here when needed.

---

## 2026-09-11 — D007: Slim backlog for four people and under two weeks

- **Status:** Accepted
- **Context:** The session plan used eight work packages (WP0–WP8). The team is four people and needs a first offering in less than two weeks; that structure was too heavy.
- **Decision:** Replace WP0–WP8 with a short **Must ship / Explicitly defer / Day-0** backlog and a simple A–D person split. Prefer low-friction TBL delivery for the first run (InteDashboard or Canvas + Padlet); defer production open-source TBL hosting unless already available.
- **Consequences:** Plan updates emphasise runnable materials over platform build-out; nice-to-haves stay on the defer list.

---

## 2026-09-11 — D006: Decision log is project-wide at repo root

- **Status:** Accepted (supersedes path in D005)
- **Context:** The decision log was initially placed under `plan/` and read as plan-only; the team clarified it should cover the whole project.
- **Decision:** Keep a single canonical logfile at **`DECISIONS.md`** (repository root). Use it for all project decisions (sessions, tooling, repo layout, delivery, etc.).
- **Consequences:** References in `plan/session-plan.qmd` and `README.md` point to `/DECISIONS.md`. `plan/DECISIONS.md` is removed.

---

## 2026-09-10 — D005: Maintain an explicit decision log in the repo

- **Status:** Accepted (path superseded by D006)
- **Context:** Multiple pedagogical and tooling choices will be made while building the sessions; the team asked that decisions be recorded in-repo.
- **Decision:** Use an append-only decision logfile in the repo (newest first), linked from planning docs. *(Original path was `plan/DECISIONS.md`; see D006.)*
- **Consequences:** Future agents and collaborators should record material choices here rather than only in chat or PR comments.

---

## 2026-09-10 — D004: Plan for open-source TBL software (not InteDashboard-only)

- **Status:** Accepted (direction); final runtime stack still open
- **Context:** Afternoons are Team-Based Learning. KI provides InteDashboard integrated with Canvas, but the team indicated we will likely also need open-source TBL software (portability, open ethos, partner settings, reduced licence lock-in).
- **Decision:**
  1. Treat **open-source TBL capability as in-scope** for session infrastructure.
  2. Author RAT/AE content in a **tool-agnostic** format in this repo.
  3. Evaluate **LAMS** (GPL-2.0, full TBL wizard) as the primary open-source candidate; **gRATify** as a lightweight tRAT option; keep **InteDashboard** and a **Canvas-native fallback** in the comparison.
  4. Do **not** depend on OpenTBL until maintenance/hosting is verified (project appears stale).
- **Alternatives considered:** InteDashboard-only; paper IF-AT cards only; Moodle/Canvas quizzes without dedicated tRAT UX.
- **Consequences:** WP4 includes a pilot of an open-source stack and a GDPR/hosting check. Final pick must be logged as a later decision.

---

## 2026-09-10 — D003: Prefer KI-supported AI (Copilot-first) with mandatory disclosure

- **Status:** Accepted
- **Context:** Sessions must incorporate AI to reach the folder + documentation endpoint; KI provides guidance and Microsoft Copilot for staff.
- **Decision:** Teach with **Microsoft Copilot as the default demo tool**; allow other tools only with clear data-safety rules; require **AI-use disclosure** and human verification of outputs. No personal/patient/sensitive research data in prompts.
- **Consequences:** AI policy, prompt library, and disclosure form are required deliverables (WP5).

---

## 2026-09-10 — D002: Dual track for version control (Git optional)

- **Status:** Accepted (provisional until course-director confirm)
- **Context:** Audience is global-health doctoral students with heterogeneous methods and digital skills; endpoint is folder structure + documentation, not programming fluency.
- **Decision:** Offer a **Git/GitHub track** and a **documentation track** (dated decision log + naming conventions) that both satisfy the 5-year interpretability endpoint.
- **Consequences:** Materials and assessment rubric must work for both tracks; avoid making Git a hidden fail criterion.

---

## 2026-09-10 — D001: Session plan lives as Quarto in this repo

- **Status:** Accepted
- **Context:** Need a durable plan aligning sessions to K9F5740 outcomes, KI pedagogy/tools, AI use, resource review, and a build backlog.
- **Decision:** Author the plan as `plan/session-plan.qmd` (Quarto), with HTML/PDF formats declared in the YAML header.
- **Consequences:** Plan updates happen in-repo via PR; render with Quarto when publishing snapshots for stakeholders.

---
