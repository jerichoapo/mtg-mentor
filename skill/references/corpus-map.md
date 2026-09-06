# Corpus map

What is in the library, what it covers well, and where it runs out. Read this when
deciding what to recommend, or when a question sits near the edge of the collection.

74 articles, 1996 to 2025, six ordered blocks.

---

## The blocks

**Block 0, Orientation (5 files).** Rosewater's Timmy/Johnny/Spike across three articles,
plus Flores's *Shoulders of Giants*, which ranks the twenty most important strategy
articles ever written and says what each changed. Use Shoulders of Giants to decide what
is worth chasing outside the corpus. Also holds the Library of Leng archive reference.

**Block 1, The spine (47 files).** Reid Duke's *Level One*, the complete 46-part course,
plus its hub. This is the vocabulary layer and the best teaching in the collection. When
a user is new to a concept, Duke is almost always the right lead. Installment 46 is a
glossary of about ninety terms mapped to the installment that develops each.

**Block 2, Core theory, paired (9 files).** The arguments the vocabulary was built to
describe, ordered so the older piece states the claim and the newer one corrects it.
Contains the single clearest lineage in the corpus: Flores 1999, Zvi 2003, Flores 2012 on
who's the beatdown. Also Hahn's 1996 *Schools of Magic*, which is doing far more work
than its position suggests.

**Block 3, Manabase reference (5 files).** Consulted, not read. Flores on investment,
Comer's Turbo Xerox, and Karsten's two quantitative articles with full probability
tables. The land count and the colour requirements are coupled, so Karsten's two pieces
are not usable independently.

**Block 4, Rules reference (1 file).** Cranial Insertion, twenty years of judge-written
rules Q&A, on indefinite hiatus since July 2025. It is a pointer, not an article.

**Block 5, Advanced synthesis (7 files).** Zvi's *Advantage Theory* series and its codas,
Chapin on information cascades and the theory of everything, Flores on the breakdown of
theory. Read last. Three of the five Advantage Theory parts are missing, and file 03 is a
dossier documenting exactly what and why.

---

## What the corpus covers well

- **Resource theory.** Card advantage in every form, virtual card advantage, blanking,
  investment, tempo, the exchange rates between life, cards and mana. Deep and layered,
  with the arguments between authors preserved.
- **Roles and matchups.** Who's the beatdown, role assignment, inevitability, damage
  racing, the fundamental turn. The best-documented lineage in the collection.
- **Manabase math.** Karsten's tables are transcribed and verified against his own prose
  figures. This is the most immediately actionable material in the corpus.
- **Metagaming and the social layer.** Chapin on information cascades is unusually good
  and generalizes past Magic entirely.
- **Limited fundamentals.** Duke's seven Limited installments, sealed through draft.
- **The psychology of losing won games.** Chad Ellis, and Duke on playing from ahead.

## Where it is thin

- **Current formats.** The newest strategy article is from 2018, plus one Rosewater piece
  from 2025. Nothing about any format as it stands today.
- **Individual card evaluation.** Almost entirely absent, and deliberately so. The
  `mtg-budget-deckbuilder` skill covers cards, prices, and legality with live data.
- **Commander.** Effectively absent. The corpus is constructed and limited, one-on-one.
  Route Commander questions to `mtg-budget-deckbuilder`.
- **Rules adjudication.** One pointer to Cranial Insertion, whose archive stops mid-2025.
- **Anything after 2025.** Hard stop.

---

## Material that has gone stale, and how

The distinction to hold: **a dead card pool is not a dead argument.**

| Article | Dead | Alive |
|---|---|---|
| Chad Ellis, *Danger of Cool Things* | Mana burn, the specific punishment in example 1 | Abandoning a winning plan for a prettier one |
| Karsten, colored sources | Guild-by-guild verdicts, expired within months | The method, and the counting rules |
| Zvi, Philosophy of Fire coda | Every card named, Mirrodin-era Standard | Life as a non-linear resource |
| Flores, *Investment* | Jayemdae Tome, Browse, Pegasus Refuge | A permanent that has not yet produced value is not a card |
| Chapin, *Information Cascades* | Ghost Dad, Heezy Street, 2006 Standard | Popularity diverging from win rate as a detection method |

Every file's **Notes for use** section carries its own flags. Run `corpus.sh notes <file>`.

---

## The twelve corrections

The corpus is more accurate than the reading list it was built from. Twelve discrepancies
are documented in the README, and four are worth knowing because they are repeated
elsewhere on the internet:

1. **Shoulders of Giants is by Mike Flores**, not Mark Rosewater.
2. **The high-water mark is a property of the format**, the damage threshold its common
   removal reaches. It does not mean the peak position you reached and whether you
   converted it.
3. **Turbo Xerox means photocopying a cheap decklist**, not cards copying themselves. The
   URL most citations use points at a different article.
4. **Zvi's Grand Unified Theory is a five-part series titled Advantage Theory**, not a
   single article. The piece usually linked under that name is a coda written six weeks
   after the series ended.

If a user repeats one of these, correct it and point at the file that documents it.

---

## Provenance and how much to trust a file

`retrieval_status` in the frontmatter records how the text was obtained:

- `live` (64) — fetched from the publisher, still up.
- `wayback` (5) — the original is dead, recovered from the Internet Archive.
- `live (ClassicDojo mirror)` — publisher gone, community mirror survives.
- `live (PDF)` — extracted locally from a PDF.
- `supplied by operator` — full text provided directly.
- `NOT RECOVERED` (1) — located and identified, paywalled in every capture. This file is
  a dossier about missing articles, not an article.

**Every article is a reconstruction, not a verbatim reproduction.** Each presents the
full argument in sequence with worked examples, decklists, tables and numbers preserved,
and direct quotation where the exact wording carries the idea. Every file links to its
original. When a user needs the author's exact words at length, point them at
`source_url` rather than treating the file as a transcript.
