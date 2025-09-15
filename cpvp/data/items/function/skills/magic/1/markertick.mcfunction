tag @s add magic1tmp2
execute if score @s skills matches ..5 at @s run tp @s ~ ~ ~ ~10 ~
execute if score @s skills matches 5..10 at @s run tp @s ~ ~ ~ ~15 ~
execute if score @s skills matches 10.. at @s run tp @s ~ ~ ~ ~25 ~

execute if score @s skills matches 20 at @s summon item_display run function items:skills/magic/1/summonitemdisplay2

execute if score @s skills matches 45 run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0f,0f,3f],left_rotation:[1f,0f,0f,1f],translation:[0f,0f,0f]}
tag @s remove magic1tmp2
execute if score @s skills matches 60.. run kill @s