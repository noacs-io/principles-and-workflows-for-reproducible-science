# Day 1 iRAT / tRAT — transparency and provenance

**Pre-reading:** Good Enough Practices — **Introduction**; **Data Management** recommendations 1–6; **Project Organization**; **Collaboration** recommendation 1 (the README). See the Day 1 morning list in [`plan/session-master.qmd`](../plan/session-master.qmd).

**Principle in focus (D018):** research is only as trustworthy as the trail it leaves. Every item below tests a principle — raw versus derived, provenance, documentation that outlives the project — through a practical choice.

**Use:** 10 items, individually (iRAT) then in teams (tRAT) with the same items. All vignettes are fictional; no real personal data.

Item-writing conventions: [`README.md`](README.md). Draft status — not yet reviewed by the teaching team.

---

### D1-01 — The raw file is the record

- **Principle:** provenance — the original material must survive the analysis
- **Reading:** Data Management, recommendation 1 (save the raw data)
- **Outcome:** 1 (explain the principles), 2 (structure and document)

**Stem.** A doctoral student receives the first survey export from a field site as `hh_survey_export.csv`. Checking it, she finds impossible ages and three spellings of the same district. She corrects the values in a spreadsheet and saves the file under its original name.

**Lead-in.** Which practice would have preserved the provenance of this dataset?

A. Keeping the export read-only and writing the corrections to a separate cleaned file
B. Saving the corrected file under a name that includes the date of correction
C. Storing a second copy of the corrected file on institutional storage
D. Reporting the number of corrected values in the methods section of the paper

**Answer:** A

**Rationale.** Raw data are the record of what was actually collected; once overwritten, no later documentation can reconstruct them. Writing corrections to a separate file keeps the chain from raw to derived visible. B, C, and D all preserve *a* file, but the file they preserve is already edited, so the original values are gone in each case.

**Facilitator note.** Expect B to attract students who equate versioning with dated file names. Use the split to introduce the raw-versus-derived distinction before the folder exercise.

---

### D1-02 — Cleaning without code

- **Principle:** provenance — every processing step is part of the analysis
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

**Facilitator note.** This item protects the documentation track (D002 / D014): reproducibility here is a documentation habit, not a programming skill. Say so explicitly during clarification.

---

### D1-03 — Analysis-friendly data

- **Principle:** data others can use — one variable per column, one observation per row
- **Reading:** Data Management, recommendations 3–4 (create the data you wish to see; create analysis-friendly data)
- **Outcome:** 2, 4

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

### D1-04 — File names that sort and filter

- **Principle:** findability — names carry the metadata people and machines search on
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

**Facilitator note.** Run this against the naming examples in the poor synthetic project folder during clarification.

---

### D1-05 — Raw and derived live apart

- **Principle:** separation of raw from derived material
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

**Facilitator note.** This item reliably splits teams, because "it is data, so it goes in `data/`" is a reasonable-sounding rule. It is the best entry point for the raw-versus-derived clarification; accept a well-argued `data/raw` and `data/derived` variant as long as the separation is explicit and documented.

---

### D1-06 — What a README is for

- **Principle:** documentation that orients a stranger, including your future self
- **Reading:** Collaboration, recommendation 1 (create an overview of your project)
- **Outcome:** 2

**Stem.** A project README contains the project title and a list of every file in the folder. A colleague opening the folder in five years needs to work out what the project was for and who to ask about it.

**Lead-in.** Which content should be added to this README?

A. The definitions of every variable in each data file
B. The licence terms under which the files can be reused
C. The purpose of the project, contact details, and an example task
D. The record of changes made to the files, in date order

**Answer:** C

**Rationale.** The reading asks a README to carry the title, a brief description, up-to-date contact information, an example or two of the most important tasks, and an overview of the folder structure. A belongs in a data dictionary, B in a `LICENSE` file, and D in a changelog or decision log — all useful, none of them the README's job.

**Facilitator note.** Link straight to the Day 1 application exercise: students write this README for their own PhD project.

---

### D1-07 — Linking tables

- **Principle:** provenance across files — identifiers must mean the same thing everywhere
- **Reading:** Data Management, recommendation 6 (multiple tables, unique identifier per record)
- **Outcome:** 2, 4

**Stem.** Demographic data are held in one table where participants are identified as `014025`. Clinical measurements are held in a second table where the same participant appears as `14,025`.

**Lead-in.** Which practice allows the two tables to be linked reliably?

A. Adding a sequential row number to each table and matching on that
B. Recording the identifier in one format and using the same name in both tables
C. Combining both tables into a single wide table at the point of data entry
D. Sorting both tables by identifier before merging them each time

**Answer:** B

**Rationale.** A persistent identifier in a common format, named consistently, is what makes the link reproducible. A matches on positions that change whenever a row is added or removed, C removes the ability to hold demographic and clinical records at their own granularity, and D leaves the two formats unmatched.

**Facilitator note.** Ties directly to the SRC DMP question on data types and structure.

---

### D1-08 — Formats that outlive the licence

- **Principle:** longevity — the 5-year test applies to formats, not only to folders
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

- **Principle:** material that exists in one place is not documented, it is at risk
- **Reading:** Data Management, recommendation 2 (back up in more than one location), read with the KI storage rules
- **Outcome:** 2, 5

**Stem.** A student keeps the only copy of her transcripts on her laptop and carries a USB drive with a second copy in her bag.

**Lead-in.** Which arrangement meets the backup requirement for research data at KI?

A. An external hard drive updated daily and kept with the laptop
B. A personal cloud account shared with the supervisor and updated daily
C. The project folder mirrored daily to KI-approved storage that is itself backed up
D. Two USB drives updated weekly and stored in different buildings

**Answer:** C

**Rationale.** The reading asks for more than one location, mirrored off the working machine and synchronised at least daily; KI adds that research data belong on approved storage. C satisfies both. A keeps both copies in the same place and at the same risk, B uses an account outside institutional control, and D relies on portable media the reading rejects outright.

**Facilitator note.** The reading's own examples include commercial cloud services; state plainly that KI-approved storage overrides that advice here, and point at the KI storage list.

---

### D1-10 — Name the principle

- **Principle:** provenance, stated as a principle rather than a set of habits
- **Reading:** Day 1 GEP sections as a whole (Introduction; Data Management 1, 5; Project Organization 3)
- **Outcome:** 1

**Stem.** A team keeps every data export read-only, records each cleaning decision in a dated log, and writes derived tables to a separate folder from the exports.

**Lead-in.** Which principle of reproducible research do these three practices serve together?

A. Accountability — contributions are attributed to named people
B. Interoperability — data can be combined with other datasets
C. Openness — material is published without restriction
D. Provenance — the path from raw material to result stays visible

**Answer:** D

**Rationale.** All three practices exist so that any result can be traced back to the material it came from. A is about credit and responsibility, B about shared formats and vocabularies, and C about who may access the material — none of which these three practices establish.

**Facilitator note.** Use the answers to this item to open the clarification block: students who can name the principle can defend a folder we never saw, which is the point of the two days.
