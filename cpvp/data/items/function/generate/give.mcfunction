#> items:generate/give
#
# コンテナに入っているアイテムを実行者に渡す
#
# @public

execute at @s run summon item ~ ~ ~ {Tags:["cpvp.targetitem"],Item:{id:"minecraft:debug_stick",count:1}}

execute if entity @e[tag=cpvp.targetitem, limit = 1] as @e[tag=cpvp.targetitem, limit = 1] run data modify entity @s Item set from block 0 0 0 Items[0]
execute if entity @e[tag=cpvp.targetitem, limit = 1] as @e[tag=cpvp.targetitem, limit = 1] run tag @s remove cpvp.targetitem

# デバッグスティックのままなら消す
kill @e[type=item, nbt={Item:{id:"minecraft:debug_stick"}}]