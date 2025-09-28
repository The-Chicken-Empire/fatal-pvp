tag @s add magic26i
tag @s add skillmarker
scoreboard players operation @s owner = @a[tag=magic26tmp,limit=1] playerdata
scoreboard players operation @s teamscore = @a[tag=magic26tmp,limit=1] teamscore
execute at @s rotated as @a[tag=magic26tmp,limit=1] run tp @s ~ ~ ~ ~ ~
#itemset
data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic26i"]}},id:"minecraft:barrier"}
data modify entity @s interpolation_duration set value 0
data modify entity @s teleport_duration set value 1
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}
#number
function items:skills/markerid