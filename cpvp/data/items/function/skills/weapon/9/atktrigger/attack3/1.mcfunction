scoreboard players operation $heal main = @e[tag=victim,limit=1] damagetaken
scoreboard players operation $heal main /= $4 main
execute at @s run function api:heal/