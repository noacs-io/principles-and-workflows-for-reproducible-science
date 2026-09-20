# Canvas publish folder

Draft content for the K9F5740 Canvas course room. Edit here in git; paste or upload into Canvas when ready.

| Path | Canvas target |
|------|----------------|
| [`pages/`](pages/) | **Pages** (paste Markdown into the rich-text editor, or convert to HTML) |
| [`files/`](files/) | **Files** (upload as course files; then link from pages/modules) |

## Issue #10 — five student pages (D040; supersedes D038)

| Order | Repo file | Publish as |
|-------|-----------|------------|
| 1 | [`pages/module-overview.md`](pages/module-overview.md) | **Principles and workflows — overview** |
| 2 | [`pages/day-1-morning.md`](pages/day-1-morning.md) | **Day 1 — self-study** |
| 3 | [`pages/day-1-afternoon.md`](pages/day-1-afternoon.md) | **Day 1 — afternoon (TBL)** |
| 4 | [`pages/day-2-morning.md`](pages/day-2-morning.md) | **Day 2 — self-study** |
| 5 | [`pages/day-2-afternoon.md`](pages/day-2-afternoon.md) | **Day 2 — afternoon (TBL)** |
| — | [`files/Swedish_Research_Council_Template__v5.docx`](files/Swedish_Research_Council_Template__v5.docx) | Course **Files**, label **assignment component 1 — DMP** |

Afternoon pages are the live student guides for the applications (venue, sequence, **Do** checklists, that day’s SRC paste targets). Facilitator timing cues stay in [`sessions/`](../sessions/). Do **not** publish a separate full Session → SRC map or a session hand-in page (canonical map remains in [`plan/session-plan.qmd`](../plan/session-plan.qmd); D016 / D022). Keep the overview short.

### Suggested Canvas steps

1. Upload the `.docx` under **Files**. Label it assignment component 1 (DMP), not the protocol.
2. Create the five pages above. Link the Files URL from the overview and day pages.
3. Put all five in the module students open before Day 1.
4. Live publish still counts under delivery readiness (#17).

### Conventions

- Student-facing text: English; keep the overview short enough to read without skimming.
- Prefer Markdown that pastes cleanly into Canvas (headings, tables, lists).
- Do not put real personal/patient data in examples.
- Lasting pedagogy/tooling choices go in [`DECISIONS.md`](../DECISIONS.md).
