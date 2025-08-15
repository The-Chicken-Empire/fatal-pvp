scoreboard players set $tmp tmp 1

scoreboard players set @s damagetaken 60
tag @s add rangedamage
tag @s add physicaldamage
scoreboard players operation @s attackerdata = @e[tag=cp3tmp5,limit=1] owner
function damage:atkercheck