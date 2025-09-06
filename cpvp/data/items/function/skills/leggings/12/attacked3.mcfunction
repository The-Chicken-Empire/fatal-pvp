data modify storage cpvp:system unfail set value {unfail:1b}
data modify storage cpvp:system skillslot set value {slot:"leggings"}
execute store result score $check main run function items:skills/allcheck
execute if score $check main matches 1.. run function items:skills/leggings/12/active
scoreboard players reset $check main