# ROADMAP

## Table of Contents

- [What is Liquid Crystal?](#what-is-liquid-crystal)
- [Game Changes](#game-changes)
- [Map Changes](#map-changes)
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

Liquid Crystal is a branch of pokecrystal with Mobile Adapter Features. In terms of gameplay, it floats somewhere between RBY and HGSS and takes select elements of each generation without breaking compatibility with vanilla GSC. Canon-wise, it takes plays after the [Gold, Silver & Crystal chapter](https://bulbapedia.bulbagarden.net/wiki/Gold,_Silver_%26_Crystal_chapter_(Adventures)).

All Pokémon not pressent in vanilla Crystal are available:
* Bulbasaur: Cerulean City Gift, Viridian Forest
* Charmander: Route 24 Gift, Pokémon Mansion
* Squirtle: Vermilion City Gift, Seafoam Islands
* Vulpix: Pokémon Mansion
* Mankey: Routes 3 - 9, 22, 23, 42
* Primeape: Cerulean Cave
* Omanyte: Fossil
* Kabuto: Fossil
* Articuno: Seafoam Islands
* Zapdos: Power Plant
* Moltres: Victory Road
* Mewtwo: Cerulean Cave
* Mew: Harbour
* Mareep: Routes 32, 42, 43
* Flaaffy: Routes 42, 43
* Girafarig: Route 43
* Remoraid: Route 44

## Game Changes
- [ ] Scaling trainer parties with individual DVs, stat experience & nicknames
- [ ] Wall-to-wall carpeting in your room
- [ ] Items that act like HM field moves: Dive
- [ ] Remove TM's from Game Corners and Marts
- [ ] Add Old Amber, Dome Fossil & Helix Fossil and enable them in engine\events\checkforhiddenitems.asm
- [ ] Move Pocket PC (mention LINK CABLE) to BILL's House in Goldenrod
- [ ] Make [PCNY Event Moves](https://bulbapedia.bulbagarden.net/wiki/List_of_PCNY_event_Pok%C3%A9mon_distributions_(Generation_II)) available
- [ ] Rework [Gift Pokémon](https://bulbapedia.bulbagarden.net/wiki/Gift_Pok%C3%A9mon#Generation_II) to make them more meaningful
- [ ] Make use of the [unused Mew Trade](https://tcrf.net/Pok%C3%A9mon_Yellow/pl#Unused_Trade_Data) from Yellow to give  a Mew that can be transferred to Pokémon Bank (OT GF and ID 22796)
- [ ] Add music that changes at night
- [ ] Decide on 7 mobile phone numbers that will be kept (Bill, Mum and Elm make 10) https://www.serebii.net/crystal/pokegear.shtml
- [ ] Make grinding possible (VS. SEEKER)
- [ ] Incorporate mobile features into gameplay and restore the GS Ball Celebi Event
- [ ] Unify sine wave code and data
- [ ] Customizable Pokédex Colour

## Map Changes

- [x] Cerulean Cave is fully restored and accessible
- [x] Cinnabar Island is resttored: The [Pokémon Lab](https://tcrf.net/Pok%C3%A9mon_Gold_and_Silver/Unused_Maps#Cinnabar_Pok%C3%A9mon_Lab) is revamped and accessible
- [x] Rocket Hideout under Celadon Game Corner is accessible and features the Gen 1 spinner tiles, and the prize room was changed to reflect the [1997 Spaceworld Beta map](https://tcrf.net/Proto:Pok%C3%A9mon_Gold_and_Silver/Spaceworld_1997_Demo/Maps#Celadon_Game_Corner) more closely
- [x] Route 3 contains a dungeon based on the [1997 Spaceworld Beta Mineshaft](https://tcrf.net/Proto:Pok%C3%A9mon_Gold_and_Silver/Spaceworld_1997_Demo/Maps#Mineshaft)
- [x] Route 20 includes a Kanto Lighthouse on the Seafoam Island as seen in [early designs of RBY](https://tcrf.net/Development:Pok%C3%A9mon_Red_and_Blue/Unused_Maps#Exteriors_2). It uses a [1997 Spaceworld Beta Hideout](https://tcrf.net/Proto:Pok%C3%A9mon_Gold_and_Silver/Spaceworld_1997_Demo/Maps#Hideout) as a map
- [x] Silph Co. is fully restored and accessible
- [x] Kanto Power Plant is restored and also contains the [three 1997 Spaceworld Beta lloors](https://tcrf.net/Proto:Pok%C3%A9mon_Gold_and_Silver/Spaceworld_1997_Demo/Maps#Power_Plant), Zapdos' Lair being in B3F
- [x] Kanto Radio Tower moved to Saffron City and expanded based on the [1997 Spaceworld Hideout maps](https://tcrf.net/Proto:Pok%C3%A9mon_Gold_and_Silver/Spaceworld_1997_Demo/Maps#Hideout)
- [x] Lavender Town Pokémon Tower is fully restored and accessible
- [x] [Pewter City Museum of Science](https://tcrf.net/Pok%C3%A9mon_Gold_and_Silver/Unused_Maps#Pewter_City_Museum) is revamped and accessible
- [x] Safari Zone is available via the [unused gate](https://tcrf.net/Pok%C3%A9mon_Gold_and_Silver/Unused_Maps#Safari_Zone_Gate) and contains the [Safari Zone Beta Map](https://tcrf.net/Pok%C3%A9mon_Gold_and_Silver/Unused_Maps#Safari_Zone). As referenced in [unused Red & Blue text](https://tcrf.net/Pok%C3%A9mon_Red_and_Blue/Unused_Text#Safari_Zone), a Silph Manager might be hiding here! The hideout uses the scrapped [Haunted House Map](https://tcrf.net/Pok%C3%A9mon_Gold_and_Silver/Unused_Maps#Haunted_House)
- [x] [Bill's Garden](https://tcrf.net/Development:Pok%C3%A9mon_Red_and_Blue/Unused_Maps#Garden) is not a lie! Look around his house to access it.
- [ ] Make use of [Spaceworld 1997 Demo Pokémon Center](https://tcrf.net/Proto:Pok%C3%A9mon_Gold_and_Silver/Spaceworld_1997_Demo/Maps#Time_Capsule)
- [ ] Make use of rubble sitting on water https://tcrf.net/Pok%C3%A9mon_Red_and_Blue/Unseen_Graphics#Tileset_0A
- [ ] S.S. Anne sunk, Truck and unused [bollards from RB](https://tcrf.net/Pok%C3%A9mon_Red_and_Blue/Unseen_Graphics#Tileset_04) in [Vermilion City Harbour](https://tcrf.net/Pok%C3%A9mon_Red_and_Blue/Unseen_Graphics#Vermilion_City_Harbor)
- [ ] Restore Vermilion City Gym
- [ ] Rework [Underground](https://tcrf.net/Development:Pok%C3%A9mon_Red_and_Blue/Unused_Maps#Interiors_2) and add unused [neon lights](https://tcrf.net/Pok%C3%A9mon_Red_and_Blue/Unseen_Graphics#Tileset_12)
- [ ] Fix Map Boundary Vermilion City/Route 11 with the small bit of land to the right of the pier
- [ ] Fix Map Boundary Route 16/17 going from tree blocks to water blocks
- [ ] Restore the [unused Olivine City house](https://tcrf.net/Pok%C3%A9mon_Gold_and_Silver/Unused_Maps#Olivine_House)
- [ ] Restore the [Celadon Chief House](https://tcrf.net/Pok%C3%A9mon_Gold_and_Silver/Unused_Maps#Celadon_House)
- [ ] Make ue of the [Unknown House](https://tcrf.net/Pok%C3%A9mon_Gold_and_Silver/Unused_Maps#Unknown_House)
- [ ] Make ue of the [Unknown Office](https://tcrf.net/Pok%C3%A9mon_Gold_and_Silver/Unused_Maps#Unknown_Office)
- [ ] Make use of [scrapped Seafoam Islands map](https://tcrf.net/Development:Pok%C3%A9mon_Red_and_Blue/Unused_Maps#Seafoam_Islands)
- [ ] Make use of unused [Burned Tower B2F](https://tcrf.net/Pok%C3%A9mon_Gold_and_Silver/Unused_Maps#Burned_Tower
- [ ] Make use of [Olivine Gym 2F](https://tcrf.net/Pok%C3%A9mon_Gold_and_Silver/Unused_Maps#Olivine_Gym_2F)
- [ ] Use Victory Road Gen 1 Layout
- [ ] Make use of [1997 Spaceworld Beta Slowpoke Well](https://tcrf.net/Proto:Pok%C3%A9mon_Gold_and_Silver/Spaceworld_1997_Demo/Maps#Slowpoke_Well)


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
- Made new battle text to distinguish status move misses and fails
- Correct grammar for plural trainers
- Made evening the fourth time of day
- Option to show shiny colours in Pokédex
- Smashing rocks has a chance to contain items
- Trainers automatically offer their phone number
- Fix the 6-bit Caught Level to record Pokemon > Level 63 by [vulcandth](https://github.com/thegsproj/pokegscrystal/pull/8/commits)
- Improved the Swarm System and adding HG/SS Swarms. OAK'S AIDE triggers a random daily swarm:
  -- Marill: Mt. Mortar
  -- Yanma: Route 35
  -- Dunsparce: Dark Cave
  -- Snubbull: Route 38
  -- Quilfish: Route 32
  -- Remoraid: Route 44

### Difficulty Changes
- Removed Gym Badges Boosts
- Removed 25% failure chance for AI status moves
- Any encountered wild Pokémon (excluding legendaries) may vary up to 0-4 levels

### Other Changes
- Removed redundant Japanese move grammar table
- Removed the Intro
- Used unique colors for each thrown Ball
- Animated tiles even when textboxes are open
- Made overworld sprites darker at night
- Expanded tilesets from 192 to 255 tiles
- Allowed tiles to have different attributes in different blocks
- Allowed more than 15 object_events per map
- Improved the outdoor sprite system
- Reduced the command queue system to just stone tables
- Improved the event initialization system
- Expanded Town Map tileset
- Print text when you lose a trainer battle
- Disable jumping over ledges onto obstacle tiles or NPCs
- Battle Palettes for Different Times of Day

## Fixed Design Flaws

All of these were fixed as suggested in the [pokecrystal documentation](https://pret.github.io/pokecrystal/design_flaws.html) unless credited otherwise.

- Pic banks are not offset by PICS_FIX anymore
- PokemonPicPointers and UnownPicPointers do not start at the same address anymore
- Footprints are no longer split into top and bottom halves
- Music IDs $64 and $80 or above now have regular behaviour
- Changed Item order so that ITEM_C3 and ITEM_DC no longer break up the continuous sequence of TM items
- Fixing Pokédex entry banks being derived from their species IDs
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
