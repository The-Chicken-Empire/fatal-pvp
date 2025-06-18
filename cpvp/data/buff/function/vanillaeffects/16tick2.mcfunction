execute store result score #buff-counter09895 counter run data get storage buff: check.level
scoreboard players operation #buff-counter09895 counter *= $20 main
scoreboard players operation @s damage = #buff-counter09895 counter

function buff:vanillaeffects/16tick3 with storage buff: check

function damage:damage
