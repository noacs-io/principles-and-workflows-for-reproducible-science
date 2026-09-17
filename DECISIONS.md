# Decision log

Append-only log of design, tooling, and process decisions for the **entire** *Principles and workflows for reproducible science* project (not only the session plan).

**Scope:** curriculum design, pedagogy, infrastructure, AI use, repository conventions, publishing, and related project choices.

**How to use:** add a new dated entry at the top (newest first). Do not rewrite history; supersede earlier decisions with a new entry that references the old ID.

---

## 2026-09-17 — D020: TBL items are one-best-answer, authored as Markdown in `tbl/`

- **Status:** Accepted
- **Context:** Readiness-test items had no agreed format, and the delivery platform for the first run is still open (D004; issue #14). Without a house style, items drift towards true/false trivia, which punishes students who read carefully and gives the tRAT nothing to argue about.
- **Decision:**
  1. Write all iRAT/tRAT items as **one-best-answer** questions following the NBME *Item-Writing Guide* conventions: a short vignette stem, a closed lead-in that passes the cover-the-options test, four homogeneous options, no vague or cueing wording (*may*, *usually*, *is associated with*), no negative lead-ins, and no *all of the above*.
  2. Keep the **Markdown in [`tbl/`](tbl/) canonical**, including the answer, rationale, and a facilitator note. Generate platform files (InteDashboard or Canvas CSV) at load time; do not keep a second copy of any item in the repo.
  3. Record on every item the **principle** it tests, the **reading anchor**, and the **session outcome** — an item that tests a step without a principle is not finished (D018).
  4. No item may make Git the only correct answer (D002 / D014); items must be answerable on the documentation track.
  5. The tRAT uses the **same** items as the iRAT; no separate team item bank.
- **Alternatives considered:** Authoring directly in CSV (unreadable in review, and no place for rationale); authoring in the chosen platform (locks content to a tool before the tool is chosen).
- **Consequences:** [`tbl/README.md`](tbl/README.md) holds the item-writing rules and the export column mapping; `draft-session-materials` gains the one-best-answer bar; item banks for both days are drafted in `tbl/`.

---

## 2026-09-17 — D019: Good Enough Practices is read in two parts, one per day

- **Status:** Accepted
- **Context:** [`plan/session-brief.qmd`](plan/session-brief.qmd) assigns "a Good Enough Practices excerpt (whole or parts)" to both self-study mornings without saying which parts. Assigning the whole paper twice wastes the second morning, and an unsplit reading makes it impossible to write a readiness test that only tests what students were asked to read.
- **Decision:** Split the reading at two places and assign one part per day.
  1. **Part A, before Day 1 — transparency and provenance:** Introduction; **Data Management recommendations 1–6**; **Project Organization** (all); **Collaboration recommendation 1** (the README); the Carpentries-only data management plan block.
  2. **Part B, before Day 2 — openness with boundaries and accountability:** **Keeping Track of Changes** (all, including manual versioning); **Data Management recommendation 7** (DOI-issuing repositories and metadata); **Collaboration recommendations 2–5** plus the sensitive-data block.
  3. **Software** and **Manuscripts** stay optional and signposted — out of scope per the brief.
  4. Keep **Keeping Track of Changes** whole on Day 2: splitting manual versioning from version control would present the dual track (D002 / D014) as a main path plus a fallback.
  5. State in the Canvas reading note where the reading's advice is **overridden at KI** — approved storage instead of commercial cloud and portable media, and consent, ethics, and GDPR before any licence choice.
- **Alternatives considered:** Whole reading before Day 1 with a re-read prompt for Day 2 (front-loads the reading and leaves Day 2 pre-work thin); splitting by episode without cutting Data Management or Collaboration (puts DOIs and licensing on Day 1, where students have nothing to share yet, and leaves Day 1 without the README recommendation it needs).
- **Consequences:** Section numbers follow Wilson et al. (2017); the Carpentries adaptation is the student-facing link. The split is written into [`plan/session-plan.qmd`](plan/session-plan.qmd) (pre-reading split section, both day blueprints, and the TBL pre-work row) and is the scope boundary for the Day 1 and Day 2 item banks in [`tbl/`](tbl/). The Canvas module (issue #10) lists the two parts as separate required readings.

---

## 2026-09-15 — D018: Keep the “principles and workflows” framing explicit

- **Status:** Accepted (refines the outcome consolidation in D017)
- **Context:** Tightening scope around the project folder and the DMP risked reducing the sessions to practicalities — building folders and filling in a template — and losing the reproducible-science principles the sessions are named for.
- **Decision:**
  1. State in [`plan/session-brief.qmd`](plan/session-brief.qmd) that the folder and the DMP are the **vehicle, not the subject**, and title the brief with the session name.
  2. Add an **explain-the-principles** learning outcome (transparency, provenance, raw vs derived, FAIR vs open) as outcome 1; the locked set is now **five** outcomes, not the four in D017.
  3. Give each day a named **principle in focus** — Day 1 transparency and provenance; Day 2 openness with boundaries and accountability — and require application exercises to state the principle behind each choice.
  4. Standing rule (also in `AGENTS.md`): **a material that teaches a step without naming the principle behind it is not finished.**
  5. Keep principles **inside** the readiness tests and application exercises. A separate metascience/replication-crisis lecture block stays out of scope — there is no time for it in two TBL afternoons.
- **Consequences:** Brief retitled and rewritten (still two pages; margins tightened to hold it); a principles ILO added to `plan/session-plan.qmd` and its positioning statement; `AGENTS.md` gains the name-the-principle rule; `draft-session-materials` checks for it.

---

## 2026-09-15 — D017: Two-page session brief is the scope lock for content

- **Status:** Accepted
- **Context:** The plan had grown more ambitious than two TBL afternoons (plus two self-study mornings) can carry, and the team needs one short document to agree on before building materials. D012–D015 lock the **logistics** (venues, Zoom, compulsory components, dual track, DMP skills); this entry locks the **teaching content** — purpose, outcomes, and what happens each day.
- **Decision:**
  1. Add [`plan/session-brief.qmd`](plan/session-brief.qmd) — **maximum two pages** — stating purpose, learning outcomes, what happens each day, and an explicit out-of-scope list. Keep it renderable to a two-page PDF; check with `quarto render plan/session-brief.qmd --to pdf` before merging changes to it.
  2. Consolidate the six proposed session ILOs in `plan/session-plan.qmd` into **four** outcomes in the brief (structure/documentation; Git *or* dated decision log; DMP drafting; sharing boundaries and responsible AI use). No commitment is dropped — D002, D003, and D010 are all preserved inside the four.
  3. The brief is authoritative on scope; `plan/session-plan.qmd` remains the working detail behind it. When they disagree, correct the plan.
  4. Work not listed as in scope needs team agreement before it starts.
- **Alternatives considered:** Trimming the long plan in place (leaves no short document to agree on); a slide-based scope summary (harder to diff and review in-repo).
- **Consequences:** `README.md` and `AGENTS.md` point at the brief; the plan carries a callout deferring to it. New materials should cite an outcome in the brief. The brief carries only the delivery constraint that shapes activity design (Day 1 hybrid, Day 2 Zoom-only, per D012); room bookings, the Zoom link, and attendance rules stay in D012–D013 and the plan.

---

## 2026-09-15 — D016: Canvas publish drafts live under `canvas/`

- **Status:** Accepted
- **Context:** Issue #7 needs the SRC DMP template and Session → DMP map ready for Canvas. The team created a `canvas/` tree (`pages/`, `files/`) for content that will later be published in the course room. The SRC template publish copy was already added under `canvas/files/` on main.
- **Decision:**
  1. Store **Canvas-ready drafts** under `canvas/pages/` (Pages) and `canvas/files/` (Files to upload).
  2. Keep the **canonical Session → SRC DMP map** in `plan/session-plan.qmd` (D011). The Canvas page is a **publish export** for students, not a second map to maintain independently — update the plan first, then refresh the Canvas page when the map changes.
  3. Keep the SRC template at the **repo root** as the project reference copy; keep the publish copy under `canvas/files/` for upload. Keep the two in sync when the template changes.
- **Consequences:** Issue #7 drafts land in `canvas/`; facilitators follow `canvas/README.md` to publish. Root README and `AGENTS.md` point at the folder.

---

## 2026-09-15 — D015: Sessions equip students for relevant SRC DMP sections

- **Status:** Accepted (confirms intent of D010)
- **Context:** Issue #6 asked for “agreement that these sessions feed the SRC DMP assignment.” Course-director clarification: students will acquire the **practical knowledge and skills** to fill the **relevant** parts of the DMP by the end of the two days (not a separate signed agreement).
- **Decision:** Keep the DMP-workshop framing (D010). Success = students can draft answers under the relevant SRC template questions from their project package; the host course still owns formal DMP assessment.
- **Consequences:** Student-facing copy emphasises skills-to-draft, not “this replaces the assignment.”

---

## 2026-09-15 — D014: Dual track confirmed; decision log is human- and machine-readable SoT

- **Status:** Accepted (confirms D002; removes provisional course-director hold)
- **Context:** Issue #6 asked the course director to confirm the Git vs decision-log dual track. Confirmed. Clarification: the decision log is meant as a readable source of truth so human *and* machine collaborators can get up to speed on project decisions.
- **Decision:**
  1. Keep **Git/GitHub** *or* **dated decision-log documentation** as equal paths to the 5-year endpoint.
  2. Teach the decision log (whether or not Git is used) as a **human- and machine-readable** record of decisions for collaborators (people or tools/agents).
- **Consequences:** Rubrics and materials must not make Git a hidden fail criterion; templates and AI prompts should produce clear, structured decision entries. Standing rule in `AGENTS.md` updated accordingly.

---

## 2026-09-15 — D013: No compulsory components for these two days

- **Status:** Accepted
- **Context:** Issue #6 asked whether any parts of these sessions are compulsory or have compensation rules.
- **Decision:** There are **no compulsory components** for these two days (no mandatory attendance or session-specific compensation rules beyond the host course’s own assessment).
- **Consequences:** Plan and Canvas copy should not invent session-level attendance gates; students still benefit from joining afternoons for TBL, and the course DMP assignment remains the host-course assessment.

---

## 2026-09-15 — D012: Afternoon venues and Zoom (hybrid Day 1, remote Day 2)

- **Status:** Accepted
- **Context:** Issue #6 scope lock needed rooms and hybrid constraints from the course director.
- **Decision:**
  1. **Day 1 afternoon (13:00–16:00):** room **Future** *and* Zoom (hybrid).
  2. **Day 2 afternoon (13:00–16:00):** **Zoom only** (no on-site room).
  3. Shared Zoom link for both afternoons: <https://ki-se.zoom.us/j/68142022512>.
- **Consequences:** Facilitation and TBL delivery must work for hybrid (Day 1) and fully remote (Day 2). Day-0 checklist and Canvas schedule use these venues. Exact calendar dates within the course window remain as already planned (Tue–Wed blocks).

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
