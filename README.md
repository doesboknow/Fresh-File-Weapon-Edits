# Fresh File Weapon Edits

Features:

This mod offers the following options for any save:
- Unlock all weapons
- Unlock all aspects
- Unlock all hidden aspects

This mod also offers the following options for a fresh file:
- Choose starting weapon

Requirements:
- the latest version of ModUtil ([GitHub](https://github.com/SGG-Modding/ModUtil) for latest, [Nexus](https://www.nexusmods.com/hades/mods/27) for convenience)
- the latest version of Mod Importer ([GitHub](https://github.com/SGG-Modding/ModImporter) for latest, [Nexus](https://www.nexusmods.com/hades/mods/26) for convenience)

How to Install (similar process to all Mod Importer & ModUtil mods):

- Unzip/extract the zipped folder(s), there should be a regular, unzipped "FFWeaponEdits" folder if done correctly.
- Copy/move the entire "FFWeaponEdits" folder inside the "Content/Mods" folder set up using Mod Importer.
- The entire mod can be enabled & disabled without rerunning Mod Importer by opening "FFWeaponEdits/FFWeaponEdits.lua" in Notepad or other applications, and changing the "ModEnabled" variable between true and false.

How to Use:

- in the "local config" table, set values to true or false based on what you want enabled.
- In the case of StartingWeapon, make sure to use the exact notation as I have there by default ("SwordWeapon", "SpearWeapon", etc.)

Bugs/Issues:

- Animations still have to play out for interacting with your first "different" weapon, unlocking each hidden aspect, etc.
- Compatibility with other mods is not a priority.

This is largely to assist with [Polycosmos](https://github.com/NaixGames/Polycosmos), a mod used to enable Hades to be used in [Archipelago](https://archipelago.gg/) multi-worlds, specifically if "Reverse Heat" is selected. Reverse Heat mode in Hades Archipelago starts you at a specified Pact of Punishment (up to 64 Heat), and as you complete maximum chambers (or play enough of the game), pact levels get removed. This means if you removed the first Extreme Measures Pact, you'd actually be at Extreme Measures 3, which doesn't really help if you're less than 25% of the way through your run...unless you use this mod.

Credits:
- the [Hades modding Discord server](https://discord.gg/AgFukwCK7K) for technical help & resources
- [PonyWarrior](https://github.com/PonyWarrior) for PonyQOL (contained code to unlock hidden aspects)
- [NaixGames](https://github.com/NaixGames) for creating Polycosmos
- The [Archipelago Discord server](https://discord.gg/archipelago) for feedback/ideas
