scoreboard players operation @s displayhpA = @s hp
scoreboard players operation @s displayhpB = @s hp
scoreboard players operation @s displayhpA += @s absorption
scoreboard players operation @s displayhpB += @s absorption
scoreboard players operation @s displayhpA /= $10 main
scoreboard players operation @s displayhpB %= $10 main
scoreboard players operation @s displaymaxhpA = @s maxhp
scoreboard players operation @s displaymaxhpB = @s maxhp
scoreboard players operation @s displaymaxhpA /= $10 main
scoreboard players operation @s displaymaxhpB %= $10 main
scoreboard players operation @s displaymp = @s mp
scoreboard players operation @s displaymp /= $100 main
scoreboard players operation @s displaymaxmp = @s maxmp
scoreboard players operation @s displaymaxmp /= $100 main
function system:actionbar/buff/
title @s actionbar [{"text":""},{"storage":"buff:","nbt":"actionbar","interpret":true,"separator":""},{"bold":true,"color":"gold","italic":false,"text":"HP:","underlined":true},{"bold":true,"color":"gold","italic":false,"score":{"name":"@s","objective":"displayhpA"},"underlined":true},{"bold":true,"color":"gold","italic":false,"text":",","underlined":true},{"bold":true,"color":"gold","italic":false,"score":{"name":"@s","objective":"displayhpB"},"underlined":true},{"bold":true,"color":"gold","italic":false,"text":"/","underlined":true},{"color":"gold","score":{"name":"@s","objective":"displaymaxhpA"}},{"bold":true,"color":"gold","italic":false,"text":",","underlined":true},{"bold":true,"color":"gold","italic":false,"score":{"name":"@s","objective":"displaymaxhpB"},"underlined":true},{"text":"  ","underlined":false},{"bold":true,"color":"aqua","italic":false,"text":"MP:","underlined":true},{"bold":true,"color":"aqua","italic":false,"score":{"name":"@s","objective":"displaymp"},"underlined":true},{"bold":true,"color":"aqua","italic":false,"text":"/","underlined":true},{"bold":true,"color":"aqua","italic":false,"score":{"name":"@s","objective":"displaymaxmp"},"underlined":true}]
