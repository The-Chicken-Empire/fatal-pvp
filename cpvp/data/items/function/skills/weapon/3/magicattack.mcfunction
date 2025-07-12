tag @e[tag=victim] add magicdamagetmp
scoreboard players remove @s weapon3-2 1

execute if score @s weapon3-2 matches 1..4 at @s run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 2 1
execute if score @s weapon3-2 matches 0 at @s run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0.5 1
execute if score @s weapon3-2 matches 0 run function items:skills/weapon/3/unmagic