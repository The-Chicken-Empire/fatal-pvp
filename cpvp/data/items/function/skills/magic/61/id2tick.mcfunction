tag @s add m61id2tmp

execute if score @s skills matches 2 run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[1.5f,3f,1.5f],left_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f]}
execute if score @s skills matches 6 run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0f,3f,0f],left_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f]}
execute if score @s skills matches 6 run function items:skills/magic/61/hitcheck
execute if score @s skills matches 10 run kill @s

tag @s remove m61id2tmp