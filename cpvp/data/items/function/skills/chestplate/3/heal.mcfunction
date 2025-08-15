scoreboard players set $tmp tmp 10
scoreboard players operation $tmp2 tmp = @s vit
scoreboard players operation $tmp2 tmp += $100 main
scoreboard players operation $tmp tmp *= $tmp2 tmp
scoreboard players operation $tmp tmp /= $100 main

scoreboard players operation @s hp += $tmp tmp
execute if score @s hp > @s maxhp run scoreboard players operation @s hp = @s maxhp