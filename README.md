README
======
Lazy journalling scripts that I use.
 1. `journal.sh`: Open a new Journal entry using `$EDITOR`.
 2. `show-journal.sh`: Select a journal entry to read.
Dependencies:
 - `fzf`: Used to select the journal entry to read.
 - `boxes`: Draws a parchment around each journal entry.
 - `batcat`: I use batcat as the pager for reading my journal entries.
 - `nvim`: If the `EDITOR` environment variable is not set, defaults to using neovim.
