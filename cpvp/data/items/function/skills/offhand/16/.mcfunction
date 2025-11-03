execute unless score @s offhand16 matches -2147483648..2147483647 run scoreboard players operation @s offhand16 = @s damagetaken
scoreboard players operation @s damagetaken += @s offhand16
scoreboard players operation @s damagetaken /= $2 main
scoreboard players operation @s offhand16 = @s damagetaken