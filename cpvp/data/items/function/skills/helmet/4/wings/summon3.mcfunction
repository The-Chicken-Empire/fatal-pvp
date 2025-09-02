#tag
tag @s add skillmarker
tag @s add seraph_feather_l
#nbt
data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["seraph_feather_l"]},enchantment_glint_override:false},id:"minecraft:golden_hoe",count:1}
data modify entity @s start_interpolation set value -1
data modify entity @s interpolation_duration set value 1

data modify entity @s teleport_duration set value 1
data modify entity @s transformation set value {right_rotation:{axis:[0f,1f,0f],angle:0f},scale:[0.8f,0.8f,0.8f],left_rotation:{axis:[0f,1f,0f],angle:0f},translation:[0f,0f,0f]}
#score
scoreboard players operation @s owner = @a[tag=cp.owner,limit=1] playerdata
ride @s mount @e[tag=cp.this,limit=1]