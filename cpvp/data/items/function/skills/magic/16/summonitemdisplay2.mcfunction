tag @s add skillmarker
tag @s add magic16-3
scoreboard players operation @s owner = @a[tag=magic16tmp,limit=1] playerdata

#item
execute at @s run playsound block.sculk_shrieker.shriek block @a ~ ~ ~ 1 2 1
data modify entity @s item set value {id:"minecraft:tnt"}
data modify entity @s interpolation_duration set value 0
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[2f,2f,2f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}
data modify entity @s glow_color_override set value 7929856
data modify entity @s Glowing set value 1b