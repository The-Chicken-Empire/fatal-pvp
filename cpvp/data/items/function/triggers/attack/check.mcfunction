#> items:triggers/attack/check
#
#
#
# @within damage:damage

execute if predicate items:triggers/attack/mainhand run function items:triggers/attack/run with entity @s SelectedItem.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/attack/offhand run function items:triggers/attack/run with entity @s equipment.offhand.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/attack/helmet run function items:triggers/attack/run with entity @s equipment.head.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/attack/chestplate run function items:triggers/attack/run with entity @s equipment.chest.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/attack/leggings run function items:triggers/attack/run with entity @s equipment.legs.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/attack/boots run function items:triggers/attack/run with entity @s equipment.feet.components.minecraft:custom_data.cpvp
execute if predicate items:triggers/attack/slot0 run function items:triggers/attack/run with entity @s Inventory[{Slot:0b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/attack/slot1 run function items:triggers/attack/run with entity @s Inventory[{Slot:1b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/attack/slot2 run function items:triggers/attack/run with entity @s Inventory[{Slot:2b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/attack/slot3 run function items:triggers/attack/run with entity @s Inventory[{Slot:3b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/attack/slot4 run function items:triggers/attack/run with entity @s Inventory[{Slot:4b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/attack/slot5 run function items:triggers/attack/run with entity @s Inventory[{Slot:5b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/attack/slot6 run function items:triggers/attack/run with entity @s Inventory[{Slot:6b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/attack/slot7 run function items:triggers/attack/run with entity @s Inventory[{Slot:7b}].components.minecraft:custom_data.cpvp
execute if predicate items:triggers/attack/slot8 run function items:triggers/attack/run with entity @s Inventory[{Slot:8b}].components.minecraft:custom_data.cpvp