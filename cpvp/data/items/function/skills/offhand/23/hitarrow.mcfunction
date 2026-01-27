execute at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 2 1
execute at @s run particle minecraft:happy_villager ~ ~2 ~ 0.2 0 0.2 0 10
tag @s add buffer
function effects:system/gain/ {id:1,duration:100,level:2}
tag @s add buffer
function effects:system/gain/ {id:43,duration:100,level:1}