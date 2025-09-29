tag @s add magic1point
scoreboard players operation @s owner = @a[tag=magic1tmp,limit=1] playerdata
scoreboard players operation @s teamscore = @a[tag=magic1tmp,limit=1] teamscore

execute at @s rotated as @a[tag=magic1tmp,limit=1] run tp @s ~ ~ ~ ~ ~
scoreboard players set @s counting 500
function items:skills/magic/1/point