tag @s add cp.this
execute as @a if score @s playerdata = @e[tag=cp.this,limit=1] owner run tag @s add cp.owner
execute unless entity @a[tag=cp.owner] run function items:skills/helmet/4/wings/kill
execute unless items entity @a[tag=cp.owner,limit=1] armor.head golden_hoe[minecraft:custom_data~{cpvp:{id:4b}}] run function items:skills/helmet/4/wings/kill
tag @s remove cp.this
tag @a[tag=cp.owner] remove cp.owner