tag @s add magic19ray
tag @s add skillmarker
#item
data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic19ray"]},"enchantment_glint_override":true},id:"minecraft:blue_stained_glass_pane"}
data modify entity @s interpolation_duration set value 5
data modify entity @s teleport_duration set value 1
execute if score @e[tag=magic19coretmp,limit=1] counting matches 0 run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,25f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,12.5f]}
execute if score @e[tag=magic19coretmp,limit=1] counting matches 1 run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0.75f,0.75f,25f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,12.5f]}
execute if score @e[tag=magic19coretmp,limit=1] counting matches 2 run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[1f,1f,25f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,12.5f]}
execute if score @e[tag=magic19coretmp,limit=1] counting matches 3 run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[1.25f,1.25f,25f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,12.5f]}


execute at @s rotated as @e[tag=magic19coretmp,limit=1] run tp @s ~ ~ ~ ~ ~

scoreboard players operation @s owner = @e[tag=magic19coretmp,limit=1] owner
scoreboard players operation @s target = @e[tag=magic19coretmp,limit=1] markerid