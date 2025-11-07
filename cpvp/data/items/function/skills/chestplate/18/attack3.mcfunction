tag @s add cp18tmp

execute as @a[tag=victim,limit=1] at @s as @a[distance=..8] if score @s teamscore = @a[tag=cp18tmp,limit=1] teamscore run tag @s add cp18tmp2
execute unless entity @a[tag=cp18tmp2] run return run tag @s remove cp18tmp

execute as @a[tag=victim] at @s as @a[tag=cp18tmp2,tag=!cp18tmp,sort=nearest,limit=1] run function items:skills/chestplate/18/active
tag @a remove cp18tmp2
tag @s remove cp18tmp