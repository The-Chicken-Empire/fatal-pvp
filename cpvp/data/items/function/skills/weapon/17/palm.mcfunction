item replace entity @s armor.chest with netherite_chestplate

execute at @s run playsound minecraft:block.respawn_anchor.set_spawn block @a ~ ~ ~ 2 1.5
execute at @s run particle minecraft:enchanted_hit ~ ~1.5 ~ 1.5 1.5 1.5 0.1 200 force

item modify entity @s armor.chest items:generate/chestplate/20/item
item modify entity @s armor.chest items:generate/chestplate/20/name
item modify entity @s armor.chest items:generate/chestplate/20/custom_data
item modify entity @s armor.chest items:generate/chestplate/20/stats
item modify entity @s armor.chest items:generate/chestplate/20/ability
item modify entity @s armor.chest items:generate/chestplate/20/parts
item modify entity @s armor.chest items:generate/chestplate/20/flavor
item modify entity @s armor.chest items:generate/chestplate/20/others

tag @s add w17activated