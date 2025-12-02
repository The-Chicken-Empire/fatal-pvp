scoreboard players set $e54tmp tmp 0
execute store result score $e54tmp tmp run random value 1..100

execute if score $e54tmp tmp matches 76.. store result storage cpvp:effect54 1 int 1 run random value 0..359
execute if score $e54tmp tmp matches 76.. store result storage cpvp:effect54 2 int 1 run random value -90..90
execute if score $e54tmp tmp matches 76.. at @s run function effects:effects/54/randomtp with storage cpvp:effect54
data remove storage cpvp:effect54 1
data remove storage cpvp:effect54 2
scoreboard players reset $e54tmp tmp