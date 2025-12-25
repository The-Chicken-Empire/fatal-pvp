execute store result score $m62tmp2 random run random value 0..11

execute if score $m62tmp2 random matches 0 run scoreboard players set $m62tmp3 tmp 0
execute if score $m62tmp2 random matches 1 run scoreboard players set $m62tmp3 tmp 5236
execute if score $m62tmp2 random matches 2 run scoreboard players set $m62tmp3 tmp 10472
execute if score $m62tmp2 random matches 3 run scoreboard players set $m62tmp3 tmp 15707
execute if score $m62tmp2 random matches 4 run scoreboard players set $m62tmp3 tmp 20944
execute if score $m62tmp2 random matches 5 run scoreboard players set $m62tmp3 tmp 26180
execute if score $m62tmp2 random matches 6 run scoreboard players set $m62tmp3 tmp 31415
execute if score $m62tmp2 random matches 7 run scoreboard players set $m62tmp3 tmp 36651
execute if score $m62tmp2 random matches 8 run scoreboard players set $m62tmp3 tmp 41888
execute if score $m62tmp2 random matches 9 run scoreboard players set $m62tmp3 tmp 47124
execute if score $m62tmp2 random matches 10 run scoreboard players set $m62tmp3 tmp 52360
execute if score $m62tmp2 random matches 11 run scoreboard players set $m62tmp3 tmp 57596

execute if score $m62tmp random matches 1 run scoreboard players add $m62tmp3 tmp 436
execute if score $m62tmp random matches 2 run scoreboard players add $m62tmp3 tmp 872
execute if score $m62tmp random matches 3 run scoreboard players add $m62tmp3 tmp 1309
execute if score $m62tmp random matches 4 run scoreboard players add $m62tmp3 tmp 1745
execute if score $m62tmp random matches 5 run scoreboard players add $m62tmp3 tmp 2181
execute if score $m62tmp random matches 6 run scoreboard players add $m62tmp3 tmp 2618
execute if score $m62tmp random matches 7 run scoreboard players add $m62tmp3 tmp 3054
execute if score $m62tmp random matches 8 run scoreboard players add $m62tmp3 tmp 3491
execute if score $m62tmp random matches 9 run scoreboard players add $m62tmp3 tmp 3927
execute if score $m62tmp random matches 10 run scoreboard players add $m62tmp3 tmp 4363
execute if score $m62tmp random matches 11 run scoreboard players add $m62tmp3 tmp 4750

execute store result storage cpvp:magic62 angle float 0.0001 run scoreboard players get $m62tmp3 tmp
scoreboard players reset $m62tmp3 tmp
function items:skills/magic/62/move3 with storage cpvp:magic62
data remove storage cpvp:magic62 angle


#execute if score $m62tmp2 random matches 0 run data modify entity @s transformation set value {right_rotation:{axis:[1f,0f,0f],angle:1.5708f},scale:[3f,3f,3f],left_rotation:{axis:[0f,0f,1f],angle:0f},translation:[0f,1.5f,1.53f]}
#execute if score $m62tmp2 random matches 1 run data modify entity @s transformation set value {right_rotation:{axis:[1f,0f,0f],angle:1.5708f},scale:[3f,3f,3f],left_rotation:{axis:[0f,0f,1f],angle:0.5236f},translation:[0f,1.5f,1.53f]}
#execute if score $m62tmp2 random matches 2 run data modify entity @s transformation set value {right_rotation:{axis:[1f,0f,0f],angle:1.5708f},scale:[3f,3f,3f],left_rotation:{axis:[0f,0f,1f],angle:1.0472f},translation:[0f,1.5f,1.53f]}
#execute if score $m62tmp2 random matches 3 run data modify entity @s transformation set value {right_rotation:{axis:[1f,0f,0f],angle:1.5708f},scale:[3f,3f,3f],left_rotation:{axis:[0f,0f,1f],angle:1.5707f},translation:[0f,1.5f,1.53f]}
#execute if score $m62tmp2 random matches 4 run data modify entity @s transformation set value {right_rotation:{axis:[1f,0f,0f],angle:1.5708f},scale:[3f,3f,3f],left_rotation:{axis:[0f,0f,1f],angle:2.0944f},translation:[0f,1.5f,1.53f]}
#execute if score $m62tmp2 random matches 5 run data modify entity @s transformation set value {right_rotation:{axis:[1f,0f,0f],angle:1.5708f},scale:[3f,3f,3f],left_rotation:{axis:[0f,0f,1f],angle:2.618f},translation:[0f,1.5f,1.53f]}
#execute if score $m62tmp2 random matches 6 run data modify entity @s transformation set value {right_rotation:{axis:[1f,0f,0f],angle:1.5708f},scale:[3f,3f,3f],left_rotation:{axis:[0f,0f,1f],angle:3.1415f},translation:[0f,1.5f,1.53f]}
#execute if score $m62tmp2 random matches 7 run data modify entity @s transformation set value {right_rotation:{axis:[1f,0f,0f],angle:1.5708f},scale:[3f,3f,3f],left_rotation:{axis:[0f,0f,1f],angle:3.6651f},translation:[0f,1.5f,1.53f]}
#execute if score $m62tmp2 random matches 8 run data modify entity @s transformation set value {right_rotation:{axis:[1f,0f,0f],angle:1.5708f},scale:[3f,3f,3f],left_rotation:{axis:[0f,0f,1f],angle:4.1888f},translation:[0f,1.5f,1.53f]}
#execute if score $m62tmp2 random matches 9 run data modify entity @s transformation set value {right_rotation:{axis:[1f,0f,0f],angle:1.5708f},scale:[3f,3f,3f],left_rotation:{axis:[0f,0f,1f],angle:4.7124f},translation:[0f,1.5f,1.53f]}
#execute if score $m62tmp2 random matches 10 run data modify entity @s transformation set value {right_rotation:{axis:[1f,0f,0f],angle:1.5708f},scale:[3f,3f,3f],left_rotation:{axis:[0f,0f,1f],angle:5.236f},translation:[0f,1.5f,1.53f]}
#execute if score $m62tmp2 random matches 11 run data modify entity @s transformation set value {right_rotation:{axis:[1f,0f,0f],angle:1.5708f},scale:[3f,3f,3f],left_rotation:{axis:[0f,0f,1f],angle:5.7596f},translation:[0f,1.5f,1.53f]}
