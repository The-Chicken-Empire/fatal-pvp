tag @s add magic15-3
tag @s add skillmarker
scoreboard players operation @s owner = @a[tag=magic15tmp,limit=1] playerdata
execute at @s rotated as @a[tag=magic15tmp,limit=1] run tp @s ~ ~ ~ ~ ~