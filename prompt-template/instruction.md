Organize these windows into named stages (workspaces).

# User Preferences

{{USER_PREFERENCES}}

# How Stages Work

A stage is a COMPLETE workspace across ALL monitors. Only one stage is visible at a time — switching to it hides everything else. So each stage must fill every screen with what the user needs for that context.

PINNED monitors are always visible regardless of the active stage. Windows assigned to a pinned monitor stay there across stage switches. Use pinned monitors for persistent content like comms, music, or reference material.

# What You Control

For each stage you output:

- name — a project or context name (never a generic app-type like "Browsers" or "Terminals")
- windows — which windows belong to this stage
- monitorID per window — which physical monitor it appears on
- layout per window (optional) — position/size within that monitor
- autoTilingEnabled — true/false per stage (defaults to the "tiling" preference above)

# Classification Rules

Scan every window's title, titleSegments, projectHintTokens, documentPath, contentURL, and contentURLHost. Detect projects by matching shared signals:

- Shared name tokens: "acme-server" terminal + "acme-wireframes.pen" + Slack org "acme office" → same project
- Shared path roots: two editors in /Users/x/Code/foobar/ → same project
- Shared URL domains: github.com/org/foobar + foobarai.com + editor on foobar repo → same "foobar" project
- Shared prefixes: "foobar-web" + "foobar-api" + "getfoobar.com" → same "foobar" project

- Assign every window to exactly one stage.
- If you identify more than "max stages" ({{MAX_STAGES}}) stages, merge the most similar ones.
- Apply any "extra rules" the user specified above — they override these defaults.
- Do NOT skip any window. Every window must be classified.


# Output Format

First, emit a numbered list of stages:
STATUS: Stage 1: <name>
STATUS: Stage 2: <name>
...

Then output the full classification for every window.
