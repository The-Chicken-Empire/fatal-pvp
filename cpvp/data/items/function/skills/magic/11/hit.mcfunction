
scoreboard players operation @s attackerdata = @e[tag=magic11tmp3,limit=1] owner
scoreboard players set @s damagetaken 30
tag @s add magicdamage
tag @s add rangedamage
function damage:atkercheck

kill @e[tag=magic11tmp3,limit=1]
