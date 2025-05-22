scoreboard players set @s maxhp 0
scoreboard players set @s maxmp 0
scoreboard players set @s mr 0
scoreboard players set @s normaldef 0
scoreboard players set @s magicdef 0
scoreboard players set @s meleedef 0
scoreboard players set @s rangedef 0
scoreboard players set @s speed 0
scoreboard players set @s vit 0
scoreboard players set @s normaldmg 0
scoreboard players set @s magicdmg 0
scoreboard players set @s meleedmg 0
scoreboard players set @s rangedmg 0
scoreboard players set @s cc 0
scoreboard players set @s agi 0
scoreboard players set @s maxeng 0
scoreboard players set @s itemcost 0
scoreboard players set $dummy statscalc 0

data remove storage cpvp:stats $dummy

execute if predicate stats:mainhanditem run data modify storage cpvp:stats $dummy set from entity @s SelectedItem
execute if predicate stats:offhanditem run data modify storage cpvp:stats $dummy set from entity @s equipment.offhand
function stats:statscalc2
execute if predicate stats:headitem run data modify storage cpvp:stats $dummy set from entity @s equipment.head
function stats:statscalc2
execute if predicate stats:chestitem run data modify storage cpvp:stats $dummy set from entity @s equipment.chest
function stats:statscalc2
execute if predicate stats:legsitem run data modify storage cpvp:stats $dummy set from entity @s equipment.legs
function stats:statscalc2
execute if predicate stats:feetitem run data modify storage cpvp:stats $dummy set from entity @s equipment.feet
function stats:statscalc2
execute if predicate stats:hot0perkitem run data modify storage cpvp:stats $dummy set from entity @s Inventory[{Slot:0b}]
function stats:statscalc2
execute if predicate stats:hot1perkitem run data modify storage cpvp:stats $dummy set from entity @s Inventory[{Slot:1b}]
function stats:statscalc2
execute if predicate stats:hot2perkitem run data modify storage cpvp:stats $dummy set from entity @s Inventory[{Slot:2b}]
function stats:statscalc2
execute if predicate stats:hot3perkitem run data modify storage cpvp:stats $dummy set from entity @s Inventory[{Slot:3b}]
function stats:statscalc2
execute if predicate stats:hot4perkitem run data modify storage cpvp:stats $dummy set from entity @s Inventory[{Slot:4b}]
function stats:statscalc2
execute if predicate stats:hot5perkitem run data modify storage cpvp:stats $dummy set from entity @s Inventory[{Slot:5b}]
function stats:statscalc2
execute if predicate stats:hot6perkitem run data modify storage cpvp:stats $dummy set from entity @s Inventory[{Slot:6b}]
function stats:statscalc2
execute if predicate stats:hot7perkitem run data modify storage cpvp:stats $dummy set from entity @s Inventory[{Slot:7b}]
function stats:statscalc2
execute if predicate stats:hot8perkitem run data modify storage cpvp:stats $dummy set from entity @s Inventory[{Slot:8b}]
function stats:statscalc2

#没
#execute store result score @s statsmath run data get storage cpvp:statsmath $temp.equipment.offhand.components.minecraft:custom_data.cpvp-mr
#scoreboard players operation @s mr += @s statsmath
#execute store result score @s statsmath run data get storage cpvp:statsmath $temp.equipment.offhand.components.minecraft:custom_data.cpvp-mr