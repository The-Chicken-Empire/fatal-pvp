scoreboard players operation @s mp -= @s mpcost
tag @s add magic11tmp
#marker召喚
execute at @s anchored eyes positioned ^ ^ ^ summon marker run function items:skills/magic/11/summonmarker
execute at @s run playsound entity.warden.heartbeat block @a ~ ~ ~ 1 0.9 1
execute at @s run playsound entity.warden.heartbeat block @a ~ ~ ~ 1 0.9 1
execute at @s run playsound entity.warden.heartbeat block @a ~ ~ ~ 1 0.9 1

tag @s remove magic11tmp
scoreboard players set $ct main 200
function api:ct/mainhand