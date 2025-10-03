scoreboard players operation @s owner = @a[tag=magic23tmp,limit=1] playerdata
scoreboard players operation @s teamscore = @a[tag=magic23tmp,limit=1] teamscore
scoreboard players operation @s target = @e[tag=magic23tmp3,limit=1] markerid
tag @s add magic23core
tag @s add skillmarker
tag @e[tag=magic23tmp3] remove magic23tmp3
#item
#data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic23id"]}},id:"minecraft:barrier"}
#data modify entity @s teleport_duration set value 1
#data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[2f,2f,2f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}