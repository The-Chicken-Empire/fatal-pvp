tag @s add magic10ctplayer
tag @s add skillmarker
scoreboard players operation @s magic10 = @e[tag=magic10victim,limit=1] playerdata
scoreboard players operation @s magic10-4 = @e[tag=magic10tmp,limit=1] markerid