execute at @s run tp @s ~ ~-0.1 ~

scoreboard players reset $tmp tmp
execute store result score $tmp tmp run data get entity @s Pos.[1] 1
execute if score $tmp tmp matches ..-120 run scoreboard players reset $tmp tmp
execute if score $tmp tmp matches ..-120 run return fail
execute at @s if block ~ ~-0.1 ~ #main:air run function items:skills/magic/61/setpos3