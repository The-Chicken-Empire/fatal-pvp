tag @s add w13marker
tag @s add w13tmp
tag @s add skillmarker
scoreboard players set @s counter2 1
execute as @a[tag=w13owner] run tp @e[tag=w13tmp,limit=1] ~ ~0.9 ~ ~ 0
tag @s remove w13tmp
scoreboard players operation @s ownerteam = @a[tag=w13owner] teamscore
scoreboard players operation @s owner = @a[tag=w13owner] playerdata


