
tag @s add magic9tmp

execute at @s run playsound entity.puffer_fish.blow_out player @a ~ ~ ~ 1 1 0
execute at @s run playsound block.conduit.activate player @a ~ ~ ~ 1 2 0

execute at @s summon item_display run function items:skills/magic/9/summonitemdisplay

tag @s remove magic9tmp
scoreboard players set $ct main 440
function api:ct/mainhand