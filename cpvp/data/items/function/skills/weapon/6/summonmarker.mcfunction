tag @s add skillmarker
tag @s add weapon6
scoreboard players operation @s owner = @a[tag=weapon6tmp,limit=1] playerdata
scoreboard players operation @s teamscore = @a[tag=weapon6tmp,limit=1] teamscore

tp @s @a[tag=weapon6tmp,limit=1]
execute at @s rotated as @a[tag=weapon6tmp,limit=1] run tp @s ~ ~ ~ ~ ~