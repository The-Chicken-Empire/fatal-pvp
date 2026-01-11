#アビリティのダメージCT召喚
tag @s add range2ct
tag @s add skillmarker
scoreboard players operation @s target = @e[tag=range2victim,limit=1] entitydata
scoreboard players operation @s counting = @e[tag=range2tmp2,limit=1] markerid
