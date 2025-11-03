execute as @e[tag=victim] run function effects:system/modify/ {id:17,level:0,duration:60}

execute as @e[tag=victim] at @s run playsound entity.wither.ambient hostile @s ~ ~ ~ 1 1.3 1

particle dust{color:1,scale:1} ~ ~1 ~ 0.3 0.6 0.3 0 35

scoreboard players reset $tmp tmp