scoreboard players operation $tmp tmp = @s hp
scoreboard players operation $tmp tmp *= $100 main
scoreboard players operation $tmp tmp /= @s maxhp
execute if score $tmp tmp matches ..40 run tag @e[tag=victim] add unavoidable