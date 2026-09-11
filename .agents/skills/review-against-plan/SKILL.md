---
name: review-against-plan
description: Review drafts or PRs against the session plan, ILOs, must-ship backlog, and AGENTS.md. Use before merging teaching materials or when asked whether work is in scope for the two-day K9F5740 sessions.
---

# Review against the plan

## Inputs to read

1. [`plan/session-plan.qmd`](../../../plan/session-plan.qmd) — ILOs, endpoint, must-ship / defer, TBL approach  
2. [`AGENTS.md`](../../../AGENTS.md) — standing agent rules  
3. [`DECISIONS.md`](../../../DECISIONS.md) — recent decisions  
4. The files under review (diff or paths)

## Checklist

- [ ] Supports the **folder + documentation** endpoint (5-year test)
- [ ] Aligns to listed session ILOs / relevant K9F5740 outcomes
- [ ] Fits **Must ship** or is explicitly justified as extra
- [ ] Does **not** duplicate deep Git/containers content better left to K8F6106
- [ ] Dual-track friendly (Git optional where promised)
- [ ] AI guidance is responsible (disclosure, no sensitive data)
- [ ] TBL/quiz content is tool-agnostic if applicable
- [ ] Examples use synthetic data only
- [ ] Material decisions logged (or flag missing `DECISIONS.md` entry)

## Output format

Give a short review:

1. **Verdict:** approve / approve with nits / needs changes  
2. **Alignment notes:** ILO and backlog mapping  
3. **Scope risks:** anything that expands past two days / four people  
4. **Action list:** concrete fixes (if any)  
