scoreboard players operation @s damagetaken -= @s mp
scoreboard players set @s mp 0
scoreboard players operation @s damagetaken *= $2 main

execute at @s run playsound item.mace.smash_ground player @s ~ ~ ~ 1 1 1