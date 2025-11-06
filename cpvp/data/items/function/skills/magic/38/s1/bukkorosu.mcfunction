scoreboard players reset #counter counter
scoreboard players set @e[tag=victim,limit=1] hp 0
execute as @e[tag=victim,limit=1] at @s run function items:skills/magic/38/s1/particle

