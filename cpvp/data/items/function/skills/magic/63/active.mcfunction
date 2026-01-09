tag @s add buffer
function effects:system/gain/ {id:55,level:1,duration:200}
tag @s add buffer
function effects:system/gain/ {id:14,level:7,duration:400}

execute at @s run playsound entity.ender_dragon.growl hostile @a ~ ~1 ~ 1 0.8 0
execute at @s run particle flame ~ ~1 ~ 0 0 0 0.8 10
execute at @s run particle soul_fire_flame ~ ~1 ~ 0 0 0 0.6 10
execute at @s run particle soul_fire_flame ~ ~1 ~ 0 0 0 0.7 10
execute at @s run particle white_smoke ~ ~1 ~ 0 0 0 0.7 10
#ct
scoreboard players set $ct main 900
function api:ct/mainhand