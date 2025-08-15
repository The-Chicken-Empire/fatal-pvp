execute store result score @s weapon4 run scoreboard players get @e[tag=meleevictim,limit=1] defence
scoreboard players operation @s weapon4 /= $3 main
execute if score matches 21.. run scoreboard players set @s weapon4 20
scoreboard players operation @s cc += @s weapon4
