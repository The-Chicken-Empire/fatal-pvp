scoreboard players operation @s mp -= @s mpcost
execute at @s run playsound entity.snowball.throw player @a[distance=..10] ~ ~ ~ 1 0.9 0
execute at @s anchored eyes positioned ^ ^ ^ summon item_display run function items:skills/magic/26/summonitemdisplay

scoreboard players set $ct main 140
function api:ct/mainhand