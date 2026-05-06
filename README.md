# nexus-move-tablebase-scope

`nexus-move-tablebase-scope` explores chess and game engines with a small Elixir codebase and local fixtures. The technical goal is to build an Elixir toolkit that studies tablebase behavior through seeded input scenarios, with deterministic summary checks and local-only command execution.

## Problem It Tries To Make Smaller

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how position pressure and search width should influence a review result.

## Nexus Move Tablebase Scope Review Notes

Start with `position pressure` and `search width`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Working Pieces

- `fixtures/domain_review.csv` adds cases for position pressure and move ordering.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/nexus-move-tablebase-walkthrough.md` walks through the case spread.
- The Elixir code includes a review path for `position pressure` and `search width`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Design Notes

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `position pressure`, `move ordering`, `search width`, and `endgame risk`.

The Elixir implementation avoids hidden state so fixture changes are easy to reason about.

## Example Run

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Known Limits

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
