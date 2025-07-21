scoreboard players set @s offhand4-2 0
execute unless score @s offhand4-3 matches ..0 run return fail
execute unless score $phase main matches 3 run return fail
scoreboard players operation $tmp offhand4-3 = $timer main
scoreboard players operation @s offhand4-3 -= $tmp offhand4-3
execute if score @s offhand4-3 matches 60.. run function items:skills/offhand/4/active
scoreboard players reset $tmp offhand4-3
scoreboard players operation @s offhand4-3 = $timer main