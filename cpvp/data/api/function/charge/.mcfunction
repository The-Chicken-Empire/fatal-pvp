

scoreboard players operation @s eng += $eng main
scoreboard players reset $eng
execute if score @s eng > @s maxeng run scoreboard players operation @s eng = @s maxeng