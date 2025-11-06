scoreboard players operation #counter counter = @e[tag=victim,limit=1] maxhp
scoreboard players operation #counter counter /= $5 main
execute if score #counter counter >= @e[tag=victim,limit=1] hp at @s run function items:skills/magic/38/s1/bukkorosu

scoreboard players reset #counter counter