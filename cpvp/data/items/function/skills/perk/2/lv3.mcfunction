setblock 0 0 0 shulker_box replace
function items:generate/perk/2/generate
item modify block 0 0 0 container.0 items:perk/2/lv3


execute if items entity @s hotbar.0 *[custom_data~{cpvp:{id:2b,item_type:"perk"}}] run item replace entity @s hotbar.0 from block 0 0 0 container.0
execute if items entity @s hotbar.1 *[custom_data~{cpvp:{id:2b,item_type:"perk"}}] run item replace entity @s hotbar.1 from block 0 0 0 container.0
execute if items entity @s hotbar.2 *[custom_data~{cpvp:{id:2b,item_type:"perk"}}] run item replace entity @s hotbar.2 from block 0 0 0 container.0
execute if items entity @s hotbar.3 *[custom_data~{cpvp:{id:2b,item_type:"perk"}}] run item replace entity @s hotbar.3 from block 0 0 0 container.0
execute if items entity @s hotbar.4 *[custom_data~{cpvp:{id:2b,item_type:"perk"}}] run item replace entity @s hotbar.4 from block 0 0 0 container.0
execute if items entity @s hotbar.5 *[custom_data~{cpvp:{id:2b,item_type:"perk"}}] run item replace entity @s hotbar.5 from block 0 0 0 container.0
execute if items entity @s hotbar.6 *[custom_data~{cpvp:{id:2b,item_type:"perk"}}] run item replace entity @s hotbar.6 from block 0 0 0 container.0
execute if items entity @s hotbar.7 *[custom_data~{cpvp:{id:2b,item_type:"perk"}}] run item replace entity @s hotbar.7 from block 0 0 0 container.0
execute if items entity @s hotbar.8 *[custom_data~{cpvp:{id:2b,item_type:"perk"}}] run item replace entity @s hotbar.8 from block 0 0 0 container.0
execute at @s run playsound block.enchantment_table.use player @s ~ ~ ~ 1 1.5 1
execute at @s run playsound block.enchantment_table.use player @s ~ ~ ~ 1 1.5 1
scoreboard players set @s perk2-2 3