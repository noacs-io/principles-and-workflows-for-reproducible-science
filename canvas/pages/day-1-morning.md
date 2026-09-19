# Day 1 morning — guided self-study

**Time:** about 3 hours before the Day 1 afternoon (13:00, room **Future** + Zoom).  
**Focus:** what “reproducible” means (and where it frays); KI cites; AI rules; Part A + FAIR readings.  
**Outcomes:** mainly 1, 2, and 5 (AI); orientation toward 4 (DMP).

Work through the blocks **in order**. The AI block comes before any afternoon drafting with tools.

---

## 1. Definition block (required) — outcome 1

**Working definition** ([The Turing Way](https://book.the-turing-way.org/reproducible-research/overview/overview-definitions/)): reproducible research is work that can be independently recreated from the **same data and the same analysis** the original team used.

**Caveats**

- Fields disagree on the words *reproducible* and *replicable*.
- For much **qualitative** research, the practical aim is often *auditability*: others can follow and evaluate how interpretations were reached, not obtain identical findings ([Keele KORSA](https://www.keele.ac.uk/korsa/qualitative/reproducibilityreplication/)).

**What KI asks** (not a formal definition — a documentation and openness requirement)

| Reading | Required? | What to take from it | Outcome |
|---------|-----------|----------------------|---------|
| [Riktlinjer för forskning vid KI](https://medarbetare.ki.se/media/99275/download) §§6–7 | **Required** | Describe the process so research can be *spåras, tolkas och reproduceras*; openness and FAIR increase the chance to reproduce | 1 |
| [Guidelines for research documentation and data management](https://staff.ki.se/research-support/research-data-management/plan-your-research-data-management/guidelines-for-research-documentation-and-data-management) | **Required** | Reasons to document: **traceability** and ability to repeat analyses (reproducibility); **reusability**. Note retention (≥10 years or as long as the data is available) and §6.1 naming (you will use naming more on Day 2) | 1, 2 |

Also fix these in your notes:

- **5-year test:** can a future you (or a colleague) understand what was done and why?
- **Course DMP assignment:** these sessions feed **assignment component 1** (the SRC DMP). Component 2 is the data collection protocol — other course parts own that depth. See [Assignment component 1: DMP](assignment-1-dmp.md).
- **Afternoon venue:** hybrid — room **Future** + [Zoom](https://ki-se.zoom.us/j/68142022512).

---

## 2. AI block (required) — outcome 5

You may use AI when you build your own folder in **afternoon Application 2**. Read this **before** that drafting. Full prompt library and disclosure form ship separately (issue #15); these four rules apply even if that pack is incomplete.

| Point | What to do |
|-------|------------|
| Default tool | Prefer **Microsoft Copilot** (KI-supported). See [KI Generative AI and Education](https://staff.ki.se/tools-and-support/ai-at-ki/generative-ai-and-education). Other tools only if they meet the same data-safety bar. |
| Never in prompts | Personal data, patient data, unpublished sensitive research, identifiable field notes. |
| Always | Keep prompt + output; **verify and edit** before trusting; disclose AI use when presenting to your team. |
| Optional | Manual drafting is fine — AI is offered, not required. |

Optional deepening: KI Catalog course [*Working with (generative) AI*](https://ki.eu-west.catalog.canvaslms.com/courses/working-with-generative-ai).

---

## 3. DMP map skim (required) — outcome 4

1. Download the SRC template from Canvas **Files**: `Swedish_Research_Council_Template__v5.docx` (assignment component 1 — DMP).
2. Open [Assignment component 1: DMP](assignment-1-dmp.md) and skim the **Session → SRC DMP map**.
3. Note the six areas these two days cover. Day 1 afternoon pastes **data description** and **documentation** only.

---

## 4. Good Enough Practices — Part A (required) — outcome 2

Student-facing text: [Carpentries adaptation (all-in-one)](https://carpentries-lab.github.io/good-enough-practices/aio.html). Source paper: [Wilson et al. (2017)](https://doi.org/10.1371/journal.pcbi.1005510).

Read **only Part A** today (~25–30 min):

| Section | Required? | Why |
|---------|-----------|-----|
| Introduction (shared principles) | **Required** | Vocabulary for the readiness test |
| **Data Management**, recommendations **1–6** | **Required** | Raw vs derived; provenance of processing steps |
| **Project Organization** (all) | **Required** | Folder layout you will build in App 2 |
| **Collaboration**, recommendation **1** only (README) | **Required** | Overview document for a future collaborator (including future you) |
| Carpentries-only **Data management plans** block (end of Data Management) | **Required** if using the Carpentries page | Ties the morning SRC skim to the reading |
| **Software**; **Manuscripts**; Data Management rec. **7**; Collaboration **2–5**; Keeping Track of Changes | **Skip today** | Those are Day 2 (Part B) or out of scope |

**KI corrections while you read** (follow KI, not the commercial-cloud examples in the paper):

| Reading says | Follow instead |
|--------------|----------------|
| Commercial cloud (S3, Dropbox, and similar) as backup | KI-approved storage for research data; no personal cloud accounts for restricted data; no USB drives |
| Choose CC-0 / CC-BY freely | Consent, ethics, and GDPR decide what may be shared **before** any licence talk |

---

## 5. FAIR (required) — outcomes 1 and 5 (sharing judgement later)

FAIR is findability and access machinery. It is **not** the same as “everything must be public.”

| Resource | Required? | What to do | Outcome |
|----------|-----------|------------|---------|
| [How to FAIR](https://www.howtofair.dk/) (videos + short pages) | **Required** | Watch the case introductions that match your methods (health sciences / qualitative / sensitive if relevant). Skim **What is FAIR** and at least **Documentation** and **Access to data** | 1 |
| [The FAIR-principles (KI Staff Portal)](https://staff.ki.se/research-support/research-data-management/plan-your-research-data-management/the-fair-principles) | **Required** | How KI frames FAIR in policy and DMP work | 1 |

Optional: [Wilkinson et al. (2016)](https://doi.org/10.1038/sdata.2016.18) if you want the original paper.

---

## 6. Individual readiness notes (required) — outcomes 1–2

Before 13:00, jot short notes you can use in the iRAT (definition vs KI aims; raw vs derived; FAIR vs open; ELN vs project folder). The item bank is facilitator-facing in the repo; you do not need the answer key.

---

## Not this morning

- No good vs poor folder critique (that is **afternoon Application 1**).
- No paste into the DMP yet (afternoon Application 2).
- No Git lesson.
