# Flowstate Grill

**Play it:** https://ljtyk.github.io/flowstate-grill/

A short browser game about the flow state line cooks talk about. You run one grill, and a rail of tickets keeps printing. Every cook time lands on the beat of the music, so after a few minutes you stop reading the screen and start cooking by feel.

## How to play

- Tap an ingredient to drop it on the grill.
- When its ring closes, tap it on the beat to flip it, then tap again to plate it. A crackle plays one beat before it's ready, so headphones help.
- Each item has its own move:
  - **Burger:** press on the beat after it lands, hold for one beat, then let go to smash it.
  - **Steak:** after the flip, pull it at the temp the ticket asks for (rare, med or well).
  - **Veg skewer:** has four sides, so turn it, turn it, turn it, then plate it.
  - **Chicken:** tap on the off-beat while it cooks to baste it. Glaze earns a bigger tip.
- Cook times sit on a 2-beat grid. A shrimp is 2 beats a side, a burger 4, a chicken 8. Fire the longest item first so a whole ticket finishes together.
- A 5-minute service builds to a rush and winds down. Tips depend on your timing and speed, and your best take is saved for each heat level.

It works with a mouse or touch. Keys 1–5 also fire the ingredient bins.

## Files

- `grill.html` is the game, a single self-contained file.
- `index.html` is the page GitHub Pages serves. It's built from `grill.html` by running `sh build.sh`.
