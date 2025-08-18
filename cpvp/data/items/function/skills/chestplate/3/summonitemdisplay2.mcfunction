#tag
tag @s add skillmarker
tag @s add cp3a2
function items:skills/markerid
#particle
execute at @s run particle soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0.3 10 normal
#nbt
data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["cp3-2"]},enchantment_glint_override:true},id:"minecraft:diamond_sword"}
data modify entity @s interpolation_duration set value 6
data modify entity @s teleport_duration set value 1
data modify entity @s transformation set value {right_rotation:[0,0f,-0.415f,1f],scale:[0.75f,0.75f,0.75f],left_rotation:[1f,0f,0f,1f],translation:[0f,0f,0f]}
#score
scoreboard players operation @s owner = @e[tag=cp3tmp3,limit=1] owner
scoreboard players operation @s teamscore = @e[tag=cp3tmp3,limit=1] teamscore
scoreboard players set @s counting2 5
#方向
execute at @s rotated as @e[tag=cp3tmp3,limit=1] run tp @s ~ ~ ~ ~ ~