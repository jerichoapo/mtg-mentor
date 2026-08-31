# Architecture

**What this repository is, how it was built, and what you can rely on.**

Written 2026-08-30, at the close of the initial build.

---

## In one line

A provenance-tracked corpus of Magic: The Gathering strategy writing spanning 29 years, assembled through a
tiered recovery pipeline because roughly a third of it no longer exists at its original address.

**76 markdown files. 21,064 lines. 175,600 words. 1.3 MB. Six ordered blocks, 178 verified internal
cross-references, zero broken links.**

---

## Layer 1: the file as a data structure

Every article is a hybrid document. YAML frontmatter carries machine-readable metadata; the body carries
prose in a fixed schema.

### Frontmatter contract

| Key | Required | Purpose |
|---|---|---|
| `title` | yes | the article's own title, verbatim |
| `author` | yes | credited author, corrected where the source list was wrong |
| `published` | yes | `YYYY-MM-DD`, verified against the source, not the URL slug |
| `source_url` | yes | canonical original address, even when dead |
| `archive_url` | when recovered | the snapshot the text actually came from |
| `publication` | yes | outlet, including republication chain |
| `retrieved` | yes | date this copy was made |
| `retrieval_status` | yes | how it was obtained and how fragile that path is |
| `block` / `position` | yes | place in the reading order |
| `note` | when needed | corrections, supersessions, caveats |

Reference files (tools, site indexes) substitute `type: site-reference` and drop `published`. Block 1 uses
`course_position` instead of `position`, because it is a numbered course rather than a curated ordering.

### Body contract

Every article file runs in the same order:

1. **Title and byline**
2. **Annotation** — a blockquote saying why this piece is in the collection
3. **Sectioned reconstruction** — the argument in sequence
4. **Notes for use** — cross-references, and flags for material that has dated
5. **Source** — full citation plus every URL involved

### Why plain files

That consistency is what makes this a database rather than a folder. It is greppable, diffable, and
git-versionable. There is no schema migration, no server, and no lock-in. Every statistic in this document
was produced by `grep | sort | uniq -c` against plain text.

### The field that matters most

`retrieval_status` records not only what a file says but **how confident you should be that you could get it
again.**

| Status | Count | Meaning |
|---|---|---|
| `live` | 61 | fetched from the publisher, still up |
| `wayback` | 8 | original is dead, recovered from the Internet Archive |
| `live (ClassicDojo mirror)` | 1 | publisher gone, community mirror survives |
| `live (PDF, 11 pages)` | 1 | text extracted locally from a PDF |
| `live via Wayback capture` | 1 | page is live, but the version that mattered was archived |
| `supplied by operator` | 1 | full text provided directly |
| `NOT RECOVERED` | 1 | located and identified, but paywalled in every capture |

Eight files carry an `archive_url` alongside a dead `source_url`.

---

## Layer 2: the retrieval pipeline

This is where the engineering was, and it was mostly adversarial.

### The fallback chain

Tried in order, per source:

1. **Live publisher URL**
2. **Publisher's own reprint program** — Star City Games rehosts the best Dojo articles, with an editor's
   note explaining that The Dojo folded in 2000 and the community was asked to archive it
3. **Community mirror** — `classicdojo.org` preserves Usenet-era posts as raw text
4. **Library of Leng** — full-text search that locates articles without republishing them. This is the
   discovery layer, not a source. It found four of the last six additions
5. **Wayback, rendered in a browser** — cleanest prose extraction
6. **Wayback `id_` raw form via curl** — `/web/<timestamp>id_/<url>` returns original bytes. Correct for
   scripting, but it fragments prose at inline `<a>` tags
7. **Local extraction** — `pdftotext -layout` when the artifact is a PDF

### Four failure modes a naive scraper swallows silently

**Soft 404s.** `magic.wizards.com` serves **HTTP 200 with an error-page body** for dead articles. Status-code
link checking reports perfect health. Three Level One installments were dead and looked fine. **The only
reliable detection is fetching the page and reading its title.** This generalizes well past this project.

**Transport-dependent rate limits.** `archive.org` returned `429` and "Temporarily Offline" to curl while
browser fetches of the same URL succeeded seconds later, and vice versa on heavy pages. Different quota per
transport. A single failure means nothing; retry on the other path.

**JavaScript shells.** ChannelFireball's live URL returns HTTP 200 and 26 KB of analytics bootstrap with no
article body. It looks like a successful fetch and passes a size check. The content had to come from a 2018
Wayback capture.

**Encoding and layout damage.** Brainburst captures are Windows-1252 and need `iconv -f WINDOWS-1252 -t
UTF-8` before entity decoding. Karsten's PDF tables came out of `pdftotext` with columns misaligned; they
were re-aligned and then **verified against three of the author's own prose figures** before being trusted.

### Tooling notes

- `pdftotext` ships in the Git Bash mingw64 toolchain at `/mingw64/bin/pdftotext`.
- Long prose cannot be written through bash heredocs reliably; author files directly instead.
- Link sweeps scoped to an article archive miss cross-directory pages. The Level One glossary lives at
  `/en/news/feature/`, outside `/articles/archive/`, and required a DOM query on the hub to find.

---

## Layer 3: the editorial layer

**This is what makes the collection more than a scrape.** Twelve discrepancies were found between the source
reading list and the actual articles, and all are documented in the relevant file's frontmatter and in
`README.md`.

They break into four kinds:

- **Attribution errors.** An article credited to the wrong author entirely. A concept whose credit differs
  between the article's own sign-off and its author's later retrospective.
- **Date errors.** Three wrong dates, one off by two years, caused by trusting a URL slug over the
  document's own header.
- **Identity errors.** A URL pointing at a completely different article. The real origin post was located by
  full-text search, and the wrong file is preserved as a documented appendix rather than discarded.
- **Semantic errors.** A term the list defined backwards. A coda presented as the series it belongs to. A
  superseded version presented as current.

**The collection is now more accurate than the list that generated it.** That work required judgment rather
than tooling, and it is the part that does not automate.

### Dating the argument separately from the card pool

The `Notes for use` sections do a second editorial job: they mark what has rotted. Mana burn no longer
exists as a rule, so one worked example cannot happen today. Karsten's guild-by-guild verdicts expired
within months of publication. **Separating the durable argument from the dead card pool is the difference
between an archive and a curriculum.**

---

## Verification

Referential integrity is checked, not assumed. This resolves every internal cross-reference against the
filesystem and prints nothing when the graph is intact:

```bash
for f in $(find . -name "*.md"); do d=$(dirname "$f")
  grep -oE '\((\.\./)?(block-[a-z0-9-]+/)?[0-9]{2}-[a-z0-9-]+\.md' "$f" | sed 's/^(//' | sort -u | while read -r ref; do
    if [[ "$ref" == ../* ]]; then t="$d/$ref"; elif [[ "$ref" == block-* ]]; then t="./$ref"; else t="$d/$ref"; fi
    [ -f "$t" ] || echo "BROKEN: $f -> $ref"; done
done | sort -u
```

**Run it after any rename.** Filenames encode position, so inserting an article renumbers its neighbours and
breaks every inbound link. Two renumbering passes have happened so far, and both required a full sweep plus
`position:` field updates.

Companion checks worth keeping: duplicate `position` values within a block, and any file missing
`source_url` or `retrieved`.

---

## What this is not

**These are reconstructions, not verbatim reproductions.** Each file presents the full argument in sequence,
with worked examples, decklists, tables, numbers, and direct quotation where the exact wording carries the
idea. Every file links to its original. This is stated in `README.md` and should stay stated.

**It is not automated.** There is no reusable scraper. The pipeline was hand-driven with tool selection per
source. Running it against a new reading list would be the same work again.

**It is not complete.** It is one curated path through Magic theory, with a known gap recorded below.

---

## What it is

**A preservation artifact that outlived its sources.** The Dojo folded in 2000. Brainburst is gone.
TCGplayer dropped its Brainburst republication. ChannelFireball's archive serves an empty shell. Cranial
Insertion went on indefinite hiatus in July 2025. **For a meaningful fraction of these files, this local copy
is now more accessible than anything on the live web.**

Structurally: a **knowledge graph with provenance.** 71 nodes, 73 verified edges, every node traceable to a
URL and a retrieval date, every edge machine-checkable by six lines of bash.

---

## Known gaps

- **Zvi Mowshowitz's *Advantage Theory* series, parts 3, 4 and 5** (Brainburst Premium, 2004). The series was
  located and fully identified — five parts, exact titles, dates and article IDs — and **parts one and two
  are recovered in full**. Parts three, four and five, plus the consolidated November 2004 version and
  *What's in a Card?*, are **paywalled in every capture that exists**. This is closed as far as the public
  web goes; the complete record, including all ten retrieval paths tried, is
  `block-5-advanced-synthesis/03-advantage-theory-parts-3-5-unrecovered-2004-03-01.md`. Remaining options are
  a subscriber's local copy, TCGplayer's internal archive, or the author.
- **Karsten's per-source probability grids** in the colored-sources article are published as click-to-enlarge
  images and did not survive text extraction. The summary table, which is the part that gets used, is
  preserved in full.
- **The Level One Kindle and iBooks editions** advertised on the course hub no longer exist. A full link
  sweep returns zero matches.

---

## Conventions for anything added later

1. **Filename is `NN-slug-YYYY-MM-DD.md`**, where `NN` is the reading position and the date is the article's
   own publish date. Reference files that have no publish date drop the date suffix.
2. **Frontmatter is mandatory.** No file without `source_url`, `retrieved`, and `retrieval_status`.
3. **Never fill a gap with a guess.** If a date, author, or figure cannot be verified against the source,
   record the uncertainty in `note:` and say so in the body. Accuracy is the whole value of the corpus.
4. **Renumbering requires a full cross-reference sweep** plus `position:` updates. Verify before committing.
5. **Update `README.md` in the same pass** as any addition: block table, file count, and the corrections
   list if the new source contradicts the reading list.
6. **Record how it was obtained**, including which fallback tier succeeded. The next person to chase a dead
   link benefits more from the path than from the result.

---

## Addendum, 2026-08-30: two retrieval bugs and one structural finding

Recorded because all three cost real time and none is obvious.

**1. `curl -L` defeats a Wayback `id_` snapshot.** The `id_` form returns original bytes, but many captures
are HTTP 30x. With `-L`, curl follows the redirect **out of the archive** and lands on the modern live site,
returning a plausible-looking page that is not the archived content. Symptom: a 6 KB response containing a
JavaScript-required message. **Fetch `id_` URLs without `-L`,** and check `url_effective` when a result looks
wrong.

**2. A minimum-size gate in a retry loop discards valid captures.** A loop written as *"if the file is
smaller than N bytes, delete and retry"* will loop forever on a legitimately small page and then report a
miss. Gate on **content** (a paywall string, a 429 body) rather than on size.

**3. Publisher category listings beat article-by-article probing.** Enumerating an ID range and fetching each
article to read its byline is slow, throttle-bound, and incomplete. The archived
`article_search_result.asp?report_type=Strategy%3A+General` page returned **every article in the category
with title, author, date and ID in a single request** — and revealed that the series being hunted was filed
under a different name than every citation uses. **Look for the publisher's own index before probing.** One
detail: the category was `Strategy: General`, not `General`, which is a separate and much smaller bucket; the
first query returned an empty result set and nearly closed the search.
