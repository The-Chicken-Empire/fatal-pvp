tag @s add skillmarker
tag @s add magic48
tag @s add magic48tmp2
scoreboard players operation @s owner = @a[tag=magic48tmp,limit=1] playerdata
scoreboard players operation @s teamscore = @a[tag=magic48tmp,limit=1] teamscore
scoreboard players operation @s target = @e[tag=magic48tmp4,limit=1] markerid

#item
data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic48id"]}},id:"minecraft:barrier"}
data modify entity @s interpolation_duration set value 12
data modify entity @s teleport_duration set value 1
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[3f,1f,3f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}