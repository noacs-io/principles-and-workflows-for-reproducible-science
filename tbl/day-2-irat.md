# Day 2 iRAT / tRAT — openness with boundaries, and accountability

**Pre-reading:** Good Enough Practices **Part B** — Keeping Track of Changes (all recommendations, including manual versioning); Data Management recommendation 7 (DOI-issuing repositories and metadata); Collaboration recommendations 2–5 (to-do list, communication, licence, citation) and the block on sensitive data. See the pre-reading split in [`plan/session-plan.qmd`](../plan/session-plan.qmd).

**Principle in focus (D018):** reproducible work is legible to others and honest about how it was made. Items test tracked change, sharing boundaries, and credit.

**Use:** 10 items, individually (iRAT) then in teams (tRAT) with the same items. All vignettes are fictional; no real personal data.

Item-writing conventions: [`README.md`](README.md). Draft status — not yet reviewed by the teaching team.

---

### D2-01 — How big is one change

- **Principle:** traceability — a change you cannot undo separately cannot be reviewed separately
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

**Facilitator note.** Works on both tracks: the same sizing rule applies to commits and to entries in a dated decision log.

---

### D2-02 — What a change entry must say

- **Principle:** decision traceability — the log is the source of truth for why, not only what
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

**Facilitator note.** Hand teams their own logs after this item and ask which of the four entries theirs resembles. This is also the machine-readability point from D014: a consistent date, author, and file field is what lets a collaborator or a tool reconstruct the project's history.

---

### D2-03 — Tracking changes without Git

- **Principle:** the tracking requirement is about evidence, not about a particular tool
- **Reading:** Keeping Track of Changes, *Manual Versioning*
- **Outcome:** 3

**Stem.** A student decides not to use Git for her project and asks how to track changes in a way that still passes the 5-year test.

**Lead-in.** Which manual arrangement meets the 5-year test for tracked changes?

A. A folder holding every version ever saved, identified by the file system's modification dates
B. An email to the supervisor with the project attached at the end of each month
C. A dated changelog in reverse chronological order, plus a dated copy of the project at each change
D. File names carrying version suffixes such as `_v1`, `_v2`, and `_v3_final`, renamed at each save

**Answer:** C

**Rationale.** The manual procedure has exactly these two parts: dated notes in a changelog, and dated copies of the project in the synchronised area. A and D preserve versions but record nothing about what changed or why, and B produces an archive nobody can navigate and that is not stored with the project.

**Facilitator note.** State during clarification that dated copies + a changelog still meet the endpoint without Git (D032 / D034). The manual procedure demands more self-discipline than Git, not less. For collaborative writing, prefer Office Online (D034).

---

### D2-04 — What belongs in the repository

- **Principle:** version control serves plain-text, human-written material
- **Reading:** Keeping Track of Changes, *What Not to Put Under Version Control* and *Inadvertent Sharing*
- **Outcome:** 3, 5

**Stem.** A student on the Git track has four items in her project folder: a 200-line cleaning script, a 4 GB archive of scanned questionnaires, a figure that the script regenerates on every run, and a file holding the database password.

**Lead-in.** Which item belongs in the version-controlled repository?

A. The 4 GB archive of scanned questionnaires
B. The cleaning script
C. The figure regenerated on every run
D. The file holding the database password

**Answer:** B

**Rationale.** Plain-text material written by a human, small enough to compare line by line, is what version control is for. A exceeds what version control systems handle and holds raw material that does not change, C can be regenerated from script and data, and D must never enter a repository at all.

**Facilitator note.** Teams often argue for C, which is defensible for small figures; the reading allows versioning small derived files for convenience. Take the argument and redirect it to D, where there is no defensible position.

---

### D2-05 — As open as possible, as closed as necessary

- **Principle:** openness has boundaries set by consent and ethics, not by convenience
- **Reading:** Collaboration, *Collaborations with sensitive data*; Keeping Track of Changes, *Inadvertent Sharing*; Data Management, recommendation 7
- **Outcome:** 5

**Stem.** A team wants to make its project as open as possible. The ethics approval permits publication of aggregated results; the interview transcripts contain participant names and clinic locations.

**Lead-in.** Which sharing arrangement follows "as open as possible, as closed as necessary"?

A. Deposit the analysis scripts openly and share the transcripts by link from a personal cloud account
B. Deposit everything openly once participant names have been removed from the transcript file names
C. Keep every part of the project closed until the study has been published in a journal
D. Deposit the documentation and aggregated data openly, keeping transcripts in controlled storage with access on request

**Answer:** D

**Rationale.** The principle asks for the maximum that consent, ethics, and law permit — here the documentation and the aggregated data — while identifiable material stays protected and reachable through a controlled route. A moves personal data onto a service outside institutional control, B confuses file names with content, and C forgoes openness that is already permitted.

**Facilitator note.** The strongest item for the ethics discussion; connect it to the SRC DMP questions on access, security, and legal requirements.

---

### D2-06 — Where data become citable

- **Principle:** findability — a persistent identifier outlives the people and the website
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

**Facilitator note.** Note the KI framing: deposit decisions still follow ethics approval and the access rules recorded in the DMP — a DOI does not make data shareable.

---

### D2-07 — Metadata for two audiences

- **Principle:** documentation serves both people and machines
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

**Facilitator note.** This is the same two-audience argument made for the decision log in D014 — point back to it.

---

### D2-08 — No licence is a licence

- **Principle:** accountability — reuse terms are stated, not assumed
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

### D2-09 — Credit in a file

- **Principle:** accountability — the project states how it wants to be cited
- **Reading:** Collaboration, recommendation 5 (make the project citable)
- **Outcome:** 5

**Stem.** A project root holds `README`, `LICENSE`, and `CHANGELOG`. The supervisor wants everyone who uses the dataset or the analysis code to credit the project in the same way.

**Lead-in.** Which file should be added to the project root?

A. `CITATION`, stating how to cite the project and its associated DOIs
B. `CONTRIBUTING`, stating what a new collaborator needs to set up and follow
C. `notes.txt`, listing the tasks outstanding for the team
D. `requirements.txt`, listing the software needed to run the analysis

**Answer:** A

**Rationale.** A `CITATION` file tells users how to cite the project as a whole and where to find the DOIs of its parts. B, C, and D are all recommended by the reading for other purposes — onboarding, shared to-do lists, and dependencies — and none of them establishes credit.

**Facilitator note.** Ask teams which of these four files their own project already has; most will have none.

---

### D2-10 — Name the principle

- **Principle:** accountability, stated as a principle rather than a set of habits
- **Reading:** Part B as a whole, read with the Day 2 AI-use rules
- **Outcome:** 1, 5

**Stem.** A team publishes its analysis scripts and documentation openly, keeps the identifiable interview material in controlled storage with access on request, and records in the README which sections were drafted with an AI assistant and how they were checked.

**Lead-in.** Which principle of reproducible research do these three choices serve together?

A. Accountability — the work is legible to others and honest about how it was made
B. Findability — the material can be located through a persistent identifier
C. Modularity — the parts of the project can be understood separately
D. Reusability — others can apply the material to new research questions

**Answer:** A

**Rationale.** Each choice makes it possible for someone else to judge how the work was produced, including its limits and its use of AI. B describes what a DOI does, C describes how the folder is organised, and D describes a consequence that only holds where sharing is permitted.

**Facilitator note.** Close the clarification block here and carry the answer into the peer review: teams should be able to say which principle each element of their package serves.
