tag @s add cp3tmp

execute summon marker run function items:skills/chestplate/3/dsummonmarker
execute at @s run playsound block.end_portal.spawn player @s ~ ~ ~ 0.5 2 0.5
execute at @s run playsound block.enchantment_table.use player @s ~ ~ ~ 0.5 0.5 0.5
execute at @s run particle happy_villager ~ ~1 ~ 0.4 1.2 0.4 0.2 25 normal

tag @s remove cp3tmp