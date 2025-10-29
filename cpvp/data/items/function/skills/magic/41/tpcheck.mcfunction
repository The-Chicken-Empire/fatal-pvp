execute as @e[tag=magic41cordactive] if score @s owner = @e[tag=magic41tmp4,limit=1] owner run tag @s add m41tp
execute as @e[tag=magic41totem] if score @s owner = @e[tag=magic41tmp4,limit=1] owner run tag @s add m41tp2
execute if entity @e[tag=m41tp] as @a if score @s playerdata = @e[tag=magic41tmp4,limit=1] owner run function items:skills/magic/41/tp

kill @s