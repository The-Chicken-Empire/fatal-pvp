execute at @e[tag=victim,limit=1] run playsound block.glass.break block @s ~ ~ ~ 1 2 1
execute as @e[tag=victim,limit=1] run function effects:system/gain/ {id:27,level:3,duration:200}