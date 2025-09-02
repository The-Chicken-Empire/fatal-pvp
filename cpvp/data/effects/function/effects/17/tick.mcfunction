effect give @s wither 1 0 true
execute store result score #effect-16-counter counter run data get storage effect: tmp2.duration
scoreboard players operation #effect-16-counter counter %= $20 main
execute if score #effect-16-counter counter matches 0 run function effects:effects/17/tick2
scoreboard players reset #effect-16-counter