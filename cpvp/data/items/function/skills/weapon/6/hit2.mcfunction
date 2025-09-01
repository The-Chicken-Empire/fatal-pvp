tag @s remove weapon6victim2

tag @s add meleedamage
tag @s add physicaldamage
scoreboard players operation @s attackerdata = @e[tag=weapon6tmp7,limit=1] owner

execute store result score $tmp random run random value 5..10
scoreboard players operation $tmp random *= $10 main
scoreboard players operation @s damagetaken = $tmp random
scoreboard players reset $tmp random


execute at @s run playsound entity.wind_charge.wind_burst ambient @s ~ ~ ~ 1 2 1

function damage:atkercheck