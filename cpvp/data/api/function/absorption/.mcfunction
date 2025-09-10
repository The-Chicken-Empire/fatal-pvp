##

execute if score @s absorption < $absorption main run scoreboard players operation @s absorption = $absorption main
scoreboard players reset $absorption
tag @e[tag=healer] remove healer