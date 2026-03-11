# Changelog

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
