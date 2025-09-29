#itemset
data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic1id2"]},"enchantment_glint_override":true},id:"minecraft:barrier"}
data modify entity @s teleport_duration set value 1
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[4,0.1f,4f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}
#number
function items:skills/markerid
#owner
scoreboard players operation @s owner = @e[tag=magic1tmp2,limit=1] owner
scoreboard players operation @s teamscore = @e[tag=magic1tmp2,limit=1] teamscore
#tag
tag @s add skillmarker
tag @s add magic1-2