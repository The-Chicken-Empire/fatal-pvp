scoreboard players remove @s magic12-2 1

execute at @s run tp ~ ~-0.1 ~
execute at @s positioned ~ ~-2 ~ unless block ~ ~ ~ #air run playsound item.trident.hit_ground block @a ~ ~ ~ 1 0.8 1
execute at @s positioned ~ ~-2 ~ unless block ~ ~ ~ #air run tag @s add stop
execute at @s positioned ~ ~-2 ~ unless block ~ ~ ~ #air run scoreboard players set @s magic12-2 0
#hit
tag @s add magic12tmp2
execute at @s positioned ~-0.8 ~-2 ~-0.8 as @a[dx=1,dy=2.5,dz=1] positioned ~0.6 ~ ~0.6 if entity @s[dx=1,dy=2.5,dz=1] run function items:skills/magic/12/check
tag @s remove magic12tmp2

execute if score @s magic12-2 matches 1.. run function items:skills/magic/12/move2