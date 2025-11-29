## within items:skills/allcheck
execute store result score @s mpcost run random value 1..30
scoreboard players operation @s mpcost *= $100 main
execute if score @s mp < @s mpcost run scoreboard players operation @s mp = @s mpcost