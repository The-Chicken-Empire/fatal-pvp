tag @s add delete
execute as @e[type=#main:entity_require_id] if score @s owner = @a[tag=delete,limit=1] playerdata run function damage:entity_death
tag @s remove delete