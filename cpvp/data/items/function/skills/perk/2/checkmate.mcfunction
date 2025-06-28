execute as @a[distance=..30,tag=!perk2] if score @s teamscore = @a[tag=perk2,limit=1] teamscore run return 0
return 1