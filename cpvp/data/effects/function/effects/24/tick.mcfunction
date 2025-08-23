execute at @s run particle end_rod ~ ~ ~ 0.3 0.5 0.3 0.1 2 normal

scoreboard players set $tmp tmp 100
scoreboard players operation $tmp tmp *= @s mr
scoreboard players operation $tmp tmp /= $100 main
scoreboard players operation @s mp += $tmp tmp
execute if score @s mp > @s maxmp run scoreboard players operation @s mp = @s maxmp
scoreboard players reset $tmp tmp