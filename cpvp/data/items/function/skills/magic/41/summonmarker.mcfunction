tag @s add magic41 
tag @s add skillmarker

scoreboard players operation @s owner = @a[tag=magic41tmp,limit=1] playerdata
scoreboard players operation @s teamscore = @a[tag=magic41tmp,limit=1] teamscore
scoreboard players set @s counting 0