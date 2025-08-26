execute at @s run tp ~-0.5 ~ ~-0.5
#itemset
data modify entity @s block_state set value {Name:"minecraft:small_amethyst_bud"}
data modify entity @s glow_color_override set value -1
data modify entity @s interpolation_duration set value 30
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}
data modify entity @s brightness set value {block:15,sky:15}
#number
function items:skills/markerid
#owner
scoreboard players operation @s owner = @a[tag=perk11tmp,limit=1] playerdata
scoreboard players operation @s owner = @a[tag=perk11tmp,limit=1] entitydata
scoreboard players operation @s teamscore = @a[tag=perk11tmp,limit=1] teamscore
#tag
tag @s add skillmarker
tag @s add perk11