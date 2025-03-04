#!/usr/bin/env bash


# Globals:
readonly DIR="${HOME}/.journal"
readonly TIMESTAMP="$(date '+%a-%d-%m-%Y')"
readonly ENTRY="journal-${TIMESTAMP}.txt"

readonly TITLE="Journal ${TIMESTAMP}:"
readonly TITLE_BAR="$(echo "$TITLE" | sed -e 's/./=/g')"

# Create journal directory.
mkdir -p "$DIR"

# Do some simple logging:
cd "$DIR"
echo "Journal: ${DIR}/$ENTRY"

# Create journal entry.
if [[ ! -f "$ENTRY" ]]; then
cat > "$ENTRY" <<- EOF
	$TITLE
	$TITLE_BAR
	EOF
fi

"${EDITOR:-nvim}" "$ENTRY"
