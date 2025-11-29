data modify storage cpvp:stats_modifier input.add_modifier set value {id:"weapon10", stats: "maxhp", type: "add", duration:600}
scoreboard players set $tmpw10 tmp 0
scoreboard players operation $tmpw10 tmp -= $tmp getdamage

scoreboard players set $tmpw10-2 tmp 0
execute as @a[tag=victim,limit=1] run function effects:system/pick/ {id:44}
execute store result score $tmpw10-2 tmp run data get storage effect: targeteffect.level
execute if score $tmpw10-2 tmp matches 0 run scoreboard players operation $tmpw10 tmp /= $2 main

execute store result storage cpvp:stats_modifier input.add_modifier.value int 1 run scoreboard players get $tmpw10 tmp

execute as @a[tag=victim,limit=1] run function system:stats_modifier/add_modifier

execute as @a[tag=victim,limit=1] at @s run playsound entity.ender_dragon.hurt hostile @a ~ ~ ~ 1 0.7 0
execute as @a[tag=victim,limit=1] at @s run particle soul ~ ~1 ~ 0 0 0 0.1 5 normal

execute if score $tmpw10-2 tmp matches 1.. as @a[tag=victim,limit=1] at @s run particle damage_indicator ~ ~0.5 ~ 0.2 0 0.2 0.3 10 normal

scoreboard players reset $tmpw10-2 tmp
scoreboard players reset $tmpw10 tmp