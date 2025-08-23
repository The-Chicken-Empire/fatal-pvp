execute if score @s mp matches 1000.. run return fail

data modify storage cpvp:system unfail set value {unfail:1b}
data modify storage cpvp:system skillslot set value {slot:"offhand"}
execute store result score $check main run function items:skills/allcheck
execute if score $check main matches 1.. run function items:skills/offhand/10/active
scoreboard players reset $check main