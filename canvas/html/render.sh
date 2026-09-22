#!/usr/bin/env bash
# Regenerate Canvas-ready HTML fragments from canvas/pages/*.md
set -euo pipefail
root="$(cd "$(dirname "$0")/../.." && pwd)"
html_dir="$root/canvas/html"
mkdir -p "$html_dir"

for f in module-overview day-1-morning day-1-afternoon day-2-morning day-2-afternoon; do
  pandoc -f markdown -t html5 --wrap=none \
    "$root/canvas/pages/${f}.md" -o "$html_dir/${f}.html"
done

python3 - "$html_dir" << 'PY'
from pathlib import Path
import re
import sys

html_dir = Path(sys.argv[1])

LINK_MAP = {
    "five-year-rubric.md": ("#", "Canvas page: 5-year rubric"),
    "day-1-morning.md": ("#", "Canvas page: Day 1 — self-study"),
    "day-1-afternoon.md": ("#", "Canvas page: Day 1 — afternoon (TBL)"),
    "day-2-morning.md": ("#", "Canvas page: Day 2 — self-study"),
    "day-2-afternoon.md": ("#", "Canvas page: Day 2 — afternoon (TBL)"),
    "../files/Swedish_Research_Council_Template__v5.docx": (
        "#",
        "Canvas Files: Swedish_Research_Council_Template__v5.docx (assignment component 1 — DMP)",
    ),
}

note = (
    "<!-- Canvas HTML fragment: paste into Page → HTML editor (not the visual editor). "
    "External https links are ready. Links with href=\"#\" need re-linking in Canvas "
    "(see each link title attribute). -->\n"
)

for path in sorted(html_dir.glob("*.html")):
    text = path.read_text(encoding="utf-8")
    text = re.sub(r"\n?<colgroup>.*?</colgroup>\n?", "\n", text, flags=re.S)

    def repl_href(m):
        href = m.group(1)
        if href in LINK_MAP:
            new_href, comment = LINK_MAP[href]
            return f'href="{new_href}" title="{comment}"'
        return m.group(0)

    text = re.sub(r'href="([^"]+)"', repl_href, text)
    if text.startswith("<!-- Canvas HTML"):
        text = re.sub(r"^<!-- Canvas HTML.*?-->\n", "", text, count=1, flags=re.S)
    path.write_text(note + text, encoding="utf-8")
    print(f"Wrote {path}")
PY
