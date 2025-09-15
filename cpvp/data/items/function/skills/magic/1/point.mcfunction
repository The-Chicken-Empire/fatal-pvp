execute at @s unless block ^ ^ ^0.1 #main:air run function items:skills/magic/1/pointed


scoreboard players remove @s counting 1
execute at @s run tp @s ^ ^ ^0.1
execute if score @s counting matches 1.. run function items:skills/magic/1/point
execute unless entity @s[tag=pointed] unless score @s counting matches 1.. run kill @s