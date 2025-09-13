tag @s add deathtmp
execute as @e if score @s owner = @a[tag=deathtmp,limit=1] playerdata on passengers run kill @s
execute as @e if score @s owner = @a[tag=deathtmp,limit=1] playerdata run kill @s
tag @s remove deathtmp
tag @s remove death