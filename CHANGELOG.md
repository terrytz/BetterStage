# Changelog

Public release notes for BetterStage. The latest download is served from https://betterstage.app/download/thanks; direct update artifacts are served from https://update.betterstage.app/.

## v1.3.1 - July 2026

Download: https://update.betterstage.app/BetterStage-1.3.1.dmg

- New: Customize the menu bar in Settings > General: choose and reorder the BetterStage logo, Stage index, total window count, Stage name, and Window Modes, with three Stage index styles.
- Improved: Menu bar status items now share a consistent compact design, and Window Modes summarizes every connected display, including Pinned Displays.
- Fixed: Closing Electron windows now removes ghost tabs and stale Bento Box tiles promptly, then reflows the layout even when macOS keeps old window records around.
- Fixed: Resizing a Bento Box window from macOS's thin outer window border now reliably starts linked resizing.
- Fixed: Bento Box snap actions now place shrinking windows correctly against the right edge instead of leaving them offset.
- Fixed: BetterStage's rounded status and loading toasts no longer show square white corners.

## v1.3.0 - July 2026

Download: https://update.betterstage.app/BetterStage-1.3.0.dmg

- New: Workspace Continuity automatically restores your stages, window positions, and layouts after restarting your Mac, waking from sleep, or reconnecting displays.
- New: When a display is disconnected, its windows are kept safely in the Offline Display Shelf until the display returns or you choose to move them elsewhere.
- New: Pro users can save and load named Workspaces, including multi-monitor stages, window modes, Tabbed Layout panes, and apps that need to be reopened.
- New: Save and Load Workspace actions are available from the menu bar and Snap Wheel, with visual previews and clear handling for missing displays.
- New: A dedicated Workspaces settings page brings automatic recovery and Saved Workspace controls together in one place.
- Improved: The Stages Bar now shows app icons and window counts for each individual monitor and adapts correctly when a display rotates.
- Improved: Retile now repairs the visible desktop more reliably, including native stacking and resize-handle interactions.
- Fixed: Workspace loading now remains atomic and shows one continuous progress indicator while apps and windows are restored.
- Fixed: Tabbed Layout keeps inactive tabs parked correctly during stage switches and restores tabs reliably after Dock activation.

## v1.2.9 - July 2026

Download: https://update.betterstage.app/BetterStage-1.2.9.dmg

- New: Choose System, Light, or Dark appearance across Settings, AI Staging, and onboarding.
- New: BetterStage can now be installed with Homebrew using the commands available on the website.
- New: In Tabbed Layout, hover over a tab while dragging a file from Finder to reveal its window before dropping the file.
- New: The Tabbed Layout preset editor now opens in a focused sheet, with a Balance Panes action for evenly distributing complex layouts.
- Improved: Settings has been redesigned with clearer navigation, searchable preferences, better resizing, and a more native macOS layout.
- Improved: Apps launched directly into a Tabbed Layout pane now expand the pane when needed to accommodate the app's minimum window size.
- Fixed: Launching an app into a Tabbed Layout pane is more reliable, including apps with delayed or existing windows.
- Fixed: BetterStage no longer becomes stuck behind unexpected login-keychain password prompts when loading saved credentials.
- Fixed: Double-clicking a window title bar in Tabbed Layout now consistently returns the window to its pane instead of leaving it maximized.

## v1.2.8 - July 2026

Download: https://update.betterstage.app/BetterStage-1.2.8.dmg

- New: In Tabbed Layout, panes now have a right-click context menu, and you can launch an app directly into a pane. Use the new pane plus button or right-click a pane, search your installed apps, and BetterStage will place the new window in that pane.
- New: AI Staging now supports multiple saved Recipes. Create different Recipes for different workflows, switch between them, duplicate or rename them, and choose which one should be the default.
- New: Hidden Window Parking now includes an optional faster parking mode for multi-monitor setups, with clearer Settings guidance and a monitor arrangement illustration.
- New: The Stages Bar top-edge trigger can now optionally ignore the built-in Mac display notch area, while still working on the rest of the top edge.
- Improved: The AI Staging Recipe editor is easier to find and manage. Selecting a Recipe now reliably updates the editor, Arrange action, and prompt preview.
- Improved: Settings now opens on the display where your pointer is, making it easier to use on multi-monitor setups.

## v1.2.7 - July 2026

Download: https://update.betterstage.app/BetterStage-1.2.7.dmg

- Fixed: Exiting Zoom Pane in Tabbed Layout no longer freezes the tab bar while BetterStage waits for app window frame writes.
- Fixed: Tabs switched while a pane is zoomed now return to their normal hidden pane frames after unzooming instead of remaining zoom-sized behind the active window.
- Fixed: Native and Bento Box modes no longer capture short-lived browser and app controls as manageable windows, preventing popups such as Chrome downloads/profile menus, password-manager menus, and Excel filters from disappearing immediately.
- Fixed: BetterStage helper panels and overlays now opt out of third-party screen/window capture, reducing interference with app-window sharing in Zoom.

## v1.2.6 - July 2026

Download: https://update.betterstage.app/BetterStage-1.2.6.dmg

- New: In Tabbed Layout, hover any tab to see its full title and app name in a tooltip — especially useful when tab names are cut off.
- New: In Tabbed Layout, click the close button (X) on any tab to close it directly, just like a browser tab.
- New: In Tabbed Layout, choose Chrome-style (compact, equal-width) or Safari-style (last tab stretches) tab widths in Settings.
- Improved: Closing a tab in Tabbed Layout now focuses the tab to its right (or left if it was the last tab), matching Chrome behavior — instead of always jumping to the leftmost tab.
- Improved: BetterStage no longer shows recovery prompts after sleep/wake or when a display is disconnected. The previous monitor-recovery system has been removed and a brand new, more robust recovery engine is being built for the next release.
- Improved: The Settings window now shows a Dock icon while open so you can switch to it with Cmd-Tab like a normal app.
- Improved: Factory reset now preserves your device verification key — your license activation survives resetting all settings.
- Improved: Finder and System Preferences are no longer excluded from stage tracking by default. Add exclusions in Settings > Excluded Apps.
- Improved: The first-run welcome window no longer floats above System Settings permission dialogs, so the Accessibility grant button is always visible.
- Improved: The Displays settings pane has been rewritten with clearer labels and no longer includes Display Setup Profiles — automatic stage restoration on monitor reconnection will be rebuilt for a future release.
- Improved: App activation (Cmd-Tab, Dock click, notification click) is now conservatively routed — if the app already has a visible window on your current stage, activation stays there.
- Improved: In Tabbed Layout, clicking a tab in the same zoomed pane now keeps the pane zoomed — zoom only exits when you click a tab in a different pane.
- Fixed: Entering or exiting native fullscreen in Chrome no longer causes hidden Chrome windows to appear on the wrong monitor. Hidden windows stay at the hide corner in all tiling modes (Tabbed Layout, Bento Box, and native).
- Fixed: Closing a window in Tabbed Layout or Bento Box now immediately retiles and switches tabs instead of leaving an empty pane or grid cell for several seconds — most noticeable with Electron apps (WeChat, Telegram, 抖音).
- Fixed: Closing a non-selected Tabbed Layout tab now disappears from the tab bar instantly instead of waiting for the next window scan cycle.
- Fixed: When a monitor is unplugged, windows moved to another display now snap into their panes or tiled positions immediately instead of floating off until you nudge them.
- Fixed: Opening or dismissing the Snap Wheel no longer makes Tabbed Layout panes flash off momentarily.
- Fixed: In Tabbed Layout, clicking a window no longer pulls a hidden same-app sibling (e.g. another Chrome window) to the front — on the same monitor or across monitors.
- Fixed: Activating a Tabbed Layout pane now focuses the correct window, and oversized pane title-bar drags work as expected.
- Fixed: Built-in trackpad Snap Wheel and gesture triggers now handle duplicate touch contacts from macOS reliably.
- Fixed: Trackpad system navigation swipes (Mission Control, Spaces) no longer interfere with Snap Wheel triggers.
- Fixed: Terminal and Ghostty tabs no longer get temporarily orphaned during rapid tab switching — the pane now tracks tabs by stable slot identity instead of window ID.
- Fixed: Un-zooming a Tabbed Layout pane now actually shrinks it back to its pane frame instead of staying stuck at the monitor-sized zoom.
- Fixed: Releasing a dragged or resized window in Tabbed Layout now reliably snaps back to its pane on every release path.
- Fixed: Hold-mode keyboard shortcuts now correctly keep the Snap Wheel open while held and commit on release, instead of only firing on press.
- Fixed: The Snap Wheel target highlight now disappears instantly when you commit an action or dismiss the wheel.
- Fixed: Dragging a window by its title bar now works even when the window is not in focus.
- Fixed: Activating a window on a pinned monitor no longer unexpectedly switches the stage on your other monitors.
- Fixed: Stage switching via Dock click or Cmd-Tab works reliably right after exiting native fullscreen, instead of being ignored for up to 1.5 seconds.
- Fixed: Users upgrading from trial to paid after a factory reset can now successfully re-activate instead of being permanently locked out.
- Fixed: AI Staging can be opened directly from the menu bar or hotkey — license and configuration checks now happen inside the panel instead of blocking with a toast popup.

## v1.2.5 - July 2026

Download: https://update.betterstage.app/BetterStage-1.2.5.dmg

- Improved: BetterStage now shows Stage Manager compatibility guidance during first-run setup, with a quick button to open the right macOS settings page.
- Improved: Option-Tab stage cycling now previews stages as you move through them, making it easier to pick the right workspace before switching.
- Fixed: Built-in MacBook trackpads now recognize the four-finger Snap Wheel trigger much more reliably, matching the behavior of external Magic Trackpads.
- Fixed: Tabbed Layout pane chrome now gets out of the way during Show Desktop, Mission Control, App Exposé, wallpaper clicks, trackpad swipes, and hot corners, so desktop widgets and system overviews are no longer blocked.
- Fixed: Terminal and iTerm windows in Tabbed Layout stay steadier while resizing or activating, reducing pane height jitter and slow-tab visual glitches.

## v1.2.2 - July 2026

Download: https://update.betterstage.app/BetterStage-1.2.2.dmg

- New: App Routing. You can assign an app to a stage so new windows from that app always open there. Pick any stage 1–9 — if it doesn't exist yet BetterStage creates it. Works per-monitor too, so Safari always opens on your right display. Find it in Settings → App Routing. (Pro feature.)
- New: In Tabbed Layout, right‑click a tab and choose Split Right or Split Below to move it into its own pane.
- Improved: Stage switching is faster, especially with many windows open.
- Improved: Option‑scroll stage switching is now a toggle in Settings → General.
- Fixed: In Tabbed Layout, closing or opening a Chrome tab no longer switches the active pane.
- Fixed: Windows that disappeared after your Mac woke from sleep are now recovered to the right stage and monitor.
- Updated: App and web icons with a new cleaner look.

## v1.2.1 - June 2026

Download: https://update.betterstage.app/BetterStage-1.2.1.dmg

- New: Activate Pro on a new Mac in one click. Open your account at betterstage.app and click 'Activate on this Mac' — BetterStage launches and turns on Pro for you, with no license key to copy or paste.
- Fixed: A handful of smaller bugs squashed and overall stability improved.

## v1.2.0 - June 2026

Download: https://update.betterstage.app/BetterStage-1.2.0.dmg

- New: Introducing BetterStage AI — the no-setup way to use AI Staging. Describe your workspace in plain English and it arranges your apps across every monitor for you, with no API key to bring or configure. It's an optional subscription; you can still connect your own AI provider on any Pro license.
- New: In Tabbed Layout you can now zoom a single pane to fill the whole screen, then restore your full layout in one click — from the pane's menu or the snap wheel. A one-time tip shows you how to bring the panes back.
- New: Bento Box's window fill is now reversible — enlarge a window to take over its screen, then restore it right back to where it was. (The snap wheel's 'Maximize' action is now called 'Fill'.)
- Improved: AI Staging is much easier to use — describe your projects and stages in a plain-English Recipe (with a ready-made starter template), preview exactly what will happen before anything moves, and let BetterStage pick the best window mode for each monitor by grouping your apps and choosing Tabbed Layout or Bento Box per screen.
- Improved: Settings has a cleaner, card-based layout with a Window Modes overview, so Native, Bento Box, and Tabbed Layout are clear at a glance.
- Performance: Window dragging is smooth again. Moving a window used to stutter and lag — now windows glide fluidly under your cursor.
- Fixed: In Tabbed Layout, the tab bar no longer freezes when a background app is busy (for example, an installer copying files) — your tabs and panes stay clickable while that app catches up.
- Fixed: Minimized windows now stay minimized when you switch stages and come back.
- Fixed: Windows stranded off-screen after your Mac wakes or your monitors change are recovered to the correct stage and monitor.
- Fixed: Find bars and pop-up panels no longer get dragged around or teleported along with your windows.
- Fixed: After sending an app to another stage, clicking its Dock icon now switches you to that stage.
- Fixed: 'Fill' no longer kicks a monitor out of Tabbed Layout into Bento Box.

## v1.1.4 - June 2026

Download: https://update.betterstage.app/BetterStage-1.1.4.dmg

- Fixed: Terminal windows no longer flicker in Tabbed Layout — they now sit still in their pane like any other app.
- Improved: Resizing Tabbed Layout panes is much smoother. The divider follows your cursor in real time as you drag, your windows drop into their final spots the instant you let go, and the old flicker, double-flash, and brief pause at the end of a drag are gone. Dragging a divider all the way to an edge no longer flashes a duplicate handle elsewhere on screen.
- Fixed: Drag a divider past an app's minimum size and the pane now springs back to that app's real limit when you release, so windows never overlap their neighbors. BetterStage learns each app's true minimum as you use it — and unlearns it if the app later goes smaller.
- Fixed: A pane's tab bar and its content now act as a single unit — they no longer split into two separate windows in Mission Control, and the tab bar can't get covered up and become unclickable.
- Fixed: Tabs are easier to hit — clicking near the edge of a tab now selects the right one.
- Fixed: Dragging a pane divider no longer switches which tab is active.
- Fixed: Bento Box dividers no longer get stuck after you've been resizing panes in Tabbed Layout.
- Fixed: Switching stages in the middle of a divider drag no longer carries the old layout into the new stage.

## v1.1.3 - June 2026

Download: https://update.betterstage.app/BetterStage-1.1.3.dmg

- New: Stage cards in the Stages Bar now show each stage's window mode — Native, Bento Box, or Tabbed Layout — for the monitor you're looking at, and they update live as you switch modes.
- Fixed: Waking your Mac no longer rearranges your windows out from under you. Wake recovery was redesigned from the ground up: visible windows stay where they are, windows on your other stages quietly get their correct positions back the moment you switch to them, and a window that sleep moved to the wrong monitor is put back where it belongs.
- Fixed: In Tabbed Layout, the tab you were working in stays the active tab across sleep — waking no longer switches your panes to a different window.
- Fixed: The Stages Bar could stop appearing — by hot edge or keyboard shortcut — after connecting or disconnecting a display. BetterStage was mistaking a recycled display ID for an excluded monitor and hiding the bar on every screen; it now identifies monitors by their actual hardware, so the bar always shows where it should.
- Fixed: A Pinned Display now stays pinned. Unplugging and replugging a monitor a few times could silently drop its pin, so it started joining stage switches again; BetterStage now keeps the pin attached to the right physical monitor across reconnects.
- Fixed: An unresponsive app in a Tabbed Layout group no longer freezes the whole tab bar. Switching to a hung app's tab could briefly freeze the screen; now that tab simply fails to activate while every other tab and pane stays responsive.
- Fixed: Tabbed Layout is steadier while you change modes. Applying a window mode to an empty stage no longer jumps you to another stage, switching one monitor out of Tabbed Layout no longer makes another monitor's tabs disappear, and opening the layout picker no longer hides your tabs while you choose.
- Fixed: Rescue Windows now reaches windows that actually got stuck. The command used to skip windows stranded off-screen or off every display — exactly the ones worth rescuing. It now gathers every window from your current desktop onto the monitor you pick, including ones BetterStage had lost track of.
- Fixed: Undo after a display change. A layout undo could silently do nothing once monitors were reconnected; it now follows your displays correctly.
- Fixed: AI Staging is more resilient to unusual or truncated responses from your model, and the resize grid overlay now lines up with your safe-area padding.
- Improved: Smoother window dragging and faster stage switching. Several hot paths now make far fewer redundant system calls, so dragging windows and switching stages feel lighter — and a slow or unresponsive app is far less likely to hold things up.
- Fixed: A small memory leak when trackpad gesture settings were changed, and extra crash-proofing around the auto-updater.

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
