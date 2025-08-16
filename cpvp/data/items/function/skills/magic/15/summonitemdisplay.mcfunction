tag @s add magic15-2
tag @s add skillmarker
function items:skills/markerid
#item
data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic15id"]}},id:"minecraft:barrier"}
data modify entity @s interpolation_duration set value 12
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}
execute at @s run playsound entity.enderman.teleport hostile @a ~ ~ ~ 1 0.5 0

scoreboard players operation @s owner = @e[tag=magic15tmp3,limit=1] owner
scoreboard players operation @s teamscore = @e[tag=magic15tmp3,limit=1] teamscore