## Information 

A WIP fork of pokecrystal designed to restore and localize Mobile Adapter functionality such as online battles and trades to Crystal using disassembled code from the Japanese ROM designed for use with Mobile System recreation projects like the REON Project.

This repository is built upon a substantial amount of work done by Sudel-Matze.

A link to Matze’s repository can be found here:
https://github.com/Sudel-Matze/pokecrystal

## Screenshots

![image](https://user-images.githubusercontent.com/110418063/188284868-5d25cf63-ec57-4780-b6d0-8b7ff90e3826.png)
![image](https://user-images.githubusercontent.com/110418063/188284842-21fb8827-cb15-4ab4-8b58-d7d58f648b27.png)
![image](https://user-images.githubusercontent.com/110418063/188292476-8756cf49-94a6-403f-8f4a-6808318336a2.png)
![image](https://user-images.githubusercontent.com/110418063/188289240-2f44bbad-1a2e-4cc8-a65a-ef6c444dd766.png)
![image](https://user-images.githubusercontent.com/110418063/188284899-85bfa620-4cf2-4dc3-aac1-e950737ee2aa.png)
![image](https://user-images.githubusercontent.com/110418063/188285866-218d7bcd-5694-42c7-a993-e68635c27229.png)
![image](https://user-images.githubusercontent.com/110418063/188284957-4f1d28f1-8638-45a5-80cd-6cb1919c6e35.png)
![image](https://user-images.githubusercontent.com/110418063/188287374-972fbb3c-df55-4e8b-b974-c9ebcb8c43d7.png)
![image](https://user-images.githubusercontent.com/110418063/188287382-cac22ad1-f3ac-46e8-8b7c-c524460072fc.png)
![image](https://user-images.githubusercontent.com/110418063/188287387-5cd5514c-267c-4fe6-b66f-0a0e36e712e6.png)
![image](https://user-images.githubusercontent.com/110418063/188287421-ff2eedad-1569-4512-8224-d1ee2c5622da.png)
![image](https://user-images.githubusercontent.com/110418063/188289401-f0b79296-f4eb-4463-a8d6-6fb8c605adc1.png)



## Setup [![Build Status][travis-badge]][travis]

An older version of RGBDS is required, we recommend 0.3.8

For more information, please see [INSTALL.md](INSTALL.md)

After setup has been completed, you can choose which version you wish to build.
To build a specific version, run one of these commands inside the repository directory in cygwin64:

- US Version:   `make`

- EUR Version:	`make crystal_eu` 

- AUS Version:	`make crystal_au`

For a more accurate experience, we advising picking the build version based on where you live as this will make different 'address' options available to you which are selectable for personal information.

The US Version covers the United States and Canada.

The EUR Version covers all countries in Europe (as of 2001).

The AUS Version covers Australia and New Zealand.

If you're looking for other languages, you can find them here: (https://github.com/pokecrystal-mobile)

But please note that they still require a lot of polish.

## Using Mobile Adapter Features

To take advantage of the Mobile Adapter features, we currently recommend the GameBoy Emulator BGB:
https://bgb.bircd.org/

and libmobile-bgb:
https://github.com/REONTeam/libmobile-bgb/releases

Simply open BGB, right click the ‘screen’ and select `Link > Listen`, then accept the port it provides by clicking `OK`.
Once done, run the latest version of libmobile for your operating system (`mobile-windows.exe` or windows and `mobile-linux` for linux).
Now right click the ‘screen’ on BGB again and select `Load ROM…`, then choose the pokecrystal-mobile `.gbc` file you have built.

## To-Do

- Finish restrictions on Pokémon names in EZ Chat Menu.

## Contributors

- Pret           : Initial disassembly
- Matze          : Mobile Restoration & Japanese Code Disassembly
- Damien         : Code
- DS             : GFX & Code
- Ryuzac         : Code & Japanese Translation
- Zumilsawhat?   : Code (Large amounts of work on the EZ Chat system)
- Arves          : Italian Mobile Translation
- Federx         : Italian Mobile Translation
- FerozElMejor   : Spanish Mobile Translation
- FrenchOrange   : French Mobile Translation
- Lesserkuma     : German Mobile Translation
- Muffet         : German Mobile Translation
- REON Community : Support and Assistance

[travis]: https://travis-ci.org/pret/pokecrystal
[travis-badge]: https://travis-ci.org/pret/pokecrystal.svg?branch=master
