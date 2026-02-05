tag @s add gun12owner
execute as @e[tag=gun12marker] if score @s counter2 = @a[tag=gun12owner,limit=1] playerdata run tag @s add gun12this
execute if entity @e[tag=gun12this] run return run function items:skills/gun/12/s2/rend
tag @s remove gun12owner