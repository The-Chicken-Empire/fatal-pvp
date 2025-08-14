tag @s add perk6tmp
scoreboard players set $tmp tmp 2147483647
execute if entity @a[distance=..16,tag=alive] as @a[distance=..16,tag=alive] unless score @s teamscore = @a[tag=perk6tmp,limit=1] teamscore run function items:skills/perk/6/getminhp
## バフシステムができてないので後回し
# execute if entity @a[distance=..16,tag=alive] as @a[distance=..16,tag=alive] if score @s hp = $tmp tmp run tag @s add perk6target
# execute if entity @a[tag=perk6target] as @a[tag=perk6target,sort=nearest,limit=1] run function items:skills/perk/6/debuff
# tag @a[tag=perk6target] remove perk6target
scoreboard players reset $tmp tmp
tag @s remove perk6tmp