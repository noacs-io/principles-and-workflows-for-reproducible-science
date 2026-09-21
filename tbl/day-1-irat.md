# Day 1 iRAT / tRAT — the definition, and the documentation it needs

**Pre-reading (Day 1 required):** the Turing Way definitions page and the Keele note on qualitative work; the AI rules; [Riktlinjer för forskning vid KI](https://staff.ki.se/media/99345/download) §§6–7 and the [KI guidelines for research documentation and data management](https://staff.ki.se/research-support/research-data-management/plan-your-research-data-management/guidelines-for-research-documentation-and-data-management); Good Enough Practices — **Introduction**; **Data Management** recommendations 1–6; **Project Organization**; **Collaboration** recommendation 1 (the README); FAIR at KI and the How to FAIR introduction. Student-facing list: [`canvas/pages/day-1-morning.md`](../canvas/pages/day-1-morning.md); pre-reading split: [`plan/session-plan.qmd`](../plan/session-plan.qmd).

**What these items test (D025):** the working definition of reproducible research (same data, same analysis), the caveat that much qualitative work aims for auditability instead, what KI asks of documentation (research must be possible to trace, interpret, and reproduce), and the Day 1 practices that make those aims real. Every item names which of the three it tests. An item that drills a habit without connecting it to the definition, a KI aim, or the 5-year test is not finished.

**Use:** 10 items, individually (iRAT) then in teams (tRAT) with the same items. All vignettes are fictional; no real personal data.

Item-writing conventions: [`README.md`](README.md). Draft status — not yet reviewed by the teaching team.

---

### D1-01 — The raw file is the record

- **Tests:** workflow practice — the original material has to survive the analysis
- **Reading:** Data Management, recommendation 1 (save the raw data)
- **Outcome:** 1 (explain the definition), 2 (structure and document)

**Stem.** A doctoral student receives the first survey export from a field site as `hh_survey_export.csv`. Checking it, she finds impossible ages and three spellings of the same district. She corrects the values in a spreadsheet and saves the file under its original name.

**Lead-in.** Which practice would have kept the path from raw data to result visible?

A. Keeping the export read-only and writing the corrections to a separate cleaned file
B. Saving the corrected file under a name that includes the date of correction
C. Storing a second copy of the corrected file on institutional storage
D. Reporting the number of corrected values in the methods section of the paper

**Answer:** A

**Rationale.** Raw data are the record of what was actually collected; once overwritten, no later documentation can reconstruct them. Writing corrections to a separate file keeps the chain from raw to derived visible, which is what "the same data" in the definition refers to. B, C, and D all preserve *a* file, but the file they preserve is already edited, so the original values are gone in each case.

**Facilitator note.** Expect B to attract students who equate versioning with dated file names. Use the split to introduce raw versus derived before Application 1, where the two Drive folders treat their exports differently — do not say which folder is stronger (D042).

---

### D1-02 — Cleaning without code

- **Tests:** workflow practice — every processing step is part of the analysis
- **Reading:** Data Management, recommendation 5 (record all the steps used to process data)
- **Outcome:** 1, 2

**Stem.** A student with no programming background cleans an interview metadata table by hand in a spreadsheet: deleting duplicate rows, recoding site names, and merging two columns. The same cleaning will be needed when the second wave of data arrives.

**Lead-in.** Which practice makes this cleaning step reproducible?

A. Keeping the cleaned table in the same folder as the original export
B. Repeating the cleaning a second time and comparing the two results
C. Stating in the README that the table was cleaned by hand in a spreadsheet
D. Recording each manual action and the reason for it in a dated cleaning log

**Answer:** D

**Rationale.** Every processing step has to be recorded, and where scripting is not feasible, each manual action is written down instead. A dated log does that. A records nothing, B checks consistency without documenting the procedure, and C records that cleaning happened but not what was done.

**Facilitator note.** Nobody needs to write code to answer this, and nobody should leave thinking they are behind for cleaning by hand (D032). Say that during clarification: the requirement is a readable record of the steps, not a script.

---

### D1-03 — FAIR is not a synonym for open

- **Tests:** KI aim — data are handled and described according to FAIR whether or not they can be shared
- **Reading:** KI FAIR-principles page; Riktlinjer §7; How to FAIR introduction
- **Outcome:** 1, 5

**Stem.** A student's interview data cannot be published: consent covers use by the research group only. She concludes that the FAIR principles have nothing to say about her project.

**Lead-in.** How do the FAIR principles apply to data that may not be shared?

A. They apply only to the parts of a dataset that may be published
B. They apply to the dataset, and its metadata can be findable while access stays conditional
C. They apply only once consent has been renegotiated to permit open publication
D. They apply to the published results rather than to the data behind them

**Answer:** B

**Rationale.** KI asks that data be handled and described according to FAIR whether or not they can be shared openly. The A in FAIR is *accessible under stated conditions*, not *open*, so a closed dataset with published metadata and a named access route is FAIR. A treats accessible as a synonym for open, C makes FAIR wait on a consent change that ethics may never allow, and D moves the principles onto the wrong material.

**Facilitator note.** This is the item that separates FAIR from open, and it sets up the Day 2 sharing decisions. Students working with registry or interview data often assume FAIR is for other people; the metadata point is what changes their mind.

---

### D1-04 — File names that sort and filter

- **Tests:** workflow practice — names carry the information people and machines search on
- **Reading:** Project Organization, recommendation 6 (name files to reflect content or function); Data Management, recommendation 3 (filenames)
- **Outcome:** 2

**Stem.** A student is naming the data files from a two-site longitudinal study with repeated samples per site.

**Lead-in.** Which file name sorts into chronological order and supports pattern matching by site?

A. `2026-03-02_kisumu_s03_baseline.csv`
B. `Mar-2-2026_kisumu_s3_baseline.csv`
C. `baseline_data_v3_FINAL.csv`
D. `kisumu baseline s3 (final).csv`

**Answer:** A

**Rationale.** A uses an ISO date that sorts chronologically, zero-padded sample numbers that sort numerically, no spaces or punctuation that break pattern matching, and content-bearing elements. B sorts alphabetically by month name and loses order without the leading zero, C describes neither content nor date and relies on "FINAL", and D contains spaces and brackets that complicate machine reading.

**Facilitator note.** Read this against the file names in the two Application 1 folders during clarification, still without labelling either one (D042). KI's §6.1 naming parts arrive on Day 2; today the point is only that names sort and filter.

---

### D1-05 — Raw and derived live apart

- **Tests:** workflow practice — generated material is separated from what was collected
- **Reading:** Project Organization, recommendations 2–3 (`doc`, `data`, `results`)
- **Outcome:** 2

**Stem.** A project folder follows the layout in the reading. The student has just produced a cleaned version of the raw household survey, which the analysis will read.

**Lead-in.** In which directory does the cleaned file belong?

A. `data/`, beside the raw export
B. `doc/`, beside the data dictionary
C. `results/`, apart from the raw export
D. `src/`, beside the cleaning script

**Answer:** C

**Rationale.** `data/` holds raw data and metadata; everything generated during cleanup and analysis — including cleaned datasets — goes to `results/`. Keeping generated files out of `data/` is what makes the raw material recognisable years later. A is the common intuition, B confuses documentation with derived data, and D confuses outputs with the code that produced them.

**Facilitator note.** This item reliably splits teams, because "it is data, so it goes in `data/`" is a reasonable-sounding rule. Accept a well-argued `data/raw` and `data/derived` variant as long as the separation is explicit and documented. It feeds the rubric's separation-of-concerns question in Application 1.

---

### D1-06 — What a README is for

- **Tests:** workflow practice — documentation that orients a stranger, including your future self
- **Reading:** Collaboration, recommendation 1 (create an overview of your project)
- **Outcome:** 2

**Stem.** A project README contains the project title and a list of every file in the folder. A colleague opening the folder in five years needs to work out what the project was for and who to ask about it.

**Lead-in.** Which content should be added to this README?

A. The definitions of every variable in each data file
B. The licence terms under which the files can be reused
C. The purpose of the project, contact details, and an overview of the folder structure
D. The record of changes made to the files, in date order

**Answer:** C

**Rationale.** The reading asks a README to carry the title, a brief description, up-to-date contact information, an example or two of the most important tasks, and an overview of the folder structure. A belongs in a data dictionary, B in a `LICENSE` file, and D in a changelog or decision log — all useful, none of them the README's job.

**Facilitator note.** Point forward to Application 2, where students write this README for their own project, and to the rubric's orientability question, which Application 1 asks of somebody else's folder first.

---
<!-- replace this questions as we are not introducing ELN -->
### D1-07 — The ELN and the project folder

- **Tests:** KI aim — the institutional research record and the working folder do different jobs
- **Reading:** KI guidelines for research documentation and data management; the KI ELN entry on the Day 1 page
- **Outcome:** 2, 5

**Stem.** A student records her study's daily documentation in KI ELN. This afternoon she also builds a project folder holding her data, her analysis material, a README, and a decision log.

**Lead-in.** How do the two records relate to each other?

A. The project folder replaces the ELN once the study's documentation is complete
B. The ELN replaces the project folder for studies that run no laboratory work
C. The ELN holds the analysis material, and the project folder holds the study record
D. The ELN is the institutional record, and the project folder organises the working material

**Answer:** D

**Rationale.** KI ELN is where research documentation is kept as the institution requires; the project folder is the analytical and organisational companion, and its README says where the official record lives. They complement each other. A and B treat them as substitutes for one another, and C swaps their roles.

**Facilitator note.** Ask which of the two a colleague would open first in five years, and where the answer is written down. The rubric's ethics-and-access question asks the same thing. Check before the run that the Day 1 Canvas page lists the ELN page as required reading rather than as background, otherwise drop this item (see the gaps in [`README.md`](README.md)).

---

### D1-08 — Formats that outlive the licence

- **Tests:** workflow practice — the 5-year test applies to formats, not only to folders
- **Reading:** Data Management, recommendation 3 (file formats)
- **Outcome:** 1, 2

**Stem.** A qualitative study keeps its coding matrix inside the project file of a commercial analysis package. The student's licence for that package ends with her PhD.

**Lead-in.** Which storage choice protects the coding matrix for the 5-year test?

A. Copying the coding matrix into the manuscript as an appendix table
B. Exporting the coding matrix to CSV and keeping it with the native project file
C. Keeping the native project file and recording the software version in the README
D. Printing the coding matrix to PDF and storing it in `doc/`

**Answer:** B

**Rationale.** Converting to an open, non-proprietary format keeps the material machine-readable regardless of future licences, while the native file is retained for anyone who still has the software. A and D produce human-readable copies that cannot be reanalysed, and C documents the dependency without removing it.

**Facilitator note.** Applies equally to `.sav`, `.dta`, `.nvp`, and lab-instrument formats; ask teams which of their own files fail this test.

---

### D1-09 — Backup that counts as backup

- **Tests:** KI aim — research data live on approved storage, in more than one place
- **Reading:** Data Management, recommendation 2 (back up in more than one location), read with the KI storage rules
- **Outcome:** 2, 5

**Stem.** A student keeps the only copy of her transcripts on her laptop and carries a USB drive with a second copy in her bag.

**Lead-in.** Which arrangement meets the backup requirement for research data at KI?

A. An external hard drive updated daily and kept with the laptop
B. A personal cloud account shared with the supervisor and updated daily
<!-- Replace KI-approved storage with an actual approved platform -->
C. The project folder mirrored daily to KI-approved storage that is itself backed up
D. Two USB drives updated weekly and stored in different buildings

**Answer:** C

**Rationale.** The reading asks for more than one location, mirrored off the working machine and synchronised at least daily; KI adds that research data belong on approved storage. C satisfies both. A keeps both copies in the same place and at the same risk, B uses an account outside institutional control, and D relies on portable media the reading rejects outright.

**Facilitator note.** The reading's own examples include commercial cloud services; state plainly that KI-approved storage overrides that advice here, and point at the KI storage list. Storage and security are drafted into the DMP on Day 2, so keep this short.

---

### D1-10 — Reproduced, or replicated

- **Tests:** the definition — same data and same analysis, and where the words diverge
- **Reading:** Turing Way definitions; the Keele note on qualitative research; Riktlinjer §§6–7
- **Outcome:** 1

**Stem.** One team re-runs a published analysis using the authors' dataset and the authors' analysis, and gets the same numbers. A second team collects new data in another country using the same protocol and analysis, and gets different numbers.

**Lead-in.** How does the working definition for these sessions describe the two exercises?

A. Both tested reproducibility, and the second result shows the first analysis was not reproducible
B. The first tested reproducibility, the second replicability, and the two results do not conflict
C. The first tested replicability, and the second tested reproducibility because it collected new data
D. Neither tested reproducibility, because that requires repeating the data collection

**Answer:** B

**Rationale.** The Turing Way calls it reproduction when the same data and the same analysis give the same result, and replication when new data are collected and analysed the same way. Different findings from new data are a normal research result, not evidence that the original analysis was unreproducible. A and D redefine reproduction as something involving new data, and C swaps the two words.

**Facilitator note.** Open the clarification block here. Two things to add out loud: other fields swap these words, and for much qualitative work the practical aim is that others can follow and evaluate how interpretations were reached. Then ask what KI requires, which is not a definition at all — documentation detailed enough that research can be traced, interpreted, and reproduced (§6), and openness and FAIR because they raise the chance of reproduction (§7). A student who can say both can defend a folder we never saw, which is the point of the two days.

---

## Reserve items

Not part of the 10-item set for this run. Both were written in the first cut of the bank and were set aside when the definition, FAIR, and ELN items came in (D050). They follow the same conventions, so either can be swapped back in or used for a make-up test.

### D1-R1 — Analysis-friendly data (was D1-03)

- **Tests:** workflow practice — one variable per column, one observation per row
- **Reading:** Data Management, recommendations 3–4 (create the data you wish to see; create analysis-friendly data)
- **Outcome:** 2, 4
- **Set aside because:** table structure comes up again in Application 2 and in the SRC data-description paste, and the live bank needed the slot for the definition.

**Stem.** A summary table holds one row per clinic, with the columns `female_treated_w4`, `male_treated_w4`, `female_control_w4`, and `male_control_w4`. Each cell holds a haemoglobin value written as `11.2 g/dL`.

**Lead-in.** Which restructuring makes this table analysis-friendly?

A. Adding a column that averages the four measurements for each clinic
B. Giving sex, group, week, and unit their own variables, with one measurement per row
C. Shortening the column names to codes that are defined in the README
D. Sorting the columns so that treated and control values sit next to each other

**Answer:** B

**Rationale.** Analysis-friendly ("tidy") data make each column a variable and each row an observation, and hold units outside the measured value. B does all three. A adds a derived value without fixing the structure, C renames without restructuring, and D changes only the display order.

**Facilitator note.** Most students recognise the wide layout as awkward but keep the unit inside the cell; make the unit point explicitly, because it is what breaks numeric analysis later.

---

### D1-R2 — Linking tables (was D1-07)

- **Tests:** workflow practice — identifiers must mean the same thing in every file
- **Reading:** Data Management, recommendation 6 (multiple tables, unique identifier per record)
- **Outcome:** 2, 4
- **Set aside because:** it is the most technical item in the bank and the closest to the data collection protocol, which these sessions only touch lightly.

**Stem.** Demographic data are held in one table where participants are identified as `014025`. Clinical measurements are held in a second table where the same participant appears as `14,025`.

**Lead-in.** Which practice allows the two tables to be linked reliably?

A. Adding a sequential row number to each table and matching on that
B. Recording the identifier in one format and using the same name in both tables
C. Combining both tables into a single wide table at the point of data entry
D. Sorting both tables by identifier before merging them each time

**Answer:** B

**Rationale.** A persistent identifier in a common format, named consistently, is what makes the link reproducible. A matches on positions that change whenever a row is added or removed, C removes the ability to hold demographic and clinical records at their own granularity, and D leaves the two formats unmatched.

**Facilitator note.** Ties directly to the SRC DMP question on data types and structure.
