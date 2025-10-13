tag @s add magic43tmp2

execute if score @s skills matches 14 at @s run function items:skills/magic/43/explode
execute at @s run particle flame ~ ~ ~ 0 0 0 0 1 normal

tag @s remove magic43tmp2