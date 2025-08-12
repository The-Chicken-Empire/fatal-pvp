tag @s add cp3tmp3

#execute if score @s skills matches 3 run function items:skills/chestplate/3/pos
execute if score @s skills matches 10 run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[1.5f,1.5f,0.3f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}
execute if score @s skills matches 20 at @s summon item_display run function items:skills/chestplate/3/summonitemdisplay2
execute if score @s skills matches 30 run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0.3f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}

tag @s remove cp3tmp3
execute if score @s skills matches 60 run kill @s
