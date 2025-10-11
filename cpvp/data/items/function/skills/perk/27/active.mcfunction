execute store result score $tmp random run random value 1..100
execute store result score $tmp2 random run random value 1..100
execute if score $tmp random < $tmp2 random run scoreboard players reset $tmp random
execute if score $tmp random < $tmp2 random run return run scoreboard players reset $tmp2 random

scoreboard players reset $tmp2 random

execute store result score $tmp random run random value 1..100

scoreboard players operation $tmp random *= $10 main

execute unless score $tmp random > $maxdamage damagecalc run return run scoreboard players reset $tmp random

scoreboard players operation $maxdamage damagecalc = $tmp random
scoreboard players reset $tmp random

playsound block.lantern.place block @s ~ ~ ~ 1 1.2 1