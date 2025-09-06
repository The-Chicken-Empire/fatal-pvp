execute if entity @s[tag=specialdamage] run scoreboard players operation @s damagetaken *= $9 main
execute unless entity @s[tag=specialdamage] run scoreboard players operation @s damagetaken *= $8 main
scoreboard players operation @s damagetaken /= $10 main

execute at @s run particle dust_color_transition{from_color:255,to_color:16711680,scale:1} ~ ~ ~ 0.2 0.4 0.2 0 8