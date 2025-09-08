scoreboard players operation $heal counter = @s vit
scoreboard players operation $heal counter += $100 main
scoreboard players operation $heal main *= $heal counter
scoreboard players operation $heal main /= $100 main


scoreboard players operation @s hp += $heal main
scoreboard players reset $heal
execute if score @s hp > @s maxhp run scoreboard players operation @s hp = @s maxhp
tag @a[tag=healer] remove healer