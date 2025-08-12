tag @s add magic13
tag @s add skillmarker
function items:skills/markerid
#modify
data modify entity @s item set value {id:"minecraft:iron_sword",components:{enchantment_glint_override:true}}
data modify entity @s teleport_duration set value 1
data modify entity @s interpolation_duration set value 5
data modify entity @s transformation set value {right_rotation:[0f,0f,-0.415f,1f],scale:[1f,1f,1f],left_rotation:[1f,0f,0f,1f],translation:[0f,0f,0f]}
execute rotated as @a[tag=magic13tmp,limit=1] run tp @s ~ ~1.62 ~ ~ ~
#score
scoreboard players set @s magic13-2 40
#owner
scoreboard players operation @s owner = @a[tag=magic13tmp,limit=1] playerdata
scoreboard players operation @s ownerteam = @a[tag=magic13tmp,limit=1] teamscore