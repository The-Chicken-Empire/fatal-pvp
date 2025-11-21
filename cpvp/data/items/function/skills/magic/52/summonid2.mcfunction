scoreboard players operation @s owner = @e[tag=magic52tmp2,limit=1] owner
scoreboard players operation @s teamscore = @e[tag=magic52tmp2,limit=1] teamscore
scoreboard players operation @s target = @e[tag=magic52tmp2,limit=1] markerid
tag @s add magic52id2
tag @s add magic52id
tag @s add skillmarker
#item
data modify entity @s item set value {id:"minecraft:cobblestone"}
data modify entity @s interpolation_duration set value 3
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[1.5f,2f,1.5f],left_rotation:[0f,0f,0f,1f],translation:[0f,-4f,0f]}