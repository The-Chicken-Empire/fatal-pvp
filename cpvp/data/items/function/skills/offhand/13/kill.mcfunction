
scoreboard players set $tmp tmp 0
tag @s add offhand13kill
execute at @s as @a[distance=..10] unless score @s teamscore = @a[tag=offhand13kill,limit=1] teamscore run function items:skills/offhand/13/killaura
tag @s remove offhand13kill
execute at @s run playsound entity.generic.explode block @a ~ ~ ~ 1 0.6 0
execute at @s run playsound entity.ender_dragon.growl hostile @a ~ ~ ~ 1 0.6 0
execute at @s run playsound entity.ender_dragon.growl hostile @a ~ ~ ~ 1 0.6 0
execute at @s run particle explosion ~ ~1 ~ 1.4 0.5 1.4 0.1 20 normal
execute at @s run particle lava ~ ~ ~ 0 0 0 1 25 normal
execute at @s run particle flame ~ ~1 ~ 0.2 0.4 0.2 0.8 30 normal