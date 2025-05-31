execute if data storage buff: check.buffvalueperlevel store result score #buff-counter counter run data get storage buff: check.buffvalueperlevel
execute store result score #buff-counter counter2 run data get storage buff: check.level
scoreboard players operation #buff-counter counter *= #buff-counter counter2
execute if data storage buff: check.buffvalue store result score #buff-counter counter3 run data get storage buff: check.buffvalue
scoreboard players operation #buff-counter counter += #buff-counter counter3

$scoreboard players operation @s $(buffcontent)_buff -= #buff-counter counter2



scoreboard players reset #buff-counter