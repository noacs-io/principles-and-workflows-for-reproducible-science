# Day 2 iRAT / tRAT — readable history, sharing boundaries, honest reporting

**Pre-reading (Day 2 required):** Good Enough Practices — **Keeping Track of Changes** (all recommendations, including manual versioning and the Single Master Online note); **Data Management** recommendation 7 (DOI-issuing repositories, metadata for humans and for harvesters); **Collaboration** recommendations 2–5 and the block on sensitive data. Then [Share data and collaborate](https://staff.ki.se/research-support/research-data-management/collaborate-process-analyse-research-data/share-data-and-collaborate), the [Policy for open access to research data](https://staff.ki.se/research-support/research-data-management/policy-for-open-access-to-research-data), the KI §6.1 naming parts, and the AI rules carried over from Day 1. Student-facing list: [`canvas/pages/day-2-morning.md`](../canvas/pages/day-2-morning.md); pre-reading split: [`plan/session-plan.qmd`](../plan/session-plan.qmd).

**What these items test (D025):** whether the work stays legible to somebody outside the team — a readable history of files and decisions, the limits consent and ethics set on sharing, and an honest account of how the work was made, AI included. Each item connects to KI's requirement that research can be traced, interpreted, and reproduced, or to the 5-year test. No item makes Git the correct answer (D032).

**Use:** 10 items, individually (iRAT) then in teams (tRAT) with the same items. All vignettes are fictional; no real personal data.

Item-writing conventions: [`README.md`](README.md). Draft status — not yet reviewed by the teaching team.

---

### D2-01 — How big is one change

- **Tests:** workflow practice — a change you cannot undo separately cannot be reviewed separately
- **Reading:** Keeping Track of Changes, recommendation 2 (keep changes small)
- **Outcome:** 3

**Stem.** A student saves a copy of her whole project every Friday under the note "weekly update". One Friday's note covers a rewritten cleaning script, three new figures, and edits to the manuscript.

**Lead-in.** How should these edits have been recorded?

A. As a single entry listing every file that changed, with a longer description
B. As one entry for each file that changed during the week
C. As separate entries, each covering one set of edits that can be undone together
D. As a summary appended to the README at the end of the week

**Answer:** C

**Rationale.** The reading sizes a change as the group of edits you could imagine wanting to undo in one step — small enough to isolate a problem, large enough to be meaningful. A keeps the changes bundled however well it describes them, B splits by file rather than by decision and separates edits that belong together, and D records a summary outside any change history.

**Facilitator note.** The sizing rule does not depend on the tool: it is the same whether the history lives in a dated decision log, in Office Online version history, or in commits.

---

### D2-02 — What a change entry must say

- **Tests:** workflow practice — the log is the source of truth for why, not only what
- **Reading:** Keeping Track of Changes, *How to document a change*
- **Outcome:** 3

**Stem.** A project's decision log has grown by one line: "2026-04-08 — fixed data".

**Lead-in.** Which entry documents the change well enough for the 5-year test?

A. "2026-04-08 — removed 12 duplicate households created by a tablet re-sync on 2026-03-30."
B. "2026-04-08, A. Okoth — `hh_survey_clean.csv`: routine data cleaning carried out after the duplicate check."
C. "2026-04-08, A. Okoth — `hh_survey_clean.csv`: removed 12 duplicates created by a tablet re-sync on 2026-03-30."
D. "A. Okoth — `hh_survey_clean.csv`: removed 12 duplicate households created by a tablet re-sync."

**Answer:** C

**Rationale.** A documented change carries four things: the date, the author, the files affected, and what changed together with why. Each distractor drops exactly one of them — A the author and file, B the substance of the change, D the date — and each omission is the one that defeats a reader coming back years later.

**Facilitator note.** Hand teams their own logs after this item and ask which of the four entries theirs resembles. This is also the machine-readability point from D014: a consistent date, author, and file field is what lets a collaborator, or a tool, reconstruct the project's history.

---

### D2-03 — A readable history when nobody is co-writing

- **Tests:** workflow practice — dated copies plus a changelog are enough on their own
- **Reading:** Keeping Track of Changes, *Manual Versioning*
- **Outcome:** 3

**Stem.** A student writes up her analysis alone and keeps the project folder on KI-approved storage. There is no shared online master to work in, and she wants the folder to show what changed and why.

**Lead-in.** Which arrangement meets the 5-year test for tracked changes?

A. A dated changelog in reverse chronological order, plus a dated copy of the project at each change
B. A folder holding every version ever saved, identified by the file system's modification dates
C. File names carrying version suffixes such as `_v1`, `_v2`, and `_v3_final`, renamed at each save
D. A monthly email to the supervisor with the current state of the project attached

**Answer:** A

**Rationale.** The manual procedure in the reading has exactly these two parts: dated notes in a changelog, and dated copies of the project in the synchronised area. B and C preserve versions but record nothing about what changed or why, and D produces an archive nobody can navigate and that is not stored with the project.

**Facilitator note.** Say plainly that dated copies and a changelog meet the endpoint without Git (D032 / D034). The manual procedure asks for more self-discipline than a tool, not less. When people *are* co-writing, the default is the shared master in D2-04 — keep the two cases apart during clarification.

---

### D2-04 — One master when three people write

- **Tests:** KI aim — Single Master Online at KI means Office Online plus §6.1-named downloads
- **Reading:** Keeping Track of Changes (Single Master Online); KI documentation guidelines §6.1; the Day 2 implementation note
- **Outcome:** 3

**Stem.** Three co-authors at KI write a study protocol together. Each edits her own copy and emails it back, so the current version is whichever attachment arrived last.

**Lead-in.** Which arrangement gives the group one readable history of the protocol?

A. Each author renames her copy with her initials and the date before emailing it to the group
B. One shared master in Office Online on the group's KI Teams site, with §6.1-named downloads
C. One author merges the emailed copies into a weekly master and files it in the project folder
D. Each author keeps her own copy in the project folder, and the group compares them before submission

**Answer:** B

**Rationale.** Single Master Online means one document that everyone edits, so there is one current version and the platform keeps the history. At KI that master sits in Office Online on a Teams or SharePoint project site, with regular downloads into the project folder named per §6.1 (D034). A, C, and D keep several masters alive at once and leave both the merge and the history to somebody's memory.

**Facilitator note.** C splits teams, because weekly merging feels responsible. It rebuilds the same problem every week and puts one person in charge of everyone else's edits. Google Docs is fine for shared text if a group prefers it (D035). Restricted research data still belongs on KI-approved storage, whatever the group writes in.

---

### D2-05 — As open as possible, as closed as necessary

- **Tests:** KI aim — openness has boundaries set by consent and ethics, not by convenience
- **Reading:** Collaboration, *Collaborations with sensitive data*; Keeping Track of Changes, *Inadvertent Sharing*; KI policy for open access to research data
- **Outcome:** 5

**Stem.** A team wants to make its project as open as possible. The ethics approval permits publication of aggregated results; the interview transcripts contain participant names and clinic locations.

**Lead-in.** Which sharing arrangement follows "as open as possible, as closed as necessary"?

A. Deposit the analysis scripts openly and share the transcripts by link from a personal cloud account
B. Deposit everything openly once participant names have been removed from the transcript file names
C. Keep every part of the project closed until the study has been published in a journal
D. Deposit the documentation and aggregated data openly, keeping transcripts in controlled storage with access on request

**Answer:** D

**Rationale.** The principle asks for the maximum that consent, ethics, and law permit — here the documentation and the aggregated data — while identifiable material stays protected and reachable through a controlled route. A moves personal data onto a service outside institutional control, B confuses file names with content, and C forgoes openness that is already permitted.

**Facilitator note.** The strongest item for the ethics discussion. Connect it to the SRC DMP questions on access and security that teams draft in Application 1.

---

### D2-06 — Where data become citable

- **Tests:** workflow practice — a persistent identifier outlives the people and the website
- **Reading:** Data Management, recommendation 7 (submit data to a reputable DOI-issuing repository)
- **Outcome:** 4, 5

**Stem.** A student wants the dataset behind her thesis to remain findable and citable in ten years, after the research group's website has been retired.

**Lead-in.** Where should the dataset be deposited?

A. A public code-hosting repository, linked from the thesis and kept public after graduation
B. A community or general repository that issues DOIs and commits to long-term archiving
C. The research group's website, under an address the group promises to maintain
D. The university network drive, with the folder path given in the thesis

**Answer:** B

**Rationale.** A DOI-issuing repository provides a persistent identifier and an archiving commitment that survive institutional change. A hosts content that can be altered or deleted and carries no identifier of its own, and C and D depend on a service and a path that outlive neither the group nor the student.

**Facilitator note.** Name KI's own route: DORIS, hosted by the university library. Deposit decisions still follow ethics approval and the access rules recorded in the DMP — a DOI does not make data shareable.

---

### D2-07 — Metadata for two audiences

- **Tests:** workflow practice — documentation serves both people and machines
- **Reading:** Data Management, recommendation 7 (metadata for humans and for harvesters)
- **Outcome:** 2, 4

**Stem.** A student is depositing a dataset. The repository's form asks her to fill in structured metadata fields, and the dataset already carries a README describing the study, the files, and the variables.

**Lead-in.** Which approach to metadata should she take when depositing the dataset?

A. Complete the structured fields and remove the README to avoid duplication
B. Leave the structured fields empty and expand the README instead
C. Complete the structured fields and keep the README for human readers
D. Paste the README text into each structured field

**Answer:** C

**Rationale.** Structured fields are harvested by machines; the README is written for the person who opens the folder. Both are needed, because each audience fails on the other's format. A and B each abandon one audience, and D fills the fields with text no harvester can interpret.

**Facilitator note.** This is the same two-audience argument made for the decision log in D014 — point back to it. It is also where metadata can stay open while the data stay closed, which is the Day 1 FAIR item seen from the other end.

---

### D2-08 — No licence is a licence

- **Tests:** workflow practice — reuse terms are stated, not assumed
- **Reading:** Collaboration, recommendation 4 (make the license explicit)
- **Outcome:** 5

**Stem.** A student publishes her project repository with a README and a `CITATION` file, and no `LICENSE` file. A researcher in another country asks whether she can adapt the survey instrument for her own study.

**Lead-in.** What does the missing licence mean for the requester?

A. Reuse is permitted for non-commercial purposes
B. Reuse is permitted once the author has been notified
C. Reuse is permitted with attribution, because the material was published openly
D. Reuse is not permitted, because the author retains all rights

**Answer:** D

**Rationale.** The absence of a licence does not mean there are no terms: it means all rights are reserved and others have no permission to reuse or modify the material. A, B, and C each describe permissions that only exist if a licence grants them.

**Facilitator note.** Expect a wide split. Follow with the practical point that a licence covers only what may legally be shared — personal data are governed by consent, ethics approval, and GDPR first.

---

### D2-09 — Disclosing what the tool wrote

- **Tests:** KI aim — AI use is disclosed and verified, and the record says which parts
- **Reading:** the AI rules on the Day 1 page (Copilot-first, keep prompt and output, verify, disclose); KI Generative AI and Education
- **Outcome:** 5

**Stem.** A student drafts her README and two DMP paragraphs with Microsoft Copilot, edits the text, and checks the storage claims against the KI pages before keeping them.

**Lead-in.** What should the project package record about this use of AI?

A. Which text came from the tool, what she checked, and what she changed
B. The tool and its version, listed in the acknowledgements of the finished thesis
C. That an AI assistant was used somewhere in the project, noted once in the README
D. Nothing, because she verified and edited every sentence before keeping it

**Answer:** A

**Rationale.** Disclosure has to be specific enough for a reader to act on: which passages the tool drafted, what a human verified them against, and what the human changed. Keeping the prompt and the output alongside that note is what makes the check repeatable. B puts the disclosure in a document the project folder does not hold and leaves the folder silent, C discloses the fact without saying where or what was checked, and D treats verification as a substitute for disclosure when the rules ask for both.

**Facilitator note.** This is the rubric's AI-transparency question, and Application 2 asks students to write exactly this note. Restate the hard line while you are here: no personal, patient, or sensitive research data in prompts, whatever the tool.

---

### D2-10 — What the trail lets an outsider do

- **Tests:** the definition and the KI aim — traceable work with a stated access route
- **Reading:** Day 2 GEP sections as a whole; KI policy for open access to research data; Riktlinjer §§6–7
- **Outcome:** 1, 5

**Stem.** A team publishes its documentation and analysis material openly, keeps the identifiable interview transcripts in KI-approved storage with access on request, and records in the decision log why each exclusion and each coding change was made.

**Lead-in.** What does this arrangement let a reader outside the team do?

A. Follow how the findings were reached, and request the protected material by a stated route
B. Recreate the findings from the same data and the same analysis without contacting the team
C. Collect new data under the same protocol and establish whether the findings hold elsewhere
D. Reuse the transcripts in a new study, because they are held in approved storage

**Answer:** A

**Rationale.** KI asks that research be documented so it can be traced, interpreted, and reproduced, and that it be as open as possible and as limited as necessary. This team delivers a traceable account plus a named way in — which is also what auditability means for qualitative material. B overstates it, since the data are not open and nobody outside can rerun the analysis unaided. C describes replication with new data, and D ignores consent and the access decision.

**Facilitator note.** Close the clarification block here and carry the answer into Application 2: teams should be able to say, for each part of their package, what it lets an outsider do. Contrast it with Day 1's item on reproduction versus replication, which most teams will remember arguing about.

---

## Reserve items

Not part of the 10-item set for this run. Both were written in the first cut of the bank and were set aside when the shared-master and AI-disclosure items came in (D050). They follow the same conventions, so either can be swapped back in or used for a make-up test.

### D2-R1 — What belongs in the repository (was D2-04)

- **Tests:** workflow practice — version control serves plain-text material written by a human
- **Reading:** Keeping Track of Changes, *What Not to Put Under Version Control* and *Inadvertent Sharing*
- **Outcome:** 3, 5
- **Set aside because:** the stem assumes the student uses Git, which we neither teach nor expect (D032); the sharing point it carries is also made by D2-05. Rewrite the stem around the shared project area before reusing it.

**Stem.** A student who already uses Git has four items in her project folder: a 200-line cleaning script, a 4 GB archive of scanned questionnaires, a figure that the script regenerates on every run, and a file holding the database password.

**Lead-in.** Which item belongs in the version-controlled repository?

A. The 4 GB archive of scanned questionnaires
B. The cleaning script
C. The figure regenerated on every run
D. The file holding the database password

**Answer:** B

**Rationale.** Plain-text material written by a human, small enough to compare line by line, is what version control is for. A exceeds what version control systems handle and holds raw material that does not change, C can be regenerated from script and data, and D must never enter a repository at all.

**Facilitator note.** Teams often argue for C, which is defensible for small figures; the reading allows versioning small derived files for convenience. Take the argument and redirect it to D, where there is no defensible position.

---

### D2-R2 — Credit in a file (was D2-09)

- **Tests:** workflow practice — the project states how it wants to be cited
- **Reading:** Collaboration, recommendation 5 (make the project citable)
- **Outcome:** 5
- **Set aside because:** credit is the part of the Day 2 reading furthest from the 5-year folder endpoint, and the slot was needed for AI disclosure.

**Stem.** A project root holds `README`, `LICENSE`, and `CHANGELOG`. The supervisor wants everyone who uses the dataset or the analysis code to credit the project in the same way.

**Lead-in.** Which file should be added to the project root?

A. `CITATION`, stating how to cite the project and its associated DOIs
B. `CONTRIBUTING`, stating what a new collaborator needs to set up and follow
C. `notes.txt`, listing the tasks outstanding for the team
D. `requirements.txt`, listing the software needed to run the analysis

**Answer:** A

**Rationale.** A `CITATION` file tells users how to cite the project as a whole and where to find the DOIs of its parts. B, C, and D are all recommended by the reading for other purposes — onboarding, shared to-do lists, and dependencies — and none of them establishes credit.

**Facilitator note.** Ask teams which of these four files their own project already has; most will have none.
