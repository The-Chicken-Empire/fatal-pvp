execute as @e[tag=victim,limit=1] run function effects:system/pick/ {id:47}
scoreboard players set $tmp tmp 0
execute store result score $tmp tmp run data get storage effect: targeteffect.level

execute if score $tmp tmp matches 1.. run return run scoreboard players reset $tmp tmp


execute as @e[tag=victim,limit=1] run function effects:system/pick/ {id:46}
scoreboard players set $tmp tmp 0
execute store result score $tmp tmp run data get storage effect: targeteffect.level
 scoreboard players operation $tmp2 tmp = @e[tag=victim,limit=1] damagetaken
 scoreboard players operation $tmp2 tmp *= $3 main
scoreboard players operation $tmp2 tmp /= $2 main
scoreboard players operation $tmp2 tmp /= $10 main

scoreboard players operation $tmp tmp += $tmp2 tmp

execute store result storage cpvp:effect46 level int 1 run scoreboard players get $tmp tmp

tag @s add buffer
execute as @e[tag=victim,limit=1] run function effects:system/gain/ with storage cpvp:effect46
execute as @e[tag=victim,limit=1] at @s run playsound entity.blaze.shoot hostile @a ~ ~ ~ 0.6 1.2 0
execute as @e[tag=victim,limit=1] at @s run particle small_flame ~ ~1 ~ 0 0.6 0 0.06 4

data remove storage cpvp:effect46 level
scoreboard players reset $tmp tmp
scoreboard players reset $tmp2 tmp