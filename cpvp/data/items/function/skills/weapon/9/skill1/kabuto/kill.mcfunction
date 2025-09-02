


tag @s add cp.tmp
execute as @e[tag=seraph_wing] if score @s owner = @e[tag=cp.tmp,limit=1] owner run tag @s add cp.this
execute as @e[tag=cp.this] on passengers if entity @s[tag=seraph_feather_r] run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["seraph_feather_r"]}
execute as @e[tag=cp.this] on passengers if entity @s[tag=seraph_feather_l] run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["seraph_feather_l"]}
execute as @e[tag=cp.this] on passengers run data modify entity @s transformation.scale set value [0.8f,0.8f,0.8f]

tag @s remove cp.tmp
tag @e[tag=cp.this] remove cp.this











kill