# Changelog

Public release notes for BetterStage. The latest download is served from https://betterstage.app/download/thanks; direct update artifacts are served from https://update.betterstage.app/.

## v1.1.2 - June 2026

Download: https://update.betterstage.app/BetterStage-1.1.2.dmg

- Fixed: Typing no longer stutters. While BetterStage was running, keystrokes could briefly stall or drop in any app, roughly every 30 seconds. BetterStage only watches for its own keyboard shortcuts and passes everything else straight through to your app — it never reads or stores what you type — but a periodic background task was momentarily holding up that hand-off. Shortcut detection now runs on its own dedicated path, so your typing always stays smooth.
- Fixed: Trackpad gestures now work. Triggering the Snap Wheel with a 4- or 5-finger trackpad tap previously failed to register; taps are now detected reliably, so the wheel opens every time.

## v1.1.1 - June 2026

Download: https://update.betterstage.app/BetterStage-1.1.1.dmg

- Fixed: Resizing a window in Tabbed Layout Mode now reliably snaps it back to its pane when you release the mouse. Previously, a resized window could intermittently retain its new size instead of returning to its pane.

## v1.1.0 - June 2026

Download: https://update.betterstage.app/BetterStage-1.1.0.dmg

- New: AI Staging has been rebuilt around a floating command panel. Describe the workspace you want in plain language — @-mention specific apps, windows, stages, or monitors — review the plan BetterStage proposes, refine it with follow-up instructions, and apply when it looks right. An Undo button (or Cmd-Z in the panel) reverts the entire arrangement in one step. (Pro)
- New: Window Rules. Save standing instructions for how your workspace should be arranged, edit them with the same @-mention chips, preview the exact prompt sent to the model, and run an arrangement straight from the panel. (Pro)
- New: Bring your own AI. AI Staging now ships with 25 provider presets — OpenAI, Claude, Gemini, OpenRouter, Groq, Mistral, DeepSeek, xAI, Qwen, Moonshot, Azure, and more, including local servers like Ollama and LM Studio — with live model lists, a region picker where it matters, and a separate remembered API key per provider.
- New: Test Connection in AI Staging settings sends a real chat message to your configured model, so you know the endpoint, key, and model all actually work before you depend on them.
- New: Keyboard layout presets. Shortcut defaults now come in Standard and European flavors — European adds Control to the bindings that would otherwise type characters on Option-heavy layouts (⌥1-9 → ⌃⌥1-9 and friends). Auto-detected during onboarding and switchable anytime in Shortcuts settings; existing customizations are untouched.
- New: Redesigned Shortcuts settings — a preset picker, a compact stage-shortcut builder, a visual snap-zone map, keycap-style shortcut lists with inline conflict warnings, and search.
- New: Retile works in every Window Mode. In Tabbed Layout Mode it snaps windows back into their panes; in macOS Native it adapts — arranging an untidy desk into a grid, or re-stacking an already-arranged one into a neat deck. Labels and icons across the menu bar, Snap Wheel, and shortcuts follow the mode.
- New: Tab drags now reach beyond their layout. Drag a tab out of a Tabbed Layout pane and drop it onto a Bento Box or macOS Native monitor to move the window there, or drag it up to the Stages Bar to send that window to another stage.
- Improved: Stage switching is noticeably faster — up to ~50% lower latency on busy stages, with window operations routed per app so one slow app can't hold up the rest.
- Improved: Tabbed Layout Mode switches land in a single visual frame — tab bars and windows appear together with less flicker, and Chrome windows reveal more smoothly.
- Improved: Background window management is gentler — re-hiding hidden windows no longer fights you while you drag, and idles with near-zero cost.
- Improved: AI Staging setup problems are now actionable — a missing endpoint, model, or API key is caught before the request with a clear message and an Open Settings button, instead of a raw provider error.
- Improved: Deleting a Tabbed Layout preset now asks for confirmation instead of removing it instantly.
- Fixed: New Chrome and Electron windows (ChatGPT, Claude, VS Code, and friends) no longer flash at the wrong position for a split second when they open.
- Fixed: Clicking an app in the Dock whose window lives in a Tabbed Layout pane on another stage now brings the right tab forward on the first click.
- Fixed: Switching stages quickly no longer occasionally leaves windows hidden when the switch races a tab-layout update.
- Fixed: Windows dragged, snapped, or retiled to the right edge of the rightmost monitor no longer occasionally teleport to the primary monitor.
- Fixed: Panels no longer lose keyboard input after the Settings window closes.
- Fixed: AI Staging verifies every window actually landed, retries direct moves when an app resists, and honestly reports anything that couldn't be moved — including on Pinned Displays, where moved windows now always become visible.
- Fixed: AI Staging works with strict OpenAI-compatible servers that reject unknown request options, and model responses are bounded so a runaway stream can't eat memory.
- Fixed: If Accessibility permission is revoked while BetterStage is running, the app now alerts you and restores hidden windows instead of leaving them off-screen.
- Known issue: Firefox handles its windows in non-standard ways, so it doesn't always cooperate with window management — you may see windows briefly flash, resist precise placement, or lag behind stage switches. We're continuing to improve Firefox compatibility.

## v1.0.6 - May 2026

Download: https://update.betterstage.app/BetterStage-1.0.6.dmg

- Cycle tabs in a tabbed layout with the keyboard — Ctrl+Opt+] for next, Ctrl+Opt+[ for previous. Rebindable under Settings → Shortcuts → Navigation.
- Drag a tab onto the stages bar to send it to another stage. The bar peeks open while you drag, just like dragging a window. Drop on a stage to send it, or on the + button to create a new stage.
- Fixed: dragging a tab now works even when the pane only has one tab.
- Fixed: the Tabbed Layout picker now opens on the monitor you triggered it from, instead of always landing on the main display.

## v1.0.5 - May 2026

Download: https://update.betterstage.app/BetterStage-1.0.5.dmg

- Hotfix: Per-display Window Mode choices now survive app restarts, sleep/wake, screen saver returns, and display setup restores more reliably, including displays with no open windows.
- Hotfix: Pinned Displays now keep the correct macOS Native, Bento Box, or Tabbed Layout state when toggled, restored, or reset with Rescue Windows.
- Fixed: Tabbed Layout panes keep their tabs when moving windows into stages that were hidden in the background.
- Fixed: Moving or deleting inactive stages is less likely to reveal hidden background windows or leave adopted windows invisible.

## v1.0.4 - May 2026

Download: https://update.betterstage.app/BetterStage-1.0.4.dmg

- Hotfix: BetterStage no longer rolls back your latest Tabbed Layout or Bento Box changes after the screen saver ends or your Mac unlocks.
- Hotfix: The "Waiting for monitor to return" prompt now stays the right size and no longer appears as an oversized window.

## v1.0.3 - May 2026

Download: https://update.betterstage.app/BetterStage-1.0.3.dmg

- BetterStage now remembers layouts for different monitor setups, so your stages and pinned displays come back more reliably when you dock, undock, reconnect displays, or change display arrangement.
- When a saved display layout is restored, BetterStage now shows a clearer confirmation with a monitor preview, Undo, Confirm, and a short countdown.
- Pinned Displays are more dependable: windows that belong on pinned monitors are less likely to jump back into regular stages after reconnects, app restarts, or recovery.
- Tabbed Layout Mode is steadier during stage switching: tabs keep their order, and switching stages is less likely to focus or reveal the wrong tab.
- Moving windows between Tabbed Layout Mode and Bento Box is smoother, especially across monitors and with Chrome, Electron, and other multi-window apps.
- Quit and Rescue Windows are safer with pinned displays, keeping recovered windows on the monitor where you were actually using them.
- Sleep, wake, and monitor recovery are more reliable, with fewer cases where inactive-stage windows briefly appear in the wrong place.
- Bug reports are easier: the menu now includes Reveal Debug Log, diagnostic logs stay capped at 10 MB, and release builds avoid automatic logs that expose window titles.
- Updates are safer for beta and release-candidate users, so prerelease builds move cleanly to the final release.

## v1.0.2 - May 2026

Download: https://update.betterstage.app/BetterStage-1.0.2.dmg

- Fixed: Dragging a window from a Tabbed Layout Mode display to a Bento Box display no longer snaps the window back to the original display.
- Fixed: Snap Wheel choices on the left side of the wheel now target the display where the wheel opened, so Top Left, Left, Bottom Left, and nearby actions behave correctly on the rightmost screen.
- Improved: Cross-display drops between Window Modes now ignore stale post-release window movement events while the new layout settles.

## v1.0.1 - May 2026

Download: https://update.betterstage.app/BetterStage-1.0.1.dmg

- New: Tabbed Layout Mode tab menus now include Quit App for quickly closing the app behind a tab.
- Improved: Tabbed Layout Mode panes now always show their tab bar, even when a pane contains only one window, so pane controls stay consistent.
- Improved: Single-window Tabbed Layout panes now reserve the same tab bar space as multi-window panes, keeping content placement predictable.

## v1.0.0 - May 2026

Download: https://update.betterstage.app/BetterStage-1.0.0.dmg

- New: Window Modes. Each monitor can now run in one of three modes — macOS Native (free-floating windows), Bento Box (automatic tiling that adapts as windows open and close), or Tabbed Layout Mode (saved layouts where each pane can hold multiple windows you switch between with tabs). Change the mode for a monitor from the Snap Wheel or the BetterStage menu bar.
- New: Bento Box has been rebuilt from the ground up. Drag the handles between tiles to resize neighboring windows together. Drag a window onto another to swap their positions, or drop it on the edge of a tile to insert it as a new split. Everything works across monitors, so you can pull a window from one screen straight into a Bento layout on another.
- New: Tabbed Layout Mode. Design a layout once — split the screen into the panes you want — then drop windows into each pane. Multiple windows in the same pane stack as tabs you click between. Empty panes stay reserved so the layout is ready when you return to it. (Pro)
- New: Layout presets. Start from common setups like Split View, Top / Bottom, Focus + Stack, or Four Corners. Save your own layouts and trigger them from the Snap Wheel, a keyboard shortcut, or set one as the default for new stages. (Pro)
- New: Snap Wheel redesign. A native Liquid Glass look, twelve extra slots so you can fit more shortcuts in one wheel, separate colors for the inner and outer rings, custom icons for any slot, clearer tooltips, and a small green badge on the wheel button when Bento Box is active.
- New: Open the Snap Wheel with a trackpad gesture. Four- and five-finger taps and clicks are configurable in Settings.
- New: Live previews when resizing tiles. Drag a divider in Bento Box or Tabbed Layout Mode and the affected windows show as soft previews with their app icon, title, and target size, so you can see the result before you let go.
- New: Hot edge activation delay. Set how long your cursor needs to rest at a screen edge before a hot edge fires, so brushing past one no longer triggers anything by accident.
- New: Per-app exclusion for Window Modes. Pick apps that should always float in their own window instead of being tiled — useful for browser restore prompts, popovers, and small utility windows.
- New: Reset buttons in Settings for excluded apps and excluded displays, so you can start fresh in one click.
- Improved: Settings has been rebuilt with a cleaner card-based layout, clearer Pro feature descriptions, and the old Tiling pane has been replaced by a Window Modes pane that covers Bento Box and Tabbed Layout Mode together.
- Improved: Pinned Displays now work properly with Bento Box. Dragging, snapping, maximizing, resizing, and reordering windows all behave correctly on pinned monitors, and your layout is restored when monitors disconnect, reconnect, or wake from sleep. (Pro)
- Improved: Stage switching, title-bar dragging, and Stages Bar interactions feel noticeably lighter and more responsive.
- Improved: Tabbed layouts activate smoothly. A short restore indicator appears while windows return to their panes, even on large layouts.
- Improved: Bento Box snapping, maximize, fill, and two-thirds layouts are more predictable, and dragging windows between monitors lands them where you expect.
- Improved: Browser session-restore prompts now float above your layout instead of being tiled into it.
- Improved: New windows appear cleanly in their final position instead of briefly flashing somewhere else first.
- Fixed: Cross-monitor drops in Bento Box no longer drop or duplicate windows.

## v0.2.20 - April 2026

- Added directional window navigation for tiled layouts, including better handoff between monitors
- Added an option to keep Cmd+` window cycling scoped to the active stage
- Fixed new-window flash issues affecting Firefox, Chrome, Electron apps, ChatGPT, and Claude
- Fixed cases where Firefox and Electron windows were not tracked correctly after opening
- Fixed edge-case monitor navigation and window movement bugs on multi-monitor setups
- Redesigned Pin Monitor with clearer controls, faster updates, and more reliable pin/unpin behavior

## v0.2.19 - April 2026

- Fixed: Windows restore to the correct monitors after sleep/wake, including MacBook lid close/open and USB-C dock reconnection delays

## v0.2.18 - April 2026

- Customizable stage switch hotkeys — Opt+1-9 (switch stage) and Opt+Shift+1-9 (send window to stage) can now be remapped, cleared, or reassigned in Settings → Shortcuts
- Shortcut recorder now captures all keys including media keys, Mission Control shortcuts, and other system-intercepted keys
- Single keys (without modifiers) can now be bound as shortcuts
- Fix: stages bar peek no longer overflows onto vertically-stacked monitors
- Fix: cancel button now works during shortcut recording (previously only Escape worked)
- Fix: clicking anywhere on a cleared ("None") shortcut box now starts recording

## v0.2.17 - April 2026

- Dragging a window by its title bar now shows a thin strip at the top of the screen — move your cursor into the strip to reveal the full stages bar, then drop the window on a stage card to move it
- Hot edge now has a brief delay before showing the stages bar, preventing accidental triggers
- New setting: "Switch to stage after sending a window" — automatically follow your window to its new stage
- Sent windows now appear on top when you switch to their stage
- Stages bar gets a fresh glass look with rounded corners
- Pinned monitor settings no longer reset when you unplug and replug your display
- Window positions are better preserved after waking from sleep
- Fixed rare issue where windows could get stuck off-screen after switching stages
- Fixed stages bar not responding to clicks on multi-monitor setups with different heights

## v0.2.16 - March 2026

- New: Screen Padding — add custom padding around the tiling area from Settings → Tiling. Supports uniform or per-side (top/bottom/left/right) modes
- Improved: AI Staging now works with many more models — robust parsing handles thinking/reasoning blocks, code fences, trailing commas, comments, and truncated responses
- Improved: AI Staging OpenAI providers merged into one — automatically uses the best API for your endpoint (Responses API for api.openai.com with Chat Completions fallback, Chat Completions for third-party providers like Groq and OpenRouter)
- Improved: AI Staging max output token limit raised from 1,800 to 16,384 — fixes "response couldn't be parsed" errors for users with 20+ windows
- Fixed: Snapped windows now receive keyboard focus immediately
- Fixed: Tiling auto-retiles when screen padding changes

## v0.2.15 - March 2026

- Snap wheel trigger shortcuts now accept any key or key combo — no modifier requirement
- Fixed modifier-only combos (e.g. Ctrl+Opt) losing keys when released one at a time
- Added Fn/Globe key support for snap wheel trigger shortcuts
- Fixed toggle-mode keyboard triggers not responding to mouse hover or clicks
- Tip: If using the Fn key as a trigger, go to System Settings → Keyboard and set “Press 🌐 key to” to “Do Nothing” to prevent macOS from intercepting it

## v0.2.14 - March 2026

- Added support for Intel-based Macs

## v0.2.13 - March 2026

Download: https://update.betterstage.app/BetterStage-0.2.13.dmg

- Pin windows in place — Keep any window locked to its spot in Bento Box mode. Other windows will tile around it, even when you add new windows, retile, or maximize
- Pin/unpin with Ctrl+Opt+P or the Pin button in the snap wheel
- A small badge on the window's top edge shows which windows are pinned

## v0.2.12 - March 2026

Download: https://update.betterstage.app/BetterStage-0.2.12.dmg

- New: Persistent active stage across relaunch — BetterStage now remembers which stage was active and restores it on restart
- New: Monitor identity tracking — monitors are recognized by serial number and hardware info, surviving display ID changes across sleep/wake, unplug/replug, and port swaps
- Improved: Window-to-stage matching on relaunch — score-matrix assignment prevents same-app windows from being misassigned across stages
- Improved: Multi-button mouse handling — fixed button 3/4 events interfering with each other during snap wheel and drag operations
- Fixed: Bento retile shuffling — windows no longer briefly shuffle when transient accessibility hiccups occur
- Fixed: Stage switch race on window close — closing a window no longer triggers an unwanted stage switch from stale focus events

## v0.2.11 - March 2026

Download: https://update.betterstage.app/BetterStage-0.2.11.dmg

- Bento Box: maximize no longer sticks after adding/removing windows
- Keyboard maximize (Ctrl+Opt+Enter) now respects Bento mode
- Retile all monitors when toggling Bento Box, not just the one under the cursor
- Snap-back works after blocked resize — windows no longer get stuck at mouse-release position
- Windows no longer spawn at the hide corner when opened by apps with hidden siblings
- No more periodic window refreshing — event-driven discovery eliminates visible retile cascade
- Screen lock no longer ghosts windows — reconciliation pauses during lock/screensaver
- Cleared shortcuts no longer show phantom key combos in menus
- Improved thread safety, fixed memory leaks, removed potential crashes, and hardened privacy logging
- Added stages bar toggle to menu with keyboard shortcut
- Fixed incorrect shortcut help text

## v0.2.10 - March 2026

- Bento Box feels calmer — windows stay put when other windows are added or removed
- Retiling on wake and monitor reconnect no longer shuffles your layout
- Independent Bento Box toggle for excluded monitors
- Retile shortcut now targets the monitor under your cursor
- Fixed Bento resize sometimes not saving when releasing the mouse
- Fixed menu bar using too much CPU in the background
- Menu bar stage indicators are now display-only (click opens menu)

## v0.2.9 - March 2026

- Fixed: Retile now only affects the monitor under your mouse cursor, in both Bento Box and non-Bento modes
- Fixed: In non-Bento mode, dragging a window to another monitor now updates BetterStage's internal monitor assignment correctly on release
- Improved: In Bento Box mode, cross-monitor drags keep the current behavior — the destination monitor retiles after you release the window
- Fixed: Excluded (pinned) monitors now have independent Bento Box on/off control instead of forcing Bento to stay enabled
- Improved: Turning Bento Box off on an excluded monitor now keeps the current layout in place and lets windows float afterward
- Improved: Excluded-monitor Bento Box state now persists per monitor across app restarts

## v0.2.8 - March 2026

- Fixed Chrome Cmd+F and Cmd+L triggering unwanted stage switch when Chrome has windows on multiple stages

## v0.2.7 - March 2026

- Fixed high CPU usage caused by menu bar icon redraw loop

## v0.2.6 - March 2026

- Minor bug fixes

## v0.2.4 - March 2026

- Middle-click no longer triggers auto-scroll or paste in other apps — BetterStage now intercepts the click before it reaches the underlying window
- New "Block default click" toggle per trigger in Snap Wheel settings (on by default for mouse triggers)
- Toggle-mode triggers now activate on mouse button release instead of press, so accidental clicks feel less jarring
- Dragging with middle-click (e.g. panning in Figma or Blender) no longer accidentally triggers the snap wheel — only a clean click-and-release activates it
- Target window now shows a glowing highlight ring when the snap wheel appears, so you always know which window will be affected
- Highlight ring matches your system accent color and adapts to the window's corner radius (including the larger rounded corners on macOS Tahoe)

## v0.2.3 - March 2026

- Redesigned stage bar with a cleaner look, app icon previews, and stage number badges
- Stage bar now scales nicely across different screen sizes
- Drag to reorder your stages

## v0.2.2 - March 2026

- Dragging a window between monitors now properly retiles the destination screen
- Retile is deferred until you release the mouse for smooth drag performance
- Redesigned grid overlay

## v0.2.1 - March 2026

- Fixed: Creating a new window via dock right-click no longer snaps to the app's previous stage
- Fixed: AI Staging now correctly assigns windows to pinned monitors (e.g. chat apps on your always-visible side screen)
- Fixed: Windows assigned to pinned monitors are properly untracked from stages, staying visible across all stage switches
- Improved: Sending a tiled window to a non-tiled stage now centers it at 80% screen size instead of keeping its small tiled dimensions
- Improved: AI Staging prompt now describes monitor position, orientation, and pinned status for smarter window placement

## v0.2.0 - March 2026

- New: Snap Wheel v2 — custom configurable triggers (middle-click, Ctrl+Opt, and more), outer action fan with Stages, Thirds, and Extras submenus, Settings slice
- New: AI Staging — let AI organize your windows into stages with live streaming progress overlay
- New: Redesigned onboarding with feature highlight slides (snap wheel, stages, tiling), snap wheel nudge tooltip, and 3 default stages
- New: License key redeem flow and Activate License button in settings
- Improved: Pro gating reworked — snap wheel unlocked for free, PRO badges on gated features
- Improved: Snap wheel rebuilt with Core Animation for smooth radial burst animations
- Fixed: Skip redeem modal when license key is already linked

## v0.1.9 - March 2026

- New: Repeated keyboard snap shortcuts can now move windows across monitors for halves and thirds, including portrait and excluded displays
- Improved: Excluded monitors now participate correctly in Bento/grid snapping without keeping windows stage-tracked
- Improved: Ctrl+Opt Snap Wheel activation now has a configurable delay to reduce accidental popups
- Fixed: Check for Updates now opens Sparkle windows with proper app focus from the menu bar app

## v0.1.8 - March 2026

- New: Snap Wheel rebuilt with Core Animation — smooth radial burst appear, hover transitions, selection flash, and animated dismiss
- New: Opt+N hotkey to create a new stage
- Improved: Snap wheel visual polish — dark opaque fills, uniform slice gaps, accent hover effects

## v0.1.7 - February 2026

- Fixed: Windows no longer lose their stage assignment after screen saver activation
- Fixed: Electron apps (Claude, Codex) stay on their correct stage through screen saver cycles

## v0.1.6 - February 2026

- Fix window snapping on vertically rotated (portrait) monitors
- Keyboard snap shortcuts in Bento Box mode now work with multi-window layouts

## v0.1.5 - February 2026

- Fix windows on excluded monitors being moved to the main screen on restart

## v0.1.4 - February 2026

- Window snapping via keyboard shortcuts now works in Bento Box mode
- Bug fixes and stability improvements

## v0.1.1 - February 2026

- Fix windows getting stuck when dragged to excluded monitors
- Ignored apps are now immediately released from staging
- Opt+Shift+number now auto-creates missing stages when sending a window
- Automatic update checks enabled by default

## v0.1.0 - February 2026

- 9 named stages spanning all monitors
- Instant stage switching via Opt+1-9, Opt+Left/Right, Opt+Tab cycling
- Send window to stage with Opt+Shift+1-9 without switching
- Bento Box BSP auto-tiling with iOS-style expel/swap reordering
- Equal-space grid packing with master-stack layout for odd counts
- Snap Wheel radial zone picker via Ctrl+Opt or middle-click
- 14 snap zones for halves, thirds, quarters, and portrait-adaptive layouts
- Fully configurable keyboard shortcuts with conflict detection
- Multi-monitor support with display exclusion and portrait monitor awareness
- Hot edge activation and Opt+scroll stage switching
- Two-tier window hiding: app-level and position-based for zero visual remnants
- Stages bar with drag-to-reorder, inline rename, and right-click context menu
- Menu bar stage indicators with clickable squares and right-click menus
- Bento maximize with multi-strategy packing and minimum size probing
- Grid overlay during window move and live neighbor displacement
- Auto-update support via Sparkle
- First-launch permission wizard for guided onboarding
- DMG distribution with Developer ID signing and notarization
- Pro licensing with Stripe integration and free tier included
