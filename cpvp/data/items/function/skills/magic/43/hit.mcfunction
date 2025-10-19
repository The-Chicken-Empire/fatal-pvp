tag @s add magicdamage
tag @s add rangedamage

scoreboard players operation @s damagetaken = @e[tag=magic43tmp4,limit=1] counting
scoreboard players operation @s attackerdata = @e[tag=magic43tmp4,limit=1] owner

function damage:atkercheck