# AI Staging Prompt

These files mirror the current BetterStage AI Staging chat path in app version 2.0.4 (build 2.0.4901).

The app no longer uses the older public `instruction.md` / `pipeline.md` split. The production chat panel sends:

1. [`system.md`](system.md) as the system/instructions message.
2. [`user-prompt.md`](user-prompt.md) as the dynamically rendered user message.

`user-prompt.md` is a template of the actual prompt returned by `AIStagingPromptRenderer.buildTaskPrompt(snapshot:customInstructions:resolver:intent:history:workspaceContext:)`. The live app fills the placeholders with:

- the user's selected Recipe, rendered with entity anchors,
- a glossary for referenced windows, apps, stages, monitors, groups, roles, modes, and pseudo-queries,
- the latest chat intent and last six chat turns,
- Settings default Window Mode,
- TabStack preset catalog,
- current stages,
- current monitors,
- manageable windows,
- skipped windows.

The prompt can be sent through managed BetterStage AI, directly to a configured cloud provider, or to a compatible local endpoint. OpenAI first-party calls use the Responses API when available and fall back to Chat Completions. OpenAI-compatible providers use Chat Completions. Claude uses the Anthropic messages API. In every case, the action contract is the same: return one JSON envelope inside `ACTION_JSON_START` / `ACTION_JSON_END`.

## Runtime substitutions

- `DELIBERATION_INSTRUCTIONS` uses the careful-reasoning instruction when Thinking is enabled, or the fast/minimal-deliberation instruction when disabled.
- `RECIPE_IF_ANY`, `INTENT_IF_ANY`, and `HISTORY_IF_ANY` include their section headings when present. The Recipe is binding unless the current user message overrides it.
- Workspace JSON and the snapshot-derived entity glossary are enclosed in `<workspace_snapshot_data>` and explicitly treated as untrusted observational data, never instructions.
- `MAX_STAGES` and the workspace JSON placeholders come from the current workspace context.

The three mode placeholders depend on **Keep Legacy Bento Box Mode**:

| Placeholder | Legacy disabled | Legacy enabled |
| --- | --- | --- |
| `MODE_GUIDANCE` | `bentoBox` is legacy input only; never emit it. If an old recipe names `bentoBox`, migrate it to `tabbedLayout`. | Legacy Bento Box mode is explicitly enabled. You may emit `bentoBox` when the user, Recipe, Settings default, or current workspace calls for it. TabStack remains `tabbedLayout`. |
| `MODE_VALUES` | `"free"`, `"tabbedLayout"`, or `"tabbedLayout:<Preset Name>"` | `"free"`, `"bentoBox"`, `"tabbedLayout"`, or `"tabbedLayout:<Preset Name>"` |
| `BENTO_TOKEN_MAPPING` | `{{mode:bentoBox}}` → `"<ID>": "tabbedLayout"` | `{{mode:bentoBox}}` → `"<ID>": "bentoBox"` |

`system.md` is unchanged; it still matches the app's system message.
