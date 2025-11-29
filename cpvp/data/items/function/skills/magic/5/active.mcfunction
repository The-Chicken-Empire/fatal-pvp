
tag @s add magic5
execute at @s run playsound block.iron_door.open player @s ~ ~ ~ 1 1 1 
execute at @s run summon marker ~ ~ ~ {Tags:["skillmarker","magic5"]}
execute as @e[type=marker,tag=magic5,limit=1,sort=nearest,tag=!tagged] run scoreboard players operation @s owner = @a[tag=magic5,limit=1] playerdata
execute as @e[type=marker,tag=magic5,limit=1,sort=nearest] run tag @s add tagged
tag @s remove magic5
scoreboard players set $ct main 160
function api:ct/mainhand