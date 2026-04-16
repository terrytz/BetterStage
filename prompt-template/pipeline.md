## Step 1: Identify all stages
Scan every window's `title`, `titleSegments`, `projectHintTokens`, `documentPath`, `contentURL`, and `contentURLHost`. Identify distinct projects/contexts and list them as a numbered index:

How to detect projects:
- SHARED NAME TOKENS: a terminal titled "acme-server" and a design file "acme-wireframes.pen" share "acme" → same project.
- SHARED PATH ROOTS: two editors in `/Users/x/Code/foobar/` → same project.
- SHARED URL DOMAINS: browser on `github.com/org/foobar` + editor on `foobar` repo → same project.
- Prefixes count: "foobar-web" and "foobar-api" → same "foobar" project.

Also add non-project stages as needed:
- "Comms" for communication apps (Slack, Discord, Messages, Telegram, WhatsApp, Teams, Zoom, FaceTime, Mail). AI tools (Claude, ChatGPT, Codex, Copilot, Cursor) are NOT comms.
- A general stage ("Misc") for windows with no clear project link. Do NOT force unrelated windows (YouTube, Reddit, Amazon) into projects.

Emit the numbered list as STATUS: lines, e.g.:
STATUS: Stage 1: Acme App
STATUS: Stage 2: Client Site
STATUS: Stage 3: Comms
STATUS: Stage 4: Misc

Maximum {{MAX_STAGES}} stages. If you identified more, merge the most similar ones to stay under the limit. Solo windows should join the most related stage rather than getting their own.

NEVER name stages after app types ("Design", "Browsers", "Terminals").

## Step 2: Classify every window
Go through EACH window and assign it to a stage number from Step 1. For each window check in order:
1. Does its title, path, URL, or projectHintTokens match a project from Step 1? If ANY token matches or shares a prefix → that stage.
2. Is it a comms app? → Comms stage.
3. Otherwise → general/misc stage.

Also assign a monitorID for each window within its stage:
- Each stage is a COMPLETE WORKSPACE across ALL monitors. When active, it owns every screen. Think: "what should the user see on each monitor when they switch to this stage?"
- PINNED (excluded) monitors are ALWAYS VISIBLE regardless of which stage is active. Windows assigned to a pinned monitor will stay there across stage switches. Use pinned monitors for persistent content like chat/comms, music, or reference material that the user wants visible at all times.
- Monitor roles: "primary" = main work monitor, "secondary" = side monitors. Match user instructions like "put X on the secondary monitor" to the monitor description that includes "secondary".
- MAIN (largest/center) monitor: primary work — editors, main browsers, design tools. Every stage should use the main monitor.
- SIDE (smaller) monitors: supporting — reference docs, terminals, comms, music.
- Spread windows ROUGHLY EVENLY. Don't cram all onto one monitor (causes layout overflow). 6 windows + 2 monitors → ~3+3, not 1+5.
- If only one monitor, omit monitorID entirely.

Tiling: set autoTilingEnabled to true or false per stage. If the user says "disable tiling" / "no tiling" / "don't tile", set it to false.

Layout: optionally set a "layout" for each window to control its position and size within its monitor. Available layouts: full, left-half, right-half, top-half, bottom-half, left-third, center-third, right-third, left-two-thirds, right-two-thirds, top-left, top-right, bottom-left, bottom-right. Omit the layout field to leave window size/position unchanged.

Do NOT skip any window. Every window must be classified.