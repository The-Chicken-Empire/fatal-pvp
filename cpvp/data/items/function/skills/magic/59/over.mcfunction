scoreboard players set $eng main 5
function api:charge/
scoreboard players set $tmp2 tmp 5
scoreboard players operation $tmp2 tmp -= $tmp tmp
execute if entity @s[tag=perk15] run scoreboard players add $tmp2 tmp 1
scoreboard players operation $tmp2 tmp *= $10 main

scoreboard players operation $absorption main = $tmp2 tmp
scoreboard players set $maxabsorption main 100
function api:absorption/