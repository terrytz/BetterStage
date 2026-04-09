# Changelog

## v0.2.18 — April 2026

- Customizable stage switch hotkeys — Opt+1-9 (switch stage) and Opt+Shift+1-9 (send window to stage) can now be remapped, cleared, or reassigned in Settings → Shortcuts
- Shortcut recorder now captures all keys including media keys, Mission Control shortcuts, and other system-intercepted keys
- Single keys (without modifiers) can now be bound as shortcuts
- Fix: stages bar peek no longer overflows onto vertically-stacked monitors
- Fix: cancel button now works during shortcut recording (previously only Escape worked)
- Fix: clicking anywhere on a cleared ("None") shortcut box now starts recording

## v0.2.17 — April 2026

- Dragging a window by its title bar now shows a thin strip at the top of the screen — move your cursor into the strip to reveal the full stages bar, then drop the window on a stage card to move it
- Hot edge now has a brief delay before showing the stages bar, preventing accidental triggers
- New setting: "Switch to stage after sending a window" — automatically follow your window to its new stage
- Sent windows now appear on top when you switch to their stage
- Stages bar gets a fresh glass look with rounded corners
- Pinned monitor settings no longer reset when you unplug and replug your display
- Window positions are better preserved after waking from sleep
- Fixed rare issue where windows could get stuck off-screen after switching stages
- Fixed stages bar not responding to clicks on multi-monitor setups with different heights

## v0.2.16 — March 2026

- New: Screen Padding — add custom padding around the tiling area from Settings → Tiling. Supports uniform or per-side (top/bottom/left/right) modes
- Improved: AI Staging now works with many more models — robust parsing handles thinking/reasoning blocks, code fences, trailing commas, comments, and truncated responses
- Improved: AI Staging OpenAI providers merged into one — automatically uses the best API for your endpoint (Responses API for api.openai.com with Chat Completions fallback, Chat Completions for third-party providers like Groq and OpenRouter)
- Improved: AI Staging max output token limit raised from 1,800 to 16,384 — fixes "response couldn't be parsed" errors for users with 20+ windows
- Fixed: Snapped windows now receive keyboard focus immediately
- Fixed: Tiling auto-retiles when screen padding changes

## v0.2.15 — March 2026

- Snap wheel trigger shortcuts now accept any key or key combo — no modifier requirement
- Fixed modifier-only combos (e.g. Ctrl+Opt) losing keys when released one at a time
- Added Fn/Globe key support for snap wheel trigger shortcuts
- Fixed toggle-mode keyboard triggers not responding to mouse hover or clicks
- Tip: If using the Fn key as a trigger, go to System Settings → Keyboard and set "Press 🌐 key to" to "Do Nothing" to prevent macOS from intercepting it

## v0.2.14 — March 2026

- Added support for Intel-based Macs

## v0.2.13 — March 2026

- Pin windows in place — Keep any window locked to its spot in Bento Box mode. Other windows will tile around it, even when you add new windows, retile, or maximize
- Pin/unpin with Ctrl+Opt+P or the Pin button in the snap wheel
- A small badge on the window's top edge shows which windows are pinned

## v0.2.12 — March 2026

- New: Persistent active stage across relaunch — BetterStage now remembers which stage was active and restores it on restart
- New: Monitor identity tracking — monitors are recognized by serial number and hardware info, surviving display ID changes across sleep/wake, unplug/replug, and port swaps
- Improved: Window-to-stage matching on relaunch — score-matrix assignment prevents same-app windows from being misassigned across stages
- Improved: Multi-button mouse handling — fixed button 3/4 events interfering with each other during snap wheel and drag operations
- Fixed: Bento retile shuffling — windows no longer briefly shuffle when transient accessibility hiccups occur
- Fixed: Stage switch race on window close — closing a window no longer triggers an unwanted stage switch from stale focus events

## v0.2.11 — March 2026

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

## v0.2.10 — March 2026

- Menu bar stage indicators are now display-only (no accidental clicks)
- Performance and stability improvements

## v0.2.3 — March 2026

- Redesigned stage bar with a cleaner look, app icon previews, and stage number badges
- Stage bar now scales nicely across different screen sizes
- Drag to reorder your stages

## v0.2.2 — March 2026

- Dragging a window between monitors now properly retiles the destination screen
- Retile is deferred until you release the mouse for smooth drag performance
- Redesigned grid overlay

## v0.2.1 — March 2026

- Fixed: Creating a new window via dock right-click no longer snaps to the app's previous stage
- Fixed: AI Staging now correctly assigns windows to pinned monitors (e.g. chat apps on your always-visible side screen)
- Fixed: Windows assigned to pinned monitors are properly untracked from stages, staying visible across all stage switches
- Improved: Sending a tiled window to a non-tiled stage now centers it at 80% screen size instead of keeping its small tiled dimensions
- Improved: AI Staging prompt now describes monitor position, orientation, and pinned status for smarter window placement

## v0.2.0 — March 2026

- New: Snap Wheel v2 — custom configurable triggers (middle-click, Ctrl+Opt, and more), outer action fan with Stages, Thirds, and Extras submenus, Settings slice
- New: AI Staging — let AI organize your windows into stages with live streaming progress overlay
- New: Redesigned onboarding with feature highlight slides (snap wheel, stages, tiling), snap wheel nudge tooltip, and 3 default stages
- New: License key redeem flow and Activate License button in settings
- Improved: Pro gating reworked — snap wheel unlocked for free, PRO badges on gated features
- Improved: Snap wheel rebuilt with Core Animation for smooth radial burst animations
- Fixed: Skip redeem modal when license key is already linked

## v0.1.9 — March 2026

- New: Repeated keyboard snap shortcuts can now move windows across monitors for halves and thirds, including portrait and excluded displays
- Improved: Excluded monitors now participate correctly in Bento/grid snapping without keeping windows stage-tracked
- Improved: Ctrl+Opt Snap Wheel activation now has a configurable delay to reduce accidental popups
- Fixed: Check for Updates now opens Sparkle windows with proper app focus from the menu bar app

## v0.1.8 — March 2026

- New: Snap Wheel rebuilt with Core Animation — smooth radial burst appear, hover transitions, selection flash, and animated dismiss
- New: Opt+N hotkey to create a new stage
- Improved: Snap wheel visual polish — dark opaque fills, uniform slice gaps, accent hover effects

## v0.1.7 — February 2026

- Fixed: Windows no longer lose their stage assignment after screen saver activation
- Fixed: Electron apps (Claude, Codex) stay on their correct stage through screen saver cycles

## v0.1.6 — February 2026

- Fix window snapping on vertically rotated (portrait) monitors
- Keyboard snap shortcuts in Bento Box mode now work with multi-window layouts

## v0.1.5 — February 2026

- Fix windows on excluded monitors being moved to the main screen on restart

## v0.1.4 — February 2026

- Window snapping via keyboard shortcuts now works in Bento Box mode
- Bug fixes and stability improvements

## v0.1.1 — February 2026

- Fix windows getting stuck when dragged to excluded monitors
- Ignored apps are now immediately released from staging
- Opt+Shift+number now auto-creates missing stages when sending a window
- Automatic update checks enabled by default

## v0.1.0 — February 2026

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
