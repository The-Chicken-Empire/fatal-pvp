tag @s add perk36tmp
execute as @a if score @s playerdata = @e[tag=perk36tmp,limit=1] owner at @s run function items:skills/perk/36/s2/hit
tag @s remove perk36tmp











kill @s