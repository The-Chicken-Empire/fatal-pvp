tag @s add w4tmpcheck-2
execute if score @s skills matches 1 as @e[tag=weapon4-4] if score @s playerdata = @e[tag=w4tmpcheck-2,limit=1] owner at @s positioned ~ ~1 ~ rotated as @e[tag=w4tmpcheck-2,limit=1] run function items:skills/weapon/4_old/particles3
execute if score @s skills matches 3 as @e[tag=weapon4-4] if score @s playerdata = @e[tag=w4tmpcheck-2,limit=1] owner at @s positioned ~ ~1 ~ rotated as @e[tag=w4tmpcheck-2,limit=1] run function items:skills/weapon/4_old/particles3
execute if score @s skills matches 5 as @e[tag=weapon4-4] if score @s playerdata = @e[tag=w4tmpcheck-2,limit=1] owner at @s positioned ~ ~1 ~ rotated as @e[tag=w4tmpcheck-2,limit=1] run function items:skills/weapon/4_old/particles3
execute if score @s skills matches 6.. as @e[tag=weapon4-4] if score @s playerdata = @e[tag=w4tmpcheck-2,limit=1] owner run tag @s remove weapon4-4
tag @s remove w4tmpcheck-2


execute if score @s skills matches 6.. run kill @s