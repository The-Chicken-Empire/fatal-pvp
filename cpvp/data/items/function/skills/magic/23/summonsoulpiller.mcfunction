execute at @s if block ~ ~-5 ~ #main:air run tp @s ~ ~-1 ~

scoreboard players operation @s owner = @e[tag=magic23tmp2,limit=1] owner
scoreboard players operation @s teamscore = @e[tag=magic23tmp2,limit=1] teamscore
tag @s add magic23fp
tag @s add magic23sp
tag @s add skillmarker
#item
data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic23fp"]}},id:"minecraft:barrier"}
data modify entity @s teleport_duration set value 1
data modify entity @s interpolation_duration set value 5
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0f,8f,0f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}

execute at @s run playsound item.flintandsteel.use block @a[distance=..12] ~ ~ ~ 1 0.5 0
#execute at @s run particle lava ~ ~-3 ~ 0.3 0.3 0.3 0 25 normal
