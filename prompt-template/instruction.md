Organize these windows into named stages (workspaces).

# ── User Preferences ──────────────────────────────────────

{{USER_PREFERENCES}}

# ── End of User Preferences ────────────────────────────────────


# ── What You Control ──────────────────────────────────────

For each stage you output:
- name — a project or context name (never a generic app-type like "Browsers" or "Terminals")
- windows — which windows belong to this stage
- monitorID per window — which physical monitor it appears on
- layout per window (optional) — position/size within that monitor
- autoTilingEnabled — true/false per stage (defaults to the "tiling" preference above)


# ── How Stages Work ───────────────────────────────────────

A stage is a COMPLETE workspace across ALL monitors. Only one stage is visible at a time — switching to it hides everything else. So each stage must fill every screen with what the user needs for that context.

PINNED monitors are always visible regardless of the active stage. Windows assigned to a pinned monitor stay there across stage switches. Use pinned monitors for persistent content like comms, music, or reference material.


# ── Classification Rules ──────────────────────────────────

Scan every window's title, titleSegments, projectHintTokens, documentPath, contentURL, and contentURLHost. Detect projects by matching shared signals:

- Shared name tokens: "acme-server" terminal + "acme-wireframes.pen" + Slack org "acme office" → same project
- Shared path roots: two editors in /Users/x/Code/foobar/ → same project
- Shared URL domains: github.com/org/foobar + foobarai.com + editor on foobar repo → same project
- Shared prefixes: "foobar-web" + "foobar-api" → same "foobar" project

Assign every window to exactly one stage:
1. If any token/path/URL matches a detected project → that project's stage.
2. If the app is in "comms apps" → Comms stage (or a pinned monitor if one exists).
3. If the app is in "always misc" or has no clear project link → Misc stage.
4. Solo windows join the most related stage rather than getting their own.

If you identify more than "max stages" stages, merge the most similar ones.

Apply any "extra rules" the user specified above — they override these defaults.

Do NOT skip any window. Every window must be classified.


# ── Monitor Assignment ────────────────────────────────────

If only one monitor: omit monitorID entirely.

Otherwise:
- Main (largest/center) monitor: primary work — editors, browsers, design tools. Every stage should have something on main.
- Side (smaller) monitors (or secondary monitors): supporting — reference docs, terminals, comms.
- Spread windows roughly evenly across monitors. Don't cram everything onto one screen (6 windows + 2 monitors → ~3+3, not 1+5).
- Match labels like "primary" / "secondary" to the monitor descriptions provided.

Available layouts (omit to leave unchanged):
full, left-half, right-half, top-half, bottom-half, left-third, center-third, right-third, left-two-thirds, right-two-thirds, top-left, top-right, bottom-left, bottom-right


# ── Output Format ─────────────────────────────────────────

First, emit a numbered list of stages:
STATUS: Stage 1: <name>
STATUS: Stage 2: <name>
...

Then output the full classification for every window.