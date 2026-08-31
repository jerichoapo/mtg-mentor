---
title: "Library of Leng — Top Articles"
type: archive-reference
source_url: https://library-of-leng.com/articles
retrieved: 2026-08-30
retrieval_status: live
block: 0 — Orientation
position: 5
note: "This is an archive reference, not an article. It is the fallback whenever a link in this collection dies — and it was used three times during this build."
---

# Library of Leng

**A community archive of Magic strategy writing, ranked by influence.**

> Why it's in the list: a community archive of 237,000 Magic articles ranked by influence, each linked in
> whatever form still exists — live, mirror, or Wayback capture. **Your fallback whenever something below
> moves.**

---

## What it is

**A search index over the surviving corpus of Magic strategy writing**, spanning from mid-1990s Usenet and
The Dojo through to current sites. Each record links to whatever form of the article still exists:

- **Live** — the article is still up at its original publisher
- **ClassicDojo** — mirrored at classicdojo.org
- **Wayback Machine** — only an Internet Archive capture survives

**Results carry the author, publication, date, and a snippet**, and are ranked by a relevance measure the
site calls **LengRank**, with options to sort newest or oldest first.

## Search syntax

The site advertises these forms:

```
necropotence site:dojo
author:"Mark Rosewater" title:spike sort:oldest
Skullclamp after:2004-01-01 before:2005-01-01
mirro* -limited sort:newest
```

**So it supports:** site filtering, author and title fields, date ranges (`after:` / `before:`), wildcards
(`mirro*`), exclusion (`-limited`), and sort order. There's an advanced search page and a syntax reference.

---

## It works, and here's the proof

**This was not a hypothetical fallback during the build of this collection. It was used three times, and it
resolved two problems the reading list could not have caught.**

### 1. It found the real Turbo Xerox article

The reading list points at `classicdojo.org/deck/dk15.970818acom.txt` for Turbo Xerox. **That file is by
Alan Comer and is catalogued by Library of Leng under the title "Turbo Xerox" — but its body is a
Reanimator decklist**, posted as a reply in a thread with that subject line.

**Searching `turbo xerox` surfaced 218 results**, and among them the actual origin post:

> **1997-06-27 — "A Chance With Common Cards?" — by Alan Comer — The Dojo**
> *…Around here, it has been dubbed the Turbo Xerox deck, as everybody copied it due to the lack of
> rares…*

**That post contains the decklist, the 17-land count, the twelve cantrips, and Comer's own playing
instruction.** It is now `block-3-manabase-reference/01-turbo-xerox-1997-06-27.md`. Without the archive's
full-text search, the correction would have been invisible.

### 2. It documented the archetype's whole lineage

The same search returned the concept's descent in date order — **Turbo Jellybean (1998), Draw-Go/Turbo Xerox
(1999), Miracle Grow, Canadian Threshold, Legacy U/R Delver, Modern Death's Shadow (2017)** — plus Comer's
own later remark that **"Turbo Xerox went through Regionals with no real name."** That's a piece of
intellectual history you cannot assemble from any single article.

### 3. It corroborated a dead-link recovery

Where Wayback captures were needed for three Level One installments, the archive's per-article records
confirmed which snapshots existed.

---

## How to use it with this collection

**Reach for it in four situations:**

**1. A link in this collection dies.** Every file here records both its `source_url` and, where relevant, an
`archive_url`. If both fail, search the Library of Leng by title and author.

**2. You want an article this collection doesn't include.** Several pieces are referenced repeatedly here but
have no file of their own, because the reading list didn't include them. They are all findable here:

| Article | Author | Why you'd want it |
|---|---|---|
| **Who's the Beatdown II: Multitasking** | Zvi Mowshowitz | The source of **inevitability**. Flores thinks it beats the original. |
| **The Grand Unified Theory** | Zvi Mowshowitz | Chapin summarizes it in Block 5; the original is otherwise hard to reach. |
| **Schools of Magic** | Robert Hahn | Where **card advantage** was first named. |
| **Information Cascades in Magic** | Patrick Chapin | Flores's #9; Duke summarizes it in Level One 42. |
| **Investment** | Mike Flores | Self-replacing filtering vs. non-replacing tutors — the concept under Turbo Xerox. |
| **The Danger of Cool Things** | Chad Ellis | The counterweight to Johnny instincts. |
| **How Many Colored Mana Sources Do You Need…** | Frank Karsten | The companion to the land-count article; original URL is dead. |
| **Tempo and Card Advantage** | Eric Taylor | Possibly a separate piece from *it's about TIME* — see the note in Block 2, file 03. |

**3. You need to date or attribute something.** The archive records author, publication, and date, which is
how three date discrepancies in the reading list were caught during this build.

**4. You want to trace an idea forward.** Sorting by date and searching a term shows you who picked a concept
up and what they did with it. This is the only tool in the collection that does that.

---

## Notes for use

- **This is the insurance policy for everything else in this folder.** Half of Block 2 exists only because
  The Dojo's writing was archived after the site went under in 2000 — the StarCityGames reprints carry an
  editor's note describing exactly that rescue. Cranial Insertion is on indefinite hiatus. ChannelFireball's
  original Karsten URLs are dead. **Assume any link in this collection can rot, and that this is where you go
  when it does.**
- **The full-text search is the feature that matters**, not the ranking. Being able to search inside 237,000
  articles for a phrase is what turns a mis-titled file into a solvable problem.
- **Treat catalogue titles as approximate.** The Turbo Xerox case shows the archive inherits whatever subject
  line a Usenet post carried, which may not describe its contents. **Verify by reading, not by title.**
- **Cross-reference:** `04-shoulders-of-giants-2013-08-06.md` in this same folder is the curated companion to
  this — Flores's ranked list of the twenty most important strategy articles, with a paragraph on what each
  one changed. **Use Shoulders of Giants to decide what's worth finding; use the Library of Leng to
  actually find it.**

## Source

Library of Leng, <https://library-of-leng.com/articles>. Retrieved 2026-08-30.
