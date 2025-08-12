tp @s ~ ~8 ~

tag @s add magic12
tag @s add skillmarker
function items:skills/markerid
#modify
data modify entity @s item set value {id:"minecraft:golden_sword",components:{enchantment_glint_override:true}}
data modify entity @s interpolation_duration set value 30
data modify entity @s teleport_duration set value 1
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[3f,3f,3f],left_rotation:[0f,0f,2.4f,1f],translation:[0f,0f,0f]}
execute at @s facing entity @a[tag=magic12tmp] eyes run tp @s ~ ~ ~ ~ 0
#owner
scoreboard players operation @s owner = @e[type=marker,tag=magic12,limit=1] owner
scoreboard players operation @s ownerteam = @e[type=marker,tag=magic12,limit=1] ownerteam
