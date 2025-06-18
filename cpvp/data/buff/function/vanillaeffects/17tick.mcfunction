effect give @s wither 1 0 true
execute store result score #buff-counter09895 counter run data get storage buff: check.duration


scoreboard players operation #buff-counter09895 counter %= $20 main

execute if score #buff-counter09895 counter matches 1 run function buff:vanillaeffects/17tick2 with storage buff: check

scoreboard players reset #buff-counter09895
