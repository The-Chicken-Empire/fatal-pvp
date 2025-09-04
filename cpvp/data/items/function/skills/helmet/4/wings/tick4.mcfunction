scoreboard players set @s counter 90

scoreboard players add @s counter2 3000
execute if score @s counter2 matches -3000.. run tag @s remove seraph_wing.sprinting
execute if score @s counter2 matches -3000.. run scoreboard players set @s counter2 5000
data modify storage tmp: tmp set value {axis:[0f,1f,0f],angle:0f}
execute store result storage tmp: tmp.angle float 0.00002617 run scoreboard players get @s counter2
execute on passengers if entity @s[tag=seraph_feather_r] run data modify entity @s transformation.right_rotation set from storage tmp: tmp
data modify storage tmp: tmp.axis[1] set value -1f
execute on passengers if entity @s[tag=seraph_feather_l] run data modify entity @s transformation.right_rotation set from storage tmp: tmp
data remove storage tmp: tmp
