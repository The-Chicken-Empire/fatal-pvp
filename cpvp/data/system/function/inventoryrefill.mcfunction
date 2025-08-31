data modify storage inventory inventory set from entity @s Inventory

execute if items entity @s weapon.offhand *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/offhand with entity @s equipment.offhand.components."minecraft:custom_data".cpvp
execute if items entity @s armor.head *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/helmet with entity @s equipment.head.components."minecraft:custom_data".cpvp
execute if items entity @s armor.chest *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/chestplate with entity @s equipment.chest.components."minecraft:custom_data".cpvp
execute if items entity @s armor.legs *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/leggings with entity @s equipment.legs.components."minecraft:custom_data".cpvp
execute if items entity @s armor.feet *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/boots with entity @s equipment.feet.components."minecraft:custom_data".cpvp
execute if items entity @s hotbar.0 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/h0 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s hotbar.0 * run data remove storage inventory inventory.[0]
execute if items entity @s hotbar.1 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/h1 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s hotbar.1 * run data remove storage inventory inventory.[0]
execute if items entity @s hotbar.2 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/h2 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s hotbar.2 * run data remove storage inventory inventory.[0]
execute if items entity @s hotbar.3 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/h3 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s hotbar.3 * run data remove storage inventory inventory.[0]
execute if items entity @s hotbar.4 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/h4 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s hotbar.4 * run data remove storage inventory inventory.[0]
execute if items entity @s hotbar.5 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/h5 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s hotbar.5 * run data remove storage inventory inventory.[0]
execute if items entity @s hotbar.6 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/h6 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s hotbar.6 * run data remove storage inventory inventory.[0]
execute if items entity @s hotbar.7 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/h7 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s hotbar.7 * run data remove storage inventory inventory.[0]
execute if items entity @s hotbar.8 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/h8 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s hotbar.8 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.0 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i0 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.0 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.1 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i1 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.1 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.2 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i2 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.2 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.3 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i3 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.3 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.4 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i4 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.4 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.5 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i5 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.5 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.6 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i6 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.6 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.7 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i7 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.7 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.8 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i8 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.8 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.9 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i9 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.9 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.10 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i10 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.10 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.11 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i11 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp 
execute if items entity @s inventory.11 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.12 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i12 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.12 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.13 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i13 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.13 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.14 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i14 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.14 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.15 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i15 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.15 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.16 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i16 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.16 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.17 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i17 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.17 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.18 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i18 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.18 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.19 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i19 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.19 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.20 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i20 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.20 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.21 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i21 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.21 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.22 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i22 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.22 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.23 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i23 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.23 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.24 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i24 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.24 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.25 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i25 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.25 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.26 *[custom_data~{cpvp:{regularitem:1b}}] run function system:inventoryrefill/i26 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.26 * run data remove storage inventory inventory.[0]
item replace block 0 0 0 container.0 from entity @s player.cursor
function system:inventoryrefill/cursor with block 0 0 0 Items.[0].components."minecraft:custom_data".cpvp