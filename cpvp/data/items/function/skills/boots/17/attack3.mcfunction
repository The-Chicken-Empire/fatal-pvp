scoreboard players operation #counter counter = @e[tag=victim,limit=1] damagetaken
scoreboard players operation #counter counter /= $4 main
execute if score #counter counter matches 1.. run scoreboard players operation @s hp += #counter counter
scoreboard players reset #counter counter
execute if score @s hp > @s maxhp run scoreboard players operation @s hp = @s maxhp