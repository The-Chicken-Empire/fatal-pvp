scoreboard players operation $tmp tmp = @s speed
scoreboard players operation $tmp tmp -= @e[tag=victim,limit=1] speed
execute if score $tmp tmp matches ..1 run return run scoreboard players reset $tmp tmp

scoreboard players operation $tmp tmp /= $4 main
execute if score $tmp tmp matches 31.. run scoreboard players set $tmp tmp 30
scoreboard players operation $damageadd damagecalc += $tmp tmp
scoreboard players reset $tmp tmp