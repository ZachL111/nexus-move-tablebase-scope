# Review Journal

The repository goal stays the same: build an Elixir toolkit that studies tablebase behavior through seeded input scenarios, with deterministic summary checks and local-only command execution. This note explains the added review angle.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its chess and game engines focus without claiming live deployment or external usage.

## Cases

- `baseline`: `position pressure`, score 216, lane `ship`
- `stress`: `move ordering`, score 210, lane `ship`
- `edge`: `search width`, score 184, lane `ship`
- `recovery`: `endgame risk`, score 189, lane `ship`
- `stale`: `position pressure`, score 251, lane `ship`

## Note

The repository should be understandable without pretending it is larger than it is.
