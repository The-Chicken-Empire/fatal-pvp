tag @s add w5.2marker-2
execute as @e[tag=weapon5.2] if score @s playerdata = @e[tag=w5.2marker-2,limit=1] owner run tag @s add weapon5.2-2
execute at @s run tp @s @e[tag=weapon5.2-2,limit=1]
execute store result entity @s Rotation[0] float 1 run data get entity @e[tag=weapon5.2-2,limit=1] Rotation[0]
execute at @s run tp @s ~ ~ ~ ~135 0
execute as @e[tag=w5.2trail] if score @s owner = @e[tag=w5.2marker-2,limit=1] owner at @s run function items:skills/weapon/5/trailactivate
execute at @s run function items:skills/weapon/5/particles2
execute as @e[tag=weapon5.2] if score @s playerdata = @e[tag=w5.2marker-2,limit=1] owner run tp @s @s
tag @e[tag=weapon5.2-2] remove weapon5.2
tag @e[tag=weapon5.2-2] remove weapon5.2-2
execute at @s run playsound minecraft:entity.ender_dragon.flap hostile @a ~ ~ ~ 2 0.9
execute at @s run playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ 1 1
execute at @s run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 2 1.5
kill @s