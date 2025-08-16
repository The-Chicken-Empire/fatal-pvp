scoreboard players set @s damagetaken 60
tag @s add magicdamage
tag @s add rangedamage
scoreboard players operation @s attackerdata = @e[tag=magic15tmp5,limit=1] owner
function damage:atkercheck