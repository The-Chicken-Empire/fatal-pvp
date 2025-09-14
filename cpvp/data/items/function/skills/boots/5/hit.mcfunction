scoreboard players operation $tmp3 tmp = $tmp2 tmp
scoreboard players operation $tmp3 tmp *= $2 main
execute if score $tmp3 tmp matches 20.. run scoreboard players set $tmp3 tmp 20
scoreboard players operation $tmp3 tmp *= $10 main

tag @s add physicaldamage
tag @s add meleedamage
scoreboard players operation @s attackerdata = @a[tag=boots5tmp3] playerdata
scoreboard players operation @s damagetaken = $tmp3 tmp
scoreboard players reset $tmp3 tmp

function damage:atkercheck