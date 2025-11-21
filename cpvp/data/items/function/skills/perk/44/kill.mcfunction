tag @s add perk44tmp
execute as @e[tag=playing] unless score @s teamscore = @n[tag=perk44tmp] teamscore run tag @s add perk44victim
execute at @s as @p[tag=perk44victim] at @s run function items:skills/perk/44/gaze
tag @e remove perk44victim
tag @s remove perk44tmp
