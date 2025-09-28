execute unless score @s perk29 matches 77.. run return fail

scoreboard players remove @s perk29 77
scoreboard players operation @s damagetaken /= $10 main

execute at @s run playsound item.totem.use player @a[distance=..10] ~ ~ ~ 1 2 0
execute at @s run particle enchanted_hit ~ ~1 ~ 0.4 0.6 0.4 0.15 25 normal