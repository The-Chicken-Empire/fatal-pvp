tag @s add magic9-3
tag @s add skillmarker

scoreboard players operation @s target = @e[tag=victim,limit=1] entitydata
scoreboard players operation @s owner = @a[tag=atker,limit=1] playerdata
scoreboard players operation @s teamscore = @a[tag=atker,limit=1] teamscore