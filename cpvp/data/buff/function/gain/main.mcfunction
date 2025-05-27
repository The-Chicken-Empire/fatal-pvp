execute store result score #counter counter run data get storage buff: gain.id
#execute if score #counter counter matches ..20 run say a
execute unless score #counter counter matches 20.. run function buff:gain/init
scoreboard players reset #counter





execute if entity @s[type=player] run function buff:gain/player with entity @s UUID











data remove storage buff: gain