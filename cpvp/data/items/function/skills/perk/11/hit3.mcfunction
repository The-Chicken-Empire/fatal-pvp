scoreboard players set @s damagetaken 100
tag @s add magicdamage
tag @s add rangedamage
scoreboard players operation @s attackerdata = @e[tag=perk11tmp2,limit=1] owner
function damage:atkercheck