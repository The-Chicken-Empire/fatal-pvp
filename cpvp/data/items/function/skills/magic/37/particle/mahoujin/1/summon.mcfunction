tag @s add skillmarker
tag @s add magic37-1
tag @s add magic37tmp
scoreboard players operation @s owner = @a[tag=magic37owner] playerdata
execute as @a[tag=magic37owner,limit=1] at @s anchored eyes positioned ^ ^ ^3 run tp @e[tag=magic37tmp,limit=1] ~ ~ ~ ~ ~
tag @s remove magic37tmp
data modify entity @s item set value {id:"minecraft:golden_hoe",components:{enchantment_glint_override:false,custom_model_data:{strings:["magic37_1"]}}}
data modify entity @s teleport_duration set value 1
data modify entity @s interpolation_duration set value 1
data modify entity @s start_interpolation set value -1
data modify entity @s transformation.scale set value [5f,5f,5f]