tag @s add magic43tmp4

execute if score @s skills matches 2 run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[6.2f,6.2f,6.2f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}
execute if score @s skills matches 6 at @s run function items:skills/magic/43/hitcheck
execute if score @s skills matches 7 run kill @s

tag @s remove magic43tmp4e