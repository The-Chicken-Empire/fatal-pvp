tag @s add magic62sting2
tag @s add skillmarker

data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic62sting2"]}},id:"minecraft:barrier"}
data modify entity @s interpolation_duration set value 20
data modify entity @s transformation set value {right_rotation:{axis:[1f,0f,0f],angle:1.5708f},scale:[3f,3f,3f],left_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,1.54f]}
data modify entity @s billboard set value "vertical"
data modify entity @s brightness set value {block:15,sky:15}

scoreboard players operation @s owner = @a[tag=magic62call,limit=1] playerdata
scoreboard players operation @s teamscore = @a[tag=magic62call,limit=1] teamscore
scoreboard players operation @s target = @e[tag=m62clocktmp,limit=1] markerid