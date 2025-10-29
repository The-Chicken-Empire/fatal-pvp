tag @s add skillmarker
tag @s add magic39

scoreboard players operation @s owner = @a[tag=magic39tmp,limit=1] playerdata
scoreboard players operation @s teamscore = @a[tag=magic39tmp,limit=1] teamscore
execute at @s run tp @s ~ ~ ~ 0 0