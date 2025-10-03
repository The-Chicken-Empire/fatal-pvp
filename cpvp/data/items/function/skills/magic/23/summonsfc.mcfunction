tag @s add magic23sfcore
tag @s add skillmarker

scoreboard players operation @s owner = @e[tag=magic23tmp5,limit=1] owner
scoreboard players operation @s teamscore = @e[tag=magic23tmp5,limit=1] teamscore
execute at @s run tp @s ~ ~-3 ~
