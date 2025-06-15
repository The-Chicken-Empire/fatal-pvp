$execute store result score #buff-counter41412 counter3 run data get storage buff: temp[{id:$(id)}].duration
execute store result score #buff-counter41412 counter4 run data get storage buff: modify.duration
scoreboard players operation #buff-counter41412 counter3 += #buff-counter41412 counter4

$execute store result storage buff: temp[{id:$(id)}].duration int 1 run scoreboard players get #buff-counter41412 counter3
