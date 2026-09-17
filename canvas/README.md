# Canvas publish folder

Draft content for the K9F5740 Canvas course room. Edit here in git; paste or upload into Canvas when ready.

| Path | Canvas target |
|------|----------------|
| [`pages/`](pages/) | **Pages** (paste Markdown into the rich-text editor, or convert to HTML) |
| [`files/`](files/) | **Files** (upload as course files; then link from pages/modules) |

## Issue #10 — SRC DMP template + Session → DMP map

| Repo file | Publish as |
|-----------|------------|
| [`files/Swedish_Research_Council_Template__v5.docx`](files/Swedish_Research_Council_Template__v5.docx) | Course file (same name). Canonical copy also lives at the [repo root](../Swedish_Research_Council_Template__v5.docx) — keep them in sync if the template is updated. |
| [`pages/assignment-1-dmp.md`](pages/assignment-1-dmp.md) | Canvas page titled **Assignment component 1: Data Management Plan (DMP)** |

See decision **D016** in [`DECISIONS.md`](../DECISIONS.md).

### Suggested Canvas steps

1. Upload the `.docx` under **Files** (e.g. folder `Assignments` or `DMP`).
2. Create a page from `pages/assignment-1-dmp.md`. After upload, replace the placeholder file link with the Canvas Files URL.
3. Add the page (and optionally the file) to the module students open before Day 1 self-study.
4. Label the module item clearly as **assignment component 1 (DMP)** — not the data collection protocol.

## Conventions

- Student-facing text: English.
- Prefer Markdown that pastes cleanly into Canvas (headings, tables, lists).
- Do not put real personal/patient data in examples.
- Lasting pedagogy/tooling choices still go in [`DECISIONS.md`](../DECISIONS.md); this folder is publish-ready copy, not a second source of truth for the Session → DMP map (canonical section remains in [`plan/session-plan.qmd`](../plan/session-plan.qmd)).
