execute if score @s skills matches 18 at @s run tp @s ~ ~0.4 ~
execute if score @s skills matches 19 at @s run tp @s ~ ~0.2 ~
execute if score @s skills matches ..20 at @s run tp @s ~ ~ ~ ~36 ~
execute if score @s[tag=stop] skills matches 20.. run function items:skills/magic/12/stop
execute if score @s[tag=!stop] skills matches 20.. run function items:skills/magic/12/move