tag @s add skillmarker
tag @s add magic50
scoreboard players operation @s owner = @a[tag=magic50tmp,limit=1] playerdata
scoreboard players operation @s teamscore = @a[tag=magic50tmp,limit=1] teamscore
scoreboard players operation @s target = @e[tag=magic50rotatetmp,limit=1] markerid
scoreboard players set @s counting 5
scoreboard players set @s counting3 0
scoreboard players set @s counting2 40

execute if score @a[tag=magic50tmp,limit=1] eng matches 10.. run function items:skills/magic/50/eng10

#item
data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic50id"]},"enchantment_glint_override":true},id:"minecraft:blue_stained_glass_pane"}
data modify entity @s interpolation_duration set value 3
data modify entity @s teleport_duration set value 1
data modify entity @s transformation set value {right_rotation:[0.5f,0f,0f,1f],scale:[1f,2f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}
