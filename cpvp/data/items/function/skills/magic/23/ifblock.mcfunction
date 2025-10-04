execute at @s run tp @s ~ ~0.1 ~
scoreboard players remove @s counting 1
execute if score @s counting matches 1.. unless block ~ ~-1 ~ #main:air run function items:skills/magic/23/ifblock
execute if score @s counting matches 0 unless block ~ ~-1 ~ #main:air run kill @s