tag @s add perk41this
execute as @a[distance=..1,tag=playing] unless score @s teamscore = @a[tag=perk41this,limit=1] teamscore at @s run function items:skills/perk/41/auau
tag @s remove perk41this