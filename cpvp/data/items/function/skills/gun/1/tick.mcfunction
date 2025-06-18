#リロード時間
execute if predicate items:sneak unless data entity @s SelectedItem.components."minecraft:custom_data".cpvp.bullet run scoreboard players add @s gunreload 1
execute if score @s gunreload matches 40.. run function items:skills/gun/1/bulletcheck
