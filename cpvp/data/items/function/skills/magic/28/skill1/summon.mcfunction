tag @s add skillmarker
tag @s add magic28
scoreboard players operation @s owner = @a[tag=cp.owner,limit=1] playerdata
scoreboard players operation @s ownerteam = @a[tag=cp.owner,limit=1] teamscore
scoreboard players set @s counter 0