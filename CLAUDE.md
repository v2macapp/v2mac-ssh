# CLAUDE.md (ssh)

Secure Sandbox plugin: Debian's OpenSSH client, `display: pty`, a recipe (api 2): `packages` in `plugin.json` brings it and Debian updates it. Made from `../plugin-template`; its `docs/plugin-api.md` is the API and `../store/REVIEW.md` what the store checks.

- The `Containerfile` only copies `start.sh`, `FROM` the base in `base.txt` (from `../store/bases.json`).
- Never turn agent forwarding on, and never pass user input to `ssh` as an option.
- Release: bump `version` and `changelog`, tag `vX.Y.Z` when the user says, then a store PR adding `submissions/ssh.json`. Public repo: `v2macapp/v2mac-ssh`.
