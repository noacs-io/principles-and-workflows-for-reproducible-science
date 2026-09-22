# Day 2 iRAT / tRAT — readable history, storage, access, metadata

**Pre-reading (Day 2 required):** Good Enough Practices — **Keeping Track of Changes** (all); **Data Management** recommendation 7 (DOI-issuing repositories, metadata); **Collaboration** recommendations 2–5 and the block on sensitive data. Then [Share data and collaborate](https://staff.ki.se/research-support/research-data-management/collaborate-process-analyse-research-data/share-data-and-collaborate), the [Policy for open access to research data](https://staff.ki.se/research-support/research-data-management/policy-for-open-access-to-research-data), KI §6.1 naming, and a skim of the SRC questions on documentation, storage, security, data quality, and responsibility. Student-facing list: [`canvas/pages/day-2-morning.md`](../canvas/pages/day-2-morning.md); afternoon paste targets: [`canvas/pages/day-2-afternoon.md`](../canvas/pages/day-2-afternoon.md).

**What these items test (D025):** the habits students will draft into the SRC template this afternoon — a readable history of working documents (**Documentation**), where data live and who may open them (**Storage and backup**), what metadata and quality checks they will keep (**data quality**), and who owns data management (**Responsibility**). No item makes Git the correct answer (D032).

**Use:** 10 items, individually (iRAT) then in teams (tRAT) with the same items. All vignettes are fictional; no real personal data.

Item-writing conventions: [`README.md`](README.md). Item craft also follows the NBME summary of technical item flaws (equal-length parallel options; no vague frequency terms; no negative lead-ins; no absolute-term cues; no clang or convergence cues). Draft status — not yet reviewed by the teaching team.

---

### D2-01 — How big is one change

- **Tests:** workflow practice — a change you cannot undo separately cannot be reviewed separately
- **Reading:** Keeping Track of Changes, recommendation 2 (keep changes small)
- **Outcome:** 3
- **Prepares:** Exercise 1 — updating **Documentation** (readable history / decision log)

**Stem.** A student saves a copy of her whole project every Friday under the note "weekly update". One Friday's note covers a rewritten cleaning script, three new figures, and edits to the manuscript.

**Lead-in.** How should these edits have been recorded?

A. As one bundled entry that lists every file changed that week, in detail
B. As one separate entry for each file that changed during that week
C. As separate entries, each limited to one coherent set of related edits
D. As one end-of-week summary of all edits appended to the project README

**Answer:** C

**Rationale.** The reading sizes a change as the group of edits you could imagine wanting to undo in one step. Keep it small enough to isolate a problem and large enough to be meaningful. A keeps the changes bundled however well it describes them, B splits by file rather than by decision and separates edits that belong together, and D records a summary outside any change history.

**Facilitator note.** The sizing rule does not depend on the tool: it is the same whether the history lives in a dated decision log, in Office Online version history, or in commits. Carry into Exercise 1 when students update their Documentation draft.

---

### D2-02 — What a change entry must say

- **Tests:** workflow practice — the log records why a change was made, not only which files changed
- **Reading:** Keeping Track of Changes, *How to document a change*
- **Outcome:** 3
- **Prepares:** Exercise 1 — **Documentation** (version control and why files changed)

**Stem.** A project's decision log has grown by one line: "2026-04-08 — fixed data". A change entry for the 5-year test needs the date, the author, the files affected, and what changed together with why.

**Lead-in.** Which entry includes all four of those elements with a clear why?

A. "2026-04-08, A. Okoth — `hh_survey_clean.csv`: completed the planned cleaning pass after the duplicate check."
B. "2026-04-08, A. Okoth — `hh_survey_clean.csv`: removed 12 duplicates created by a tablet re-sync on 2026-03-30."
C. "2026-04-08 — household survey files: removed 12 duplicates created by a tablet re-sync on 2026-03-30."
D. "A. Okoth — `hh_survey_clean.csv`: removed 12 duplicates created by a tablet re-sync on 2026-03-30."

**Answer:** B

**Rationale.** B carries date, author, file, and a concrete what-and-why. A keeps the four fields but replaces the substance with a vague label. C drops the named author. D drops the date. Each omission is the one that defeats a reader coming back years later.

**Facilitator note.** Hand teams their own logs after this item and ask which of the four entries theirs resembles. Carry into Exercise 1 when they update the Documentation draft with a readable history.

---

### D2-03 — A readable history when nobody is co-writing

- **Tests:** workflow practice — dated copies plus a changelog are enough on their own
- **Reading:** Keeping Track of Changes, *Manual Versioning*
- **Outcome:** 3
- **Prepares:** Exercise 1 — **Documentation** (folder structure and version control during the project)

**Stem.** A student writes up her analysis alone and keeps the project folder on KI-approved storage. There is no shared online master to work in, and she wants the folder to show what changed and why.

**Lead-in.** Which arrangement meets the 5-year test for tracked changes?

A. A dated changelog in reverse chronological order, plus a dated copy of the project at each change
B. A dated changelog, plus a single undated "latest" folder that is overwritten at each save
C. Dated project copies at each change, plus `_v1` / `_v2` / `_final` file names and no written notes
D. A dated changelog emailed monthly to the supervisor, with no copies kept in the project folder

**Answer:** A

**Rationale.** The manual procedure in the reading has exactly these two parts: dated notes in a changelog, and dated copies of the project in the synchronised area. B records why but loses earlier files. C keeps copies but records nothing about what changed or why. D produces an archive outside the project folder that nobody can navigate with the files.

**Facilitator note.** Dated copies and a changelog meet the endpoint without Git (D032 / D034). When people *are* co-writing, the default is the shared master in D2-04. Carry into Exercise 1 Documentation: folder structure and version control during the project.

---

### D2-04 — One master when three people write

- **Tests:** KI aim — Single Master Online at KI means Office Online plus regular named downloads into the project folder
- **Reading:** Keeping Track of Changes (Single Master Online); KI documentation guidelines §6.1; Day 2 morning note on shared documents
- **Outcome:** 3
- **Prepares:** Exercise 1 — **Documentation** (readable history of working documents)

**Stem.** Three co-authors at KI write a study protocol together. Each edits her own copy and emails it back, so the current version is whichever attachment arrived last.

**Lead-in.** Which arrangement gives the group one readable history of the protocol?

A. Each author renames her emailed copy with initials and date before sending it to the group
B. One shared master on the group's KI project site, with regular downloads into the project folder
C. One author merges emailed copies into a weekly master and files that file in the project folder
D. Each author keeps a separate copy in the project folder, and the group compares them before submission

**Answer:** B

**Rationale.** Single Master Online means one document that everyone edits, so there is one current version and the platform keeps the history. At KI that master sits in Office Online on a Teams or SharePoint project site, with regular downloads into the project folder named per §6.1 (D034). A, C, and D keep several masters alive at once and leave both the merge and the history to somebody's memory.

**Facilitator note.** C splits teams, because weekly merging feels responsible. Name Office Online on Teams/SharePoint aloud in clarification (D034); Google Docs is fine for shared text if a group prefers it (D035). Name the §6.1 parts aloud rather than in the keyed option. Working documents only; restricted research data are D2-05. Carry into Exercise 1 Documentation: readable history of working documents.

---

### D2-05 — Where active research data live

- **Tests:** KI aim — active research data sit on KI-approved storage with backup, not on personal cloud or USB
- **Reading:** Day 2 morning KI corrections; [KI-approved storage](https://staff.ki.se/research-support/research-data-management/create-collect-store-research-data); guidelines skim on Storage, sharing and archiving
- **Outcome:** 4
- **Prepares:** Exercise 1 — **Storage and backup** (*How is storage and backup of data and metadata safeguarded…?*)

**Stem.** A KI doctoral student collects interview audio and transcripts that include participant names. She wants a place to keep the files while the study is running. The files need institutional backup she can rely on.

**Lead-in.** Where should these files be stored during the research process?

A. A KI-approved project or lab folder set up for research data
B. A personal cloud folder shared with her supervisor by a private link
C. A locked USB drive she updates between interview days and keeps at her desk
D. The shared Office Online file the team uses for drafting the study protocol

**Answer:** A

**Rationale.** Active research data, especially personal or sensitive material, belong on KI-approved storage with institutional backup and access control. B and C put the files outside that arrangement. D confuses the shared text master for ordinary documents with the place for restricted research data.

**Facilitator note.** Expected split: D, because teams just chose Office Online for the protocol. Use the split to open Exercise 1's storage question. Point at the same [store and share](https://staff.ki.se/tools-and-support/it-and-telephony/store-and-share-files) list as Day 1 (project, lab, and group folders; SciShare and S3 for larger volumes).

---

### D2-06 — As open as possible, as closed as necessary

- **Tests:** KI aim — openness has boundaries set by consent and ethics, not by convenience
- **Reading:** Collaboration, *Collaborations with sensitive data*; Keeping Track of Changes, *Inadvertent Sharing*; KI policy for open access to research data
- **Outcome:** 5
- **Prepares:** Exercise 1 — **Storage and backup** (*How is data security and controlled access… safeguarded…?*)

**Stem.** A team wants to make its project as open as possible. The ethics approval permits publication of aggregated results; the interview transcripts contain participant names and clinic locations.

**Lead-in.** Which sharing arrangement follows "as open as possible, as closed as necessary"?

A. Deposit documentation openly; share named transcripts by personal-cloud link on request
B. Deposit every file openly after stripping names from transcript file names only
C. Keep documentation and aggregates closed; deposit transcripts openly after the article appears
D. Deposit documentation and aggregates openly; keep named transcripts in controlled KI storage

**Answer:** D

**Rationale.** The principle asks for the maximum that consent, ethics, and law permit. Here that means documentation and aggregated data. Identifiable material stays protected and reachable through a controlled route. A still moves personal data onto a service outside institutional control. B confuses file names with content. C forgoes openness that is already permitted and opens the wrong material.

**Facilitator note.** Strongest item for Exercise 1 access drafting. Consent, ethics, and GDPR come before any licence talk.

---

### D2-07 — Metadata when the files stay closed

- **Tests:** KI aim — metadata can stay findable when the raw files cannot be shared
- **Reading:** KI policy for open access to research data; Day 2 morning note on metadata versus raw data; Data Management, recommendation 7
- **Outcome:** 4, 5
- **Prepares:** Exercise 2 — metadata under **data quality** / documentation

**Stem.** A student's interview recordings cannot leave the research group. She assumes nothing about the study can be made findable.

**Lead-in.** What can still be made available under KI's open-access policy?

A. The recordings themselves, once the repository marks those files as restricted
B. A dataset description with access conditions, even if the files stay closed
C. Only the published paper; dataset metadata waits until consent is renegotiated
D. The full transcripts, if readers sign a click-through agreement on a personal site

**Answer:** B

**Rationale.** Metadata describes the dataset so others can find and judge it. KI's policy and the morning note both allow rich metadata to stay open when the raw files stay limited. A and D still move protected content toward wider access. C treats metadata as if it required the same consent change as open data.

**Facilitator note.** Connect to Exercise 2: README overview, data dictionary, naming, and access conditions are the metadata students list even when files stay on approved storage.

---

### D2-08 — Metadata for two audiences

- **Tests:** workflow practice — documentation serves both people and machines
- **Reading:** Data Management, recommendation 7 (metadata for humans and for harvesters)
- **Outcome:** 2, 4
- **Prepares:** Exercise 2 — what metadata to keep

**Stem.** A student is depositing a dataset. The repository's form asks her to fill in structured metadata fields, and the dataset already carries a README describing the study, the files, and the variables.

**Lead-in.** Which approach to metadata should she take when depositing the dataset?

A. Complete the structured fields and move the README into a private lab wiki only
B. Leave the structured fields empty and expand the README for deposit instead
C. Complete the structured fields and keep the README beside the deposited files
D. Paste the full README text into each of the structured metadata fields

**Answer:** C

**Rationale.** Structured fields are harvested by machines. The README is written for the person who opens the folder. Both are needed, because each audience fails on the other's format. A hides the human-readable overview from depositors. B abandons the machine-readable fields. D fills the fields with text no harvester can interpret.

**Facilitator note.** Point forward to Exercise 2's README and data dictionary: machines need structured fields; people need the README.

---

### D2-09 — Documenting data quality

- **Tests:** workflow practice — quality checks are planned and written down, not assumed
- **Reading:** SRC template skim — *How will data quality be safeguarded and documented…?* (guidance on validation, repeated measures, peer review of data); Day 2 morning DMP skim
- **Outcome:** 4
- **Prepares:** Exercise 2 — **Documentation and data quality** (*How will data quality be safeguarded and documented…?*)

**Stem.** A student drafts her DMP answer on data quality for a survey study. She plans a dual-entry check against paper originals.

**Lead-in.** What must the DMP name about data quality for this study?

A. That staff experience with the instrument will keep quality high, with no separate check planned
B. That quality will be reviewed before analysis, without naming the method or where it is recorded
C. That quality problems will be described in the paper's limitations after the results are written
D. That dual entry is compared, conflicts resolved, and the outcomes logged in the cleaning log

**Answer:** D

**Rationale.** The SRC question asks how quality will be safeguarded *and documented*. D names a method and where the record lives. A asserts quality without a check. B promises a check without saying which. C moves the record into a publication that appears after the fact.

**Facilitator note.** Teams with qualitative projects may argue the vignette is survey-only. Accept a parallel answer (for example peer check of coding with a dated note) and keep the standard: name the check and where it is written down. That is what Exercise 2 asks them to draft.

---

### D2-10 — Who is responsible for data management

- **Tests:** KI aim — the DMP names who does which data-management jobs during and after the project
- **Reading:** SRC template skim — *Who is responsible for data management…*; Collaboration recommendations on shared task lists and clear roles
- **Outcome:** 4
- **Prepares:** Exercise 2 — **Responsibility and resources**

**Stem.** A three-person KI project has started collecting data. Nobody has written down who backs up the files, who updates the data dictionary, or who will handle long-term storage after the grant ends.

**Lead-in.** What should the DMP record about responsibility?

A. That the research group as a whole is responsible, without naming individuals or roles
B. Named people or roles for ongoing data tasks and for care after the project ends
C. Only the principal investigator's name, with no other roles listed for ongoing tasks
D. A note that named responsibility will be assigned once the dataset is complete

**Answer:** B

**Rationale.** The SRC responsibility question asks who manages data during the project and who continues after it ends. A and C leave the work unassigned. D postpones the plan the template asks for now.

**Facilitator note.** Carry straight into Exercise 2's responsibility draft. Students need not invent a full org chart; one clear owner per task is enough for a course draft.

---

## Reserve items

Not part of the 10-item set for this run. Usable for swap-in or a make-up test. Several were live before D054/D055 realigned the bank to the afternoon DMP sections.

### D2-R1 — Where data become citable (was D2-06)

- **Tests:** workflow practice — a persistent identifier outlives the people and the website
- **Reading:** Data Management, recommendation 7 (submit data to a reputable DOI-issuing repository)
- **Outcome:** 4, 5
- **Set aside because:** long-term deposit and DOI sit outside the six SRC areas drafted in these sessions; metadata for deposit is covered by live D2-07 and D2-08.

**Stem.** A student wants the dataset behind her thesis to remain findable and citable in ten years, after the research group's website has been retired.

**Lead-in.** Where should the dataset be deposited?

A. A public code-hosting repository, linked from the thesis and kept public after graduation
B. A community or general repository that issues DOIs and commits to long-term archiving
C. The research group's website, under an address the group promises to maintain
D. The university network drive, with the folder path given in the thesis

**Answer:** B

**Rationale.** A DOI-issuing repository provides a persistent identifier and an archiving commitment that survive institutional change. A hosts content that can be altered or deleted and carries no identifier of its own, and C and D depend on a service and a path that outlive neither the group nor the student.

**Facilitator note.** Name KI's own route: DORIS. Deposit decisions still follow ethics approval and the access rules in the DMP.

---

### D2-R2 — No licence is a licence (was D2-08)

- **Tests:** workflow practice — reuse terms are stated, not assumed
- **Reading:** Collaboration, recommendation 4 (make the license explicit)
- **Outcome:** 5
- **Set aside because:** licences matter in the reading, but Exercise 1 stresses consent/ethics/GDPR before licence talk, and the afternoon does not draft the legal SRC questions.

**Stem.** A student publishes her project repository with a README and a `CITATION` file, and no `LICENSE` file. A researcher in another country asks whether she can adapt the survey instrument for her own study.

**Lead-in.** What does the missing licence mean for the requester?

A. Reuse is permitted for non-commercial purposes
B. Reuse is permitted once the author has been notified
C. Reuse is permitted with attribution, because the material was published openly
D. Reuse is not permitted, because the author retains all rights

**Answer:** D

**Rationale.** The absence of a licence does not mean there are no terms: it means all rights are reserved and others have no permission to reuse or modify the material. A, B, and C each describe permissions that only exist if a licence grants them.

**Facilitator note.** Follow with the practical point that a licence covers only what may legally be shared.

---

### D2-R3 — Disclosing what the tool wrote (was D2-09)

- **Tests:** KI aim — AI use is disclosed and verified, and the record says which parts
- **Reading:** the AI rules on the Day 1 page (Copilot-first, keep prompt and output, verify, disclose); KI Generative AI and Education
- **Outcome:** 5
- **Set aside because:** AI disclosure remains in the 5-year rubric, but it is no longer a dedicated afternoon drafting step after D054.

**Stem.** A student drafts her README and two DMP paragraphs with Microsoft Copilot, edits the text, and checks the storage claims against the KI pages before keeping them.

**Lead-in.** What should the project package record about this use of AI?

A. Which text came from the tool, what she checked, and what she changed
B. The tool and its version, listed in the acknowledgements of the finished thesis
C. That an AI assistant was used somewhere in the project, noted once in the README
D. Nothing further, given that she verified and edited every sentence before keeping it

**Answer:** A

**Rationale.** Disclosure has to be specific enough for a reader to act on: which passages the tool drafted, what a human verified them against, and what the human changed. B puts the disclosure in a document the project folder does not hold, C discloses the fact without saying where, and D treats verification as a substitute for disclosure.

**Facilitator note.** Restate the hard line: no personal, patient, or sensitive research data in prompts.

---

### D2-R4 — What the trail lets an outsider do (was D2-10)

- **Tests:** the definition and the KI aim — traceable work with a stated access route
- **Reading:** Day 2 GEP sections as a whole; KI policy for open access to research data; Riktlinjer §§6–7
- **Outcome:** 1, 5
- **Set aside because:** the synthesis is useful in clarification, but the live set now ends on the responsibility draft students write next.

**Stem.** A team publishes its documentation and analysis material openly, keeps the identifiable interview transcripts in KI-approved storage with access on request, and records in the decision log why each exclusion and each coding change was made.

**Lead-in.** What does this arrangement let a reader outside the team do?

A. Follow how the findings were reached, and request the protected material by a stated route
B. Recreate the findings from the same data and the same analysis without contacting the team
C. Collect new data under the same protocol and establish whether the findings hold elsewhere
D. Reuse the transcripts in a new study, because they are held in approved storage

**Answer:** A

**Rationale.** KI asks that research be documented so it can be traced, interpreted, and reproduced, and that it be as open as possible and as limited as necessary. This team delivers a traceable account plus a named way in. B overstates it, since the data are not open. C describes replication with new data, and D ignores consent and the access decision.

**Facilitator note.** Useful closer if swapped in for a make-up test.

---

### D2-R5 — What belongs in the repository (earlier reserve)

- **Tests:** workflow practice — version control serves plain-text material written by a human
- **Reading:** Keeping Track of Changes, *What Not to Put Under Version Control* and *Inadvertent Sharing*
- **Outcome:** 3, 5
- **Set aside because:** the stem assumes the student uses Git, which we neither teach nor expect (D032).

**Stem.** A student who already uses Git has four items in her project folder: a 200-line cleaning script, a 4 GB archive of scanned questionnaires, a figure that the script regenerates on every run, and a file holding the database password.

**Lead-in.** Which item belongs in the version-controlled repository?

A. The 4 GB archive of scanned questionnaires
B. The cleaning script
C. The figure regenerated on every run
D. The file holding the database password

**Answer:** B

**Rationale.** Plain-text material written by a human, small enough to compare line by line, is what version control is for. A exceeds what version control systems handle and holds raw material that does not change, C can be regenerated from script and data, and D must never enter a repository at all.

**Facilitator note.** Teams often argue for C; redirect to D, where there is no defensible position.

---

### D2-R6 — Credit in a file (earlier reserve)

- **Tests:** workflow practice — the project states how it wants to be cited
- **Reading:** Collaboration, recommendation 5 (make the project citable)
- **Outcome:** 5
- **Set aside because:** credit is furthest from the afternoon DMP drafts.

**Stem.** A project root holds `README`, `LICENSE`, and `CHANGELOG`. The supervisor wants everyone who uses the dataset or the analysis code to credit the project in the same way.

**Lead-in.** Which file should be added to the project root?

A. `CITATION`, stating how to cite the project and its associated DOIs
B. `CONTRIBUTING`, stating what a new collaborator needs to set up and follow
C. `notes.txt`, listing the tasks outstanding for the team
D. `requirements.txt`, listing the software needed to run the analysis

**Answer:** A

**Rationale.** A `CITATION` file tells users how to cite the project as a whole and where to find the DOIs of its parts. B, C, and D are all recommended by the reading for other purposes and none of them establishes credit.

**Facilitator note.** Ask teams which of these four files their own project already has; most will have none.
