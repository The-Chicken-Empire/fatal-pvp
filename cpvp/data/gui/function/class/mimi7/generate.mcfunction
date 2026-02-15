scoreboard players reset $tmp tmp
execute store result score $tmp tmp run data get entity @s Inventory
execute if score $tmp tmp matches 34.. run return run function gui:class/mimi6/neinv

function gui:class/remove

function gui:class/mimi7/invcheck
function items:generate/helmet/17/generate
item replace entity @s armor.head from block 0 0 0 container.0
function items:generate/gun/6/generate
#function gui:class/mimi7/replace with storage cpvp:class get.[0]
loot give @s mine 0 0 0 anvil
function items:generate/magic/64/generate
#function gui:class/mimi7/replace with storage cpvp:class get.[1]
loot give @s mine 0 0 0 anvil
function items:generate/offhand/23/generate
#function gui:class/mimi7/replace with storage cpvp:class get.[2]
loot give @s mine 0 0 0 anvil
data remove storage cpvp:class get

tellraw @s [{"text":"クラス","italic":false,color:"white"},{"text":"[Mimi-7]","italic":false,bold:true,color:"blue"},{"text":"の装備・アイテムを配布しました。","italic":false,color:"white"}]
execute at @s run playsound ui.button.click block @s ~ ~ ~ 1 2 1
execute at @s run playsound ui.button.click block @s ~ ~ ~ 1 2 1