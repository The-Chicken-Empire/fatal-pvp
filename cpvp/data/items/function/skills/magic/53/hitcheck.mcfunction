execute at @s run particle smoke ~ ~ ~ 0 0 0 0.4 7
execute at @s run particle squid_ink ~ ~ ~ 2 2 2 0.15 8
execute at @s run particle dust{color:0,scale:1.5} ~ ~ ~ 1.2 1.2 1.2 0.2 8

execute as @e[tag=playing,distance=..6] unless score @s teamscore = @a[tag=magic53tmp,limit=1] teamscore run function items:skills/magic/53/hit