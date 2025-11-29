#mp消費
scoreboard players operation @s mp -= @s mpcost
#演出
execute at @s run playsound minecraft:block.bell.use block @a ~ ~ ~ 3 1.4
execute at @s run playsound minecraft:block.bell.resonate block @a ~ ~ ~ 3 1.3
execute at @s run particle dust{color:0,scale:4} ~ ~ ~ 10 10 10 0 3000 force @a[distance=..40]
#デバフ
tag @s add buffer
function effects:system/modify/ {id:18,duration:300,level:1}

tag @s add buffer
execute at @s as @e[tag=playing,distance=..20] run function effects:system/gain/ {id:52,duration:300,level:1}
#ct
scoreboard players set $ct main 600
function api:ct/mainhand