# Session run sheets

Facilitator notes for the four blocks in [`plan/session-brief.qmd`](../plan/session-brief.qmd). Block-level guides only (issue #9). Minute-level scripts stay deferred.

| Block | File |
|-------|------|
| Day 1 morning (self-study) | [`day-1/morning.md`](day-1/morning.md) |
| Day 1 afternoon (TBL) | [`day-1/afternoon.md`](day-1/afternoon.md) |
| Day 2 morning (self-study) | [`day-2/morning.md`](day-2/morning.md) |
| Day 2 afternoon (TBL) | [`day-2/afternoon.md`](day-2/afternoon.md) |

Afternoon venues: Day 1 hybrid (room **Future** + Zoom); Day 2 Zoom-only. Shared link: <https://ki-se.zoom.us/j/68142022512>.

## Working definition and caveats (D025)

**Definition we teach** ([The Turing Way](https://book.the-turing-way.org/reproducible-research/overview/overview-definitions/)): reproducible research is work that can be independently recreated from the **same data and the same analysis** the original team used. Distinct from *replication* (new data).

**Caveats to say out loud on Day 1:**

- Fields disagree on the words *reproducible* and *replicable* (Turing Way summarises Claerbout vs ACM).
- For much **qualitative** research, the practical aim is often *auditability*: others can follow and evaluate how interpretations were reached, not obtain identical findings ([Keele KORSA](https://www.keele.ac.uk/korsa/qualitative/reproducibilityreplication/)).
- **KI does not define** the term. It requires documentation and openness so research can be followed, interpreted, and reproduced:
  - [Riktlinjer för forskning vid KI](https://medarbetare.ki.se/media/99275/download) §§6–7: *spåra, tolka och reproducera*; openness and FAIR increase the chance to reproduce.
  - [Guidelines for research documentation and data management](https://staff.ki.se/research-support/research-data-management/plan-your-research-data-management/guidelines-for-research-documentation-and-data-management): traceability and ability to repeat analyses (reproducibility); reusability.

Day 1 grounds the definition and KI cites, then teaches structure and documentation. Day 2 teaches versioning, sharing, and DMP drafting. Workflow readings: Wilson et al. [Good Enough Practices](https://doi.org/10.1371/journal.pcbi.1005510); FAIR via [Wilkinson et al. (2016)](https://doi.org/10.1038/sdata.2016.18).

## Standing constraints on every block

- Versioning means a readable history of files and decisions. Git and a dated log are equal options (D002 / D014 / D022).
- Major activities end with **paste into the SRC DMP** for the six areas in the brief (D023). Map: [`plan/session-plan.qmd`](../plan/session-plan.qmd).
- No real personal or patient data in examples or AI prompts.
