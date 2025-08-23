data modify entity @s item set value {id:"minecraft:golden_hoe",components:{enchantment_glint_override:false,custom_model_data:{strings:["seraph_spike"]}}}
data modify entity @s teleport_duration set value 1
data modify entity @s interpolation_duration set value 5
data modify entity @s transformation set value {right_rotation:[0.0f,0.707f,0.707f,0f],scale:[1f,1f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.5f]}
tag @s remove seraph_overload_bullet
tag @s add seraph_overload_spike
playsound block.iron_door.open master @a ~ ~ ~ 3 0
execute at @s run tp @s ~ ~ ~ 0 0

execute unless block ~0.1 ~ ~ #main:air at @s run tp @s ~ ~ ~ 90 0
execute unless block ~-0.1 ~ ~ #main:air at @s run tp @s ~ ~ ~ 270 0
execute unless block ~ ~ ~0.1 #main:air at @s run tp @s ~ ~ ~ 180 0
execute unless block ~ ~ ~-0.1 #main:air at @s run tp @s ~ ~ ~ 0 0
execute unless block ~ ~0.1 ~ #main:air at @s run tp @s ~ ~ ~ 0 90
execute unless block ~ ~-0.1 ~ #main:air at @s run tp @s ~ ~ ~ 0 -90







