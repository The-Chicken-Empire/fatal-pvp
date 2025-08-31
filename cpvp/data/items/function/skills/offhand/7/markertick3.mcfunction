execute at @s run tp @s ~ ~ ~ ~3 ~

execute if score @s skills matches 10 run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[30f,1f,30f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}

execute if score @s skills matches 300 run kill @s