tag @s add magic10ct
tag @s add skillmarker
scoreboard players operation @s target = @e[tag=magic10victim,limit=1] entitydata
scoreboard players operation @s owner = @e[tag=magic10tmp,limit=1] markerid