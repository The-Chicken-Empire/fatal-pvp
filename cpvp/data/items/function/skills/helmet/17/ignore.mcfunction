execute store result score $helm17tmp tmp run random value 1..100
execute if score $helm17tmp tmp matches 51.. run return fail
tag @s add helm17ignore

#解除
scoreboard players reset @s damagetaken
tag @s remove physicaldamage
tag @s remove magicdamage
tag @s remove meleedamage
tag @s remove rangedamage
tag @s remove specialdamage
data remove storage atktrigger: hage