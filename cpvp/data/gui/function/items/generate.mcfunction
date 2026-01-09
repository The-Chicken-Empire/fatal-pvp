scoreboard players reset $tmp tmp
execute store result score $tmp tmp run data get entity @s Inventory
execute if score $tmp tmp matches 36.. run return run function gui:items/neinv

function system:cost/costcalc1
$scoreboard players add @s itemcost $(cost)
execute if score $maxcost itemcost < @s itemcost run return run function gui:items/costover
scoreboard players reset @s itemcost

$clear @s *[minecraft:custom_data~{cpvp:{item_type:$(type),id:$(id)}}]
$function items:generate/$(type)/$(id)/generate

function gui:items/invcheck
function gui:items/replace with storage cpvp:items get.[0]
data remove storage cpvp:items get