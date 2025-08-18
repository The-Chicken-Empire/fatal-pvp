tag @s add specialdamage
tag @s add rangedamage
tag @s add unavoidable
scoreboard players set @s damagetaken 200
scoreboard players operation @s attackerdata = @e[tag=magic16tmp2,limit=1] owner

function damage:atkercheck