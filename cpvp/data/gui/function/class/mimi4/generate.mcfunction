scoreboard players reset $tmp tmp
execute store result score $twmp tmp run data get entity @s Inventory
execute if score $tmp tmp matches 34.. run return run function gui:class/mimi4/neinv

function gui:class/remove

function gui:class/mimi4/invcheck
function items:generate/boots/6/generate
item replace entity @s armor.feet from block 0 0 0 container.0
function items:generate/weapon/10/generate
function gui:class/mimi4/replace with storage cpvp:class get.[0]
function items:generate/magic/55/generate
function gui:class/mimi4/replace with storage cpvp:class get.[1]
function items:generate/food/4/generate
function gui:class/mimi4/replace with storage cpvp:class get.[2]
data remove storage cpvp:class get

tellraw @s [{"text":"クラス","italic":false,color:"white"},{"text":"[Mimi-4]","italic":false,bold:true,color:"dark_red"},{"text":"の装備・アイテムを配布しました。","italic":false,color:"white"}]
execute at @s run playsound ui.button.click block @s ~ ~ ~ 1 2 1
execute at @s run playsound ui.button.click block @s ~ ~ ~ 1 2 1