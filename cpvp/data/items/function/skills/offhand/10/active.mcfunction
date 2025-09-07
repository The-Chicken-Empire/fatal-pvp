execute at @s run playsound entity.wither.death hostile @a ~ ~ ~ 1 1.5 0
function effects:system/gain/ {id:24,level:1,duration:400}

scoreboard players set $ct main 3000
function api:ct/offhand