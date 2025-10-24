execute as @e[tag=atker,limit=1] run function effects:system/pick/ {id:47}
scoreboard players set $tmp tmp 0
execute store result score $tmp tmp run data get storage effect: targeteffect.level

execute unless score $tmp tmp matches 1.. run return run scoreboard players reset $tmp tmp

execute at @s run playsound entity.iron_golem.repair neutral @a ~ ~ ~ 1 1.5 0
execute at @s run particle enchanted_hit ~ ~1 ~ 0.2 0 0.2 0.1 12 normal
scoreboard players operation @s damagetaken /= $2 main
scoreboard players reset $tmp tmp