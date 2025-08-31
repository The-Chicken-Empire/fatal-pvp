execute at @s run tp @s ~ ~1 ~
execute at @s rotated as @a[tag=magic9tmp,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s run tp @s ^ ^ ^0.5
#itemset
data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic9"]},"enchantment_glint_override":true},id:"minecraft:carrot_on_a_stick"}
data modify entity @s teleport_duration set value 1
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}
#owner
scoreboard players operation @s owner = @a[tag=magic9tmp,limit=1] playerdata
scoreboard players operation @s teamscore = @a[tag=magic9tmp,limit=1] teamscore
#tag
tag @s add skillmarker
tag @s add magic9