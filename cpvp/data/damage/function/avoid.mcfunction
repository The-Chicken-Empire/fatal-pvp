#回避時みたいな処理したければどうぞ？？？？
execute as @e[tag=victim] run function items:triggers/avoid/check
#解除
scoreboard players reset @s damagetaken
tag @s remove physicaldamage
tag @s remove magicdamage
tag @s remove meleedamage
tag @s remove rangedamage
tag @s remove specialdamage
data remove storage atktrigger: hage