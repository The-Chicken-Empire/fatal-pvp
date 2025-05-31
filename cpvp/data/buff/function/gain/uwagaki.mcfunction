execute store result score #counter2 counter run data get storage buff: gain.level
execute store result score #counter2 counter2 run data get storage buff: check.level
execute if score #counter2 counter > #counter2 counter2 run function buff:tick/end/reducebonus with storage buff: check
$execute if score #counter2 counter > #counter2 counter2 run data remove storage buff: temp[{id:$(id)}]
execute if score #counter2 counter > #counter2 counter2 run function buff:gain/main