tag @s add perk30marker
tag @s add skillmarker
scoreboard players operation @s owner = @a[tag=victim,limit=1] playerdata
scoreboard players operation @s counter = @a[tag=atker,limit=1] playerdata