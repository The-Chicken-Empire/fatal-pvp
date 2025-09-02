tag @s add w5tmp
execute as @a[distance=..8,tag=!w5tmp] if score @s teamscore = @a[tag=w5tmp,tag=meleeatker,limit=1] teamscore run function items:skills/weapon/5/buff
scoreboard players reset $tmp tmp
tag @s remove w5tmp