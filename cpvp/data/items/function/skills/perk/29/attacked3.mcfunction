scoreboard players operation $tmp perk29 = @s damagetaken
scoreboard players operation $tmp perk29 /= $10 main
scoreboard players operation @s perk29 += $tmp perk29
scoreboard players set $tmp perk29 0