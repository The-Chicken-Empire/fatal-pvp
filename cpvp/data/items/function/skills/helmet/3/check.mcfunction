data modify storage cpvp:system skillslot set value {slot:"helmet"}
execute store result score $check main run function items:skills/allcheck
execute unless score $check main matches 1.. run return run scoreboard players reset $check main
scoreboard players reset $check main

function items:skills/helmet/3/avoid