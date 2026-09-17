#!/usr/bin/env bash
#
# Align the GitHub issue backlog with the revised scope lock in
# plan/session-brief.qmd: rewrite the six issues we keep (dropping the
# "[8-day]" framing) and close the five whose work was folded into them.
#
# Needs gh authenticated with issue write access:
#
#   bash .github/scripts/apply-backlog-issues.sh
#
# Re-running is harmless. Safe to delete once applied; the resulting backlog
# is summarised under "Must ship" in plan/session-plan.qmd.

set -euo pipefail

REPO="${REPO:-noacs-io/principles-and-workflows-for-reproducible-science}"

TIMING='## Timing
Ready before the Day 1 self-study morning (Tue–Wed block inside the course window 2026-09-21 – 2026-10-02).

## Source
Revised scope lock: `plan/session-brief.qmd`. Working detail: `plan/session-plan.qmd`. Decisions: `DECISIONS.md`.'

edit_issue() { # $1 = issue number, $2 = title, body on stdin
  local number="$1" title="$2" body
  body="$(cat)"
  printf 'Updating #%s — %s\n' "$number" "$title"
  gh issue edit "$number" --repo "$REPO" --title "$title" \
    --body "${body}"$'\n\n'"${TIMING}"
}

close_issue() { # $1 = issue number, $2 = comment
  printf 'Closing #%s\n' "$1"
  gh issue close "$1" --repo "$REPO" --comment "$2"
}

# --------------------------------------------------------------------------
# Keep (six issues)
# --------------------------------------------------------------------------

edit_issue 9 'Run sheets for the four session blocks' <<'BODY'
## Goal
A run sheet for each block in the brief, so any facilitator on the team can run the day.

## Done when
- [ ] One run sheet per block, timed to fit 3 h: Day 1 morning (self-study), Day 1 afternoon (TBL), Day 2 morning (self-study), Day 2 afternoon (TBL)
- [ ] Content follows the day tables in `plan/session-brief.qmd`, including the facilitator named against each item (Martin / Johanna)
- [ ] Every activity names the **principle** it serves — a step taught without its principle is not finished
- [ ] Versioning is taught as a principle, not a product: Git/GitHub and a dated decision log are two ways to pass the 5-year test (brief: *keep the course generic rather than specific tools*)
- [ ] Each major activity ends with an explicit **paste into your SRC DMP** step
- [ ] Day 1 afternoon works hybrid (room **Future** + Zoom); every Day 2 activity works in Zoom breakout rooms, since Day 2 is remote-only
- [ ] Day 2 closes with the synthesis: principles revisited, what belongs in the data collection protocol, where to get KI support
BODY

edit_issue 10 'Canvas module: self-study packs, SRC DMP template and map, hand-in' <<'BODY'
## Goal
One Canvas module carrying both guided self-study mornings, the DMP assignment material, and the hand-in.

## Done when
- [ ] **Day 1 morning pack:** orientation (why reproducibility matters, the 5-year test, the DMP assignment); Good Enough Practices excerpt (Martin); FAIR site with videos (Johanna); relevant KI guidelines / FAIR summary (Johanna); the good vs poor folder comparison (Johanna)
- [ ] **Day 2 morning pack:** Good Enough Practices excerpt (Martin); guidelines on data sharing; metadata vs raw data; the versioning track — Git/GitHub basics **or** a dated decision log with naming conventions, both of which must pass the 5-year test
- [ ] Each item marked required vs optional, and tagged with the principle or outcome it serves
- [ ] `Swedish_Research_Council_Template__v5.docx` uploaded to Canvas Files and labelled **assignment component 1 (DMP)** — publish drafts already exist in `canvas/` (D016)
- [ ] Students pointed to the **Session → SRC DMP map** (canonical section of `plan/session-plan.qmd`)
- [ ] Short student note: how the project package feeds the SRC DMP, and what belongs in the **data collection protocol** instead (folded in from #12)
- [ ] Submission place for the project package, the partial SRC DMP (at least data description, documentation/quality, storage), and the AI-use disclosure (folded in from #16)

## Open question
Slides from Kristi and M still to be collected (noted in the brief).
BODY

edit_issue 11 'Materials pack: example folders, documentation templates, 5-year rubric' <<'BODY'
## Goal
The reusable student-facing materials: examples to critique, templates to copy, and the rubric both afternoons judge against.

## Done when
- [ ] One **good** and one **poor** synthetic project folder, each annotated with the principle it keeps or breaks — used in the Day 1 morning (Johanna)
- [ ] Templates: README, dated decision log, data-dictionary stub — methodology-agnostic, so they work for qualitative, survey, trial, and secondary-data projects
- [ ] The decision-log template produces entries that are **human- and machine-readable** (D014)
- [ ] **5-year rubric** good enough to run inter-team critique (Day 1) and peer review (Day 2): criteria, not polished exemplars
- [ ] Synthetic or fictional content only — no real personal or patient data
- [ ] Linked from Canvas and from the repo

## Note
The rubric moved here from #8. Session ILOs need no separate freeze: the five locked outcomes live in `plan/session-brief.qmd`.
BODY

edit_issue 13 'TBL content: readiness tests and application exercises' <<'BODY'
## Goal
Tool-agnostic readiness tests and application exercises for both TBL afternoons.

## Done when
- [ ] Day 1 iRAT/tRAT bank with short rationales (Markdown/CSV): raw vs derived, provenance, FAIR vs open, ELN vs project folder (Martin)
- [ ] Day 2 iRAT/tRAT bank: versioning, collaboration, "as open as possible, as closed as necessary", AI disclosure
- [ ] Items stay **conceptual** and tool-independent — nothing that only a Git user, or only a user of one platform, could answer
- [ ] **Day 1 application:** individually draft a folder tree for your own project with AI, then present it to the team; a second task writing the relevant part of the DMP; folder + README for the one shared global-health vignette **stating the principle behind each choice**; inter-team critique against the 5-year rubric; exit ticket naming one change to your own project and why
- [ ] **Day 2 application:** teams work on their **own** project packages — metadata and sharing boundaries — strengthen the DMP draft, then peer review against the 5-year rubric
- [ ] Everything runs in Zoom breakout rooms and loads into either InteDashboard or Canvas quizzes
BODY

edit_issue 15 'AI package: student rules, prompts, demo with one wrong answer' <<'BODY'
## Goal
Responsible AI materials tied to the AI tasks already in the brief, not a separate AI lecture.

## Done when
- [ ] Short student rules: allowed / not allowed / must disclose — never paste personal, patient, or sensitive research data into a prompt
- [ ] Prompts for the brief's tasks: draft a folder tree for your own project (Day 1); write the relevant part of the DMP (Day 1); turn notes into a README and decision log, then verify and edit (Day 2)
- [ ] Students keep prompt **and** output for the Day 1 task, since they present it to their team
- [ ] Demo script that includes **one wrong or unsafe answer**, so verification is practised rather than asserted
- [ ] AI-use disclosure template (tool, purpose, prompt summary, what was kept or changed) — the evidence for outcome 5
- [ ] Microsoft Copilot is the default demo tool (D003), but the material still works with another approved tool
BODY

edit_issue 17 'Delivery readiness: TBL tool choice and Day-0 smoke tests' <<'BODY'
## Goal
Everything that must be true before the Day 1 self-study morning opens.

## Done when
- [ ] TBL delivery picked for **this** run — InteDashboard if access already exists, otherwise Canvas quizzes plus a simultaneous-report substitute — and logged in `DECISIONS.md` (folded in from #14). Do not block the offering on new hosting
- [ ] Item bank loaded into the chosen tool and smoke-tested once
- [ ] Canvas module published; students told the laptop expectation for the hybrid and remote afternoons
- [ ] Day 1: room **Future** plus Zoom AV smoke test. Day 2: Zoom-only, breakout rooms tested (D012)
- [ ] Agreed AI tool available on the demo machine
- [ ] SRC template and the Session → DMP map reachable from Canvas
BODY

# --------------------------------------------------------------------------
# Close (folded into the six above)
# --------------------------------------------------------------------------

close_issue 7 'Folded into #10, which now carries the SRC template upload, the Session → DMP map link, and the assignment-component-1 labelling. Publish drafts are already in `canvas/` (D016). Closed while trimming the backlog to the revised scope lock in `plan/session-brief.qmd`.'

close_issue 8 'Session ILOs are locked as the five outcomes in `plan/session-brief.qmd`, so there is nothing left to freeze. The only outstanding piece, the 5-year rubric, moved to #11 alongside the examples and templates it is used against.'

close_issue 12 'Folded into #10 as the short student note on how the project package feeds the SRC DMP and what belongs in the data collection protocol instead.'

close_issue 14 'Folded into #17: choosing the TBL delivery for this run, smoke-testing it, and logging the choice in `DECISIONS.md` are all part of delivery readiness.'

close_issue 16 'Folded into #10, which now covers the submission place and what students hand in: project package, partial SRC DMP, AI-use disclosure.'

printf '\nDone. Backlog now: #9, #10, #11, #13, #15, #17.\n'
