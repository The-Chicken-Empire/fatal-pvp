tag @s add magic19core
tag @s add skillmarker
function items:skills/markerid
#item
data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic19core1"]}},id:"minecraft:barrier"}
data modify entity @s interpolation_duration set value 10
data modify entity @s teleport_duration set value 5
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,1f]}

execute at @s rotated as @a[tag=magic19tmp,limit=1] run tp @s ~ ~ ~ ~ ~

scoreboard players operation @s owner = @e[tag=magic19tmp,limit=1] playerdata
scoreboard players operation @s teamscore = @e[tag=magic19tmp,limit=1] teamscore
scoreboard players set @s counting 0
scoreboard players set @s counting2 40