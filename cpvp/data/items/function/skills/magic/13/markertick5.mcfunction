execute if score @s skills matches 8 run tp @s ^ ^ ^-0.4
execute if score @s skills matches 10 run tp @s ^ ^ ^-0.2

execute if score @s skills matches 11 run playsound minecraft:item.trident.throw master @a ~ ~ ~ 0.8 2 0

execute if score @s skills matches 11..70 run function items:skills/magic/13/move
execute if score @s skills matches 71.. at @s run particle glow_squid_ink ~ ~ ~ 0.2 0.2 0.2 0.5 8 normal
execute if score @s skills matches 71.. run kill @s