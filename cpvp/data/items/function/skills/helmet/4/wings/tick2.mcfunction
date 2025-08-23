scoreboard players add @s counter 3
execute if score @s counter matches 360.. run scoreboard players set @s counter 0
execute store result storage api: sankaku.theta float 1 run scoreboard players get @s counter
function api:sankaku/
data modify storage tmp: tmp set value {axis:[0f,1f,0f],angle:0f}

execute store result score @s counter2 run data get storage api: sankaku.sin 10000
scoreboard players remove @s counter2 5000
execute store result storage tmp: tmp.angle float 0.00002617 run scoreboard players get @s counter2
execute on passengers if entity @s[tag=seraph_feather_r] run data modify entity @s transformation.right_rotation set from storage tmp: tmp
data modify storage tmp: tmp.axis[1] set value -1f
execute on passengers if entity @s[tag=seraph_feather_l] run data modify entity @s transformation.right_rotation set from storage tmp: tmp
data remove storage tmp: tmp
