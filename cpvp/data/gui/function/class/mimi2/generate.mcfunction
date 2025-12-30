scoreboard players reset $tmp tmp
execute store result score $twmp tmp run data get entity @s Inventory
execute if score $tmp tmp matches 34.. run return run function gui:class/mimi2/neinv

function gui:class/remove

function gui:class/mimi2/invcheck
function items:generate/helmet/3/generate
item replace entity @s armor.head from block 0 0 0 container.0
function items:generate/magic/19/generate
function gui:class/mimi2/replace with storage cpvp:class get.[0]
function items:generate/magic/22/generate
function gui:class/mimi2/replace with storage cpvp:class get.[1]
function items:generate/perk/11/generate
function gui:class/mimi2/replace with storage cpvp:class get.[2]
data remove storage cpvp:class get

tellraw @s [{"text":"クラス","italic":false,color:"white"},{"text":"[Mimi-2]","italic":false,bold:true,color:"aqua"},{"text":"の装備・アイテムを配布しました。","italic":false,color:"white"}]
execute at @s run playsound ui.button.click block @s ~ ~ ~ 1 2 1
execute at @s run playsound ui.button.click block @s ~ ~ ~ 1 2 1