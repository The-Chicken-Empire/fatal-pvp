execute unless entity @e[tag=meleevictim,tag=victim] run return fail

tag @s add buffer
execute as @e[tag=victim] run function effects:system/gain/ {id:17,level:2,duration:60}

execute as @e[tag=victim] at @s run playsound entity.wither.ambient hostile @s ~ ~ ~ 1 1.3 1

particle dust{color:1,scale:1} ~ ~1 ~ 0.3 0.6 0.3 0 35