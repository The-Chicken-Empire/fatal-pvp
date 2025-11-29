
tag @s add magic13tmp

#itemdisplay召喚
execute at @s summon item_display run function items:skills/magic/13/summonitemdisplay
execute at @s run playsound entity.arrow.shoot player @s ~ ~ ~ 1 2 1

tag @s remove magic13tmp
scoreboard players set $ct main 260
function api:ct/mainhand