execute unless score $1s timer matches 0 run return fail

scoreboard players set $tmp tmp 0
tag @s add offhand13tick
execute at @s as @a[distance=..10] unless score @s teamscore = @a[tag=offhand13tick,limit=1] teamscore run function items:skills/offhand/13/getburn
tag @s remove offhand13tick
scoreboard players operation $tmp tmp += $5 main
scoreboard players operation $heal main = $tmp tmp
scoreboard players reset $tmp tmp
scoreboard players reset $tmp2 tmp
tag @s add healer
execute if score $heal main matches 1.. at @s run particle flame ~ ~1 ~ 0.3 0.6 0.3 0 10 normal
function api:heal/