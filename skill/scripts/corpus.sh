#!/bin/sh
# corpus.sh - lookups against the MTG Mentor corpus.
# No runtime beyond POSIX sh, grep, sed. Python is not available on this machine.
#
# Usage:
#   corpus.sh search <term> [more terms...]   ranked hits with metadata and context
#   corpus.sh cite <file>                     citation block + provenance + dated flags
#   corpus.sh notes <file>                    the file's "Notes for use" section
#   corpus.sh outline [block]                 every article, or one block's articles
#   corpus.sh concept <term>                  the concept index entry, if one exists
#   corpus.sh gaps                            what the corpus is known not to cover
#
# Override the corpus location with MTG_CORPUS=/path/to/mtg-mentor

# Resolve the corpus. If this script is running from inside the corpus repo
# (<repo>/skill/scripts/), use the repo root so a clone works with no configuration.
# Otherwise fall back to the installed location.
SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
if [ -d "$SCRIPT_DIR/../../block-1-the-spine" ]; then
  DEFAULT_CORPUS="$SCRIPT_DIR/../.."
else
  DEFAULT_CORPUS="/c/Users/jeric/dev/mtg-mentor"
fi
CORPUS="${MTG_CORPUS:-$DEFAULT_CORPUS}"
[ -d "$CORPUS/block-1-the-spine" ] || {
  echo "corpus not found at $CORPUS" >&2
  echo "clone https://github.com/jerichoapo/mtg-mentor and set MTG_CORPUS to its path" >&2
  exit 1; }
cd "$CORPUS" || exit 1

meta() { # $1=file $2=key
  grep -m1 "^$2:" "$1" 2>/dev/null | sed "s/^$2: *//; s/^\"//; s/\"$//"
}

header() { # $1=file -> one-line identity
  printf '%s | %s | %s | %s\n' \
    "$(meta "$1" title)" "$(meta "$1" author)" "$(meta "$1" published)" "$1"
}

cmd_search() {
  [ -z "$1" ] && { echo "usage: corpus.sh search <term>" >&2; exit 1; }
  q="$*"
  echo "SEARCH: $q"
  echo
  # Rank by match count so the file that develops an idea beats the one that mentions it.
  grep -ric "$q" --include="*.md" block-*/ 2>/dev/null \
    | grep -v ':0$' | sort -t: -k2 -rn | head -12 | while IFS=: read -r f n; do
      echo "── [$n hits] $(header "$f")"
      echo "   block: $(meta "$f" block)   status: $(meta "$f" retrieval_status)"
      # Skip frontmatter lines: a metadata hit tells you nothing about the argument.
      grep -in "$q" "$f" | grep -vE '^[0-9]+:[a-z_]+:' | head -2 | sed 's/^/   L/' | cut -c1-180
      echo
    done
  echo "Rank is match count, which finds where an idea is developed rather than mentioned."
  echo "Check the concept index before trusting rank: corpus.sh concept \"$q\""
}

cmd_cite() {
  f="$1"; [ -f "$f" ] || { echo "no such file: $f" >&2; exit 1; }
  echo "TITLE:       $(meta "$f" title)"
  echo "AUTHOR:      $(meta "$f" author)"
  echo "PUBLISHED:   $(meta "$f" published)"
  echo "PUBLICATION: $(meta "$f" publication)"
  echo "BLOCK:       $(meta "$f" block)"
  echo "SOURCE:      $(meta "$f" source_url)"
  a=$(meta "$f" archive_url); [ -n "$a" ] && echo "ARCHIVE:     $a"
  echo "STATUS:      $(meta "$f" retrieval_status)"
  n=$(meta "$f" note); [ -n "$n" ] && { echo; echo "NOTE: $n"; }
  echo
  echo "--- dated-material flags in this file ---"
  grep -iE '^\s*-?\s*\*\*(deeply |format-)?dated' "$f" | sed 's/^ *//' | cut -c1-200
  grep -qiE '^\s*-?\s*\*\*(deeply |format-)?dated' "$f" || echo "(none flagged)"
}

cmd_notes() {
  f="$1"; [ -f "$f" ] || { echo "no such file: $f" >&2; exit 1; }
  sed -n '/^## Notes for use/,/^## Source/p' "$f" | sed '$d'
}

cmd_outline() {
  for d in block-*/; do
    case "$1" in "" ) ;; *) case "$d" in *"$1"*) ;; *) continue;; esac;; esac
    echo "=== $d"
    for f in "$d"*.md; do printf '  %s\n' "$(header "$f")"; done
    echo
  done
}

cmd_concept() {
  idx=$(ls concept-index-*.md 2>/dev/null | head -1)
  [ -n "$idx" ] || { echo "no concept index found" >&2; exit 1; }
  [ -z "$1" ] && { grep -E '^## ' "$idx" | sed 's/^## /  /'; exit 0; }
  # Print the matching section, entry to next heading.
  awk -v pat="$(echo "$*" | tr 'A-Z' 'a-z')" '
    /^## / { h=tolower($0); on = (index(h, pat) > 0) }
    on { print }
  ' "$idx"
}

cmd_gaps() {
  echo "KNOWN GAPS - say so plainly rather than filling them from memory."
  echo
  d=$(ls block-5-advanced-synthesis/*unrecovered*.md 2>/dev/null | head -1)
  [ -n "$d" ] && sed -n '/^## The series, correctly identified/,/^## Scale/p' "$d" | head -24
  echo
  echo "Concepts that are structurally incomplete because of the above:"
  echo "  - the formal definition of tempo (Advantage Theory part 5)"
  echo "  - line-up theory in its original form (parts 3-5)"
  echo "  - the applied Rule of Reflection (part 3)"
  echo
  echo "Full record: $d"
}

c="$1"; shift 2>/dev/null
case "$c" in
  search)  cmd_search "$@" ;;
  cite)    cmd_cite "$@" ;;
  notes)   cmd_notes "$@" ;;
  outline) cmd_outline "$@" ;;
  concept) cmd_concept "$@" ;;
  gaps)    cmd_gaps ;;
  *) sed -n '2,15p' "$0" | sed 's/^# \{0,1\}//' ;;
esac
