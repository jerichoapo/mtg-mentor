---
title: "How Many Lands Do You Need to Consistently Hit Your Land Drops?"
author: Frank Karsten
published: 2017-05-30
source_url: https://orkerhulen.dk/onewebmedia/How%20Many%20Lands%20Do%20You%20Need%20to%20Consistently%20Hit%20Your%20Land%20Drops.pdf
original_publication: ChannelFireball
retrieved: 2026-08-30
retrieval_status: "live (PDF, 11 pages)"
block: 3 — Manabase reference
position: 2
note: "Tables below were extracted from the PDF and re-aligned; alignment verified against Karsten's own worked examples in the prose. See the verification note."
---

# How Many Lands Do You Need to Consistently Hit Your Land Drops?

**Frank Karsten — ChannelFireball, May 30, 2017**

> Why it's in the list: two methods, hypergeometric probability and a regression on 110 winning
> decklists, converging on a table of land counts by average mana value. Reports every probability
> separately for the play and the draw, which is a larger gap than intuition suggests.

---

## The premise

> **I have seen decks with as few as 1 land and decks with as many as 42. But how many lands does a
> 60-card deck actually need? In this article, I will run the numbers.**

**Two methodologies:**

1. **Raw probability calculations** — e.g. the probability of hitting 4 lands by turn 4 under a specified
   mulligan strategy.
2. **A linear regression** between land count and average converted mana cost in recent top-performing
   decks.

---

# Method 1: probability

## The assumed mulligan strategy

**Everything in the first table depends on this, so it's worth reading carefully:**

> - **You mulligan any 7-card hand with 0, 1, 6, or 7 lands.**
> - **You mulligan any 6-card hand with 0, 1, 5, or 6 lands.**
> - **You mulligan any 5-card hand with 0 or 5 lands.**
> - **You keep any 4-card hand.**
> - **After a mulligan, you always scry a land to the top and a spell to the bottom.**

**Karsten's caveat:**

> **In my experience this strategy is reasonable for a wide range of decks. There are some low-curve decks
> that might want to keep a 1-lander and/or mulligan a 5-lander, and there are some high-curve decks that
> might want to mulligan a 2-lander and/or keep a 6-lander.**

> **But I decided to keep things simple by enforcing the same mulligan strategy for every type of deck —
> this makes it easier to compare the numbers for different land counts.**

*(Note that this is essentially Reid Duke's Two-to-Five Lands Strategy, extended down through the mulligan
chain. See `block-1-the-spine/19-mulligans-2015-01-26.md`.)*

## The method

> These are **basic hypergeometric probabilities**, multiplied for hands of 6 cards or fewer by the
> probability of taking a mulligan down to that size. **Naturally, the resulting probabilities over all
> opening hand sizes and all land counts sum up to one.**

> Then, for any opening hand I might keep, I asked: **"what is the probability to find at least a certain
> number of lands after a certain number of draw steps?"** For instance, **finding at least 5 lands after
> 4 draw steps would represent the probability of hitting your first 5 land drops on the play.**

---

## Table 1 — 60-card Constructed

**Each cell is `draw% / play%`.** "P(mana flood)" is the probability of having drawn **at least 8 lands by
turn 7 on the draw.**

| Lands | P(2 by t2) | P(3 by t3) | P(4 by t4) | P(5 by t5) | Exp. opening hand | P(flood) |
|---:|---|---|---|---|---|---|
| **17** | 96.8% / 95.6% | 77.2% / 69.1% | 51.1% / 41.0% | 28.8% / 20.8% | 6.458 | 1.2% |
| **18** | 97.7% / 96.8% | 80.7% / 73.0% | 56.3% / 45.9% | 33.8% / 24.9% | 6.530 | 1.9% |
| **19** | 98.4% / 97.7% | 83.8% / 76.5% | 61.2% / 50.6% | 39.0% / 29.2% | 6.594 | 2.8% |
| **20** | 98.9% / 98.3% | 86.4% / 79.6% | 65.8% / 55.2% | 44.1% / 33.7% | 6.649 | 3.9% |
| **21** | 99.2% / 98.8% | 88.6% / 82.3% | 70.0% / 59.6% | 49.3% / 38.3% | 6.697 | 5.4% |
| **22** | 99.5% / 99.2% | 90.5% / 84.7% | 73.9% / 63.7% | 54.3% / 43.0% | 6.738 | 7.3% |
| **23** | 99.6% / 99.4% | 92.1% / 86.8% | 77.4% / 67.7% | 59.1% / 47.6% | 6.772 | 9.5% |
| **24** | 99.8% / 99.6% | 93.5% / 88.7% | 80.6% / 71.3% | 63.8% / 52.2% | 6.801 | 12.2% |
| **25** | 99.8% / 99.7% | **94.6% / 90.4%** | **83.5% / 74.7%** | 68.2% / 56.7% | 6.825 | 15.2% |
| **26** | 99.9% / 99.8% | 95.6% / 91.8% | 86.0% / 77.9% | 72.3% / 61.1% | 6.844 | 18.7% |
| **27** | 99.9% / 99.8% | 96.4% / 93.1% | 88.3% / 80.8% | 76.0% / 65.3% | 6.858 | 22.6% |
| **28** | 99.9% / 99.9% | 97.1% / 94.2% | **90.2%** / 83.4% | 79.5% / 69.2% | 6.868 | 26.8% |

**Karsten's worked reading of it**, for a deck that needs 3 lands, wants Gideon on turn 4, and runs
Archangel Avacyn:

> **I'd say 25 lands is probably the right number.** You will almost always (**94.6% on the draw, 90.4% on
> the play**) hit 3 lands by turn 3, which means you can almost always play a reasonable game of Magic.
> The probability of hitting 4 lands by turn 4 is sufficient: **83.5% on the draw, 74.7% on the play.**

> **That's still not super consistent, but I wouldn't be comfortable going lower — and you can't reach the
> 90% level of consistency that I liked for colored sources of mana without going up to 28 lands.**

### ✅ Verification note

The PDF's column alignment is scrambled by text extraction. **The table above was re-aligned and then
checked against three independent statements in Karsten's own prose:**

1. **25 lands → 94.6% / 90.4%** for 3 lands by turn 3, and **83.5% / 74.7%** for 4 by turn 4. ✓ matches
2. **28 lands** is where P(4 lands by turn 4) first reaches **90%** — the table gives **90.2%** on the
   draw. ✓ matches
3. Every percentage cited in the recommendation table at the end of the article maps to the correct row.
   ✓ matches

---

## Table 2 — 40-card Limited

| Lands | P(2 by t2) | P(3 by t3) | P(4 by t4) | P(5 by t5) | Exp. opening hand | P(flood) |
|---:|---|---|---|---|---|---|
| **12** | 97.9% / 97.0% | 80.9% / 72.9% | 55.5% / 44.7% | 31.9% / 23.0% | 6.547 | 1.0% |
| **13** | 98.8% / 98.2% | 85.5% / 78.2% | 63.2% / 52.2% | 40.1% / 29.8% | 6.639 | 2.1% |
| **14** | 99.3% / 99.0% | 89.0% / 82.6% | 70.1% / 59.3% | 48.4% / 37.0% | 6.714 | 3.9% |
| **15** | 99.6% / 99.4% | 91.8% / 86.2% | 76.2% / 65.8% | 56.4% / 44.4% | 6.772 | 6.5% |
| **16** | 99.8% / 99.7% | 94.0% / 89.2% | 81.3% / 71.7% | 64.0% / 51.8% | 6.817 | 10.2% |
| **17** | 99.9% / 99.8% | 95.6% / 91.6% | 85.6% / 77.0% | 70.9% / 59.0% | 6.851 | 14.9% |
| **18** | 99.9% / 99.9% | 96.9% / 93.6% | 89.2% / 81.6% | 77.1% / 65.8% | 6.873 | 20.8% |
| **19** | 100% / 99.9% | 97.8% / 95.2% | 92.1% / 85.5% | 82.3% / 72.0% | 6.887 | 27.6% |
| **20** | 100% / 99.9% | 98.5% / 96.4% | 94.3% / 88.9% | 86.8% / 77.6% | 6.891 | 35.3% |

**Karsten's conclusion:**

> **The numbers for 17 lands in Limited are similar to the ones for 25 lands in Standard. This also makes
> sense because 25 × 40/60 = 17.5.** Since typical Limited decks need their first 3 land drops, would like
> to hit their 4th, but don't necessarily need 5 by turn 5, **the age-old standard of 17 lands indeed seems
> like a good number.**

**And for Commander:** **the equivalent to 25 lands in a 60-card deck is 25 × 99/60 = 41.25 lands.**

---

## Musing: can you cut a land on the draw?

> **For sure.** Suppose you'd want to hit your 3rd land drop with 90% certainty and your 4th with 75%
> certainty. **On the play you need 26 lands to achieve this. On the draw you only need 23. The extra draw
> step makes a big difference.**

**But he immediately pulls back:**

> Sideboarding lands in and out is something many top pros do constantly, and the numbers indicate this is
> a valid strategy. **It's possible that cutting as many as 2 lands might even be correct in some cases.**

> **But I wouldn't go as far as actually going from 26 to 23, despite what the numbers might suggest.**
> After all, such a reduction would come at the cost of **more frequent mulligans**, as you can observe in
> the expected-opening-hand column. Moreover, **you're generally more mana hungry on the draw because you
> may have one more spell than your opponent.**

> **Sometimes, you have to look beyond the numbers.**

**In Limited**, cutting a land on the draw is fine for the same reasons, **but more so than in Constructed
you should check that you still have enough colored sources for each main color first.**

---

## Musing: balancing screw against flood

> **Ultimately, the decision on how many lands to put in your deck is a trade-off between mana screws and
> mana floods.** Calculating the probability of hitting 4 land drops by turn 4 is relatively easy —
> **anyone with a basic knowledge of probability theory should be able to replicate my results with a
> simple spreadsheet.** But **adequately weighing the relative impact of screws and floods is more
> difficult.**

**Karsten is unusually candid that the recommendation is a judgment call:**

> **My subjective judgment of saying that 83.5% is a good number for hitting your first 4 land drops on the
> draw is mostly based on experience and intuition, and it only applies to a certain type of deck.**

> **Unless you have tracked the results of thousands of games in a certain matchup, there is no scientific
> reason why 83.5% is "better" than 80% or 87%. It's just a number that looks good to me.**

**Other factors he names as legitimately shifting the count:** additional mana sources (Servant of the
Conduit) and ways to spend excess mana (Duskwatch Recruiter).

**His design view on variance:**

> **As long as they're relatively infrequent, [screws and floods] are actually good for the game. Little
> bits of variance give weaker players a chance to beat better players, lead to games that play out
> differently every time, add excitement to draw steps, and make for interesting deck building
> decisions.**

> **But while a little bit of randomness is fun, too much randomness is not. If you lose too often to mana
> screw or flood, you don't get to leverage your playing skill.**

**And an observation about the asymmetry of the available fixes:**

> **It is somewhat surprising to me that there seem to be fewer cards that mitigate mana screw** than
> mitigate flood. Cycling lands and creature-lands **incentivize people to add more lands, which leads to
> slightly inflated land counts, and I think that's great.** But **screws still happen even with inflated
> counts, and then there are not many cards that can help you.**

---

# Method 2: the regression

## The data set

> I went over the last 3 Pro Tours (**Kaladesh, Aether Revolt, and Amonkhet**). I grabbed **all Top 8
> decklists and all decklists outside the Top 8 that went 8-2 or better** in Standard. **This yielded 78
> decklists.**

**Because nearly every Standard deck had between 22 and 26 lands, with 24 by far the most common**, he
added **the Top 8 decks of the last 4 Modern Grand Prix** (Kobe, Copenhagen, Vancouver, Brisbane) —
**32 more decks — to get some decks with more extreme land counts.**

**Total: 110 decklists.**

## How special cases were counted

- **Cheap land-fetch spells** (Attune with Aether, Traverse the Ulvenwald) counted as **both a land and a
  1-mana card**. Exception: **Traverse in Modern was not counted as a land**, since delirium is easy and
  creatures are good.
- **0-mana mana producers** (Mox Opal) counted as a land. **Aether Vial** also treated as a land.
- **Mana creatures** (Servant of the Conduit, Noble Hierarch) were **not** counted as lands. Neither were
  **mana rocks** (Mind Stone, Cultivator's Caravan) or **cheap card draw/selection** (Vessel of Nascency,
  Serum Visions, Mishra's Bauble).
- **Cost-reduced cards** (Bone Picker, Tasigur, Distended Mindbender) counted at **full CMC**, except
  **Emrakul, the Promised End**, counted as 8.
- **X-spells:** Chalice of the Void = 0, Dark Salvation = 1, Walking Ballista = 2, Quarantine Field = 4.
- **Street Wraith** counted as CMC 0; **Desert Cerodon, Monstrous Carabid, Horror of the Broken Lands**
  counted as 1.

**Karsten's own assessment of the modeling:**

> **A lot of simplifications and modeling choices were made and in reality the truth is somewhere in the
> middle.** Attune with Aether or Aether Vial are not full lands, and **Noble Hierarch, Cultivator's
> Caravan, or Serum Visions could easily count as half a land or one-third of a land.**

> Peter Vieren's 24-land control deck **is closer to a 27-land deck thanks to eight 1-mana cyclers, but it
> was still seen as a 24-land deck.** My method also counted **Ulamog as CMC 10, which is not completely
> fair either.**

> **But with the time I had available, I was able to assemble a data set whose quality I would call
> sufficient.**

## The result

**Least-squares linear regression across all 110 decks. R² = 0.614.**

> ### **Lands = 16 + 3.14 × (average CMC of nonland spells)**

**His caveat on it:**

> **Many decks have maybe 2 lands more or 2 lands fewer than this formula would indicate.** In the end
> every deck is different, cheap card drawing spells or mana creatures can influence the counts, and
> average CMC doesn't say everything. **But you can at least get a rough guideline.**

**And the observation he flags as the most actionable:**

> **The decks that won the last 3 Pro Tours all lie above the regression line.** Although I don't have a
> large enough sample to make sweeping conclusions, **it does mean these Pro Tour winners did not skimp on
> their land counts — rather, they had slightly inflated land counts.**

> **Take that as an indication: when you're in doubt, you're probably better off adding that extra land
> instead of that extra spell.**

---

# The recommendation table

**Combining both methods. Percentages are for being on the play. Multiply by 99/60 for Commander, 40/60
for Limited.**

**Reminder:** count cards like Attune with Aether or Aether Vial toward the land number, per the special
cases above.

| Lands | Avg. CMC | Deck type and what it needs |
|---:|---|---|
| **18** | 0.48–0.80 | **Low-curve** — you only need 1 or 2 lands to function, and you have no 3-drops |
| **19** | 0.80–1.12 | **Low-curve** — need 2 lands on turn 2 (97.7%), would like 3 on turn 3 (76.5%) for some 3-drops |
| **20** | 1.12–1.44 | **Low-curve** — need 2 on turn 2 (98.3%), would like 3 on turn 3 (79.6%) for some 3-drops |
| **21** | 1.44–1.76 | **Aggro** — need 2 on turn 2 every game (98.8%), would like 3 on turn 3 (82.3%) for several 3-drops |
| **22** | 1.76–2.08 | **Aggro** — need 2 on turn 2 every game (99.2%), would like 3 on turn 3 (84.7%) for several 3-drops |
| **23** | 2.08–2.40 | **Aggro** — need 3 on turn 3 in most games (86.8%); 4 by turn 4 (67.7%) is nice but not necessary |
| **24** | 2.40–2.72 | **Midrange** — need 3 on turn 3 in most games (88.7%); 4 by turn 4 is nice (71.3%) but not necessary |
| **25** | 2.72–3.04 | **Midrange** — need your 3rd land drop (90.4%) to function, want your 4th relatively often (74.7%) |
| **26** | 3.04–3.36 | **Control** — need your 3rd land drop (91.8%) to function, want your 4th relatively often (77.9%) |
| **27** | 3.36–3.68 | **Control** — need your 4th land drop (80.8%) to function, regularly want your 5th (65.3%) |

**✅ The reading list's summary — "21–23 lands for aggro" — is confirmed correct** by this table.

**Karsten's closing line:**

> **Magic is more fun when you have the right number of lands in your deck — don't make the mistake of
> skimping on your land counts.**

---

## About the author

> **Frank Karsten has been playing competitive Magic for over half his life, and he was inducted into the
> Pro Tour Hall of Fame in 2009.** Synergy-driven aggro decks like Modern Affinity are his favorite.
> **Frank holds a PhD in cooperative game theory and stochastic operations research**, so when he's not
> traveling the world, he enjoys applying his mathematical background to Magic-related problems.

---

## Notes for use

- **The one formula to remember: `lands = 16 + 3.14 × average CMC`.** It's a regression on 110 winning
  decklists, R² = 0.614, and it lands you within about two of the right answer for most decks. Everything
  else here refines it.
- **The play/draw gap is the finding the reading list flags, and it's large.** At 25 lands, hitting your
  4th land drop is **83.5% on the draw and 74.7% on the play** — nearly nine points. Karsten's worked
  example puts the requirement at **26 lands on the play vs. 23 on the draw** for the same consistency
  target. Note he still advises against actually cutting three.
- **The mulligan strategy is an input, not a constant.** Every number in Table 1 assumes mull 0/1/6/7 on
  seven. If your deck genuinely keeps one-landers or mulligans six-landers, the numbers move.
- **Karsten is explicit that the threshold is aesthetic.** "There is no scientific reason why 83.5% is
  better than 80% or 87%." The *probabilities* are objective; the *recommendation* is his judgment. Treat
  the table as calibrated opinion, not proof.
- **The most useful single takeaway may be the Pro Tour winners observation:** all three sat above the
  regression line. When in doubt, add the land.
- **Cross-reference — this is the rigorous version of Duke's rules of thumb.** Duke explicitly credits
  Karsten in `block-1-the-spine/37-building-a-mana-base-2014-11-24.md`, and his beginner-grade thresholds
  in `block-1-the-spine/02-the-basics-of-mana-2015-07-06.md` are the field version of this math. Duke's
  40% guideline ≈ 24 lands, which is Karsten's midrange row.
- **Read against Turbo Xerox** (`01-turbo-xerox-1997-06-27.md`). Karsten's special-case list deliberately
  **excludes** cheap card selection from the land count — Serum Visions is "not a land" in his data — which
  is precisely the substitution Comer's archetype exploits. Karsten acknowledges the tension himself:
  cantrips "could easily count as half a land or one-third of a land," and Vieren's 24-land deck is
  "closer to a 27-land deck" thanks to cyclers. **Use Karsten for the baseline, then subtract for
  selection.**
- **The colored-source question is a separate article.** This one covers *how many lands*; the companion
  tables on *how many sources of each color* are what the Block 3 calculator implements.

## Source

Frank Karsten, "How Many Lands Do You Need to Consistently Hit Your Land Drops?", ChannelFireball,
May 30, 2017. Retrieved 2026-08-30 as an 11-page PDF from
<https://orkerhulen.dk/onewebmedia/How%20Many%20Lands%20Do%20You%20Need%20to%20Consistently%20Hit%20Your%20Land%20Drops.pdf>

*The PDF triggers a browser download rather than rendering, and its tables lose column alignment under
text extraction. The tables reproduced above were re-aligned and verified against Karsten's own worked
figures in the surrounding prose.*
