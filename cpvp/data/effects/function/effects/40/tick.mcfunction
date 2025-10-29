execute store result score #effect-40-counter counter run data get storage effect: tmp2.duration
scoreboard players operation #effect-40-counter counter %= $20 main
execute if score #effect-40-counter counter matches 0 run function effects:effects/40/tick2
scoreboard players reset #effect-40-counter