#名前変更
execute store result score $dummy bulletcheck run data get entity @s SelectedItem.components."minecraft:custom_data".cpvp.bullet
function items:skills/bullet/bulletcheck
data modify storage name gun set value {"bold":true,"color":"white","italic":false,"text":"ハンドガン"}
item modify entity @s weapon.mainhand items:gunname

#reset
data remove storage name gun
data remove storage name bullet
scoreboard players reset $dummy bulletcheck