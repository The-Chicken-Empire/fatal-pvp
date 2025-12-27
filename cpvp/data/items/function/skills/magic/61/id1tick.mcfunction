tag @s add m61id1tmp
execute at @s run tp @s ~ ~ ~ ~4 ~ 
execute if score @s skills matches 24 at @s summon item_display run function items:skills/magic/61/summonid2

execute if score @s skills matches 35 run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0f,0.1f,0f],left_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f]}
execute if score @s skills matches 40 run kill @s
tag @s remove m61id1tmp