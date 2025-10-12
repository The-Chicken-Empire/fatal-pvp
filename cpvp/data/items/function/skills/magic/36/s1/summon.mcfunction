tag @s add skillmarker
tag @s add magic36mahoujin
tag @s add magic36tmp
scoreboard players set @s counter2 10
data modify entity @s item set value {id:"minecraft:golden_hoe",components:{enchantment_glint_override:false,custom_model_data:{strings:["magic36_jin"]}}}
data modify entity @s teleport_duration set value 1
data modify entity @s interpolation_duration set value 1
data modify entity @s start_interpolation set value -1
data modify entity @s transformation.scale set value [10f,10f,1f]