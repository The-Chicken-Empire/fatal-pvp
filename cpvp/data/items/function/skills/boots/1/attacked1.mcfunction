execute store result score $tmp tmp run random value 1..3
execute if score $phase main matches 3 run scoreboard players operation $timer main -= $tmp tmp
scoreboard players reset $tmp tmp