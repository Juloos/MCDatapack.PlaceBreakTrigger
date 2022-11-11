# MCDatapack.PlaceBreakTrigger
A Minecraft 1.19 Datapack which allows players to disable their block placement or destruction

# Installation
See [this tutorial](https://minecraft.fandom.com/wiki/Tutorials/Installing_a_data_pack) for installing the datapack to your minecraft world.

# Ingame functions
Use

    /function trigger:placing

And

    /function trigger:breaking

To respectively trigger the block placement or the block breaking of target, a target can have at most 1 activated trigger (both triggered would simply be equivalent to adventure gamemode).

# Technical details
Having a trigger ON simply put the target player in Adventure gamemode when Survival is detected, and fill all its holding items NBT `CanDestroy:[...]` and `CanPlaceOn:[...]` with either all the blocks of the game or None depending of the activated trigger. The datapack also checks for items on the ground and change them the same way according to the nearest player, this check allows for items to stack in the inventory of players since similar items would have different NBT if not so.

Note that this method of deactivating the block placement or breaking of a player does not involve the empty hand (and so a placing-disabled player would need to find an item to use it for destroying blocks).
