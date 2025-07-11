
scoreboard players operation @s attackerdata = @e[tag=leggings1hit,limit=1] owner
scoreboard players operation @s damagetaken = @e[tag=leggings1hit,limit=1] leggings1damage
execute at @s run playsound entity.guardian.attack hostile @s ~ ~ ~ 1. 1.3 1
execute at @s run particle block{block_state:prismarine} ~ ~1 ~ 0.3 0.3 0.3 1 25 normal @a
tag @s add specialdamage
tag @s add rangedamage
function damage:atkercheck