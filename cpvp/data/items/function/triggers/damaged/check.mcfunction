#> items:triggers/damaged/check
#
#
#
# @within damage:damage

execute if predicate items:triggers/damaged/mainhand run function items:triggers/damaged/run with entity @s SelectedItem.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/damaged/offhand run function items:triggers/damaged/run with entity @s equipment.offhand.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/damaged/helmet run function items:triggers/damaged/run with entity @s equipment.head.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/damaged/chestplate run function items:triggers/damaged/run with entity @s equipment.chest.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/damaged/leggings run function items:triggers/damaged/run with entity @s equipment.legs.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/damaged/boots run function items:triggers/damaged/run with entity @s equipment.feet.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/damaged/slot0 run function items:triggers/damaged/run with entity @s Inventory[{Slot:0b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/damaged/slot1 run function items:triggers/damaged/run with entity @s Inventory[{Slot:1b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/damaged/slot2 run function items:triggers/damaged/run with entity @s Inventory[{Slot:2b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/damaged/slot3 run function items:triggers/damaged/run with entity @s Inventory[{Slot:3b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/damaged/slot4 run function items:triggers/damaged/run with entity @s Inventory[{Slot:4b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/damaged/slot5 run function items:triggers/damaged/run with entity @s Inventory[{Slot:5b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/damaged/slot6 run function items:triggers/damaged/run with entity @s Inventory[{Slot:6b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/damaged/slot7 run function items:triggers/damaged/run with entity @s Inventory[{Slot:7b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/damaged/slot8 run function items:triggers/damaged/run with entity @s Inventory[{Slot:8b}].components.minecraft:custom_data.cpvp