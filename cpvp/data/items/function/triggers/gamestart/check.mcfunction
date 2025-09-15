#> items:triggers/gamestart/check
#
#
#
# @within damage:damage

execute if predicate items:triggers/gamestart/mainhand run function items:triggers/gamestart/run with entity @s SelectedItem.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/gamestart/offhand run function items:triggers/gamestart/run with entity @s equipment.offhand.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/gamestart/helmet run function items:triggers/gamestart/run with entity @s equipment.head.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/gamestart/chestplate run function items:triggers/gamestart/run with entity @s equipment.chest.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/gamestart/leggings run function items:triggers/gamestart/run with entity @s equipment.legs.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/gamestart/boots run function items:triggers/gamestart/run with entity @s equipment.feet.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/gamestart/slot0 run function items:triggers/gamestart/run with entity @s Inventory[{Slot:0b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/gamestart/slot1 run function items:triggers/gamestart/run with entity @s Inventory[{Slot:1b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/gamestart/slot2 run function items:triggers/gamestart/run with entity @s Inventory[{Slot:2b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/gamestart/slot3 run function items:triggers/gamestart/run with entity @s Inventory[{Slot:3b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/gamestart/slot4 run function items:triggers/gamestart/run with entity @s Inventory[{Slot:4b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/gamestart/slot5 run function items:triggers/gamestart/run with entity @s Inventory[{Slot:5b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/gamestart/slot6 run function items:triggers/gamestart/run with entity @s Inventory[{Slot:6b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/gamestart/slot7 run function items:triggers/gamestart/run with entity @s Inventory[{Slot:7b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/gamestart/slot8 run function items:triggers/gamestart/run with entity @s Inventory[{Slot:8b}].components.minecraft:custom_data.cpvp