execute unless entity @e[tag=victim,tag=meleevictim] run return fail
execute unless score @s weapon7 matches 1.. run return fail

scoreboard players operation $tmp tmp = @s weapon7
scoreboard players operation $tmp2 tmp = @s weapon7
scoreboard players operation $tmp tmp *= $20 main
scoreboard players operation $tmp2 tmp *= $10 main
scoreboard players operation $damageadd damagecalc += $tmp tmp
scoreboard players operation @e[tag=victim,limit=1] penetrate += $tmp2 tmp

scoreboard players reset $tmp tmp
scoreboard players reset $tmp2 tmp