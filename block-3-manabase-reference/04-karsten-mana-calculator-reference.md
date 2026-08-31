---
title: "Karsten Mana Calculator (ScrollVault)"
type: tool-reference
implements: "Frank Karsten, 'How Many Colored Mana Sources Do You Need to Consistently Cast Your Spells?' (ChannelFireball)"
source_url: https://scrollvault.net/tools/manabase/
retrieved: 2026-08-30
retrieval_status: live
block: 3 — Manabase reference
position: 4
note: "This is a tool reference, not an article. There is nothing to read; there is something to use, and to check."
---

# Karsten Mana Calculator

**A third-party implementation of Frank Karsten's colored-source tables, hosted by ScrollVault.**

> Why it's in the list: implements Karsten's colored-sources tables, since that article's original URL is
> dead. Import a decklist and it returns per-color source counts. **Verify its output.**

---

## What it implements

**Not the land-count article in this folder.** This tool implements Karsten's *other* manabase article:

> **"How Many Colored Mana Sources Do You Need to Consistently Cast Your Spells?"** — the companion piece
> that answers the colored-pip question rather than the total-land question.

**The two are complements and you need both:**

| Question | Where to look |
|---|---|
| **How many lands total?** | `02-how-many-lands-do-you-need-2017-05-30.md` — full tables preserved in this repo |
| **How many sources of each color?** | This calculator, since the original article's URL is dead |

## The method it claims to use

By the site's own description:

> **For each colored mana symbol in your deck's casting costs, the calculator computes the optimal number
> of lands that produce that color.** It targets a **90–95% probability of having the right colors by the
> turn you need them**, using **Karsten's sliding confidence threshold — higher mana value spells demand
> higher certainty**.

**The sliding threshold is the part worth understanding.** A one-drop you want on turn one needs a high
probability of the color being available *immediately*; a five-drop has four extra draw steps to find it,
but is also a bigger loss if uncastable. Karsten's tables encode that tradeoff rather than applying one
flat percentage.

**Claimed coverage:** Standard, Modern, Pioneer, Legacy, and Commander, including 99-card singleton.

## How to use it

**Three input modes:**

1. **Paste a decklist** directly.
2. **URL import** from Moxfield or Archidekt.
3. **Manual entry** of colors and pips.

**Commander decks require the commander to be specified**, either in a dedicated field or as a line in
the pasted list. There are also power-level (casual / upgraded / competitive) and include/exclude-specific-
lands settings.

## The site's own headline numbers

Worth recording because they're a quick sanity check on any output the tool gives you:

| Deck | Land count |
|---|---|
| **60-card, general** | 23–26 depending on curve |
| **Aggro** | 22–23 |
| **Midrange** | 24–25 |
| **Control** | 25–26 |
| **Commander (99 + commander)** | 35–38 |

**These are broadly consistent with Karsten's own recommendation table** (`02-…`), which gives aggro
21–23, midrange 24–25, control 26–27. **Note the discrepancy at the control end** — the site says 25–26,
Karsten's 2017 table says 26–27. Not alarming, but an example of why the verification note below matters.

---

## ⚠️ Verify its output

**The reading list's instruction is "verify its output," and that instruction is correct.** This is a
third-party reimplementation of someone else's math, hosted on a site that also runs an affiliate-shaped
content operation around it. Nothing about that makes it wrong, but it means:

- **The math is Karsten's; the implementation is not.** Errors in transcription, threshold selection, or
  edge-case handling would not be visible from the output.
- **The site's own land-count summary already diverges slightly from Karsten's published table** (see
  above), which suggests it isn't a literal reproduction of the 2017 numbers.
- **Modelling choices matter enormously here** and are not exposed. Karsten's own land-count article spends
  a full section on how he treated mana rocks, mana creatures, cantrips, fetchlands, cost-reduced cards,
  and X-spells (see `02-…`). Two defensible implementations can differ by two or three sources purely on
  those choices. The site's FAQ raises "should I count mana rocks as colored sources?" but the answer
  isn't visible in the tool's output.

**How to check it:**

1. **Cross-check the total land count against Karsten's own table**, which is preserved in full in
   `02-how-many-lands-do-you-need-2017-05-30.md`. If the tool's land total is more than about two off the
   `16 + 3.14 × avg CMC` formula, investigate before trusting the color split.
2. **Sanity-check the colored sources against Reid Duke's tiers**, which are the field version of the same
   math: **17–18 sources for a color you'd mulligan without, 14–16 for a main color, 10–13 for a
   secondary, 4–7 for a splash** in 60 cards. See
   `block-1-the-spine/37-building-a-mana-base-2014-11-24.md`.
3. **Discount fetchlands and mana creatures yourself.** Duke's rule of thumb — count four fetchlands as
   about three sources of each color — is the kind of adjustment a calculator may or may not be making.

---

## Related tools on the same site

Listed for completeness; the same verification caution applies to all of them.

- **Hypergeometric Calculator** — raw draw-odds probability for any scenario. **This one is the most
  trustworthy of the set**, because hypergeometric probability has a single correct answer and no
  modelling choices. If you want to check the tool's manabase claims yourself, this is how.
- **Dual Lands Reference Guide** — dual land cycles by color, speed, and format legality.
- **Commander Bracket Calculator**, **Commander Deck Building Guide**, **Draft Simulator**, **Sealed Pool
  Simulator**.

---

## Notes for use

- **Use this for the colored-source question only.** The total-land question is answered better and more
  transparently by Karsten's own article, which this repo preserves in full.
- **The underlying idea is worth knowing even without the tool:** the number of sources you need scales
  with **when** you need the color and **how many pips** the spell demands, not merely with how much of the
  deck is that color. A double-pip two-drop is a far harder constraint than a single-pip five-drop.
- **A calculator cannot make the judgment calls.** It can't tell you that adding a fourteenth tapped land
  costs you more tempo than a pain land costs you life, or that a color should be demoted from main to
  secondary so the mana works at all. Both of those decisions are in
  `block-1-the-spine/37-building-a-mana-base-2014-11-24.md`, and they're the ones that actually determine
  whether a three-color deck functions.
- **Cross-reference:** `01-turbo-xerox-1997-06-27.md` is the argument for deviating downward from any
  calculated land count when your deck is dense with cheap selection. No calculator in this class accounts
  for that, because Karsten's own data explicitly declines to count cantrips as lands.

## Source

ScrollVault, "MTG Mana Base Calculator." Retrieved 2026-08-30 from
<https://scrollvault.net/tools/manabase/>

Implements the method from Frank Karsten, "How Many Colored Mana Sources Do You Need to Consistently Cast
Your Spells?", ChannelFireball. The original article URL is dead; the Library of Leng
(<https://library-of-leng.com/articles>) is the place to look for an archived copy.
