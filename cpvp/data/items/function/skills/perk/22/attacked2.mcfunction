scoreboard players operation $tmp tmp = @s mp
scoreboard players operation $tmp tmp *= $100 main
scoreboard players operation $tmp tmp /= @s maxmp
execute if score $tmp tmp matches ..89 run return run scoreboard players reset $tmp tmp

scoreboard players add $damagecalcdef damagecalc 20
scoreboard players reset $tmp tmp