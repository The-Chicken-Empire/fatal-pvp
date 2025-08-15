#modify
data modify entity @s item set value {id:"minecraft:black_concrete"}
data modify entity @s interpolation_duration set value 30
data modify entity @s teleport_duration set value 1
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}
execute rotated as @e[type=marker,tag=magic11tmp2,limit=1] run tp @s ~ ~ ~ ~ ~
#tag
tag @s add skillmarker
tag @s add magic11-2
#owner
scoreboard players operation @s owner = @e[type=marker,tag=magic11tmp2,limit=1] owner
scoreboard players operation @s ownerteam = @e[type=marker,tag=magic11tmp2,limit=1] ownerteam