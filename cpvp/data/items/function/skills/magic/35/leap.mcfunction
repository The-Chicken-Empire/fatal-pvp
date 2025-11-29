

execute at @s run playsound entity.spider.ambient block @s ~ ~ ~ 1 0.9 1
function api:motion/rotation {power:20}
tag @s add buffer
function effects:system/gain/ {id:1,level:2,duration:240}

scoreboard players set $ct main 480
function api:ct/mainhand