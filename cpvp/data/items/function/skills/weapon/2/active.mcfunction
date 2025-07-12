scoreboard players operation @e[tag=victim] damagetaken *= $3 main
execute as @e[tag=victim] at @s run playsound item.mace.smash_air player @a ~ ~ ~ 1 1 1
execute as @e[tag=victim] at @s run playsound item.mace.smash_air player @a ~ ~ ~ 1 1 1
execute as @e[tag=victim] at @s run particle block{block_state:redstone_block} ~ ~1 ~ 0.2 0.2 0.2 1 20 normal