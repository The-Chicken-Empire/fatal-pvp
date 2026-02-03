#check
data modify storage cpvp:system skillslot set value {slot:"offhand"}
execute store result score $check main run function items:skills/allcheck
execute if score $check main matches 1 run function items:skills/offhand/23/active
#つかったよ！
scoreboard players reset $check main
