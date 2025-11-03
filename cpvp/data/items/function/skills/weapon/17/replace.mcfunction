execute at @s run playsound minecraft:entity.turtle.egg_break neutral @a ~ ~ ~ 1 0
execute at @s run playsound minecraft:block.bell.resonate block @a ~ ~ ~ 2 2
execute at @s run particle dripping_dripstone_lava ~ ~1 ~ 2 2 2 0 200 force
execute at @s run playsound minecraft:block.respawn_anchor.set_spawn block @a ~ ~ ~ 2 1.5
execute at @s run particle minecraft:enchanted_hit ~ ~1.5 ~ 1.5 1.5 1.5 0.1 200 force
execute at @s run particle minecraft:block_crumble{block_state:raw_gold_block} ~ ~1 ~ 3 3 3 0.5 500 force
execute at @s run playsound minecraft:entity.evoker.prepare_attack hostile @a ~ ~ ~ 1 0.8

clear @s *[custom_data~{id:17b,item_type:"weapon"}]

item replace entity @s weapon.mainhand with netherite_sword

item modify entity @s weapon.mainhand items:generate/weapon/18/item
item modify entity @s weapon.mainhand items:generate/weapon/18/name
item modify entity @s weapon.mainhand items:generate/weapon/18/custom_data
item modify entity @s weapon.mainhand items:generate/weapon/18/stats
item modify entity @s weapon.mainhand items:generate/weapon/18/ability
item modify entity @s weapon.mainhand items:generate/weapon/18/parts
item modify entity @s weapon.mainhand items:generate/weapon/18/flavor
item modify entity @s weapon.mainhand items:generate/weapon/18/others

item replace entity @s armor.chest with elytra[!glider]

item modify entity @s armor.chest items:generate/chestplate/19/item
item modify entity @s armor.chest items:generate/chestplate/19/name
item modify entity @s armor.chest items:generate/chestplate/19/custom_data
item modify entity @s armor.chest items:generate/chestplate/19/stats
item modify entity @s armor.chest items:generate/chestplate/19/ability
item modify entity @s armor.chest items:generate/chestplate/19/parts
item modify entity @s armor.chest items:generate/chestplate/19/flavor
item modify entity @s armor.chest items:generate/chestplate/19/others

function effects:system/modify/ {id:21,duration:16,level:1}
