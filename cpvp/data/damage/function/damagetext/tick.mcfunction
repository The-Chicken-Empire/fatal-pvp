scoreboard players add @s timer 1
execute if score @s timer matches ..8 run tp @s ~ ~0.1 ~
execute if score @s timer matches 9..13 run tp @s ~ ~-0.05 ~
execute if score @s timer matches 14.. run kill @s