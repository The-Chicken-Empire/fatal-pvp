tag @s add skillmarker
tag @s add seraph_wing
tag @s add cp.this
data modify entity @s start_interpolation set value -1
data modify entity @s interpolation_duration set value 1
data modify entity @s teleport_duration set value 0
scoreboard players operation @s owner = @a[tag=cp.owner,limit=1] playerdata
execute summon item_display run function items:skills/helmet/4/wings/summon2
execute summon item_display run function items:skills/helmet/4/wings/summon3
