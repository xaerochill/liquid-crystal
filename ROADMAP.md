# FAQ

## Table of Contents

- [What is Liquid Crystal?](#what-is-liquid-crystal)
- [Roadmap](#roadmap)
- [What was changed?](#what-was-changed)
  - [QOL Changes](#qol-changes)
  - [Difficulty Changes](#difficulty-changes)
  - [Other Changes](#other-changes)
- [Fixed Design Flaws](#fixed-design-flaws)
- [Bug Fixes](#bug-fixes)
  - [Multi-Player Battle Engine](#multi-player-battle-engine)
  - [Single-Player Battle Engine](#single-player-battle-engine)
  - [Graphics](#graphics)
  - [Audio](#audio)
  - [Text](#text)
  - [Scripted Events](#scripted-events)
  - [Internal Engine Routines](#internal-engine-routines)

## What is Liquid Crystal?

Liquid Crystal is a branch of pokecrystal with Mobile Adapter Features. It floats somewhere between RBY and HGSS and takes select elements of each generation without breaking compatibility with vanilla GSC. Canon-wise, it takes plays after the [Gold, Silver & Crystal chapter](https://bulbapedia.bulbagarden.net/wiki/Gold,_Silver_%26_Crystal_chapter_(Adventures))

## Roadmap
- Remove TM's from Game Corners and Marts
- Make map changes
- Move Pocket PC to BILL's House
- Rework Poké Seer: The 6-bit caught level can only record up to level 63
- Improve the trainer rematch system
- Scaling trainer parties with individual DVs, stat experience & nicknames
- Incorporate mobile features into gameplay
- Restore the GS Ball Celebi Event

## What was changed?

All of the changes are taken from the [pokecrystal wiki](https://github.com/pret/pokecrystal/wiki/Tutorials) unless credited otherwise.

### QOL Changes

- Simplified clock reset by pressing Down and B
- Option for instant text
- Trees give between 3 to 5 berries or apricots and Kurt makes Balls immediately
- Daily lucky number at the lottery
- Removed artificial save delay
- Removed experience gain at level 100
- Show move names when you receive a TM or HM
- Infinitely reusable TM's
- Running shoes available from the start by holding down B
- Prompt to use another repel after the current one ends
- Pocket PC from Elm's aide at the start
- Added Berry Pocket
- Make new battle text to distinguish status move misses and fails

### Difficulty Changes
- Removed Gym Badges Boosts
- Removed 25% failure chance for AI status moves
- Any encountered wild Pokémon (excluding legendaries) may vary up to 0-4 levels

### Other Changes
- Removed redundant Japanese move grammar table
- Removed the Intro
- Use unique colors for each thrown Ball
- Animate tiles even when textboxes are open
- Make overworld sprites darker at night
- Expanded tilesets from 192 to 255 tiles
- Allow tiles to have different attributes in different blocks
- Reduce the command queue system to just stone tables

## Fixed Design Flaws

All of these were fixed as suggested in the [pokecrystal documentation](https://pret.github.io/pokecrystal/design_flaws.html) unless credited otherwise.

- Pic banks are not offset by PICS_FIX anymore
- PokemonPicPointers and UnownPicPointers do not start at the same address anymore
- Footprints are no longer split into top and bottom halves
- Music IDs $64 and $80 or above now have regular behaviour
- Changed Item order so that ITEM_C3 and ITEM_DC no longer break up the continuous sequence of TM items
- Fixing Pokédex entry banks being derived from their species IDs
- Unified sine wave code and data
- Simplified GetForestTreeFrame
- The overworld scripting engine no longer assumes no more than 127 banks

## Bug Fixes

All of the fixes are taken from the [pokecrystal documentation](https://pret.github.io/pokecrystal/bugs_and_glitches.html) unless credited otherwise.

### Multi-Player Battle Engine

Note: these fixes do not break compatibility with vanilla Crystal.

- Moves with a 100% secondary effect chance will not trigger it in 1/256 uses
- Beat Up may fail to raise Substitute (cosmetic)
- HP bar animation is slow for high HP (cosmetic)
- HP bar animation off-by-one error for low HP (cosmetic)

### Single-Player Battle Engine

- A Transformed Pokémon can use Sketch and learn otherwise unobtainable moves
- Catching a Transformed Pokémon always catches a Ditto
- Experience underflow for level 1 Pokémon with Medium-Slow growth rate
- BRN/PSN/PAR do not affect catch rate
- Moon Ball does not boost catch rate
- Love Ball boosts catch rate for the wrong gender
- Fast Ball only boosts catch rate for three Pokémon
- Heavy Ball uses wrong weight value for three Pokémon
- Fast Ball only boosts catch rate for three Pokémon
- PRZ and BRN stat reductions don't apply to switched Pokémon
- Glacier Badge may not boost Special Defense depending on the value of Special Attack
- "Smart" AI:
  - encourages Mean Look if its own Pokémon is badly poisoned
  - discourages Conversion2 after the first turn
  - does not encourage Solar Beam, Flame Wheel, or Moonlight during Sunny Day
- AI:
  - does not discourage Future Sight when it's already been used
  - makes a false assumption about CheckTypeMatchup
  - use of Full Heal or Full Restore does not cure Nightmare status
  - use of Full Heal does not cure confusion status
- Wild Pokémon can always Teleport regardless of level difference
- HELD_CATCH_CHANCE has no effect
- Credits sequence changes move selection menu behaviour
- LoadMetatiles wraps around past 128 blocks
- Surfing directly across a map connection does not load the new map
- Swimming NPCs aren't limited by their movement radius
- You can fish on top of NPCs
- Pokémon deposited in the Day-Care might lose experience

### Graphics
- In-battle “…” ellipsis is too high
- Two tiles in the port tileset are drawn incorrectly
- The Ruins of Alph research center's roof color at night looks wrong
- A hatching Unown egg would not show the right letter
- Using a Park Ball in non-Contest battles has a corrupt animation
- Battle transitions fail to account for the enemy's level

### Audio
- Slot machine payout sound effects cut each other off
- Team Rocket battle music is not used for Executives or Scientists
- No bump noise if standing on tile $3E
- Playing Entei's Pokédex cry can distort Raikou's and Suicune's

### Text
- Five-digit experience gain is printed incorrectly
- Only the first three evolution entries can have Stone compatibility reported correctly
- EVOLVE_STAT can break Stone compatibility reporting
- A "HOF Master!" title for 200 Time Famers is defined but inaccessible

### Scripted Events
- Clair can give TM24 Dragonbreath twice
- Daisy's grooming doesn't always increase happiness
- Magikarp in Lake of Rage are shorter, not longer
- Magikarp length limits have a unit conversion error
- Magikarp lengths can be miscalculated
- CheckOwnMon only checks the first five letters of OT names
- CheckOwnMonAnywhere does not check the Day-Care
- The unused phonecall script command may crash

### Internal Engine Routines
- ScriptCall can overflow wScriptStack and crash
- LoadSpriteGFX does not limit the capacity of UsedSprites
- ChooseWildEncounter doesn't really validate the wild Pokémon species
- TryObjectEvent arbitrary code execution
- ReadObjectEvents overflows into wObjectMasks
- ClearWRAM only clears WRAM bank 1
- BattleAnimCmd_ClearObjs only clears the first 6⅔ objects
- Options menu fails to clear joypad state on initialization
