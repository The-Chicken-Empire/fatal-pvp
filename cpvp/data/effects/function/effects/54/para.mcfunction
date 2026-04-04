scoreboard players set $e54tmp tmp 0
execute store result score $e54tmp tmp run random value 1..100

execute store result score #effect-54-counter tmp run data get storage effect: tmp2.level
scoreboard players operation #effect-54-counter tmp *= $5 main

execute if score $e54tmp tmp <= #effect-54-counter tmp store result storage cpvp:effect54 1 int 1 run random value 0..359
execute if score $e54tmp tmp <= #effect-54-counter tmp store result storage cpvp:effect54 2 int 1 run random value -90..90
execute if score $e54tmp tmp <= #effect-54-counter tmp at @s run function effects:effects/54/randomtp with storage cpvp:effect54
scoreboard players reset #effect-54-counter
data remove storage cpvp:effect54 1
data remove storage cpvp:effect54 2
scoreboard players reset $e54tmp tmp