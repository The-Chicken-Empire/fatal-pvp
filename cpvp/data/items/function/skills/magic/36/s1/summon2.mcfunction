tag @s add skillmarker
tag @s add magic36meteor
tag @s add magic36tmp
tag @s add magic36unready
tag @s add magic36canheal
scoreboard players operation @s owner = @a[tag=magic36owner] playerdata
scoreboard players operation @s ownerteam = @a[tag=magic36owner] teamscore
execute as @a[tag=playing,tag=!magic36owner] if score @s teamscore = @a[tag=magic36owner,limit=1] teamscore run tag @e[tag=magic36tmp] remove magic36canheal
data modify entity @s item set value {id:"minecraft:golden_hoe",components:{enchantment_glint_override:false,custom_model_data:{strings:["magic36_meteor"]}}}
data modify entity @s teleport_duration set value 1
data modify entity @s interpolation_duration set value 1
data modify entity @s start_interpolation set value -1
data modify entity @s transformation set value {right_rotation:[0.0f,-0.707f,0.707f,0f],scale:[10f,10f,10f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}