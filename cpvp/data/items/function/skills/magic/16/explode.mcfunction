execute at @s run playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 1 0 1
execute at @s run playsound minecraft:item.mace.smash_ground_heavy player @a ~ ~ ~ 1 0 1
execute at @s run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 0 1

execute at @s run particle explosion ~ ~ ~ 2 2 2 0.3 30 normal
execute at @s run particle smoke ~ ~ ~ 2 2 2 0.3 30 normal

execute as @e[tag=playing,distance=..10] run function items:skills/magic/16/hit