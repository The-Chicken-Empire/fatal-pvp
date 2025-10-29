execute if score @s skills matches 200 run function items:skills/magic/41/cordactive
execute if score @s skills matches 200.. if entity @s[tag=!m41calling] at @s run tp @s ~ ~ ~ ~5 ~
execute if score @s skills matches 200.. if entity @s[tag=m41calling] at @s run tp @s ~ ~ ~ ~15 ~
execute if score @s skills matches ..199 at @s run particle dust_color_transition{from_color:6513507,to_color:1118481,scale:1} ~ ~ ~ 0.7 1 0.7 0 1 normal
execute if score @s skills matches 200.. at @s run particle dust_color_transition{from_color:16772608,to_color:16717077,scale:1} ~ ~ ~ 0.7 1 0.7 0 1 normal
execute if entity @s[tag=m41calling] at @s run particle flame ~ ~ ~ 0.7 1 0.7 0.4 2 normal