scoreboard players operation $tmp tmp = @s speed
scoreboard players operation $tmp tmp /= $5 main
scoreboard players operation @s damage += $tmp tmp
scoreboard players reset $tmp tmp