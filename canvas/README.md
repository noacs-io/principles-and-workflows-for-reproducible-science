# Canvas publish folder

Draft content for the K9F5740 Canvas course room. Edit here in git; paste or upload into Canvas when ready.

| Path | Canvas target |
|------|----------------|
| [`pages/`](pages/) | **Pages** (paste Markdown into the rich-text editor, or convert to HTML) |
| [`files/`](files/) | **Files** (upload as course files; then link from pages/modules) |

## Issue #10 — Canvas module (self-study packs, DMP map, course checklist)

Suggested **module order** (one Canvas module, or two day modules with the DMP page shared):

| Order | Repo file | Publish as | Required? |
|-------|-----------|------------|-----------|
| 1 | [`pages/module-overview.md`](pages/module-overview.md) | Page: **Principles and workflows — overview** | Yes |
| 2 | [`pages/day-1-morning.md`](pages/day-1-morning.md) | Page: **Day 1 morning — self-study** | Yes |
| 3 | [`pages/assignment-1-dmp.md`](pages/assignment-1-dmp.md) | Page: **Assignment component 1: Data Management Plan (DMP)** | Yes |
| 4 | [`pages/day-2-morning.md`](pages/day-2-morning.md) | Page: **Day 2 morning — self-study** | Yes |
| 5 | [`pages/after-day-2-checklist.md`](pages/after-day-2-checklist.md) | Page: **After Day 2 — course assignment checklist** | Yes |
| — | [`files/Swedish_Research_Council_Template__v5.docx`](files/Swedish_Research_Council_Template__v5.docx) | Course **Files**, label **assignment component 1 — DMP** | Yes |

Canonical Session → SRC DMP map stays in [`plan/session-plan.qmd`](../plan/session-plan.qmd) (D016). Refresh the Canvas DMP page when the plan map changes.

Align drafts with the brief and run sheets: good/poor folders are **afternoon** App 1 (not Day 1 morning); no session hand-in (D022); versioning prefers Office Online + §6.1 (D034 / D035).

### Suggested Canvas steps

1. Upload the `.docx` under **Files** (e.g. folder `Assignments` or `DMP`). Label it clearly as assignment component 1 (DMP), not the protocol.
2. Create pages from each `pages/*.md` file. After upload, replace placeholder file links with the Canvas Files URL.
3. Add all pages (and optionally the file) to the module students open before Day 1 self-study.
4. After publishing, paste the official K9F5740 DMP assignment URL into the checklist page.
5. Publishing to the live course room is still part of delivery readiness (#17); this folder is the draft source.

### Conventions

- Student-facing text: English.
- Prefer Markdown that pastes cleanly into Canvas (headings, tables, lists).
- Do not put real personal/patient data in examples.
- Lasting pedagogy/tooling choices still go in [`DECISIONS.md`](../DECISIONS.md); this folder is publish-ready copy, not a second source of truth for the Session → DMP map.
