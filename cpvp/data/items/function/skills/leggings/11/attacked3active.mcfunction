execute as @e[tag=atker,limit=1] run function effects:system/pick/ {id:40}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute if score $tmp tmp matches 2 run return run scoreboard players reset $tmp tmp

tag @s add buffer
execute as @e[tag=atker,limit=1] run function effects:system/gain/ {id:40,level:1,duration:60}
execute as @e[tag=atker,limit=1] at @s run playsound entity.blaze.shoot hostile @a ~ ~ ~ 0.8 0.8 0
execute as @e[tag=atker,limit=1] at @s run particle small_flame ~ ~1 ~ 0 0.6 0 0.08 6