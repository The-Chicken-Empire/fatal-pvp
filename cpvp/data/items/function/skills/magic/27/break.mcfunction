tag @s add magic27break

execute as @e[tag=magic27id] if score @s target = @e[tag=magic27break,limit=1] entitydata run kill @s
execute at @s run playsound block.beacon.deactivate hostile @a[distance=..25] ~ ~ ~ 1 1 0

tag @s remove magic27break