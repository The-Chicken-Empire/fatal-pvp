tag @s add magic52tmp2

execute if score @s skills matches 5 run function items:skills/magic/52/start
execute if score @s skills matches 10 run function items:skills/magic/52/hitcheck

execute if score @s skills matches 20 run function items:skills/magic/52/delete

tag @s remove magic52tmp2