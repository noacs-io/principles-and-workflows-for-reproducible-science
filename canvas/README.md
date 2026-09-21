# Canvas publish folder

Draft content for the K9F5740 Canvas course room. Edit here in git; paste or upload into Canvas when ready.

| Path | Canvas target |
|------|----------------|
| [`pages/`](pages/) | **Pages** (Markdown source; edit here) |
| [`html/`](html/) | **Pages** (HTML fragments ready to paste into the Canvas HTML editor; regenerate with [`html/render.sh`](html/render.sh)) |
| [`files/`](files/) | **Files** (upload as course files; then link from pages/modules) |

## Issue #10 — six student pages (D043; extends D040)

| Order | Repo file | Publish as |
|-------|-----------|------------|
| 1 | [`pages/module-overview.md`](pages/module-overview.md) | **Principles and workflows — overview** |
| 2 | [`pages/day-1-morning.md`](pages/day-1-morning.md) | **Day 1 — self-study** |
| 3 | [`pages/day-1-afternoon.md`](pages/day-1-afternoon.md) | **Day 1 — afternoon (TBL)** |
| 4 | [`pages/day-2-morning.md`](pages/day-2-morning.md) | **Day 2 — self-study** |
| 5 | [`pages/day-2-afternoon.md`](pages/day-2-afternoon.md) | **Day 2 — afternoon (TBL)** |
| 6 | [`pages/five-year-rubric.md`](pages/five-year-rubric.md) | **5-year rubric** |
| — | [`files/Swedish_Research_Council_Template__v5.docx`](files/Swedish_Research_Council_Template__v5.docx) | Course **Files**, label **assignment component 1 — DMP** |

Afternoon pages are the live student guides for the applications (venue, sequence, **Do** checklists, that day’s SRC paste targets). Each application ends with **2–3 team findings on the shared board + whole-group discussion** (D049). The [5-year rubric](pages/five-year-rubric.md) is the discussion guide for Day 1 Application 1 and the peer critique at the end of Day 2 (D048). Facilitator timing cues stay in [`sessions/`](../sessions/). Do **not** publish a separate full Session → SRC map or a session hand-in page (canonical map remains in [`plan/session-plan.qmd`](../plan/session-plan.qmd); D016 / D022). Keep the overview short.

### Suggested Canvas steps

1. Upload the `.docx` under **Files**. Label it assignment component 1 (DMP), not the protocol.
2. Create the six pages above. For overview + morning pages, paste from [`html/`](html/) into the Canvas **HTML** editor (see [`html/README.md`](html/README.md)). Afternoon + rubric pages can follow the same pattern once rendered, or paste Markdown into the rich-text editor.
3. Re-link course-local targets (other pages + the Files `.docx`) after paste. Put all six in the module students open before Day 1.
4. Live publish still counts under delivery readiness (#17).

### Conventions

- Student-facing text: English; keep the overview short enough to read without skimming.
- Edit Markdown in [`pages/`](pages/); regenerate HTML with [`html/render.sh`](html/render.sh) when publishing.
- Do not put real personal/patient data in examples.
- Lasting pedagogy/tooling choices go in [`DECISIONS.md`](../DECISIONS.md).
