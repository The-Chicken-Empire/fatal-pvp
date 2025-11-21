tag @s add perk44tmp
execute at @s as @e[tag=!perk44enemytmp,tag=playing,distance=..7] unless score @s teamscore = @n[tag=perk44tmp] teamscore run function items:skills/perk/44/enemy
tag @s remove perk44tmp
