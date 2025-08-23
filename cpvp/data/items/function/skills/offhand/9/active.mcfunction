scoreboard players set @s offhand9 0

scoreboard players operation $tmp tmp = @s maxhp
scoreboard players operation $tmp tmp -= @s hp

execute unless score $tmp tmp matches 1.. run return fail

scoreboard players operation $tmp2 tmp = @s mr
scoreboard players operation $tmp2 tmp += $100 main
scoreboard players operation $tmp tmp *= $tmp2 tmp
scoreboard players operation $tmp tmp /= $10 main
scoreboard players operation @s mp += $tmp tmp
execute if score @s mp > @s maxmp run scoreboard players operation @s mp = @s maxmp
execute at @s run playsound block.note_block.pling music @s ~ ~ ~ 1 1.2 1
execute at @s run particle note ~ ~2 ~ 0 0 0 0.1 1 normal