scoreboard players reset $tmp tmp
execute store result score $tmp tmp run data get entity @s Inventory
execute if score $tmp tmp matches 34.. run return run function gui:class/mimi5/neinv

function gui:class/remove

function gui:class/mimi5/invcheck
function items:generate/leggings/17/generate
item replace entity @s armor.legs from block 0 0 0 container.0
function items:generate/magic/61/generate
function gui:class/mimi5/replace with storage cpvp:class get.[0]
function items:generate/magic/62/generate
function gui:class/mimi5/replace with storage cpvp:class get.[1]
function items:generate/perk/48/generate
function gui:class/mimi5/replace with storage cpvp:class get.[2]
data remove storage cpvp:class get

tellraw @s [{"text":"クラス","italic":false,color:"white"},{"text":"[Mimi-5]","italic":false,bold:true,color:"green"},{"text":"の装備・アイテムを配布しました。","italic":false,color:"white"}]
execute at @s run playsound ui.button.click block @s ~ ~ ~ 1 2 1
execute at @s run playsound ui.button.click block @s ~ ~ ~ 1 2 1