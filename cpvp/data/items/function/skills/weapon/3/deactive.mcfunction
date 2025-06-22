data modify storage inventory inventory set from entity @s Inventory
execute at @s run playsound minecraft:block.glass.break player @a ~ ~ ~ 1 0.5 1
scoreboard players set @s weapon3 0
setblock 0 0 0 shulker_box replace
execute if items entity @s weapon.offhand *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/offhand with entity @s equipment.offhand.components."minecraft:custom_data".cpvp
execute if items entity @s hotbar.0 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/h0 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s hotbar.0 * run data remove storage inventory inventory.[0]
execute if items entity @s hotbar.1 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/h1 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s hotbar.1 * run data remove storage inventory inventory.[0]
execute if items entity @s hotbar.2 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/h2 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s hotbar.2 * run data remove storage inventory inventory.[0]
execute if items entity @s hotbar.3 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/h3 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s hotbar.3 * run data remove storage inventory inventory.[0]
execute if items entity @s hotbar.4 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/h4 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s hotbar.4 * run data remove storage inventory inventory.[0]
execute if items entity @s hotbar.5 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/h5 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s hotbar.5 * run data remove storage inventory inventory.[0]
execute if items entity @s hotbar.6 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/h6 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s hotbar.6 * run data remove storage inventory inventory.[0]
execute if items entity @s hotbar.7 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/h7 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s hotbar.7 * run data remove storage inventory inventory.[0]
execute if items entity @s hotbar.8 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/h8 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s hotbar.8 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.0 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i0 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.0 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.1 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i1 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.1 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.2 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i2 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.2 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.3 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i3 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.3 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.4 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i4 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.4 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.5 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i5 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.5 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.6 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i6 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.6 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.7 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i7 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.7 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.8 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i8 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.8 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.9 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i9 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.9 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.10 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i10 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.10 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.11 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i11 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp 
execute if items entity @s inventory.11 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.12 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i12 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.12 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.13 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i13 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.13 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.14 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i14 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.14 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.15 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i15 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.15 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.16 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i16 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.16 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.17 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i17 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.17 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.18 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i18 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.18 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.19 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i19 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.19 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.20 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i20 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.20 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.21 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i21 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.21 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.22 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i22 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.22 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.23 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i23 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.23 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.24 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i24 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.24 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.25 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i25 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.25 * run data remove storage inventory inventory.[0]
execute if items entity @s inventory.26 *[custom_data~{cpvp:{regularitem:1b,item_type:"weapon",id:3b}}] run function items:skills/weapon/3/search/i26 with storage inventory inventory.[0].components."minecraft:custom_data".cpvp
execute if items entity @s inventory.26 * run data remove storage inventory inventory.[0]
item replace block 0 0 0 container.0 from entity @s player.cursor
function items:skills/weapon/3/search/cursor with block 0 0 0 Items.[0].components."minecraft:custom_data".cpvp
data remove storage inventory inventory
setblock 0 0 0 air replace