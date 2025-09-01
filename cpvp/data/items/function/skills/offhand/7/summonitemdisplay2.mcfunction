scoreboard players operation @s teamscore = @a[tag=offhand7tmp4,limit=1] teamscore
scoreboard players operation @s owner = @a[tag=offhand7tmp4,limit=1] playerdata
tag @s add offhand7-3
tag @s add skillmarker

data modify entity @s item set value {components:{enchantment_glint_override:true},id:"minecraft:purple_stained_glass"}
data modify entity @s teleport_duration set value 2
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0.2f,0.2f,0.2f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}
execute at @s run tp @s ~ ~1 ~