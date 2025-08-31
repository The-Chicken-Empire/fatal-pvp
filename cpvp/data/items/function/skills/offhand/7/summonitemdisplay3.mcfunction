scoreboard players operation @s teamscore = @a[tag=offhand7tmp4,limit=1] teamscore
scoreboard players operation @s owner = @a[tag=offhand7tmp4,limit=1] playerdata
tag @s add offhand7-4
tag @s add skillmarker

data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["offhand7-2id"]}},id:"minecraft:barrier"}
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0f,1f,0f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}