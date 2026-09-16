# Build notes

The record of what was corrected, what was nearly lost, and what it took to recover it. This is
the archival side of the project. If you came here to learn Magic, you want
[README.md](README.md) instead.

The companion document is [architecture-2026-08-30.md](architecture-2026-08-30.md), which covers
the frontmatter contract, the recovery pipeline, the verification script, and the conventions for
anything added later.

---

## Corrections found during the build

Twelve places where the widely circulated version of a fact disagrees with the source. All are
recorded in the relevant file's frontmatter and body as well as here.

| # | Correction |
|---|---|
| 1 | **"Shoulders of Giants" is by Mike Flores, not Mark Rosewater.** It's Flores's countdown of the twenty greatest strategy articles; Rosewater's Timmy/Johnny/Spike is his entry #0. |
| 2 | **The 2025 psychographics article is dated May 26, 2025**, not August. |
| 3 | **Eric Taylor's "it's about TIME" is a 1997 Usenet post, not 1999.** The preserved header reads `Date: 11 Aug 1997`. The 1999 date in the URL slug is when The Dojo republished it. |
| 4 | **Level One has 46 installments, not 44.** |
| 5 | **The Kindle and iBooks downloads on the Level One hub no longer exist.** A full link sweep returns zero matches. |
| 6 | **The Turbo Xerox URL points to the wrong article.** `dk15.970818acom.txt` is a Comer post titled "Re: Turbo Xerox" whose body is a **Reanimator decklist**. The real origin post is [`dk.970627ac.txt`](https://classicdojo.org/deck/dk.970627ac.txt), 1997-06-27, found via the Library of Leng. Also: **"Xerox" refers to people photocopying a cheap decklist**, not to cards copying themselves. |
| 7 | **"High-water mark" does not mean what the reading list says.** It is not the peak position you reached and whether you converted it. In Flores's article it is **a property of a format**, the damage threshold the format's common removal reaches, which determines how much toughness a creature needs. |
| 8 | **Zvi's "Clear the Land" is stamped December 31, 2000**, not 1999. |
| 9 | **Zvi's "The Grand Unified Theory" is a five-part series, not a single article, and it is not titled that.** Brainburst filed it under the running head **"Advantage Theory"** with parts named *The Grand Unified Theory*, *Virtual Card Advantage and Tempo*, *The Rule of Reflection*, *Land Effect Analysis*, and *Conclusion*, published 2004-02-09 through 2004-03-01. It is a **15,000+ word** series. The widely linked "Grand Unified Theory - Philosophy of Fire" (2004-05-03) is a coda published six weeks after it ended, and a further retrospective ran 2004-11-29. All are now files 01 to 07 of Block 5. |
| 10 | **Karsten's colored-sources article has two versions, and the 2018 one supersedes the 2013 original.** The Guilds of Ravnica update changed the methodology (Vancouver mulligan, on-curve conditioning, a consistency bar that rises with mana cost) and moved several recommendations: a 2CC card went from 18 sources to 16. Go back to the 2013 original only for spells cast off-curve. |
| 11 | **The credit for "Investment" differs between the article and its author's retrospective.** Flores's 2013 *Shoulders of Giants* credits the Team CMU players, notably Andrew Cuneo and Erik Lauer. The 1998 post itself thanks **Hahn, Kusumoto, Shuler, Taylor, and Wakefield**, two of whom are Block 2 authors. |
| 12 | **Three of the five parts of the Grand Unified Theory cannot be read anywhere.** The series was Brainburst **Premium**. Parts 3, 4 and 5, the consolidated November 2004 edition, and *What's in a Card?* return a paywall notice in every surviving capture across four hosts and seventeen years of crawls. Parts 1 and 2 survive only because a single Internet Archive crawl on **2015-01-27** caught them during a window when TCGplayer had opened the archive. |

**Confirmed correct:** Karsten's recommendation of **21 to 23 lands for aggro**, verified against his
own table.

---

## Dead links and recoveries

Three Level One installments returned a **soft 404** when this corpus was built. Wizards served
**HTTP 200** with an error page, so `curl` reported success and only a real page fetch detected the
failure. All three were recovered from the Internet Archive at the snapshots below, which is where
the text in those files still comes from.

**This is no longer true.** Re-checked **2026-08-31**: Wizards has rebuilt the site. It now
redirects `/en/articles/archive/<section>/<slug>` to `/en/news/feature/<slug>` with the article
restored, and returns an honest **HTTP 404** titled `404 | Magic: The Gathering` for slugs that do
not exist. All three are marked `retrieval_status: live`; each keeps its `archive_url` as the
provenance of its reconstruction rather than as a current recovery path.

| Installment | Reconstructed from snapshot | Live again since |
|---|---|---|
| 01 What is Magic? | 2022-08-10 | verified 2026-08-31 |
| 14 Symmetric Effects | 2022-10-15 | verified 2026-08-31 |
| 15 Threats and Answers | 2022-11-03 | verified 2026-08-31 |

The soft-404 failure mode is still real and still worth detecting. It is simply no longer
demonstrated by this publisher. See the addendum in
[architecture-2026-08-30.md](architecture-2026-08-30.md).

**Four more articles had no live source at all.** Brainburst is gone, its TCGplayer republication
is gone, and ChannelFireball's archive now returns a JavaScript shell with no article body. Each
was located by full-text search on the **Library of Leng**, which indexes these articles without
republishing them, and then fetched from the surviving mirror.

| Article | Status | Recovered from |
|---|---|---|
| Who's the Beatdown II: Multitasking | Brainburst and TCGplayer both dead | Wayback, snapshot 2012-07-01 |
| Grand Unified Theory - Philosophy of Fire | Brainburst dead | Wayback, snapshot 2004-09-18 |
| How Many Colored Mana Sources…? | live URL returns a JS shell, no body | Wayback, snapshot 2018-10-11 |
| Advanced Strategy: Investment | The Dojo dead | ClassicDojo mirror, live |

**Two things that cost time and are worth knowing:**

- **The Internet Archive rate-limits and intermittently returns "Temporarily Offline."** `curl`
  fails while a browser fetch of the same URL succeeds, and retrying a minute later usually works.
  Don't treat one failure as a dead snapshot.
- **The `id_` raw-snapshot form** (`/web/<timestamp>id_/<url>`) returns original bytes rather than
  the rewritten page. It is the right form for `curl`, but it fragments prose at inline links, so a
  rendered browser fetch produces cleaner text where it's available.

**Also worth noting:** the Level One **Glossary** lives at `/en/news/feature/glossary-of-terms`,
outside the article archive, which is why it doesn't appear in a link sweep of the hub.

**One gap left open.** Karsten's detailed per-source probability grids in the colored-sources
article are published as click-to-enlarge **images**, so they did not survive text extraction. The
summary table, the part that actually gets used, is preserved in full.

---

## The paywall problem

**A paywall at the time of archiving is more permanent than a dead domain.** This is the sharpest
lesson of the build, and it runs against intuition.

The Dojo folded in **2000** and is fully readable today, because it was free and the crawlers took
it whole. Zvi Mowshowitz's *Advantage Theory* series was commercially successful **Brainburst
Premium** content in 2004, and three of its five parts are gone. Every surviving capture returns the
promotional blurb and then *"only available to Premium Members."*

**Parts one and two survive by accident.** TCGplayer later acquired the Brainburst catalogue and
opened it, and the Internet Archive's crawl of **2015-01-27** happened to catch those two articles
free. Of **3,336 captures** of that host from 2015, exactly **two** fall in the relevant ID range.

**What survives is what was free when the crawler came.** The full record, including every
retrieval path tried and exhausted, is
[block-5-advanced-synthesis/03-advantage-theory-parts-3-5-unrecovered-2004-03-01.md](block-5-advanced-synthesis/03-advantage-theory-parts-3-5-unrecovered-2004-03-01.md).
