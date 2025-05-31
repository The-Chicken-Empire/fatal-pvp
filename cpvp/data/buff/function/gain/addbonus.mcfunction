execute if data storage buff: gain.buffvalueperlevel store result score #buff-counter counter run data get storage buff: gain.buffvalueperlevel
execute store result score #buff-counter counter2 run data get storage buff: gain.level
scoreboard players operation #buff-counter counter *= #buff-counter counter2
execute if data storage buff: gain.buffvalue store result score #buff-counter counter3 run data get storage buff: gain.buffvalue
scoreboard players operation #buff-counter counter += #buff-counter counter3

$scoreboard players operation @s $(buffcontent)_buff += #counter counter2



scoreboard players reset #buff-counter