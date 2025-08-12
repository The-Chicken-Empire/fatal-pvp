#itemset
data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic10"]}},id:"minecraft:barrier"}
data modify entity @s glow_color_override set value -1
data modify entity @s interpolation_duration set value 30
data modify entity @s teleport_duration set value 1
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],left_rotation:[1f,0f,0f,1f],translation:[0f,0f,0f]}
#number
function items:skills/markerid
#owner
scoreboard players operation @s owner = @a[tag=magic10player,limit=1] playerdata
scoreboard players operation @s ownerteam = @a[tag=magic10player,limit=1] teamscore
#tag
tag @s add skillmarker
tag @s add magic10
scoreboard players set @s skills -1