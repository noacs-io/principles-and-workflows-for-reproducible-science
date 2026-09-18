# Decision log

Append-only log of design, tooling, and process decisions for the **entire** *Principles and workflows for reproducible science* project (not only the session plan).

**Scope:** curriculum design, pedagogy, infrastructure, AI use, repository conventions, publishing, and related project choices.

**How to use:** add a new dated entry at the top (newest first). Do not rewrite history; supersede earlier decisions with a new entry that references the old ID.

---

## 2026-09-18 — D036: Day 2 afternoon has two application exercises

- **Status:** Accepted
- **Context:** Day 1 already runs two applications. Day 2 afternoon still had a single application block, while the brief also listed a separate AI task. Morning was doing AI drafting and DMP paste that belong in afternoon applications.
- **Decision:** Day 2 afternoon has **two** applications (D030 reporting still applies — board share-out / peer critique, not classic simultaneous report):
  1. **App 1 — Readable history and sharing:** for *your* project, choose how you will keep a readable history (prefer shared Office Online + §6.1-named downloads, or dated copies + log) and state sharing/access limits (“as open as possible…”). Each team posts short findings to a shared board; facilitator samples. Paste **storage** and **security** into the DMP.
  2. **App 2 — Docs, AI, remaining DMP, peer critique:** refine folder + README / decision log (manual or Copilot under Day 1 AI rules); paste **data quality** and **who is responsible**; inter-team peer critique against the 5-year rubric.
- Morning self-study is reading + prepare own package for the afternoon (no requirement to finish the AI/DMP paste before 13:00).
- **Alternatives considered:** Keeping one long afternoon application (harder to time-box; AI task floats); putting App 1 on a shared vignette only (weaker transfer to the real DMP).
- **Consequences:** Brief, Day 2 run sheets, plan TBL table/blueprint, and #15 prompt targets updated.

---

## 2026-09-18 — D035: Prefer Office Online; Google Docs / personal OneDrive OK for shared text

- **Status:** Accepted (revises the ban wording in D034 / D033)
- **Context:** D034 told students not to use Google Docs or personal OneDrive. For ordinary shared text (notes, README drafts, manuscripts without restricted research data), those tools are fine if a group prefers them — GEP already names Google Docs in Single Master Online.
- **Decision:** **Prefer** Office Online on KI Teams/SharePoint as the institutional default. **Allow** Google Docs or personal OneDrive when participants prefer them for **shared text**. Still: regular downloads into the project folder, §6.1 naming on exports, decision log for *why*. Restricted research **data** (personal/patient/sensitive) stays on KI-approved storage — that rule is separate and already in the storage/DMP map; do not re-litigate it in the collaborative-writing paragraph.
- **Alternatives considered:** Keeping a hard ban (over-restricts text collaboration); treating all tools as equal with no KI default (loses the Office Online nudge).
- **Consequences:** Canvas, Day 2 morning, plan tools/KI-correction rows, and `AGENTS.md` drop “do not use Google Docs / personal OneDrive” for text.

---

## 2026-09-18 — D034: Prefer shared Office Online docs; apply KI §6.1 naming

- **Status:** Accepted (supersedes the equal two-pattern framing in D033; still no “dual track”)
- **Context:** GEP’s manuscript advice is **Single Master Online** (one shared document with rich formatting and change tracking — e.g. Google Docs or MS OneDrive in the reading). KI provides **Microsoft 365 / Office Online**; Teams–SharePoint project sites are the place for shared files, not personal OneDrive. KI documentation guidelines §6.1 give a concrete naming recipe (prefix, informative title, version, YYMMDD, draft/final, author initials) and require recoverable earlier versions.
- **Decision:** For collaborative documents in these sessions, **prefer one shared master in Office Online** on a **KI Teams/SharePoint** (or other KI-approved) project site, with **regular downloads into the project folder** as backups. Teach students to apply the **§6.1 naming parts** to those exports (and to folder hierarchy). Use platform version history to recover earlier states. Keep a decision log for *why*. Dated copies + changelog remain acceptable when a group is not co-writing online. Do not recommend Google Docs or personal OneDrive for shared research retention. Git still allowed if already used, not taught.
- **Alternatives considered:** Leaving Office Online and dated copies as equal “pick one” options (underuses KI’s provided tool and GEP’s Single Master Online); requiring Google Docs to match GEP’s example wording (wrong storage for KI).
- **Consequences:** Brief, Day 2 cues, Canvas versioning note, `AGENTS.md`, and plan tools/GEP rows push Office Online + §6.1 naming as the default shared-document path.

---

## 2026-09-18 — D033: Online active docs + offline backups as a readable-history option

- **Status:** Accepted (extends D032; still no “dual track”)
- **Context:** KI documentation guidelines (§6.1 active data) ask groups to agree naming and folder hierarchy, keep the latest version obvious, and make earlier versions recoverable (including version tables when needed). GEP Part B emphasises dated copies and changelogs. Many students draft in Word Online / similar on approved storage, which already keeps version history.
- **Decision:** Teach that a readable history can be: (1) **dated copies + decision log** in the project folder, or (2) **active work in a KI-approved online editor** (e.g. Word on a Teams/SharePoint project site, where approved for that data), with **regular downloads into the project folder** as backups, using the platform’s version history to recover earlier states. Naming and folder rules from §6.1 still apply to exports and the project package. Decision log still records *why*. Do **not** recommend personal Google Drive / personal OneDrive for shared research data (KI: OneDrive is not the place for shared research retention). Git remains allowed if already used, not taught.
- **Alternatives considered:** Only dated copies (ignores how many groups already write online); treating cloud history alone as enough with no project-folder backup (fails when someone leaves the tenant or downloads a final PDF).
- **Consequences:** Day 2 morning cues, Canvas versioning note, `AGENTS.md`, and the plan’s GEP/KI alignment mention option (2).

---

## 2026-09-18 — D032: Drop “dual track” framing; manual versioning is the expected path

- **Status:** Accepted (supersedes equal-track teaching language in D002 / D014 / D031; Git remains allowed)
- **Context:** Calling Git and a dated log a “dual track” forced facilitators to balance two paths. Most students in this course will track changes manually. Equal-track talk was confusing and oversold Git.
- **Decision:** In student- and facilitator-facing materials, **do not** use “dual track.” Teach **readable history** via GEP Part B. Expect **manual versioning** (dated copies + decision log / CHANGELOG) for most people. Git is fine for students who already use it; do not teach it here (K8F6106). Do not present Git as the preferred method. Decision logs stay human- and machine-readable records of *why* choices were made (that part of D014 still holds). iRAT items must not make Git the only correct answer.
- **Alternatives considered:** Keeping equal-track branding while “emphasising” the manual path (still confusing).
- **Consequences:** `AGENTS.md`, run sheets, brief Part B note, plan GEP rationale / tools row / risk row, Canvas assignment page, and `draft-session-materials` drop dual-track wording.

---

## 2026-09-18 — D031: Day 2 morning versioning = GEP Part B only (no mini-lesson)

- **Status:** Accepted
- **Context:** Day 2 morning listed a separate “mini-lesson / notes” on dated copies + log or Git. Good Enough Practices **Part B** already includes all of **Keeping Track of Changes** (manual versioning and version control), which is how D021 presents the dual track.
- **Decision:** Do **not** add a separate versioning mini-lesson on Day 2 morning. Students learn versioning from GEP Part B. Dual track (D002 / D014) stays: Canvas/facilitator wording must treat dated log and Git as equal options, not main path plus fallback. Afternoon iRAT can still probe the reading.
- **Alternatives considered:** Keeping a short dual-track handout (extra material with little beyond Part B).
- **Consequences:** [`sessions/day-2/morning.md`](sessions/day-2/morning.md), [`plan/session-brief.qmd`](plan/session-brief.qmd), and the Day 2 blueprint in the plan drop the mini-lesson step.

---

## 2026-09-18 — D030: Application reporting is share-out / peer critique, not classic simultaneous report

- **Status:** Accepted
- **Context:** Classic TBL simultaneous report (all teams reveal one shared choice at once) fits poorly here. Day 1 App 2 and Day 2 work are each student’s own package. Day 1 afternoon is hybrid (Future + Zoom), so card/vote reveals are awkward. Day 1 App 1 is a shared folder critique but still open-ended, not a single best option.
- **Decision:** For these sessions’ **application exercises**, do **not** require classic simultaneous report. Use: (1) App 1 — each team posts a short list of findings to a shared board (e.g. Padlet) visible to room and Zoom, then facilitator samples contrasts; (2) App 2 and Day 2 — work time, then **inter-team peer critique** against the 5-year rubric. iRAT/tRAT keep their normal simultaneous-team scoring. First-run delivery still prefers InteDashboard or Canvas quizzes for readiness tests (D004).
- **Alternatives considered:** Forcing App 1 into a four-option “which folder is better” vote (too thin); keeping simultaneous report language in the brief while doing something else in the room (misleading).
- **Consequences:** Brief, Day 1 afternoon run sheet, plan blueprint, `AGENTS.md`, and `draft-session-materials` drop simultaneous-report requirements for these AEs.

---

## 2026-09-18 — D029: Day 1 App 1 = good/poor folder critique; App 2 = own folder + DMP draft

- **Status:** Accepted (revises the Day 1 application pair in D027; keeps own-project work for App 2)
- **Context:** Day 1 morning became heavy after adding the definition block, KI cites, and AI rules (D025 / D028). The good vs poor synthetic folder comparison was still listed as morning self-study.
- **Decision:** Move the **good vs poor synthetic project folder** comparison into Day 1 **afternoon Application 1** (team critique: which choices support or block reproducibility / auditability). **Application 2** is create folder + README for the student’s **own** PhD project (manual or Copilot under morning AI rules), paste **data description** and **documentation** into the SRC DMP, then inter-team critique. Morning self-study no longer includes the folder comparison. AI drafting therefore sits in App 2 (still covered by the Day 1 morning AI block in D028).
- **Alternatives considered:** Keeping both AI folder-tree drafting and own-project README as separate apps (morning stays overloaded); dropping the good/poor examples entirely (loses a shared reference before students build their own).
- **Consequences:** Brief, Day 1 run sheets, and the plan blueprint/TBL table updated. Issue #11 materials are needed for afternoon App 1.

---

## 2026-09-18 — D028: AI rules and approved tools land on Day 1 morning (before App 1)

- **Status:** Accepted (timing detail for D003)
- **Context:** Day 1 Application 1 invites Copilot (or an approved alternative) to draft a folder tree. The brief only mentioned “AI rules” in passing in orientation, so students could reach the afternoon without knowing which tool is preferred or what must not go in prompts.
- **Decision:** Day 1 **morning** Canvas pack includes an explicit **AI block** before any AI drafting: prefer Microsoft Copilot; other tools only under the same data-safety bar; never put personal/patient/sensitive research data in prompts; keep prompt + output; verify and edit; disclose use to the team. Point to [KI Generative AI and Education](https://staff.ki.se/tools-and-support/ai-at-ki/generative-ai-and-education). Full prompt library, disclosure form, and wrong-answer demo remain issue **#15**, but the four rules above must ship in the morning pack even if #15 is incomplete. Afternoon open restates the rules briefly. Manual drafting remains allowed.
- **Alternatives considered:** Introducing AI only on Day 2 (too late for App 1); requiring the full #15 package before Day 1 (blocks the run if #15 slips).
- **Consequences:** [`plan/session-brief.qmd`](plan/session-brief.qmd), [`sessions/day-1/morning.md`](sessions/day-1/morning.md), [`sessions/day-1/afternoon.md`](sessions/day-1/afternoon.md), and the Day 1 blueprint in the plan name the AI block.

---

## 2026-09-18 — D027: Day 1 applications use the student’s own PhD project (no shared vignette)

- **Status:** Accepted
- **Context:** The brief and Day 1 run sheet still called for a “shared global-health vignette” in Application 2. That case was never specified, and students already bring their own projects for the course DMP.
- **Decision:** Both Day 1 afternoon applications work on the **student’s own PhD project**. Application 1 drafts a folder tree (manual or Copilot). Application 2 develops folder + README, pastes **data description** and **documentation** into the SRC DMP, then inter-team critique. No shared vignette for applications. Synthetic good/poor folders stay as morning comparison material only (#11).
- **Alternatives considered:** Keeping one shared vignette so all teams critique the same package (easier simultaneous report; less transfer to the real DMP).
- **Consequences:** [`plan/session-brief.qmd`](plan/session-brief.qmd), [`plan/session-plan.qmd`](plan/session-plan.qmd), and [`sessions/day-1/afternoon.md`](sessions/day-1/afternoon.md) drop the vignette. Issue #11 no longer needs a vignette write-up for App 2.

---

## 2026-09-18 — D026: Session brief is no longer capped at two pages

- **Status:** Accepted (supersedes the maximum-two-pages rule in D017; the brief remains the scope lock)
- **Context:** D025 added a working definition, caveats, and KI cites to the brief. The two-page PDF cap forced cramped prose or cutting substance.
- **Decision:** [`plan/session-brief.qmd`](plan/session-brief.qmd) stays the authoritative scope lock (purpose, outcomes, day-by-day summary, out-of-scope list) with **no page-count limit**. Prefer a short brief, but length follows the content. Rendering to PDF remains optional for sharing, not a pass/fail check.
- **Alternatives considered:** Keeping the two-page lock and moving definition text only into run sheets (splits the scope lock).
- **Consequences:** `AGENTS.md`, `README.md`, `plan/session-plan.qmd`, and `.cursor/rules/quarto-content.mdc` drop the two-page requirement.

---

## 2026-09-18 — D025: One definition of reproducibility, then workflows (supersedes D018 vocabulary)

- **Status:** Accepted (supersedes D018’s named day principles and the homemade labels transparency / provenance / accountability / FAIR-versus-open as a principles curriculum)
- **Context:** The brief’s principle list was a teaching synthesis without a single literature source. KI guidelines mention *reproducera* / reproducibility as a documentation and openness aim, not as a formal definition. Qualitative work often needs auditability rather than identical outputs ([Keele KORSA](https://www.keele.ac.uk/korsa/qualitative/reproducibilityreplication/)).
- **Decision:**
  1. Sessions **start from one working definition**: The Turing Way’s — work that can be independently recreated from the **same data and the same analysis** the original team used ([definitions](https://book.the-turing-way.org/reproducible-research/overview/overview-definitions/)).
  2. **Problematise** that definitions disagree, and that for much qualitative research the practical aim is that others can follow and evaluate how interpretations were reached (auditability), not obtain the same findings.
  3. Point students to what **KI already requires**: [Riktlinjer för forskning](https://medarbetare.ki.se/media/99275/download) (document so research can be *spåra[d], tolka[d] och reproducera[d]*; openness and FAIR increase the chance to reproduce) and the [documentation and data management guidelines](https://staff.ki.se/research-support/research-data-management/plan-your-research-data-management/guidelines-for-research-documentation-and-data-management) (traceability / ability to repeat analyses; reusability).
  4. Then teach **workflows** (folder, documentation, versioning, sharing limits, AI use, SRC DMP paste). Materials justify steps against the definition and the KI aims — not against a separate invented principles list.
  5. Day 1 carries the definition + caveats + KI cites; Day 2 continues with versioning, sharing, and DMP drafting.
- **Alternatives considered:** Treating KI’s “spåra, tolka och reproducera” as the definition (it is a documentation requirement, not a definition); building a multi-label principles taxonomy (too heavy for two days).
- **Consequences:** [`plan/session-brief.qmd`](plan/session-brief.qmd), Day 1 run sheets, and `sessions/README.md` adopt this arc. Day 1 required reading now includes [Riktlinjer för forskning](https://medarbetare.ki.se/media/99275/download) §§6–7 alongside the documentation guidelines. `AGENTS.md` and `draft-session-materials` drop the D018 “name the principle” checklist in favour of linking steps to the definition / KI aims / 5-year test.

---

## 2026-09-18 — D024: Course-facing prose avoids stock AI writing tells

- **Status:** Accepted
- **Context:** Draft comments on the session brief called out AI-flavoured lock language. The same patterns keep showing up in new teaching copy.
- **Decision:** When writing student- or team-facing prose, follow [`.agents/skills/plain-prose/SKILL.md`](.agents/skills/plain-prose/SKILL.md). Cursor also loads [`.cursor/rules/plain-prose.mdc`](.cursor/rules/plain-prose.mdc) on every turn. Do not mint new "not X, but Y" slogans; the D018 vehicle/subject line stays in `AGENTS.md` only.
- **Alternatives considered:** A Cursor-only rule (drops Claude and Copilot); putting the list only in `AGENTS.md` with no dedicated skill (easy to miss when drafting).
- **Consequences:** `AGENTS.md`, `draft-session-materials`, and the Quarto content rule point at the skill. Existing committed prose is not bulk-rewritten.

---

## 2026-09-18 — D023: Six SRC DMP areas; brief names the pre-readings

- **Status:** Accepted (supersedes the “at least documentation, data description, storage” draft set in D010)
- **Context:** The brief locked three DMP areas while the plan’s Session → DMP map listed every SRC question. Pre-readings were specified in the plan (D021) but only named loosely in the brief.
- **Decision:**
  1. These two days help students draft **six SRC areas**: documentation, data description (both prompts), data quality, storage, security, and who is responsible. **Day 1** pastes data description and documentation; **Day 2** pastes data quality, storage, security, and who is responsible.
  2. Other SRC questions (legal, ethics, accessibility, long-term storage, software, DOI, costs, general information) are **out of the two-day draft set**. Students finish them for the course assignment; we do not workshop them.
  3. Named **pre-readings live in the brief**: Good Enough Practices Part A / Part B with the sections from D021, the KI documentation/data guidelines, FAIR videos (Day 1), and KI data-sharing guidelines plus metadata vs raw data (Day 2). The plan keeps the GEP cut rationale and the KI corrections.
  4. The Session → DMP map in the plan (and the Canvas export) lists **only** those six areas.
- **Alternatives considered:** Keeping the full map as optional paste targets (leaves brief and plan disagreeing about what the two days produce).
- **Consequences:** Outcome 4 in [`plan/session-brief.qmd`](plan/session-brief.qmd) names the six areas; [`plan/session-plan.qmd`](plan/session-plan.qmd) and [`canvas/pages/assignment-1-dmp.md`](canvas/pages/assignment-1-dmp.md) are trimmed to match.

---

## 2026-09-18 — D022: Session brief cleaned; no session hand-in; versioning outcome stays tool-agnostic

- **Status:** Accepted (refines D017–D018; does not change the five outcomes)
- **Context:** Draft comments on [`plan/session-brief.qmd`](plan/session-brief.qmd) asked to cut AI-flavoured lock language, to stop implying a hand-in to the two-day teaching team, and to finish outcome 3 without naming Git or a decision log as the method.
- **Decision:**
  1. The brief stays the two-page scope lock (D017). Purpose, the five outcomes, the named principle on each day, and a short in/out-of-scope list remain; process language ("vehicle, not the subject", "anything not listed needs team agreement") stays in `AGENTS.md` and D018, not in the brief.
  2. These two days have **no hand-in to the session team**. Students work on their own project package and DMP draft for the host-course assignment (D010, D013).
  3. Outcome 3 is **versioning as a principle**: track changes and decisions in a form humans and tools can both read, and justify which approach fits the project. Git and a dated log remain equal options (D002 / D014) in the Day 2 morning, not in the outcome wording.
  4. Day-by-day readings use Good Enough Practices **Part A / Part B** (D021). Each afternoon has two application exercises, and major activities still end with paste-into-the-DMP.
- **Alternatives considered:** Deleting the out-of-scope list (leaves D017 without a lock); keeping "Git or decision log" in outcome 3 (re-centres the outcome on tools).
- **Consequences:** [`plan/session-brief.qmd`](plan/session-brief.qmd) is rewritten from the comments. The working plan should not invent a session-level submission.

---

## 2026-09-17 — D021: Good Enough Practices is read in two parts, one per day

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

## 2026-09-17 — D020: TBL items are one-best-answer, authored as Markdown in `tbl/`

- **Status:** Accepted
- **Context:** Readiness-test items had no agreed format, and the delivery platform for the first run is still open (D004; issue #17). Without a house style, items drift towards true/false trivia, which punishes students who read carefully and gives the tRAT nothing to argue about.
- **Decision:**
  1. Write all iRAT/tRAT items as **one-best-answer** questions following the NBME *Item-Writing Guide* conventions: a short vignette stem, a closed lead-in that passes the cover-the-options test, four homogeneous options, no vague or cueing wording (*may*, *usually*, *is associated with*), no negative lead-ins, and no *all of the above*.
  2. Keep the **Markdown in [`tbl/`](tbl/) canonical**, including the answer, rationale, and a facilitator note. Generate platform files (InteDashboard or Canvas CSV) at load time; do not keep a second copy of any item in the repo.
  3. Record on every item the **principle** it tests, the **reading anchor**, and the **session outcome** — an item that tests a step without a principle is not finished (D018).
  4. No item may make Git the only correct answer (D002 / D014); items must be answerable on the documentation track.
  5. The tRAT uses the **same** items as the iRAT; no separate team item bank.
- **Alternatives considered:** Authoring directly in CSV (unreadable in review, and no place for rationale); authoring in the chosen platform (locks content to a tool before the tool is chosen).
- **Consequences:** [`tbl/README.md`](tbl/README.md) holds the item-writing rules and the export column mapping; `draft-session-materials` gains the one-best-answer bar; item banks for both days are drafted in `tbl/`.

---

## 2026-09-17 — D019: Six tracked issues, sized to the revised brief

- **Status:** Accepted (trims the backlog kept under D007)
- **Context:** The tracker carried eleven open issues created as an “8-day build” backlog, each stamped with that framing. The revised [`plan/session-brief.qmd`](plan/session-brief.qmd) is more specific about what the two days actually contain — named readings and owners per morning, two application exercises per afternoon, versioning taught generically rather than as a Git lesson — and several issues were either already satisfied by the brief or too small to track alone.
- **Decision:**
  1. Keep **six** issues, one per material the first offering cannot run without: **#9** run sheets, **#10** Canvas module (self-study packs, SRC template and map, hand-in), **#11** materials pack (example folders, templates, 5-year rubric), **#13** TBL content, **#15** AI package, **#17** delivery readiness.
  2. Close the rest by folding their work in: #7, #12, and #16 into #10; #14 into #17; the 5-year rubric from #8 into #11.
  3. Drop the **“8-day”** title prefix and the “8-day build” deadline line; issues reference the brief and the course window instead.
  4. Session **ILOs are locked in the brief** (five outcomes, D017–D018) — there is nothing left to freeze, so no issue tracks it.
  5. Each kept issue must carry the brief's standing requirements: name the principle behind every step, keep tools generic, and end major activities with a *paste into your SRC DMP* step.
- **Alternatives considered:** Editing all eleven issues in place (keeps small items competing with the materials that actually block delivery); tracking the backlog only in the plan (loses assignment and review on the tracker).
- **Consequences:** `plan/session-plan.qmd` **Must ship** now lists the same six items with issue numbers, so plan and tracker agree. The tracker edits are applied by [`.github/scripts/apply-backlog-issues.sh`](.github/scripts/apply-backlog-issues.sh) — a one-off script, safe to delete once run. Note that Cloud-agent tokens cannot write issues, so a maintainer runs it.

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
