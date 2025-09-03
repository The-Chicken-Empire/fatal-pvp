tag @s add magic15
tag @s add skillmarker
scoreboard players operation @s owner = @a[tag=magic15tmp,limit=1] playerdata
scoreboard players operation @s teamscore = @a[tag=magic15tmp,limit=1] teamscore
execute at @s rotated as @a[tag=magic15tmp,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s run tp @s ^ ^ ^3