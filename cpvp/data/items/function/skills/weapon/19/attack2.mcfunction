execute unless entity @e[tag=victim,tag=meleevictim] run return fail

scoreboard players operation $tmp tmp = @s speed
scoreboard players operation $tmp tmp /= $2 main
scoreboard players remove $tmp tmp 50
scoreboard players operation $damageadd damagecalc += $tmp tmp

scoreboard players reset $tmp tmp