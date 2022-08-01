WIP Pokemon Crystal mobile restoration and localization. Built on Matze's substantial work 
restoring mobile functionality to Pokemon Crystal using code disassembled from the Japanese ROM.

Matze's original project can be found here: https://github.com/Sudel-Matze/pokecrystal

Old version of RGBDS required, 0.3.8 should work.

Primary To-Do List:
- Adjust Easy Chat to function with other languages.
 - Requires trimming word count from 6 to 4 and increasing word length from 5 to 8.
- Graphical changes to accomodate other languages.
- Some languages could have minor bugs.
- Testing is needed from native speakers of other languages, preferably anyone able to assess issues in assembly.

To use this properly with an already existing save file for normal Crystal:
- let the emulator create a new save for this mod, start a new game and save once you can
- open your normal Crystal save and the newly created one in a hex editor and replace the first 0x8000 bytes of the new save with the first 0x8000 bytes of your normal Crystal save

# Pokémon Crystal [![Build Status][ci-badge]][ci]

This is a disassembly of Pokémon Crystal.

It builds the following ROMs:

- Pokemon - Crystal Version (UE) (V1.0) [C][!].gbc `sha1: f4cd194bdee0d04ca4eac29e09b8e4e9d818c133`
- Pokemon - Crystal Version (UE) (V1.1) [C][!].gbc `sha1: f2f52230b536214ef7c9924f483392993e226cfb`
- Pokemon - Crystal Version (A) [C][!].gbc `sha1: a0fc810f1d4e124434f7be2c989ab5b5892ddf36`
- CRYSTAL_ps3_010328d.bin `sha1: c60d57a24bbe8ecf7cba54ab3f90669f97bd330d`
- CRYSTAL_ps3_us_revise_010710d.bin `sha1: 391ae86b1d5a26db712ffe6c28bbf2a1f804c3c4`
- CGBBYTE1.784.patch `sha1: a25517f60ca0e887d39ec698aa56a0040532a4b3`

To set up the repository, see [INSTALL.md](INSTALL.md).


## See also

- [**FAQ**](FAQ.md)
- [**Documentation**][docs]
- [**Wiki**][wiki] (includes [tutorials][tutorials])
- [**Symbols**][symbols]
- **Discord:** [pret][discord]
- **IRC:** [libera#pret][irc]

Other disassembly projects:

- [**Pokémon Red/Blue**][pokered]
- [**Pokémon Yellow**][pokeyellow]
- [**Pokémon Gold/Silver**][pokegold]
- [**Pokémon Pinball**][pokepinball]
- [**Pokémon TCG**][poketcg]
- [**Pokémon Ruby**][pokeruby]
- [**Pokémon FireRed**][pokefirered]
- [**Pokémon Emerald**][pokeemerald]

[pokered]: https://github.com/pret/pokered
[pokeyellow]: https://github.com/pret/pokeyellow
[pokegold]: https://github.com/pret/pokegold
[pokepinball]: https://github.com/pret/pokepinball
[poketcg]: https://github.com/pret/poketcg
[pokeruby]: https://github.com/pret/pokeruby
[pokefirered]: https://github.com/pret/pokefirered
[pokeemerald]: https://github.com/pret/pokeemerald
[docs]: https://pret.github.io/pokecrystal/
[wiki]: https://github.com/pret/pokecrystal/wiki
[tutorials]: https://github.com/pret/pokecrystal/wiki/Tutorials
[symbols]: https://github.com/pret/pokecrystal/tree/symbols
[discord]: https://discord.gg/d5dubZ3
[irc]: https://web.libera.chat/?#pret
[ci]: https://github.com/pret/pokecrystal/actions
[ci-badge]: https://github.com/pret/pokecrystal/actions/workflows/main.yml/badge.svg

## Primary Contributors

- Matze          : Mobile Restoration & Japanese Code Disassembly

- Darkshade      : Graphics and Project Management
- Ryuzac         : Code and Japanese Translation

- Arves          : Italian Mobile Translation
- Federx         : Italian Mobile Translation
- FerozElMejor   : Spanish Mobile Translation
- FrenchOrange   : French Mobile Translation
- LesserKuma     : German Mobile Translation
- Muffet         : German Mobile Translation

- REON Community : Support and Assistance
