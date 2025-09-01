scoreboard players set @e[tag=physicaldamagetmp,limit=1] penetrate 50
execute store result score @s weapon4 run scoreboard players get @e[tag=physicaldamagetmp,limit=1] physicaldef
scoreboard players operation @s weapon4 /= $3 main
execute if score @s weapon4 matches 21.. run scoreboard players set @s weapon4 20
scoreboard players operation @s cc += @s weapon4
