scoreboard players remove #counter counter 1
execute if block ^ ^ ^0.2 #main:air run tp @s ^ ^ ^0.2
execute at @s unless block ~ ~ ~ #main:air run return fail
execute if score #counter counter matches 0 run return fail
execute at @s run function items:skills/magic/36/s1/rec