execute store result score #buff-counter1224 counter run data get storage buff: content[0][1]
execute store result score #buff-counter1224 counter2 run data get storage buff: modify.level
scoreboard players operation #buff-counter1224 counter *= #buff-counter1224 counter2
$scoreboard players operation @s $(aeae)_buff += #buff-counter1224 counter



scoreboard players reset #buff-counter1224

data remove storage buff: content[0]
execute if data storage buff: content[0] run data modify storage buff: aeae.aeae set from storage buff: content[0][0]
execute if data storage buff: content[0] run function buff:modify/changebonus with storage buff: aeae
