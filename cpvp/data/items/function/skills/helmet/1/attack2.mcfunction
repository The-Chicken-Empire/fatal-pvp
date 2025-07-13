scoreboard players operation $tmp tmp = @s speed
execute unless entity @e[tag=victim,tag=specialdamagetmp] run scoreboard players operation $tmp tmp /= $5 main
execute if entity @e[tag=victim,tag=specialdamagetmp] run scoreboard players operation $tmp tmp /= $10 main
scoreboard players add $tmp tmp 100
scoreboard players operation @a[tag=victim,limit=1] damagetaken *= $tmp tmp
scoreboard players operation @a[tag=victim,limit=1] damagetaken /= $100 main
scoreboard players reset $tmp tmp