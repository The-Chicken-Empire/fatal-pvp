tag @s add w5marker-2
execute as @e[tag=weapon5] if score @s playerdata = @e[tag=w5marker-2,limit=1] owner run tag @s add weapon5-2
execute at @s run tp @s @e[tag=weapon5-2,limit=1]
execute store result entity @s Rotation[0] float 1 run data get entity @e[tag=weapon5-2,limit=1] Rotation[0]
execute at @s run tp @s ~ ~ ~ ~135 0
execute at @s run function items:skills/weapon/5/particles
tag @e[tag=weapon5-2] remove weapon5
tag @e[tag=weapon5-2] remove weapon5-2
playsound minecraft:entity.ender_dragon.flap hostile @a ~ ~ ~ 2 0.9
playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ 1 0
kill @s