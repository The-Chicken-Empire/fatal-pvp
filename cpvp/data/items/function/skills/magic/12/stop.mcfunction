scoreboard players add @s magic12 1

#hit
tag @s add magic12tmp2
execute at @s positioned ~-0.8 ~-2 ~-0.8 as @e[dx=1,dy=2.5,dz=1,tag=playing] positioned ~0.6 ~ ~0.6 if entity @s[dx=1,dy=2.5,dz=1] run function items:skills/magic/12/check
tag @s remove magic12tmp2
execute at @s run particle flame ~ ~ ~ 0 1 0 0.2 2
execute at @s run particle soul_fire_flame ~ ~ ~ 0 1 0 0.2 2
execute if score @s magic12 matches 30.. run kill @s