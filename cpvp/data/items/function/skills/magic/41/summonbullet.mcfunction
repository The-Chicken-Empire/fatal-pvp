tag @s add magic41bullet
tag @s add skillmarker

scoreboard players operation @s owner = @a[tag=magic41shottmp] playerdata
scoreboard players operation @s teamscore = @a[tag=magic41shottmp] teamscore
execute at @s rotated as @a[tag=magic41shottmp,limit=1] run tp @s ~ ~ ~ ~ ~

#item
data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic15id"]}},id:"minecraft:chiseled_polished_blackstone"}
data modify entity @s interpolation_duration set value 1
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0.02f,0.02f,0.02f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}

scoreboard players set @s counting2 300
scoreboard players set @s counting3 3