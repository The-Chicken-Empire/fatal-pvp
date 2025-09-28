#itemset
data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic27totem"]},"enchantment_glint_override":true},id:"minecraft:barrier"}
data modify entity @s brightness set value {block:15,sky:15}
data modify entity @s teleport_duration set value 1
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[2f,2f,2f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}
#owner
scoreboard players operation @s owner = @a[tag=magic27tmp,limit=1] playerdata
scoreboard players operation @s target = @e[tag=magic27tmp2,limit=1] entitydata
#tag
tag @s add skillmarker
tag @s add magic27id