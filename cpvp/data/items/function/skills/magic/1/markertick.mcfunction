tag @s add magic1tmp2
execute if score @s skills matches ..5 at @s run tp @s ~ ~ ~ ~10 ~
execute if score @s skills matches 5..10 at @s run tp @s ~ ~ ~ ~25 ~
execute if score @s skills matches 10.. at @s run tp @s ~ ~ ~ ~40 ~

execute if score @s skills matches 20 at @s summon item_display run function items:skills/magic/1/summonitemdisplay2
execute if score @s skills matches 20 at @s summon item_display run function items:skills/magic/1/summonitemdisplay3

tag @s remove magic1tmp2
execute if score @s skills matches 60.. run kill @s