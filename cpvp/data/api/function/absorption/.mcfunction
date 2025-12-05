##
execute if score @s absorption >= $maxabsorption main run scoreboard players reset $absorption
execute if score @s absorption >= $maxabsorption main run scoreboard players reset $maxabsorption
execute if score @s absorption >= $maxabsorption main run return run tag @e[tag=healer] remove healer



execute if score @s absorption < $absorption main run scoreboard players operation @s absorption = $absorption main
execute if score @s absorption > $maxabsorption main run scoreboard players operation @s absorption = $maxabsorption main

scoreboard players reset $maxabsorption
scoreboard players reset $absorption
tag @e[tag=healer] remove healer