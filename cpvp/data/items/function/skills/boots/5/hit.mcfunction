
execute if score @a[tag=boots5tmp3,limit=1] boots5 matches 20.. run scoreboard players set @a[tag=boots5tmp3,limit=1] boots5 20
scoreboard players operation @a[tag=boots5tmp3,limit=1] boots5 *= $10 main

tag @s add physicaldamage
tag @s add meleedamage
scoreboard players operation @s attackerdata = @a[tag=boots5tmp3] playerdata
scoreboard players operation @s damagetaken = @a[tag=boots5tmp3,limit=1] boots5
scoreboard players reset $tmp3 tmp

function damage:atkercheck