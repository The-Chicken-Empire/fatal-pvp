execute unless entity @s[tag=meleeatker,tag=atker] run return fail
execute store result score $tmp random run random value 1..100
execute if score $tmp random matches 1..20 run function items:skills/weapon/2/active
scoreboard players reset $tmp random