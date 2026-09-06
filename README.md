# MTG Mentor

A working library of Magic: The Gathering strategy writing, organised into six blocks and meant to be read
in order.

**74 articles across six blocks. Built 2026-08-30.** Every file records its source URL, publication, author, publish date, and
retrieval status in YAML frontmatter.

**How this was built, and what you can rely on:** [architecture-2026-08-30.md](architecture-2026-08-30.md).
It documents the frontmatter contract, the seven-tier recovery pipeline, the verification script, the known
gaps, and the conventions for anything added later.

---

## How to read this

**The blocks are a sequence, not categories.** Block 0 tells you what kind of player you are. Block 1 is a
complete course that gives you the vocabulary. Block 2 is the core theory that vocabulary was built to
describe. Blocks 3 and 4 are reference you consult rather than read. Block 5 only makes sense once you've
done the rest.

**Within a block, read in file order.** Blocks 0 and 2 in particular are built as pairs — the older article
states the argument, the newer one corrects or extends it.

**Every file ends with a "Notes for use" section.** That's where the cross-references live, along with
flags for material that has dated badly.

---

## Block 0 — Orientation

*Who you are, and a map of what's worth reading.*

| # | Article | Author | Date |
|---|---|---|---|
| 01 | [Timmy, Johnny, and Spike](block-0-orientation/01-timmy-johnny-and-spike-2002-03-11.md) | Mark Rosewater | 2002-03-11 |
| 02 | [The Three Magic Psychographics](block-0-orientation/02-the-three-magic-psychographics-2025-05-26.md) | Mark Rosewater | 2025-05-26 |
| 03 | [Timmy, Johnny, and Spike Revisited](block-0-orientation/03-timmy-johnny-and-spike-revisited-2006-03-20.md) | Mark Rosewater | 2006-03-20 |
| 04 | [Shoulders of Giants](block-0-orientation/04-shoulders-of-giants-2013-08-06.md) | **Mike Flores** | 2013-08-06 |
| 05 | [Library of Leng](block-0-orientation/05-library-of-leng-reference.md) | *archive reference* | — |

**Read 01 for the original argument, then 03 for the version that corrects it.** The 2006 revisit is the
deepest of the three — it adds the subgroups that make the framework diagnostic rather than merely
descriptive. 02 is the current statement of the idea.

**04 is a map, not an argument.** Flores ranks the twenty most important strategy articles ever written and
says what each one changed. Use it to decide what else is worth chasing.

---

## Block 1 — The spine

*Reid Duke's Level One: a complete 46-part course, August 2014 – September 2015.*

**Start with the [hub](block-1-the-spine/00-level-one-the-full-course-2015-10-05.md)**, which carries the
full syllabus in reading order.

**The Basics** — [01 What is Magic?](block-1-the-spine/01-what-is-magic-2014-08-11.md) ·
[02 The Basics of Mana](block-1-the-spine/02-the-basics-of-mana-2015-07-06.md) ·
[03 The Basics of Card Advantage](block-1-the-spine/03-the-basics-of-card-advantage-2015-07-13.md)

**Concepts of Gameplay, Part 1** — [04 Attacking and Blocking](block-1-the-spine/04-attacking-and-blocking-2015-07-27.md) ·
[05 Tempo](block-1-the-spine/05-tempo-2015-07-20.md) ·
[06 Tempo & Card Advantage](block-1-the-spine/06-tempo-and-card-advantage-a-delicate-balance-2014-11-17.md) ·
[07 Linear Strategies](block-1-the-spine/07-linear-strategies-2014-12-29.md)

**Deck Archetypes** — [08 Aggro](block-1-the-spine/08-aggro-decks-2014-09-29.md) ·
[09 Control](block-1-the-spine/09-control-decks-2014-10-06.md) ·
[10 Midrange](block-1-the-spine/10-midrange-decks-2014-10-27.md)

**Concepts of Gameplay, Part 2** — [11 Board Sweepers](block-1-the-spine/11-board-sweepers-2015-06-22.md) ·
[12 Permission Spells](block-1-the-spine/12-permission-spells-2015-08-17.md) ·
[13 "Creature" Lands](block-1-the-spine/13-creature-lands-2015-09-07.md) ·
[14 Symmetric Effects](block-1-the-spine/14-symmetric-effects-2014-09-01.md) ·
[15 Threats and Answers](block-1-the-spine/15-threats-and-answers-2014-09-08.md) ·
[16 Inevitability](block-1-the-spine/16-inevitability-2014-12-08.md) ·
[17 Role Assignment](block-1-the-spine/17-role-assignment-2015-01-05.md) ·
[18 Damage Racing](block-1-the-spine/18-damage-racing-2015-05-04.md) ·
[19 Mulligans](block-1-the-spine/19-mulligans-2015-01-26.md) ·
[20 Sequencing](block-1-the-spine/20-sequencing-2015-02-16.md) ·
[21 Play or Draw](block-1-the-spine/21-play-or-draw-2015-03-16.md)

**Concepts of Gameplay, Part 3** — [22 Investment](block-1-the-spine/22-investment-2015-03-02.md) ·
[23 Line-Up Theory](block-1-the-spine/23-line-up-theory-2015-03-23.md) ·
[24 Playing From Ahead, Playing From Behind](block-1-the-spine/24-playing-from-ahead-playing-from-behind-2015-03-30.md) ·
[25 Going Through the Motions](block-1-the-spine/25-going-through-the-motions-2015-05-11.md) ·
[26 Mulligans III: Constructed](block-1-the-spine/26-mulligans-part-iii-constructed-2015-06-29.md) ·
[27 Playing Safe and Playing Scared](block-1-the-spine/27-playing-safe-and-playing-scared-2015-08-24.md) ·
[28 When to Cast Your Spells](block-1-the-spine/28-when-to-cast-your-spells-2015-08-31.md) ·
[29 Flexibility](block-1-the-spine/29-flexibility-2015-09-14.md)

**Limited** — [30 Sealed Deck](block-1-the-spine/30-sealed-deck-2014-09-15.md) ·
[31 The Basics of Booster Draft](block-1-the-spine/31-the-basics-of-booster-draft-2015-08-03.md) ·
[32 Sideboarding in Limited](block-1-the-spine/32-sideboarding-in-limited-2015-01-12.md) ·
[33 Signals in Booster Draft](block-1-the-spine/33-signals-in-booster-draft-2015-01-19.md) ·
[34 Booster Draft, Part 3](block-1-the-spine/34-booster-draft-part-3-2015-02-02.md) ·
[35 Draft Walkthrough](block-1-the-spine/35-draft-walkthrough-2015-02-23.md) ·
[36 Mulligans II: Limited](block-1-the-spine/36-mulligans-part-ii-limited-2015-06-15.md)

**Deck Construction** — [37 Building a Mana Base](block-1-the-spine/37-building-a-mana-base-2014-11-24.md) ·
[38 The Constructed Formats](block-1-the-spine/38-an-introduction-to-the-popular-constructed-formats-2015-04-27.md) ·
[39 The Sideboard](block-1-the-spine/39-the-sideboard-2015-08-10.md) ·
[40 Sideboard Plans](block-1-the-spine/40-sideboard-plans-2015-03-09.md) ·
[41 Choosing Your Deck](block-1-the-spine/41-choosing-your-deck-2015-06-08.md) ·
[42 The Metagame](block-1-the-spine/42-the-metagame-2015-06-01.md)

**Other** — [43 Playing in a Grand Prix I](block-1-the-spine/43-playing-in-a-grand-prix-part-i-2015-05-18.md) ·
[44 Playing in a Grand Prix II](block-1-the-spine/44-playing-in-a-grand-prix-part-ii-2015-05-26.md) ·
[45 Becoming a Better Player](block-1-the-spine/45-becoming-a-better-player-2015-09-28.md) ·
[46 Glossary of Terms](block-1-the-spine/46-glossary-of-terms-2015-06-21.md)

**If you read only six:** 05 (Tempo), 16 (Inevitability), 17 (Role Assignment), 19 (Mulligans),
20 (Sequencing), 45 (Becoming a Better Player). **Installment 46 is the index** — every term maps back to
the installment that develops it.

---

## Block 2 — Core theory, paired

*The arguments Level One's vocabulary was built to describe. Read each pair in order.*

| # | Article | Author | Date |
|---|---|---|---|
| 00 | [Schools of Magic: General Philosophies](block-2-core-theory-paired/00-schools-of-magic-1996-04-10.md) | Robert Hahn | 1996-04-10 |
| 01 | [Who's the Beatdown?](block-2-core-theory-paired/01-whos-the-beatdown-1999-04-13.md) | Mike Flores | 1999-04-13 |
| 02 | [Eight Core Principles of "Who's the Beatdown?"](block-2-core-theory-paired/02-eight-core-principles-of-whos-the-beatdown-2012-03-16.md) | Mike Flores | 2012-03-16 |
| 03 | [Who's the Beatdown II: Multitasking](block-2-core-theory-paired/03-whos-the-beatdown-ii-multitasking-2003-02-20.md) | Zvi Mowshowitz | 2003-02-20 |
| 04 | [it's about TIME](block-2-core-theory-paired/04-its-about-time-1997-08-11.md) | Eric Taylor | 1997-08-11 |
| 05 | [Clear the Land and the Fundamental Turn](block-2-core-theory-paired/05-clear-the-land-and-the-fundamental-turn-2000-12-31.md) | Zvi Mowshowitz | 2000-12-31 |
| 06 | [The Philosophy of Fire](block-2-core-theory-paired/06-the-philosophy-of-fire-2004-04-23.md) | Mike Flores | 2004-04-23 |
| 07 | [2-3-4: Philosophy of Fire and the High-Water Mark](block-2-core-theory-paired/07-2-3-4-the-philosophy-of-fire-and-the-high-water-mark-2012-07-27.md) | Mike Flores | 2012-07-27 |
| 08 | [The Danger of Cool Things...](block-2-core-theory-paired/08-the-danger-of-cool-things-1999-01-01.md) | Chad Ellis | 1999 |

**00 is the ur-text.** Hahn's 1996 survey already compresses every resource to **life, cards, and mana**,
splits strategies into **Active and Reactive**, and lays out four generations of sideboard theory. Most of
what follows in this block is latent in it.

**01, 02 and 03 are a triptych, not a pair.** Flores names the two roles; **Zvi shows the roles are
contested, contextual and reversible, and introduces *inevitability*;** Flores then rebuilds the theory in
eight principles and credits Zvi for the term. Flores rates Zvi's follow-up **above his own original**.

**06→07 is the other pair.** Flores restates the theory more cleanly years later and credits Adrian
Sullivan properly. Zvi's reply to 06 lives in Block 5, file 01.

**08 is the counterweight.** Everything else in this block teaches you to find a better line. Ellis is
about what makes you abandon a winning one once you have it, and his rule — when you improve a plan at the
last minute, re-check why the original was built that way — is the most immediately useful habit here.

**04 is the oldest argument here** and underpins everything: mana and time are the same resource seen two
ways.

---

## Block 3 — Manabase reference

| # | Item | Author | Date |
|---|---|---|---|
| 00 | [Advanced Strategy: Investment](block-3-manabase-reference/00-investment-1998-03-20.md) | Mike Flores | 1998-03-20 |
| 01 | [Turbo Xerox](block-3-manabase-reference/01-turbo-xerox-1997-06-27.md) | Alan Comer | 1997-06-27 |
| 02 | [How Many Lands Do You Need…?](block-3-manabase-reference/02-how-many-lands-do-you-need-2017-05-30.md) | Frank Karsten | 2017-05-30 |
| 03 | [How Many Colored Mana Sources Do You Need…?](block-3-manabase-reference/03-how-many-colored-mana-sources-do-you-need-2018-10-10.md) | Frank Karsten | 2018-10-10 |
| 04 | [Karsten Mana Calculator](block-3-manabase-reference/04-karsten-mana-calculator-reference.md) | *tool reference* | — |

**00 is the theory the rest of the block applies.** Flores separates cards that **replace themselves** from
cards that cost you a card before doing anything, and shows why a permanent that hasn't yet generated value
counts for nothing. Turbo Xerox is that idea applied to the manabase.

**02 and 03 are the quantitative pair.** 02 fixes **how many lands** and contains Karsten's full probability
tables, transcribed and verified, plus the regression `lands = 16 + 3.14 × average CMC`. 03 fixes **what
colors those lands make**, and carries the summary source-count table plus the counting rules — taplands,
fetchlands, mana creatures, gold cards — without which the table gets misapplied.

**01 is the principled argument for going below whatever 02 gives you**, when your deck is dense with cheap
card selection.
---

## Block 4 — Rules reference

| # | Item | Date |
|---|---|---|
| 01 | [Cranial Insertion](block-4-rules-reference/01-cranial-insertion-reference.md) | 2005 – 2025 |

**Consult it, don't read it.** Twenty years of judge-written rules Q&A, searchable by card. **Now on
indefinite hiatus** — the final issue was July 2025, so nothing after that is covered.

---

## Block 5 — Advanced synthesis

*The attempt to unify everything above into one theory of what wins games. Read last.*

**Files 01–03 are Zvi Mowshowitz's series**, published on Brainburst across three weeks in early 2004. It is
the most sustained piece of theory writing in the collection, and it is what Chapin means in file 07 when he
says he wants to take Zvi's Grand Unified Theory "to what I believe to be the inevitable extreme."

| # | Article | Author | Date |
|---|---|---|---|
| 01 | [Advantage: The Grand Unified Theory](block-5-advanced-synthesis/01-advantage-the-grand-unified-theory-2004-02-09.md) | Zvi Mowshowitz | 2004-02-09 |
| 02 | [The Grand Unified Theory: Advantage - VCA and Tempo](block-5-advanced-synthesis/02-advantage-vca-and-tempo-2004-02-16.md) | Zvi Mowshowitz | 2004-02-16 |
| 03 | [Advantage Theory, parts 3-5: the unrecovered installments](block-5-advanced-synthesis/03-advantage-theory-parts-3-5-unrecovered-2004-03-01.md) | *recovery dossier* | 2004-02-23 → 03-01 |
| 04 | [Grand Unified Theory - Philosophy of Fire](block-5-advanced-synthesis/04-grand-unified-theory-philosophy-of-fire-2004-05-03.md) | Zvi Mowshowitz | 2004-05-03 |
| 05 | [Information Cascades in Magic](block-5-advanced-synthesis/05-information-cascades-in-magic-2006-06-28.md) | Patrick Chapin | 2006-06-28 |
| 06 | [The Breakdown of Theory](block-5-advanced-synthesis/06-the-breakdown-of-theory-2007-12-17.md) | Mike Flores | 2007-12-17 |
| 07 | [The Theory of Everything](block-5-advanced-synthesis/07-innovations-the-theory-of-everything-2010-01-12.md) | Patrick Chapin | 2010-01-12 |

**01 carries the Rule of Reflection**, the standard the whole series is measured against: *everything in
Magic has value equal to the amount it increases your chance to win the game.* Zvi credits Justin Gary with
the phrasing and admits he only found the right words after finishing all five parts.

**03 is a dossier, not an article.** Parts three, four and five of the series were Brainburst Premium and
are paywalled in every capture that survives anywhere. That file records their exact titles, dates and IDs,
what the surviving parts say they contain, every retrieval path tried, and what to read instead.

**04 is a coda, not part six.** Zvi wrote it six weeks after the series ended, applying the framework to
Flores's Philosophy of Fire. It is the article most reading lists point at when they say "the Grand Unified
Theory."

**05 is the odd one out, and belongs here anyway.** The rest of the block is about the game's internal
economy. Chapin's cascades article is about **the information economy around the game**: how the community
collectively decides what is good, and why that process gets stuck on wrong answers. It won StarCityGames'
2006 Article of the Year, and Reid Duke summarises it in
[Level One 42](block-1-the-spine/42-the-metagame-2015-06-01.md).

**06 and 07 are complementary rather than competing.** Flores divides the game **chronologically** into
three phases; Chapin divides the **resources** into three types. Chapin cites Flores's phases; Flores later
quotes Chapin's three-resource passage in Block 2, file 07.

---

## Corrections found during the build

**Twelve discrepancies between the reading list and the sources.** All are recorded in the relevant file's
frontmatter and body.

| # | Correction |
|---|---|
| 1 | **"Shoulders of Giants" is by Mike Flores, not Mark Rosewater.** It's Flores's countdown of the twenty greatest strategy articles; Rosewater's Timmy/Johnny/Spike is his entry #0. |
| 2 | **The 2025 psychographics article is dated May 26, 2025**, not August. |
| 3 | **Eric Taylor's "it's about TIME" is a 1997 Usenet post, not 1999.** The preserved header reads `Date: 11 Aug 1997`. The 1999 date in the URL slug is when The Dojo republished it. |
| 4 | **Level One has 46 installments, not 44.** |
| 5 | **The Kindle and iBooks downloads on the Level One hub no longer exist.** A full link sweep returns zero matches. |
| 6 | **The Turbo Xerox URL points to the wrong article.** `dk15.970818acom.txt` is a Comer post titled "Re: Turbo Xerox" whose body is a **Reanimator decklist**. The real origin post is [`dk.970627ac.txt`](https://classicdojo.org/deck/dk.970627ac.txt), 1997-06-27, found via the Library of Leng. Also: **"Xerox" refers to people photocopying a cheap decklist**, not to cards copying themselves. |
| 7 | **"High-water mark" does not mean what the reading list says.** It is not the peak position you reached and whether you converted it. In Flores's article it is **a property of a format** — the damage threshold the format's common removal reaches, which determines how much toughness a creature needs. |
| 8 | **Zvi's "Clear the Land" is stamped December 31, 2000**, not 1999. |
| 9 | **Zvi's "The Grand Unified Theory" is a five-part series, not a single article, and it is not titled that.** Brainburst filed it under the running head **"Advantage Theory"** with parts named *The Grand Unified Theory*, *Virtual Card Advantage and Tempo*, *The Rule of Reflection*, *Land Effect Analysis*, and *Conclusion*, published 2004-02-09 through 2004-03-01. It is a **15,000+ word** series. The widely linked "Grand Unified Theory - Philosophy of Fire" (2004-05-03) is a coda published six weeks after it ended, and a further retrospective ran 2004-11-29. All are now files 01–07 of Block 5. |
| 10 | **Karsten's colored-sources article has two versions, and the 2018 one supersedes the 2013 original.** The Guilds of Ravnica update changed the methodology (Vancouver mulligan, on-curve conditioning, a consistency bar that rises with mana cost) and moved several recommendations — a 2CC card went from 18 sources to 16. Go back to the 2013 original only for spells cast off-curve. |
| 11 | **The credit for "Investment" differs between the article and its author's retrospective.** Flores's 2013 *Shoulders of Giants* credits the Team CMU players, notably Andrew Cuneo and Erik Lauer. The 1998 post itself thanks **Hahn, Kusumoto, Shuler, Taylor, and Wakefield** — two of whom are Block 2 authors. |
| 12 | **Three of the five parts of the Grand Unified Theory cannot be read anywhere.** The series was Brainburst **Premium**. Parts 3, 4 and 5, the consolidated November 2004 edition, and *What's in a Card?* return a paywall notice in every surviving capture across four hosts and seventeen years of crawls. Parts 1 and 2 survive only because a single Internet Archive crawl on **2015-01-27** caught them during a window when TCGplayer had opened the archive. |

**Confirmed correct:** Karsten's recommendation of **21–23 lands for aggro**, verified against his own
table.

---

## Dead links and recoveries

**Three Level One installments returned a *soft 404*** when this corpus was built — Wizards served
**HTTP 200** with an error page, so `curl` reported success and only a real page fetch detected the
failure. All three were recovered from the Internet Archive at the snapshots below, which is where the
text in those files still comes from.

**This is no longer true.** Re-checked **2026-08-31**: Wizards has rebuilt the site. It now redirects
`/en/articles/archive/<section>/<slug>` to `/en/news/feature/<slug>` with the article restored, and
returns an honest **HTTP 404** titled `404 | Magic: The Gathering` for slugs that do not exist. All three
are marked `retrieval_status: live`; each keeps its `archive_url` as the provenance of its reconstruction
rather than as a current recovery path.

| Installment | Reconstructed from snapshot | Live again since |
|---|---|---|
| 01 What is Magic? | 2022-08-10 | verified 2026-08-31 |
| 14 Symmetric Effects | 2022-10-15 | verified 2026-08-31 |
| 15 Threats and Answers | 2022-11-03 | verified 2026-08-31 |

The soft-404 failure mode is still real and still worth detecting — it is simply no longer demonstrated by
this publisher. See the addendum in `architecture-2026-08-30.md`.

**Four more articles had no live source at all.** Brainburst is gone, its TCGplayer republication is gone,
and ChannelFireball's archive now returns a JavaScript shell with no article body. Each was located by
full-text search on the **Library of Leng**, which indexes these articles without republishing them, and
then fetched from the surviving mirror.

| Article | Status | Recovered from |
|---|---|---|
| Who's the Beatdown II: Multitasking | Brainburst and TCGplayer both dead | Wayback, snapshot 2012-07-01 |
| Grand Unified Theory - Philosophy of Fire | Brainburst dead | Wayback, snapshot 2004-09-18 |
| How Many Colored Mana Sources…? | live URL returns a JS shell, no body | Wayback, snapshot 2018-10-11 |
| Advanced Strategy: Investment | The Dojo dead | ClassicDojo mirror, live |

**Two things that cost time and are worth knowing:**

- **The Internet Archive rate-limits and intermittently returns "Temporarily Offline."** `curl` fails while
  a browser fetch of the same URL succeeds, and retrying a minute later usually works. Don't treat one
  failure as a dead snapshot.
- **The `id_` raw-snapshot form** (`/web/<timestamp>id_/<url>`) returns original bytes rather than the
  rewritten page. It is the right form for `curl`, but it fragments prose at inline links, so a rendered
  browser fetch produces cleaner text where it's available.

**Also worth noting:** the Level One **Glossary** lives at `/en/news/feature/glossary-of-terms`, outside the
article archive, which is why it doesn't appear in a link sweep of the hub.

**One gap left open.** Karsten's detailed per-source probability grids in the colored-sources article are
published as click-to-enlarge **images**, so they did not survive text extraction. The summary table — the
part that actually gets used — is preserved in full.

---

## A note on these files

**These are reconstructions, not verbatim reproductions.** Each file presents the article's full argument in
sequence — every stage of the reasoning, the worked examples, the decklists, the card names, the tables and
numbers, and directly quoted phrasing where the exact wording carries the idea — together with attribution
and a link to the source. They are written to be studied from, and to survive the source going offline. They
are not a substitute for the originals, and every file links to its original.

**Where a source contains reproducible data — Karsten's probability tables, Duke's glossary, decklists — that
data is preserved in full.**

---

## The paywall problem

**A paywall at the time of archiving is more permanent than a dead domain.** This is the sharpest lesson of
the build, and it runs against intuition.

The Dojo folded in **2000** and is fully readable today, because it was free and the crawlers took it whole.
Zvi Mowshowitz's *Advantage Theory* series was commercially successful **Brainburst Premium** content in
2004, and three of its five parts are gone. Every surviving capture returns the promotional blurb and then
*"only available to Premium Members."*

**Parts one and two survive by accident.** TCGplayer later acquired the Brainburst catalogue and opened it,
and the Internet Archive's crawl of **2015-01-27** happened to catch those two articles free. Of **3,336
captures** of that host from 2015, exactly **two** fall in the relevant ID range.

**What survives is what was free when the crawler came.** The full record, including every retrieval path
tried and exhausted, is
[block-5-advanced-synthesis/03-advantage-theory-parts-3-5-unrecovered-2004-03-01.md](block-5-advanced-synthesis/03-advantage-theory-parts-3-5-unrecovered-2004-03-01.md).
