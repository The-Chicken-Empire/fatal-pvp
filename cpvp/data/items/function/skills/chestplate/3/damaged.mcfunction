scoreboard players operation $tmp tmp = @s hp
scoreboard players operation $tmp tmp *= $100 main
scoreboard players operation $tmp tmp /= @s maxhp
execute unless score $tmp tmp matches ..30 run return fail

data modify storage cpvp:system unfail set value {unfail:1b}
data modify storage cpvp:system skillslot set value {slot:"chestplate"}
execute store result score $check main run function items:skills/allcheck
execute if score $check main matches 1.. run function items:skills/chestplate/3/dactive
scoreboard players reset $check main