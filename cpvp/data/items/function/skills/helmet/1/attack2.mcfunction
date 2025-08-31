scoreboard players operation $tmp tmp = @s speed
execute unless entity @e[tag=victim,tag=specialdamagetmp] run scoreboard players operation $tmp tmp /= $5 main
execute if entity @e[tag=victim,tag=specialdamagetmp] run scoreboard players operation $tmp tmp /= $10 main
scoreboard players operation $tmp tmp *= $2 main
scoreboard players operation $damageadd damagecalc += $tmp tmp
scoreboard players reset $tmp tmp