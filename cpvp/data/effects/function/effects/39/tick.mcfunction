execute store result score #effect-39-counter counter run data get storage effect: tmp2.duration
scoreboard players operation #effect-39-counter counter %= $20 main
execute if score #effect-39-counter counter matches 0 run function effects:effects/39/tick2
scoreboard players reset #effect-39-counter