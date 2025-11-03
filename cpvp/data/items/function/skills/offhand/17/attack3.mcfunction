execute unless entity @e[tag=meleevictim,tag=victim] run return fail

tag @s add buffer

scoreboard players set $tmp tmp 0
execute as @e[tag=victim] run function effects:system/pick/ {id:17}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute if score $tmp tmp matches 1.. run return run function items:skills/offhand/17/alr
scoreboard players reset $tmp tmp


execute as @e[tag=victim] run function effects:system/gain/ {id:17,level:2,duration:60}

execute as @e[tag=victim] at @s run playsound entity.wither.ambient hostile @s ~ ~ ~ 1 1.3 1

particle dust{color:1,scale:1} ~ ~1 ~ 0.3 0.6 0.3 0 35