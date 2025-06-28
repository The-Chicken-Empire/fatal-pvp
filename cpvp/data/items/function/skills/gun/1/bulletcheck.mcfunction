#弾なし弾
scoreboard players set @s gunreload 0
execute unless data entity @s equipment.offhand.components."minecraft:custom_data".cpvp.item_type.bullet run function items:skills/bullet/0/check {function:"items:skills/gun/1/reload"}
#弾あり弾
execute if data entity @s equipment.offhand.components."minecraft:custom_data".cpvp.item_type.bullet run data modify storage tmp info.bullet set from entity @s equipment.offhand.components."minecraft:custom_data".cpvp.bullet
execute if data entity @s equipment.offhand.components."minecraft:custom_data".cpvp.item_type.bullet run data modify storage tmp info.gun set value {function:"items:skills/gun/1/reload"}
execute if data entity @s equipment.offhand.components."minecraft:custom_data".cpvp.item_type.bullet run function items:skills/bullet/bulletinfo with storage tmp info
data remove storage tmp info