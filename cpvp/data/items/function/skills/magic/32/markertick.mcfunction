tag @s add magic32dashtmp

execute as @a if score @s playerdata = @e[tag=magic32dashtmp,limit=1] target at @s run function items:skills/magic/32/dashtick

tag @s remove magic32dashtmp