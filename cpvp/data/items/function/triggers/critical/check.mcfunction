#> items:triggers/critical/check
#
#
#
# @within damage:damage

execute if predicate items:triggers/critical/mainhand run function items:triggers/critical/run with entity @s SelectedItem.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/critical/offhand run function items:triggers/critical/run with entity @s equipment.offhand.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/critical/helmet run function items:triggers/critical/run with entity @s equipment.head.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/critical/chestplate run function items:triggers/critical/run with entity @s equipment.chest.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/critical/leggings run function items:triggers/critical/run with entity @s equipment.legs.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/critical/boots run function items:triggers/critical/run with entity @s equipment.feet.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/critical/slot0 run function items:triggers/critical/run with entity @s Inventory[{Slot:0b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/critical/slot1 run function items:triggers/critical/run with entity @s Inventory[{Slot:1b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/critical/slot2 run function items:triggers/critical/run with entity @s Inventory[{Slot:2b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/critical/slot3 run function items:triggers/critical/run with entity @s Inventory[{Slot:3b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/critical/slot4 run function items:triggers/critical/run with entity @s Inventory[{Slot:4b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/critical/slot5 run function items:triggers/critical/run with entity @s Inventory[{Slot:5b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/critical/slot6 run function items:triggers/critical/run with entity @s Inventory[{Slot:6b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/critical/slot7 run function items:triggers/critical/run with entity @s Inventory[{Slot:7b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/critical/slot8 run function items:triggers/critical/run with entity @s Inventory[{Slot:8b}].components.minecraft:custom_data.cpvp