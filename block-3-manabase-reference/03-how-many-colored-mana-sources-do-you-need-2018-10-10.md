---
title: "How Many Colored Mana Sources Do You Need to Consistently Cast Your Spells? A Guilds of Ravnica Update"
author: Frank Karsten
published: 2018-10-10
source_url: https://www.channelfireball.com/articles/how-many-colored-mana-sources-do-you-need-to-consistently-cast-your-spells-a-guilds-of-ravnica-update/
archive_url: https://web.archive.org/web/20181011120856id_/http://www.channelfireball.com/articles/how-many-colored-mana-sources-do-you-need-to-consistently-cast-your-spells-a-guilds-of-ravnica-update
supersedes_url: https://web.archive.org/web/20140809081942id_/http://www.channelfireball.com/articles/frank-analysis-how-many-colored-mana-sources-do-you-need-to-consistently-cast-your-spells
publication: ChannelFireball
retrieved: 2026-08-30
retrieval_status: wayback
block: 3 — Manabase reference
position: 3
note: "This 2018 revision supersedes Karsten's 2013-12-31 original and changes several of its recommendations. The reading list points at the dead original ChannelFireball URL; the live site now returns a JavaScript shell, so this was recovered from the Internet Archive. The detailed per-source probability grids in the article are published as images, so only the summary table exists as text."
---

# How Many Colored Mana Sources Do You Need to Consistently Cast Your Spells?

**Frank Karsten — ChannelFireball, October 10, 2018 (Guilds of Ravnica update)**

> Why it's in the list: this is the companion to
> [How Many Lands Do You Need](02-how-many-lands-do-you-need-2017-05-30.md). That article tells you how many
> lands. This one tells you **which colors those lands have to make**. Together they are the whole
> quantitative manabase, and the summary table below is the single most-cited table in deckbuilding.

---

## The table

This is the reference. **"C" stands for an arbitrary colored mana symbol**, and the counts are the number of
sources of that color you need to cast the spell **on curve**.

| Mana cost | Example spell | 60-card deck | 40-card deck | 99-card deck |
|---|---|---|---|---|
| 5C | Drowner of Hope | 8 | 6 | 14 |
| 4C | Through the Breach | 9 | 6 | 15 |
| 3C | Collected Company | 10 | 7 | 17 |
| 2C | Goblin Rabblemaster | 11 | 8 | 19 |
| 1C | Tarmogoyf | 13 | 9 | 21 |
| 4CC | Primeval Titan | 13 | 9 | 22 |
| C | Goblin Guide | 14 | 10 | 23 |
| 3CC | Baneslayer Angel | 14 | 10 | 23 |
| 2CC | Damnation | 16 | 11 | 26 |
| 3CCC | Planar Cleansing | 16 | 11 | 28 |
| 1CC | Liliana of the Veil | 18 | 12 | 29 |
| 2CCC | Jaya Ballard | 18 | 13 | 30 |
| CC | Lord of Atlantis | 20 | 14 | 33 |
| 1CCC | Cryptic Command | 20 | 14 | 33 |
| CCC | Goblin Chainwhirler | 23 | 16 | 37 |

**Read the ordering, not only the numbers.** The table is sorted by requirement, and the sort is
counter-intuitive in a useful way: **a 4CC card (13 sources) is easier to support than a single-C one-drop
(14 sources)**, because by turn four you have drawn more cards. **Cost and color requirement pull in
opposite directions.** The cheapest, most color-intensive spells are the hardest to support, which is why
**Goblin Chainwhirler at 23 sources** sits at the bottom and effectively forces a mono-colored manabase.

Karsten flags that some numbers moved from his 2013 original: he now recommends **16 sources for a 2CC card
where it used to be 18**, and validates it against results — **top-performing Grand Prix Top 8 decks
typically ran Vraska's Contempt off 16 black sources.**

## What "consistently cast" means

The definition is doing a lot of work, and it is not "always."

> **Due to the randomness of your draws, 100% consistency is practically unattainable.**

His original standard was **90% of the time on the play**, and he is candid that the number was **"mostly
based on experience and intuition."** Two refinements sharpen it:

1. **Keepable opening hands only.** You would mulligan no-land and all-land hands in practice, so those
   shouldn't count against your mana.
2. **Conditional on drawing enough lands.** If your red-black deck can't cast Goblin Chainwhirler on turn
   three because you only drew two lands, **that's a land-count failure, not a Mountain/Swamp ratio
   failure.**

### The assumptions the table rests on

Because the analysis is entangled with mulligan strategy and land counts, Karsten fixes those:

- **A 40-card deck has 17 lands, a 60-card deck has 24, a 99-card deck has 40.**
- **The only colored sources are lands** — no Noble Hierarch, no Aether Vial.
- **Mulligan rule:** mulligan any 7-card hand with 0, 1, 6, or 7 lands; any 6-card hand with 0, 1, 5, or 6
  lands; any 5-card hand with 0 or 5 lands. Keep everything else.

His own statement of how far the table travels:

> **For decks that are merely close to satisfying these assumptions (say, decks with 20-28 lands and 0-8
> non-land mana sources) my tables remain useful as solid rules of thumb.**

## What changed in the 2018 revision

Four methodological changes, and they explain why numbers moved.

**1. The Vancouver mulligan.** Scry 1 after a mulligan wasn't in the original. He now assumes you **scry
toward the required colored source** — any on-color land to the top, everything else (including off-color
lands) to the bottom. Small gain in consistency.

**2. Actual probabilities, not just thresholds.** The original told you 13 green sources gets you to 90% for
Tarmogoyf, but not whether 12 sources was 83% or 89%. The revision publishes the full grids.

**3. A sliding consistency bar by cost.** He argues 90% across the board is "overly rough." Missing a
one-drop is survivable — you play a tapland instead, or curve it in on turn three. Missing your top end is
not:

> **Imagine the last card in your hand is Lyra Dawnbringer, but you are unable to cast it because you
> control four Forest and one Plains. Then that's a fully wasted turn, and potentially a game-losing
> disaster.**

So the requirement scales: **90% for 1-mana cards, 91% for 2-mana, 92% for 3-mana, and so on up to 95% for
6-mana cards.**

**4. Conditioning on-curve rather than on color count.** This is the change that moved the most numbers. The
original asked, for a card with N colored symbols, the probability of drawing N colored sources by turn T
**conditional on drawing at least N lands**. Karsten now calls treating Serra Avenger and Wrath of God the
same way "too simple":

> **To cast Wrath of God, you need at least four lands, among which you may find the required two white
> sources. For a 4-mana card, it's more relevant to condition on drawing at least four lands than on drawing
> at least two lands.**

The updated definition: for a card costing N colored mana with converted mana cost M, the probability of
drawing **at least N colored sources by turn M on the play, conditional on drawing at least M lands** after
mulligans. **This assumes you cast spells on curve.** For spells you routinely cast off-curve — Serra
Avenger, Daybreak Coronet, Runed Halo — he directs you back to the original article.

Consequence: **the update generally recommends fewer sources for double- and triple-colored cards costing 4
or more.** Wrath of God went from 18 white sources to 16.

## Counting rules: what actually is a source

The table is useless without these. This is the half of the article people skip and then misapply.

### Gold cards: add one to every requirement

Split the cost into parts, look up each, then **increase every requirement by one.**

- **Emmara, Soul of the Accord** (1GW): a 1G card wants 13 green, a 1W card wants 13 white, a CC card wants
  20. So: **14 green, 14 white, and 21 sources that produce green and/or white.**
- **Vraska, Golgari Queen** (3BG): **11 green, 11 black, 17 sources producing green and/or black.** Same
  advice for Assassin's Trophy, "provided you don't plan on casting it before hitting four lands."
- **Niv-Mizzet, Parun** (3UUURRR... treated as 3UUU and 3RRR): 16 each, so **17 blue and 17 red** — and
  obviously **you cannot afford a single source that isn't red or blue.**

The reason for the +1, which he notes he never explained in the original: **for a gold card you need both
colors present.** If you're 90% for white and 90% for green and the probabilities were independent, you'd
cast Emmara on curve only **90% × 90% = 81%** of the time. The real number is higher because the
probabilities aren't independent, but the effect is real. He is honest about the fix:

> **This is an imprecise hack, but it's based on the results of a quick simulation.**

**The adjustment only applies when both colors could be a problem.** Splashing Justice Strike in a mono-red
deck where every land makes red is just splashing a 1W card.

### Fetchlands and fixers

- **Fetchlands** (Verdant Catacombs, Flooded Strand): **a full source for any color they can fetch**,
  assuming shock duals are available. "They are the perfect mana fixers."
- **Evolving Wilds:** **a full source for both colors in a 2-color deck.** In 3+ color decks with heavy
  requirements in more than one color it isn't reliable, because you have to choose — count it as roughly
  **2/3 of a source of each color.** His aside on the estimate: *"Sometimes science is more art than
  science."*
- **Field of Ruin:** about **1/2 a source** for any basic land color in your deck, and **only for spells
  costing 5 or more**, since you may not have time to activate it early and the opponent may have no
  nonbasics.

### Taplands

- **Turn 1: only untapped sources count.** Evolving Wilds, Selesnya Guildgate, and Sunpetal Grove do not
  help you cast Llanowar Elves.
- **Turn 2 onward: everything counts.** A simplification, but adequate unless you have an insane number of
  taplands.

How many is too many? **In aggro decks with lots of one-drops, avoid Guildgates and Evolving Wilds
entirely** — one copy is acceptable. In midrange and control, **no more than 4**. If you can't hit the
required source count without five or more, **rethink the deck or add lands.** This applies to pure taplands
with no useful ability; **Temple of Abandon, Shambling Vent, and Memorial to Folly are fine in slightly
larger numbers.**

**Shocklands** normally aren't counted as taplands, but for a control deck running eight of them, the life
loss is real enough that he suggests **counting that set as 2 taplands** for this purpose.

**Checklands** (Sunpetal Grove) scale with how many lands carry the right basic type:

| Lands of the right basic type | Count each checkland as |
|---|---|
| 16 or more | a full untapped source (turn 2 onward) |
| 12 | 1/8 of a tapland |
| 8 | 1/4 of a tapland |
| 4 | 1/2 of a tapland |

### Mana creatures and card selection

- **Fragile mana producers** (Llanowar Elves, Birds of Paradise, Noble Hierarch): **half a colored source
  per color**, for cards costing 2 or more. His reason is a piece of folk wisdom with a date on it:
  **"Bolt the Bird has been a saying since the early '90s."**
- **Cheap cantrips** (1-2 mana): count them as **the fraction of your deck that makes the right color.** 15
  Swamps in 60 cards makes Warlord's Fury **1/4 of a black source**; 10 Swamps makes it **1/6.** He notes
  you could argue this both up and down — you don't always have time to cast them, but you might chain into
  another — and says **let's assume the two effects cancel.**
- **Worked example, Modern:** assuming a turn-one cast and 15-16 black sources, **Opt ≈ 0.45 black sources,
  Serum Visions ≈ 0.55, Faithless Looting ≈ 0.5** (disregarding flashback), for black cards cast turn two
  or later.
- **Scry and surveil are worse than drawing**, because you sometimes need to dig for something else and
  there are diminishing returns:

| Effect | Deck with 16 black sources | Deck with 8 black sources |
|---|---|---|
| Cheap scry 1 | ≈ 0.2 black sources | ≈ 0.1 |
| Cheap scry 2 | ≈ 0.3 black sources | ≈ 0.15 |

- **Ramp with fixing** (Farseek, District Guide, Gift of Paradise): **a full source of every color it can
  find**, but **only for cards costing 4 or more.** They won't help your off-color two-drop on turn two.
- **Flower // Flourish**: a full white and green source for 2-mana-plus cards, but **it is basically a
  tapland — Selesnya Guildgate in spell form.**

### Unusual costs

- **Convoke and delve:** imagine the typical number of *lands* you'd tap, and treat that as the cost. Gurmag
  Angler is a **1B card** in a deck that fills the graveyard fast; March of the Multitudes is a **3GW card**
  in a deck full of white creatures.
- **Hybrid:** you need enough **combined** sources of either color. Four Watery Grave, five Island, and four
  Swamp is **13 sources** for a turn-two Discovery // Dispersal. "Perfect."

## The manabases, worked

The examples are Guilds of Ravnica Standard and the specific cards are dead, but the reasoning is the point.

**Selesnya, evenly split** — 4 Temple Garden, 4 Sunpetal Grove, 8 Forest, 8 Plains. **16 green, 16 white.**

- **Supports:** Nullhide Ferox, Ajani, Emmara. Close on Conclave Cavalier.
- **Fails on 3-mana double-colored:** History of Benalia and Thrashing Brontodon want **18**. Get there with
  Guildgates, Flower // Flourish, more lands, or non-land sources — or **"stubbornly stick to 16 and accept a
  lower level of consistency, but I would consider that greedy."**
- **Fails on one-drops:** those want **14 untapped** sources, and Sunpetal Grove doesn't count on turn one,
  so this base has only **12**. That's **86.3% consistency** — and here is the most useful sentence in the
  whole article for anyone tempted to treat these tables as law:

> **Not ideal, but not terrible either. Indeed, there are Pro Tour winning aggro decks that found success
> with less than 90% colored mana consistency on turn 1. In the end, mana consistency always has to be
> weighed against the pain it can cause, and my tables should be viewed as useful guidelines only.**

**Selesnya, skewed green** — 10 Forest, 6 Plains, 4 Temple Garden, 4 Sunpetal Grove. His actual
recommendation for the one-drop problem: **pick a color and lean.** 14 untapped green sources supports
Llanowar Elves and Pelt Collector; 18 green counting Sunpetal Grove supports Thrashing Brontodon; 14 total
white supports a turn-two Emmara or turn-five Lyra. **It will not support Legion's Landing, History of
Benalia, or Leonin Warleader on curve** — so brews running both Pelt Collector and History of Benalia
"really stretch your mana base."

**Steel Leaf Champion (GGG, 23 sources)** doesn't fit that base. In a Steel Leaf deck he would **restrict
himself to splashing only single-colored cards for turn 3 or later** — Knight of Autumn off 11 sources is
fine, stretching further is not. Same logic for splashing Aurelia in a Goblin Chainwhirler deck: possible
with four Sacred Foundry, four Clifftop Retreat, one Boros Guildgate and one Plains, but broadening the
splash costs you either curve, tribal consistency, or turn-three Chainwhirlers. **"I generally favor decks
that don't strain their mana base as much."**

**Dimir** — 4 Watery Grave, 4 Drowned Catacomb, 9 Island, 7 Swamp. Only **13 untapped blue** for a turn-one
Thoughtbound Phantasm and **17 black** for Blood Operative. Both slightly low, and **there is no way to
improve the sum without adding lands** — he suggests going to 25. The lesson he draws is the honest one:
**if you want both of those cards on curve, you have to accept some inconsistency.**

**Grixis** — 2 Swamp, 2 Island, 4 Dragonskull Summit, 4 Drowned Catacomb, 2 Sulfur Falls, 4 Steam Vents,
4 Watery Grave, 2 Evolving Wilds. **10 red, 18 blue, 16 black**, which supports Vraska's Contempt, Sinister
Sabotage, and Nicol Bolas together. Because the shocklands carry basic types, the checklands are well
supported — he counts the whole checkland group as **between 1 and 2 taplands**, plus the Evolving Wilds for
**3 to 4 total**, "high but still acceptable for a midrange deck."

**Esper, the same shape but worse** — swapping the red splash for white gives **10 white, 18 blue, 16
black**, but Azorius and Orzhov had no shockland in that format, so only one shock dual exists, Meandering
River is forced in, and the checklands are less likely to be untapped. **"All in all, this mana base is akin
to having 7 taplands, which is far too many."** The fix is 26-27 lands plus cheap card selection.

His structural conclusion from that pair:

> **Having better mana bases is highly correlated with tournament success.**

---

## Notes for use

- **Use this with [02](02-how-many-lands-do-you-need-2017-05-30.md), never instead of it.** That article
  fixes the land count; this one fixes the color split. The two are coupled — Karsten's assumptions here
  (24 lands in 60, 17 in 40) come straight from that analysis, and the Dimir example shows what happens when
  the color requirements can only be met by raising the land count.
- **The counting rules are the article.** The summary table gets screenshotted and passed around without
  them, and that's how people end up counting four Evolving Wilds as four sources of three colors. If you
  only remember three rules: **taplands don't count on turn one, mana creatures count half, gold cards add
  one to everything.**
- **This 2018 version supersedes the 2013 original,** which is also archived
  (`web.archive.org/web/20140809081942id_/...frank-analysis-how-many-colored-mana-sources...`). Go back to
  the original **only** for spells you plan to cast off-curve, which is the one case the 2018 conditioning
  no longer covers. Karsten says so explicitly.
- **The detailed probability grids are images.** The article publishes full per-source probability tables
  for 60-, 40-, and 99-card decks as click-to-enlarge graphics, so they did not survive text extraction.
  The summary table above is the distillation of all three, and is the part that gets used. For live
  calculation, use the calculator in
  [04-karsten-mana-calculator-reference.md](04-karsten-mana-calculator-reference.md).
- **Karsten's own framing is that these are guidelines.** He says it twice — "useful rules of thumb," "useful
  guidelines only" — and points at Pro Tour winning decks that ran below his threshold. The tables tell you
  what you are paying. They don't tell you whether the price is worth it.
- **Format-dated material to ignore:** the Guilds of Ravnica guild-by-guild verdicts (which two-color pairs
  have shocklands, which three-color pairs have two) were true for one Standard season in 2018 and are of no
  use now. The method for reaching those verdicts is what transfers.

## Source

Frank Karsten, "How Many Colored Mana Sources Do You Need to Consistently Cast Your Spells? A Guilds of
Ravnica Update," *ChannelFireball*, October 10, 2018. The live URL now returns a JavaScript shell with no
article body. Recovered from the Internet Archive:
<https://web.archive.org/web/20181011120856id_/http://www.channelfireball.com/articles/how-many-colored-mana-sources-do-you-need-to-consistently-cast-your-spells-a-guilds-of-ravnica-update>.
Superseded article: Frank Karsten, "Frank Analysis: How Many Colored Mana Sources Do You Need to
Consistently Cast Your Spells?", *ChannelFireball*, December 31, 2013. Retrieved 2026-08-30.
