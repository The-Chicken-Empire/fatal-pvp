tag @s add magic22
scoreboard players operation @s owner = @a[tag=magic22tmp] playerdata
scoreboard players operation @s teamscore = @a[tag=magic22tmp] teamscore
execute at @s rotated as @a[tag=magic22tmp,limit=1] run tp @s ~ ~ ~ ~ ~
scoreboard players set @s counting 65

function items:skills/magic/22/check