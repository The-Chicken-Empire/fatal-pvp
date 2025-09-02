tag @s add cp.owner
execute as @e[tag=seraph_wing] if score @s owner = @a[tag=cp.owner,limit=1] playerdata run tag @s add cp.this
execute unless entity @e[tag=cp.this,limit=1] summon item_display run function items:skills/helmet/4/wings/summon

execute if entity @s[predicate=items:helmet/4/sprint] as @e[tag=seraph_wing,tag=!seraph_wing.sprinting] run function items:skills/helmet/4/wings/tick2
execute if entity @s[predicate=items:helmet/4/sprint] as @e[tag=seraph_wing,tag=seraph_wing.sprinting] run function items:skills/helmet/4/wings/tick4
execute if entity @s[predicate=!items:helmet/4/sprint] as @e[tag=seraph_wing] run function items:skills/helmet/4/wings/tick3

execute unless predicate items:helmet/4/w_s anchored eyes positioned ^ ^-0.2 ^-0.3 rotated ~ 22.5 as @e[tag=cp.this,limit=1] run tp @s ^ ^ ^ ~ ~

execute if predicate items:helmet/4/w_s anchored eyes positioned ^ ^0.4 ^0.2 rotated ~ 0 as @e[tag=cp.this,limit=1] run tp @s ^ ^ ^ ~ ~





tag @s remove cp.owner
tag @e[tag=cp.this] remove cp.this
