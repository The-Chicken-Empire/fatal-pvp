#サボテンデータ
tag @s add range2needle
tag @s add skillmarker
function items:skills/markerid
#item
data modify entity @s item set value {id:"minecraft:cactus",components:{enchantment_glint_override:true}}
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0.8f,1f,0.8f],left_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f]}

scoreboard players operation @s owner = @e[tag=range2tmp,limit=1] playerdata
scoreboard players operation @s teamscore = @e[tag=range2tmp,limit=1] teamscore