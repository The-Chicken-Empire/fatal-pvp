#itemset
data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic43id"]},"enchantment_glint_override":true},id:"minecraft:barrier"}
data modify entity @s glow_color_override set value -1
data modify entity @s interpolation_duration set value 3
data modify entity @s teleport_duration set value 1
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}
#owner
scoreboard players operation @s owner = @e[tag=magic43tmp2,limit=1] owner
scoreboard players operation @s teamscore = @e[tag=magic43tmp2,limit=1] teamscore
scoreboard players operation @s counting = @e[tag=magic43tmp2,limit=1] counting
#tag
tag @s add skillmarker
tag @s add magic43-2