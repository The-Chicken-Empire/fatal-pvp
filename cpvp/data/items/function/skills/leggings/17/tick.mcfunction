tag @s add leg17stmp
execute if score $1s timer matches 1 as @e[tag=playing,distance=..6,tag=!leg17stmp] unless score @s teamscore = @a[tag=leg17stmp,limit=1] teamscore run function items:skills/leggings/17/1s
tag @s remove leg17stmp
scoreboard players reset $tmp tmp