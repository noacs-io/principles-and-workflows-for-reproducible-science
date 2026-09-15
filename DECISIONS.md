# Decision log

Append-only log of design, tooling, and process decisions for the **entire** *Principles and workflows for reproducible science* project (not only the session plan).

**Scope:** curriculum design, pedagogy, infrastructure, AI use, repository conventions, publishing, and related project choices.

**How to use:** add a new dated entry at the top (newest first). Do not rewrite history; supersede earlier decisions with a new entry that references the old ID.

---

## 2026-09-15 — D013: Keep the “principles and workflows” framing explicit

- **Status:** Accepted (refines the outcome consolidation in D012)
- **Context:** Tightening scope around the project folder and the DMP risked reducing the sessions to practicalities — building folders and filling in a template — and losing the reproducible-science principles the sessions are named for.
- **Decision:**
  1. State in [`plan/session-brief.qmd`](plan/session-brief.qmd) that the folder and the DMP are the **vehicle, not the subject**, and title the brief with the session name.
  2. Add an **explain-the-principles** learning outcome (transparency, provenance, raw vs derived, FAIR vs open) as outcome 1; the locked set is now **five** outcomes, not the four in D012.
  3. Give each day a named **principle in focus** — Day 1 transparency and provenance; Day 2 openness with boundaries and accountability — and require application exercises to state the principle behind each choice.
  4. Standing rule (also in `AGENTS.md`): **a material that teaches a step without naming the principle behind it is not finished.**
  5. Keep principles **inside** the readiness tests and application exercises. A separate metascience/replication-crisis lecture block stays out of scope — there is no time for it in two TBL afternoons.
- **Consequences:** Brief retitled and rewritten (still two pages; margins tightened to hold it); a principles ILO added to `plan/session-plan.qmd` and its positioning statement; `AGENTS.md` gains the name-the-principle rule; `draft-session-materials` checks for it.

---

## 2026-09-15 — D012: Two-page session brief is the scope lock

- **Status:** Accepted
- **Context:** The plan had grown more ambitious than two TBL afternoons (plus two self-study mornings) can carry, and the team needs one short document to agree on before building materials.
- **Decision:**
  1. Add [`plan/session-brief.qmd`](plan/session-brief.qmd) — **maximum two pages** — stating purpose, learning outcomes, what happens each day, and an explicit out-of-scope list. Keep it renderable to a two-page PDF; check with `quarto render plan/session-brief.qmd --to pdf` before merging changes to it.
  2. Consolidate the six proposed session ILOs in `plan/session-plan.qmd` into **four** outcomes in the brief (structure/documentation; Git *or* dated decision log; DMP drafting; sharing boundaries and responsible AI use). No commitment is dropped — D002, D003, and D010 are all preserved inside the four.
  3. The brief is authoritative on scope; `plan/session-plan.qmd` remains the working detail behind it. When they disagree, correct the plan.
  4. Work not listed as in scope needs team agreement before it starts.
- **Alternatives considered:** Trimming the long plan in place (leaves no short document to agree on); a slide-based scope summary (harder to diff and review in-repo).
- **Consequences:** `README.md` and `AGENTS.md` point at the brief; the plan carries a callout deferring to it. New materials should cite an outcome in the brief.

---

## 2026-09-14 — D011: Keep Session → DMP map inside the plan (not a standalone file)

- **Status:** Accepted (supersedes file location in D010 point 4)
- **Context:** A separate `assignment/session-to-dmp-map.md` duplicated content already needed in the session plan and added another file to maintain.
- **Decision:** Keep the student-facing **Session → SRC DMP map** as a section inside `plan/session-plan.qmd`. Do not maintain a standalone map file. Canvas can reuse/export that section if a separate page is wanted later.
- **Consequences:** Removed `assignment/session-to-dmp-map.md`; README, AGENTS, and skill links point at the plan section.

---

## 2026-09-14 — D010: Sessions framed as DMP workshop for the course assignment

- **Status:** Accepted (handout refined same day to use verbatim SRC questions)
- **Context:** The course assignment is (1) a DMP using the Swedish Research Council template (`Swedish_Research_Council_Template__v5.docx`) and (2) a data collection protocol. The teaching team judged the DMP the better fit for these two days.
- **Decision:**
  1. Frame the sessions as a **hands-on DMP workshop** that produces a **project package** students transfer into the SRC template.
  2. Treat the **data collection protocol** as out of scope except light pointers (instrument locations, documentation supporting quality).
  3. End major activities with an explicit **“paste into your DMP”** step; Day 2 submission includes a **partial DMP** (at least data description, documentation/quality, storage).
  4. Keep a student-facing **Session → SRC DMP map** in the session plan (verbatim template questions). *(Standalone file later removed — see D011.)*
- **Consequences:** `plan/session-plan.qmd` aligned to the SRC questions; ILO added for drafting DMP answers; must-ship backlog includes template + map in Canvas.

---

## 2026-09-14 — D009: Prefer “project package” / “materials” over “artefact”

- **Status:** Accepted
- **Context:** “Artefact” is uncommon vocabulary for this teaching/research setting.
- **Decision:** In course-facing and planning text, use **project package** for the whole folder + documentation hand-in, and **materials** for the pieces inside it. Avoid “artefact(s)”.
- **Consequences:** Wording updated in `plan/session-plan.qmd` and related agent skill text.

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
