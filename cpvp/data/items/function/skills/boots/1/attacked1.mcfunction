data modify storage cpvp:system unfail set value {unfail:1b}
data modify storage cpvp:system skillslot set value {slot:"boots"}
execute store result score $check main run function items:skills/allcheck
execute if score $check main matches 0 run return run scoreboard players reset $check main
scoreboard players reset $check main

execute store result score $tmp tmp run random value 1..3
scoreboard players operation $tmp tmp *= $20 main
scoreboard players operation $time main -= $tmp tmp
function api:time/
scoreboard players reset $tmp tmp
scoreboard players set $ct main 120
function api:ct/boots