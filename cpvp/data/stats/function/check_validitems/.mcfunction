#> stats:check_validitems/
#
# 現在装備状態のアイテムの一覧を取得する
# cpvp:stats $validitemsに保存する
# equipとunequipトリガーを起動する
#
# @within system:invchange

# 一度このエンティティの全データを保存しておく
data modify storage cpvp:stats $stats set from entity @s

# 前回のストレージを初期化
data modify storage cpvp:stats $validitems set value []

# 装備部位が有効であれば$validitemsに追加する
execute if predicate stats:mainhanditem run data modify storage cpvp:stats $validitems append value {}
execute if predicate stats:mainhanditem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.SelectedItem.components.minecraft:custom_data.cpvp.mainhand
execute if predicate stats:mainhanditem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.SelectedItem.components.minecraft:custom_data.cpvp

execute if predicate stats:mainhanditem2 run data modify storage cpvp:stats $validitems append value {}
execute if predicate stats:mainhanditem2 run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.SelectedItem.components.minecraft:custom_data.cpvp.mainhand
execute if predicate stats:mainhanditem2 run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.SelectedItem.components.minecraft:custom_data.cpvp

execute if predicate stats:offhanditem run data modify storage cpvp:stats $validitems append value {}
execute if predicate stats:offhanditem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.equipment.offhand.components.minecraft:custom_data.cpvp.offhand
execute if predicate stats:offhanditem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.equipment.offhand.components.minecraft:custom_data.cpvp

execute if predicate stats:headitem run data modify storage cpvp:stats $validitems append value {}
execute if predicate stats:headitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.equipment.head.components.minecraft:custom_data.cpvp.helmet
execute if predicate stats:headitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.equipment.head.components.minecraft:custom_data.cpvp

execute if predicate stats:chestitem run data modify storage cpvp:stats $validitems append value {}
execute if predicate stats:chestitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.equipment.chest.components.minecraft:custom_data.cpvp.chestplate
execute if predicate stats:chestitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.equipment.chest.components.minecraft:custom_data.cpvp

execute if predicate stats:legsitem run data modify storage cpvp:stats $validitems append value {}
execute if predicate stats:legsitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.equipment.legs.components.minecraft:custom_data.cpvp.leggings
execute if predicate stats:legsitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.equipment.legs.components.minecraft:custom_data.cpvp

execute if predicate stats:feetitem run data modify storage cpvp:stats $validitems append value {}
execute if predicate stats:feetitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.equipment.feet.components.minecraft:custom_data.cpvp.boots
execute if predicate stats:feetitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.equipment.feet.components.minecraft:custom_data.cpvp

execute if predicate stats:hot0perkitem run data modify storage cpvp:stats $validitems append value {}
execute if predicate stats:hot0perkitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.Inventory[{Slot:0b}].components.minecraft:custom_data.cpvp.hotbar
execute if predicate stats:hot0perkitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.Inventory[{Slot:0b}].components.minecraft:custom_data.cpvp

execute if predicate stats:hot1perkitem run data modify storage cpvp:stats $validitems append value {}
execute if predicate stats:hot1perkitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.Inventory[{Slot:1b}].components.minecraft:custom_data.cpvp.hotbar
execute if predicate stats:hot1perkitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.Inventory[{Slot:1b}].components.minecraft:custom_data.cpvp

execute if predicate stats:hot2perkitem run data modify storage cpvp:stats $validitems append value {}
execute if predicate stats:hot2perkitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.Inventory[{Slot:2b}].components.minecraft:custom_data.cpvp.hotbar
execute if predicate stats:hot2perkitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.Inventory[{Slot:2b}].components.minecraft:custom_data.cpvp

execute if predicate stats:hot3perkitem run data modify storage cpvp:stats $validitems append value {}
execute if predicate stats:hot3perkitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.Inventory[{Slot:3b}].components.minecraft:custom_data.cpvp.hotbar
execute if predicate stats:hot3perkitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.Inventory[{Slot:3b}].components.minecraft:custom_data.cpvp

execute if predicate stats:hot4perkitem run data modify storage cpvp:stats $validitems append value {}
execute if predicate stats:hot4perkitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.Inventory[{Slot:4b}].components.minecraft:custom_data.cpvp.hotbar
execute if predicate stats:hot4perkitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.Inventory[{Slot:4b}].components.minecraft:custom_data.cpvp

execute if predicate stats:hot5perkitem run data modify storage cpvp:stats $validitems append value {}
execute if predicate stats:hot5perkitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.Inventory[{Slot:5b}].components.minecraft:custom_data.cpvp.hotbar
execute if predicate stats:hot5perkitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.Inventory[{Slot:5b}].components.minecraft:custom_data.cpvp

execute if predicate stats:hot6perkitem run data modify storage cpvp:stats $validitems append value {}
execute if predicate stats:hot6perkitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.Inventory[{Slot:6b}].components.minecraft:custom_data.cpvp.hotbar
execute if predicate stats:hot6perkitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.Inventory[{Slot:6b}].components.minecraft:custom_data.cpvp

execute if predicate stats:hot7perkitem run data modify storage cpvp:stats $validitems append value {}
execute if predicate stats:hot7perkitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.Inventory[{Slot:7b}].components.minecraft:custom_data.cpvp.hotbar
execute if predicate stats:hot7perkitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.Inventory[{Slot:7b}].components.minecraft:custom_data.cpvp

execute if predicate stats:hot8perkitem run data modify storage cpvp:stats $validitems append value {}
execute if predicate stats:hot8perkitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.Inventory[{Slot:8b}].components.minecraft:custom_data.cpvp.hotbar
execute if predicate stats:hot8perkitem run data modify storage cpvp:stats $validitems[-1] merge from storage cpvp:stats $stats.Inventory[{Slot:8b}].components.minecraft:custom_data.cpvp

# トリガーの確認、プレイヤーごとのストレージ装備データをセット
data modify storage cpvp:stats tmp.UUID set from entity @s UUID
function stats:check_validitems/check_triggers with storage cpvp:stats tmp

# リセット
data remove storage cpvp:stats $validitems
data remove storage cpvp:stats $stats