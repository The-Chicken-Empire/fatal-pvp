tag @s add magic31

scoreboard players operation @s owner = @a[tag=magic31tmp,limit=1] playerdata
scoreboard players operation @s teamscore = @a[tag=magic31tmp,limit=1] teamscore
scoreboard players set @s counting 250
scoreboard players set @s counting2 5
execute at @s rotated as @a[tag=magic31tmp,limit=1] run tp @s ~ ~ ~ ~ ~

function items:skills/magic/31/loop