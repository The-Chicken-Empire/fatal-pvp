scoreboard players operation #counter counter = @e[tag=victim,limit=1] hp
scoreboard players operation #counter counter /= $10 main
scoreboard players operation @s hp += #counter counter
scoreboard players operation @e[tag=victim,limit=1] hp -= #counter counter
scoreboard players reset #counter
playsound entity.phantom.bite master @a ~ ~ ~ 0.5 1


