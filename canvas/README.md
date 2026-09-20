# Canvas publish folder

Draft content for the K9F5740 Canvas course room. Edit here in git; paste or upload into Canvas when ready.

| Path | Canvas target |
|------|----------------|
| [`pages/`](pages/) | **Pages** (paste Markdown into the rich-text editor, or convert to HTML) |
| [`files/`](files/) | **Files** (upload as course files; then link from pages/modules) |

## Issue #10 — three student pages only (D038)

| Order | Repo file | Publish as |
|-------|-----------|------------|
| 1 | [`pages/module-overview.md`](pages/module-overview.md) | **Principles and workflows — overview** |
| 2 | [`pages/day-1-morning.md`](pages/day-1-morning.md) | **Day 1 — self-study** |
| 3 | [`pages/day-2-morning.md`](pages/day-2-morning.md) | **Day 2 — self-study** |
| — | [`files/Swedish_Research_Council_Template__v5.docx`](files/Swedish_Research_Council_Template__v5.docx) | Course **Files**, label **assignment component 1 — DMP** |

Do **not** publish separate student pages for the afternoon, the full Session → SRC map, or a session hand-in. Each day page names the SRC DMP sections for that afternoon. Canonical map remains in [`plan/session-plan.qmd`](../plan/session-plan.qmd) (D016).

### Suggested Canvas steps

1. Upload the `.docx` under **Files**. Label it assignment component 1 (DMP), not the protocol.
2. Create the three pages above. Link the Files URL from the overview and Day 1.
3. Put all three in the module students open before Day 1.
4. Live publish still counts under delivery readiness (#17).

### Conventions

- Student-facing text: English; keep the overview short enough to read without skimming.
- Prefer Markdown that pastes cleanly into Canvas (headings, tables, lists).
- Do not put real personal/patient data in examples.
- Lasting pedagogy/tooling choices go in [`DECISIONS.md`](../DECISIONS.md).
