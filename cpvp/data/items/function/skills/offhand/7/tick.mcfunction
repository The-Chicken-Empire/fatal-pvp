tag @s add offhand7tmp2

#check
scoreboard players set @s mpcost 700
data modify storage cpvp:system unfail set value {unfail:1b}
data modify storage cpvp:system skillslot set value {slot:"offhand"}
execute store result score $check main run function items:skills/allcheck
execute if score $check main matches 1 run function items:skills/offhand/7/active
#つかったよ！
scoreboard players reset $check main
scoreboard players reset @s mpcost

scoreboard players add @s offhand7-2 1

execute at @s run function items:skills/offhand/7/particle
tag @s remove offhand7tmp2