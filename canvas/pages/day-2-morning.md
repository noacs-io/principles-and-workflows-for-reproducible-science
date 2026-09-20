# Day 2 morning — pre-readings for self-study

Work through these during the morning (09:00 to 12:00), before the afternoon. The afternoon readiness test covers the required readings only. You keep working on the **same project folder** you started on Day 1. Handwritten notes while you read are a useful learning tool. Bring them to the afternoon tests and applications.

## Required

### 1. Track changes and decide what to share (Good Enough Practices)

Same links as Day 1: [Carpentries adaptation](https://carpentries-lab.github.io/good-enough-practices/aio.html) (an easier web version of the [original article](https://doi.org/10.1371/journal.pcbi.1005510), PLoS Computational Biology 2017). Read the sections left from Day 1:

- **Keeping Track of Changes** (all). Dated copies and a changelog; version control systems; what not to put under version control; inadvertent sharing. Note GEP’s **Single Master Online** advice (named under Manuscripts in the source).
- **Data Management**, recommendation **7**. Repositories that issue DOIs; metadata written for humans versus for harvesters.
- **Collaboration**, recommendations **2–5**, plus the Carpentries block on collaborating with sensitive data. Who may reuse what, on what terms, and how they cite it.
- **Software** and **Manuscripts**: optional skim only. Out of scope for these two days; useful if you write code or want the text-based manuscript workflow.

#### How we implement “Single Master Online” at KI

**Default for collaborative documents:** one shared master in **Office Online** on a KI **Teams/SharePoint** project site. Download into your project folder regularly as a backup. Use the platform’s version history when you need an earlier state.

If your group prefers **Google Docs** or personal OneDrive for shared **text**, that is fine. Same habits: one master, regular downloads, §6.1 naming on exports.

Restricted research **data** (personal / patient / sensitive) still belongs on **KI-approved storage**. That rule is separate from which editor you use for ordinary shared text.

**§6.1 naming** on exports into the project folder ([KI documentation guidelines](https://staff.ki.se/research-support/research-data-management/plan-your-research-data-management/guidelines-for-research-documentation-and-data-management)):

- Prefix for document type
- Informative title
- Version number
- Date created (YYMMDD)
- Status (draft or final)
- Author initials (who last changed it)

Agree folder hierarchy early. If you are not co-writing online, **dated copies + a decision log** in the project folder still meet the 5-year test. If you already use **Git**, keep using it. We do not teach Git here (see K8F6106).

Where the reading mentions commercial cloud or free choice of licence, follow KI guidelines instead:

- Approved storage for research data (not personal cloud or USB as the research store).
- Consent, ethics, and GDPR before any licence on what may legally be shared.
- Prefer Office Online on Teams/SharePoint for the shared master; Google Docs / personal OneDrive remain fine for shared text.

### 2. Sharing, metadata, and access

Read:

- [Share data and collaborate (KI)](https://staff.ki.se/research-support/research-data-management/collaborate-process-analyse-research-data/share-data-and-collaborate). When agreements are needed, licensing versus collaboration agreements, and personal versus non-personal data.
- [Policy for open access to research data (KI)](https://staff.ki.se/research-support/research-data-management/policy-for-open-access-to-research-data). “As open as possible, as limited as necessary”; metadata can stay open when the data cannot.
- Documentation guidelines (same Day 1 link) — skim the passages on storage, sharing, and archiving. Metadata can be open when data stay protected; use secure systems when sharing files.

**Metadata versus raw data:** metadata describes the dataset (who, what, when, formats, access conditions) so others can find and judge it. Raw data are the primary observations or files. FAIR often starts with rich metadata even when the raw files stay closed.

### 3. Skim today’s DMP sections

- Skim the headings of the [Swedish Research Council DMP template](../files/Swedish_Research_Council_Template__v5.docx). KI's guide: [Writing a DMP for Vetenskapsrådet / Swedish Research Council](https://staff.ki.se/research-support/research-data-management/plan-your-research-data-management/writing-a-data-management-plan-dmp-for-vetenskapsradet-swedish-research-council).
- This afternoon you will draft answers under **storage** and **security**, then **data quality** and **who is responsible**. Day 1 covered **documentation** and **data description**. Mark anything you write as *draft*.

## Optional

- [Publish and share research data (KIB)](https://kib.ki.se/en/publish-analyse/publish-and-share-research-data). KI Data Repository, Data Access Unit, funder expectations.
- [Why should research be documented?](https://staff.ki.se/research-support/research-data-management/why-should-research-be-documented) (KI, English, short) — only if you skipped it on Day 1.

## KI infrastructure you will meet (no reading required)

- **[KI-approved storage](https://staff.ki.se/research-support/research-data-management/create-collect-store-research-data)**: where active research data lives. You draft storage and security DMP answers this afternoon.
- **[KI Data Repository](https://kib.ki.se/en/publish-analyse/publish-and-share-research-data/doris-publish-and-share-your-research-data)**: where data can be published and given a DOI. Metadata can be open when files stay restricted. (KI’s repository is called DORIS, hosted by the university library.)
- **[DMPonline (KI)](https://staff.ki.se/research-support/research-data-management/plan-your-research-data-management/writing-a-data-management-plan-dmp-in-dmponline)**: where you write and maintain your DMP; the SRC template in this course is the same format.
