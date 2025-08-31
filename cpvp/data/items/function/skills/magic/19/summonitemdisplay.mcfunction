#itemset
data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic19id"]},"enchantment_glint_override":true},id:"minecraft:barrier"}
data modify entity @s teleport_duration set value 1
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[1.2f,2.5f,1.2f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}
#owner
scoreboard players operation @s owner = @a[tag=magic19tmp,limit=1] playerdata
#tag
tag @s add skillmarker
tag @s add magic19