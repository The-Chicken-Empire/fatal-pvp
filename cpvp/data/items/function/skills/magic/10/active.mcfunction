scoreboard players operation @s mp -= @s mpcost
tag @s add magic10player

execute summon item_display run function items:skills/magic/10/itemdisplay
execute at @s run playsound entity.wither.spawn hostile @s ~ ~ ~ 1 1.5 1
execute at @s run playsound entity.warden.sonic_boom hostile @s ~ ~ ~ 1 1.5 1

tag @s remove magic10player
scoreboard players set $ct main 400
function api:ct/mainhand