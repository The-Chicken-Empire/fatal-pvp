tag @s add skillmarker
tag @s add magic51
scoreboard players operation @s owner = @a[tag=magic51tmp,limit=1] playerdata
execute at @s rotated as @a[tag=magic51tmp,limit=1] run tp @s ~ ~ ~ ~ ~
scoreboard players set @s counting 500