tag @s add magic25tmp2
execute if score @s skills matches 200.. run kill @s
execute as @a if score @s playerdata = @e[tag=magic25tmp2,limit=1] owner at @s run particle soul_fire_flame ~ ~2 ~ 0.2 0 0.2 0.04 2 normal
tag @s add magic25tmp2