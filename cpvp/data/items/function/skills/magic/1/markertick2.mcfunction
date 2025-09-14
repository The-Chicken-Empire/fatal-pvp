tag @s add magic1tmp3

execute at @s run playsound block.note_block.chime block @a[distance=..15] ~ ~ ~ 1 1.48 0
execute at @s run playsound block.note_block.chime block @a[distance=..15] ~ ~ ~ 1 1.14 0
execute as @a if score @s playerdata = @e[tag=magic1tmp3,limit=1] owner run tag @s add magic1atker
execute at @s run tp @s ~ ~0.4 ~ ~10 ~

execute at @s as @e[distance=..3,tag=playing] positioned ~-4 ~-0.2 ~-4 if entity @s[dx=8,dy=1,dz=8] positioned ~ ~-0.6 ~ if entity @s[dx=8,dy=1,dz=8] unless score @s teamscore = @e[tag=magic1tmp3,limit=1] teamscore run function items:skills/magic/1/hit

tag @a[tag=magic1atker] remove magic1atker
tag @s remove magic1tmp3
execute if score @s skills matches 40.. run kill @s