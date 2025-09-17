tag @s add skillmarker
tag @s add magic24
scoreboard players operation @s owner = @a[tag=cp.owner,limit=1] playerdata
scoreboard players operation @s counter = @a[tag=cp.owner] hp
scoreboard players operation @s counter2 = @a[tag=cp.owner] mp