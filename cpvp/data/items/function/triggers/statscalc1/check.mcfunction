#> items:triggers/statscalc1/check
#
#
#
# @within damage:damage

execute if predicate items:triggers/statscalc1/mainhand run function items:triggers/statscalc1/run with entity @s SelectedItem.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/statscalc1/offhand run function items:triggers/statscalc1/run with entity @s equipment.offhand.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/statscalc1/helmet run function items:triggers/statscalc1/run with entity @s equipment.head.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/statscalc1/chestplate run function items:triggers/statscalc1/run with entity @s equipment.chest.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/statscalc1/leggings run function items:triggers/statscalc1/run with entity @s equipment.legs.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/statscalc1/boots run function items:triggers/statscalc1/run with entity @s equipment.feet.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/statscalc1/slot0 run function items:triggers/statscalc1/run with entity @s Inventory[{Slot:0b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/statscalc1/slot1 run function items:triggers/statscalc1/run with entity @s Inventory[{Slot:1b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/statscalc1/slot2 run function items:triggers/statscalc1/run with entity @s Inventory[{Slot:2b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/statscalc1/slot3 run function items:triggers/statscalc1/run with entity @s Inventory[{Slot:3b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/statscalc1/slot4 run function items:triggers/statscalc1/run with entity @s Inventory[{Slot:4b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/statscalc1/slot5 run function items:triggers/statscalc1/run with entity @s Inventory[{Slot:5b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/statscalc1/slot6 run function items:triggers/statscalc1/run with entity @s Inventory[{Slot:6b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/statscalc1/slot7 run function items:triggers/statscalc1/run with entity @s Inventory[{Slot:7b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/statscalc1/slot8 run function items:triggers/statscalc1/run with entity @s Inventory[{Slot:8b}].components.minecraft:custom_data.cpvp