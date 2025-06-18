function buff:modify/level with storage buff: check

function buff:modify/duration with storage buff: check




scoreboard players reset #buff-counter41412





execute if entity @s[type=player] run function buff:gain/player with entity @s
execute if entity @s[type=!player] run function buff:gain/entity with entity @s

