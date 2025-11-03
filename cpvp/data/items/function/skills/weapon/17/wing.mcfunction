item replace entity @s armor.chest with elytra[!glider]

execute at @s run playsound minecraft:entity.turtle.egg_break neutral @a ~ ~ ~ 1 0
execute at @s run playsound minecraft:block.bell.resonate block @a ~ ~ ~ 2 2
execute at @s run particle landing_lava ~ ~1 ~ 2 2 2 0 200 force

item modify entity @s armor.chest items:generate/chestplate/19/item
item modify entity @s armor.chest items:generate/chestplate/19/name
item modify entity @s armor.chest items:generate/chestplate/19/custom_data
item modify entity @s armor.chest items:generate/chestplate/19/stats
item modify entity @s armor.chest items:generate/chestplate/19/ability
item modify entity @s armor.chest items:generate/chestplate/19/parts
item modify entity @s armor.chest items:generate/chestplate/19/flavor
item modify entity @s armor.chest items:generate/chestplate/19/others

tag @s add w17activated