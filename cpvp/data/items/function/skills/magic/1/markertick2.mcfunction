tag @s add magic1tmp3

execute if score @s skills matches 2 run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[5f,20f,5f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}
execute if score @s skills matches 4 at @s positioned ~ ~-10 ~ run function items:skills/magic/1/hitcheck
execute if score @s skills matches 20 run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0f,20f,0f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}


tag @s remove magic1tmp3
execute if score @s skills matches 30.. run kill @s