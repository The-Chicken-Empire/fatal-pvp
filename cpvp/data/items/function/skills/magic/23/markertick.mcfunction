tag @s add magic23tmp2

execute if score @s skills matches 4 run scoreboard players set $magic23tmp tmp 0
execute if score @s skills matches 4 at @s run function items:skills/magic/23/callfirepiller
execute if score @s skills matches 8 run scoreboard players set $magic23tmp tmp 0
execute if score @s skills matches 8 at @s run function items:skills/magic/23/callfirepiller
execute if score @s skills matches 12 run scoreboard players set $magic23tmp tmp 0
execute if score @s skills matches 12 at @s run function items:skills/magic/23/callfirepiller
execute if score @s skills matches 16 run scoreboard players set $magic23tmp tmp 0
execute if score @s skills matches 16 at @s run function items:skills/magic/23/callsoulpiller

execute if score @s skills matches 21.. run kill @s

tag @s remove magic23tmp2