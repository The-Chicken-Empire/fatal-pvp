tag @s add magic43
tag @s add skillmarker 
scoreboard players operation @s owner = @a[tag=magic43tmp,limit=1] playerdata
scoreboard players operation @s teamscore = @a[tag=magic43tmp,limit=1] teamscore

scoreboard players set @s counting 50
scoreboard players set @s counting2 20