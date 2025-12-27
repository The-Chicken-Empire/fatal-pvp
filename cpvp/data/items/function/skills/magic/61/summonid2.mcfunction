tag @s add m61dmg
tag @s add skillmarker
scoreboard players operation @s owner = @e[tag=m61id1tmp,limit=1] owner
scoreboard players operation @s teamscore = @e[tag=m61id1tmp,limit=1] teamscore


#item
data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic61id2"]}},id:"minecraft:barrier"}
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0f,3f,0f],left_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f]}
data modify entity @s teleport_duration set value 1
data modify entity @s interpolation_duration set value 4

