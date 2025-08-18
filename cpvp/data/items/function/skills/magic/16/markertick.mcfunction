tag @s add magic16tmp2
execute if score @s skills matches 1190 summon item_display run function items:skills/magic/16/summonitemdisplay2
execute if score @s skills matches 1200 run function items:skills/magic/16/explode
tag @s remove magic16tmp2
execute if score @s skills matches 1201 run kill @s