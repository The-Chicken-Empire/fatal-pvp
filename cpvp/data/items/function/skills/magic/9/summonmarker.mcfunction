execute at @s rotated as @e[tag=magic9tmp2,limit=1] run tp @s ~ ~ ~ ~ ~

scoreboard players operation @s owner = @e[tag=magic9tmp2,limit=1] owner
scoreboard players operation @s teamscore = @e[tag=magic9tmp2,limit=1] teamscore

tag @s add magic9-2
tag @s add skillmarker
scoreboard players set @s counting 100