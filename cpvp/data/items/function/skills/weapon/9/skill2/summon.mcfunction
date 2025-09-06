tag @s add skillmarker
tag @s add seraph_glaive2
tag @s add cp.this
data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["seraph_glaive"]},enchantment_glint_override:false},id:"minecraft:carrot_on_a_stick",count:1}
data modify entity @s start_interpolation set value -1
data modify entity @s interpolation_duration set value 1
data modify entity @s teleport_duration set value 1
data modify entity @s transformation set value {right_rotation:{axis:[1f,0f,0f],angle:90f},scale:[1f,1f,1f],left_rotation:{axis:[0f,0f,1f],angle:0f},translation:[0f,0f,0f]}
scoreboard players operation @s owner = @a[tag=cp.owner,limit=1] playerdata
