# Canvas HTML exports

Generated from [`../pages/`](../pages/) for pasting into Canvas **Pages → Edit → HTML editor**.

| File | Suggested Canvas page title |
|------|------------------------------|
| [`module-overview.html`](module-overview.html) | Principles and workflows — overview |
| [`day-1-morning.html`](day-1-morning.html) | Day 1 — self-study |
| [`day-2-morning.html`](day-2-morning.html) | Day 2 — self-study |

## How to publish

1. Upload `Swedish_Research_Council_Template__v5.docx` under **Files** (label: assignment component 1 — DMP).
2. Create each page (title as above). Open **Edit**, switch to the **HTML** view, paste the whole `.html` file contents, save.
3. Re-link every `href="#"` target (each link’s `title` says which Canvas page or Files item). Use Canvas’s page/file picker so URLs stay course-local.
4. Put the pages in the module students open before Day 1.

Regenerate after editing the Markdown sources:

```bash
canvas/html/render.sh
```

Keep Markdown in `pages/` as the editable source.
