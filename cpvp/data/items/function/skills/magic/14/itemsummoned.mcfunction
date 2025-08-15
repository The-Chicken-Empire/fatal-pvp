scoreboard players operation @s owner = @e[tag=magic14tmp] owner
scoreboard players operation @s teamscore = @e[tag=magic14tmp] teamscore
data modify entity @s Motion set from entity @e[tag=TmpPos,limit=1] Pos
kill @e[tag=TmpPos]
tag @s add tagged