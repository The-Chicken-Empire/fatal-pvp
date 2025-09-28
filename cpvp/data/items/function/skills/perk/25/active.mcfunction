scoreboard players set @s perk25 0

scoreboard players set $tmp random 0
execute store result score $tmp random run random value 1..5

execute if score $tmp random matches 1 run function items:skills/perk/25/str
execute if score $tmp random matches 2 run function items:skills/perk/25/res
execute if score $tmp random matches 3 run function items:skills/perk/25/spd
execute if score $tmp random matches 4 run function items:skills/perk/25/as
execute if score $tmp random matches 5 run function items:skills/perk/25/reg

scoreboard players reset $tmp random