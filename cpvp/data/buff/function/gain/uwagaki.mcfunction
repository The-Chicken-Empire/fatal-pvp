execute store result score #buff-counter2 counter run data get storage buff: gain.level
execute store result score #buff-counter2 counter2 run data get storage buff: check.level
execute if score #buff-counter2 counter >= #buff-counter2 counter2 run function buff:end/reducebonus with storage buff: check
$execute if score #buff-counter2 counter >= #buff-counter2 counter2 run data remove storage buff: temp[{id:$(id)}]
execute if score #buff-counter2 counter >= #buff-counter2 counter2 run function buff:gain/main
scoreboard players reset #buff-counter2
