execute if data storage buff: check.buffvalueperlevel store result score #counter counter run data get storage buff: check.buffvalueperlevel
execute store result score #counter counter2 run data get storage buff: check.level
scoreboard players operation #counter counter *= #counter counter2
execute if data storage buff: check.buffvalue store result score #counter counter3 run data get storage buff: check.buffvalue
scoreboard players operation #counter counter += #counter counter3

$scoreboard players operation @s $(buffcontent)_buff -= #counter counter2



scoreboard players reset #counter