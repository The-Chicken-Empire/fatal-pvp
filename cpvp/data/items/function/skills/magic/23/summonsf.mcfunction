scoreboard players operation @s owner = @e[tag=magic23tmp6,limit=1] owner
scoreboard players operation @s teamscore = @e[tag=magic23tmp6,limit=1] teamscore
tag @s add magic23sf
tag @s add skillmarker
#item
data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic23sf"]}},id:"minecraft:barrier"}
data modify entity @s teleport_duration set value 1
data modify entity @s interpolation_duration set value 10
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0.5f,2f,0.5f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}

execute unless block ~ ~-1 ~ #main:air run scoreboard players set @s counting 10
execute unless block ~ ~-1 ~ #main:air run function items:skills/magic/23/ifblock

