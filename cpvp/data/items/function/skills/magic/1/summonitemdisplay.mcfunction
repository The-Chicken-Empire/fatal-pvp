#tag
tag @s add skillmarker
tag @s add magic1
#itemset
data modify entity @s item set value {components:{"minecraft:custom_model_data":{strings:["magic1id"]},},id:"minecraft:barrier"}
data modify entity @s interpolation_duration set value 15
data modify entity @s teleport_duration set value 1
data modify entity @s brightness set value {block:15,sky:15}
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[6f,6f,3f],left_rotation:[1f,0f,0f,1f],translation:[0f,0f,0f]}
#number
function items:skills/markerid
#owner
scoreboard players operation @s owner = @a[tag=magic1tmp2,limit=1] playerdata
scoreboard players operation @s teamscore = @a[tag=magic1tmp2,limit=1] teamscore
execute at @s run playsound block.enchantment_table.use block @a[distance=..20] ~ ~ ~ 1 0.3 0
execute at @s run playsound block.enchantment_table.use block @a[distance=..20] ~ ~ ~ 1 0.3 0
execute at @s run playsound block.enchantment_table.use block @a[distance=..20] ~ ~ ~ 1 0.3 0
execute at @s run playsound block.enchantment_table.use block @a[distance=..20] ~ ~ ~ 1 0.3 0