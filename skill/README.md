# The mtg-mentor skill

A Claude skill that answers Magic strategy questions from this corpus, citing the article
and flagging material that has gone stale.

**This directory is the canonical copy.** Claude loads skills from `~/.claude/skills/`, so
a working install is a copy of this directory placed there. That means two copies exist
and they can drift. Edit here, then sync.

---

## Install

```bash
cp -r skill ~/.claude/skills/mtg-mentor
```

Nothing else. The lookup script resolves the corpus automatically: run from inside this
repo it uses the repo root, and installed elsewhere it falls back to
`/c/Users/jeric/dev/mtg-mentor`. Override either with `MTG_CORPUS`.

```bash
MTG_CORPUS=/path/to/mtg-mentor ~/.claude/skills/mtg-mentor/scripts/corpus.sh gaps
```

## Sync after editing

```bash
cp -r skill/. ~/.claude/skills/mtg-mentor/
```

Run it after any change here. There is no automatic link, and Windows symlinks need
developer mode, which is why this is a copy rather than something cleverer.

---

## What it contains

| File | Purpose |
|---|---|
| `SKILL.md` | The instructions Claude loads. Modes, citation format, and the rule that the corpus outranks memory. |
| `scripts/corpus.sh` | Every lookup. POSIX sh over grep and sed, no runtime dependency. |
| `references/corpus-map.md` | What each block holds, what has gone stale, and the four corrections most often repeated wrongly. |
| `evals/evals.json` | The nine test cases across two iterations, with what each one probes. |

**No Python.** The machine this was built on has only the Microsoft Store stub, so the
script deliberately uses nothing beyond POSIX tools. That also makes it portable.

## The lookups

```bash
./corpus.sh concept <term>     # hand-built lineage entry, if one exists
./corpus.sh search <term>      # ranked hits with metadata and prose context
./corpus.sh cite <file>        # citation, provenance, dated-material flags
./corpus.sh notes <file>       # the file's "Notes for use" section
./corpus.sh outline [block]    # every article, or one block's
./corpus.sh gaps               # what the corpus is known not to cover
```

---

## The design decision worth knowing

**`concept` runs before `search`, and that ordering is load-bearing.**

Search ranks by raw match count, which finds where a word appears rather than where an
idea was born. Search "inevitability" and Reid Duke's 2014 installment ranks first on 29
hits. That is the best *teaching* of the concept and it is not the origin: Zvi Mowshowitz
coined the term in 2003, and Duke never claims otherwise. Lead with Duke and you have
given a good explanation with a wrong genealogy, wrapped in a citation that makes it look
verified.

The same trap caught virtual card advantage in testing. Match count points at Duke and
Zvi. The corpus credits **Eric Taylor**, whose name appears far less often.

The hand-built lineage in `concept-index-2026-09-06.md` exists precisely to beat match
count, and the skill is told to reach for it first.

---

## Testing

Nine cases across two iterations, all documented in `evals/evals.json`. Iteration 1
established baseline capability and passed too easily. Iteration 2 was written to break
the skill: a question whose source is lost, one the corpus does not cover, a false premise
stated confidently, a case where search ranking misleads, and a precision question under
assumptions that do not hold.

Both iterations passed clean. The check worth repeating is the fabrication test in
iteration 2 eval 0, which asks for wording that does not survive anywhere. Every quote in
the answer was extracted and matched against the corpus, and all five were verbatim.

**Caveat, stated plainly:** the same author wrote the skill, the tests, and the grader.
That is the weakest part of the evidence. Cases written by someone else would be worth
more than another passing iteration here.
