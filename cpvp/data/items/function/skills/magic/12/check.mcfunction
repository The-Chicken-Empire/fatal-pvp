execute if entity @s[gamemode=spectator] run return fail
execute if score @s teamscore = @e[tag=magic12tmp2,limit=1] teamscore run return fail

tag @s add magic12victim
#ダメージctのcheck
scoreboard players set $tmp tmp 0
execute as @e[type=marker,tag=magic12ct] if score @s magic12-3 = @e[tag=magic12victim,limit=1] entitydata if score @s magic12-4 = @e[tag=magic12tmp2,limit=1] markerid run scoreboard players set $tmp tmp 1

execute if score $tmp tmp matches 1 run return run tag @s remove magic12victim

function items:skills/magic/12/hit

tag @s remove magic12victim