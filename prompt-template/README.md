# AI Staging Prompt

These files mirror the current BetterStage AI Staging chat path in app version 1.3.1.

The app no longer uses the older public `instruction.md` / `pipeline.md` split. The production chat panel sends:

1. [`system.md`](system.md) as the system/instructions message.
2. [`user-prompt.md`](user-prompt.md) as the dynamically rendered user message.

`user-prompt.md` is a template of the actual prompt returned by `AIStagingPromptRenderer.buildTaskPrompt(snapshot:customInstructions:resolver:intent:history:)`. The live app fills the placeholders with:

- the user's selected Recipe, rendered with entity anchors,
- a glossary for referenced windows, apps, stages, monitors, groups, roles, modes, and pseudo-queries,
- the latest chat intent and last six chat turns,
- Settings default Window Mode,
- Tabbed Layout preset catalog,
- current stages,
- current monitors,
- manageable windows,
- skipped windows.

The prompt can be sent through managed BetterStage AI, directly to a configured cloud provider, or to a compatible local endpoint. OpenAI first-party calls use the Responses API when available and fall back to Chat Completions. OpenAI-compatible providers use Chat Completions. Claude uses the Anthropic messages API. In every case, the action contract is the same: return one JSON envelope inside `ACTION_JSON_START` / `ACTION_JSON_END`.
