#!/usr/bin/env bash


# Globals:
readonly DIR="${HOME}/.journal"

# Create the journal directory.
mkdir -p "$DIR"
cd "$DIR"

# FZF already sorts?
# readonly ENTRY="$(ls | sort -t '-' -r -k5,5n -k4,4n -k3,3n | fzf)"

echo -n 'Journal entries: '
ls -1 *.txt | wc -l

readonly ENTRY="$(ls -1 | fzf)"
cat "${ENTRY:?No journal entry selected.}" \
    | boxes -d parchment \
    | batcat
