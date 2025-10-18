tag @s add truedamage

scoreboard players operation $tmp tmp = @s maxhp
scoreboard players operation $tmp tmp *= $4 main
scoreboard players operation $tmp tmp /= $10 main

scoreboard players operation @s damagetaken = $tmp tmp
scoreboard players reset $tmp tmp
scoreboard players operation @s attackerdata = @e[tag=magic41tped,limit=1] playerdata

function damage:atkercheck