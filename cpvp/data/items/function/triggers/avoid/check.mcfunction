#> items:triggers/avoid/check
#
#
#
# @within damage:damage

execute if predicate items:triggers/avoid/mainhand run function items:triggers/avoid/run with entity @s SelectedItem.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/avoid/offhand run function items:triggers/avoid/run with entity @s equipment.offhand.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/avoid/helmet run function items:triggers/avoid/run with entity @s equipment.head.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/avoid/chestplate run function items:triggers/avoid/run with entity @s equipment.chest.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/avoid/leggings run function items:triggers/avoid/run with entity @s equipment.legs.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/avoid/boots run function items:triggers/avoid/run with entity @s equipment.feet.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/avoid/slot0 run function items:triggers/avoid/run with entity @s Inventory[{Slot:0b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/avoid/slot1 run function items:triggers/avoid/run with entity @s Inventory[{Slot:1b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/avoid/slot2 run function items:triggers/avoid/run with entity @s Inventory[{Slot:2b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/avoid/slot3 run function items:triggers/avoid/run with entity @s Inventory[{Slot:3b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/avoid/slot4 run function items:triggers/avoid/run with entity @s Inventory[{Slot:4b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/avoid/slot5 run function items:triggers/avoid/run with entity @s Inventory[{Slot:5b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/avoid/slot6 run function items:triggers/avoid/run with entity @s Inventory[{Slot:6b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/avoid/slot7 run function items:triggers/avoid/run with entity @s Inventory[{Slot:7b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/avoid/slot8 run function items:triggers/avoid/run with entity @s Inventory[{Slot:8b}].components.minecraft:custom_data.cpvp