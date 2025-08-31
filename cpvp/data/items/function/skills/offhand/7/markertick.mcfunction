tag @s add offhand7tmp5

execute at @s run tp @s ~ ~ ~ ~-5 ~

execute if score @s skills matches 10 run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[2f,2f,2f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}

execute if score @s skills matches 40 run function items:skills/offhand/7/active2
execute if score @s skills matches 80 run function items:skills/offhand/7/active2
execute if score @s skills matches 120 run function items:skills/offhand/7/active2
execute if score @s skills matches 160 run function items:skills/offhand/7/active2
execute if score @s skills matches 200 run function items:skills/offhand/7/active2
execute if score @s skills matches 240 run function items:skills/offhand/7/active2
execute if score @s skills matches 280 run function items:skills/offhand/7/active2


execute if score @s skills matches 300 run kill @s
tag @s remove offhand7tmp5