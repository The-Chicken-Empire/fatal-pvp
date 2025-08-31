#function effects:system/pick/ {id:23}
#execute store result score #counter4512 counter run data get storage effect: targeteffect.level
#execute if score #counter4512 counter matches ..30 run function items:skills/helmet/4/statscalc2/0_9
#execute if score #counter4512 counter matches 31.. run function items:skills/helmet/4/statscalc2/1_1

#scoreboard players reset #counter4512




scoreboard players operation @s maxhp *= $3 main
scoreboard players operation @s maxmp *= $3 main
scoreboard players operation @s mr *= $3 main
scoreboard players operation @s physicaldef *= $3 main
scoreboard players operation @s physicaldmg *= $3 main
scoreboard players operation @s magicdef *= $3 main
scoreboard players operation @s magicdmg *= $3 main
scoreboard players operation @s meleedef *= $3 main
scoreboard players operation @s rangedef *= $3 main
scoreboard players operation @s speed *= $3 main
scoreboard players operation @s vit *= $3 main
scoreboard players operation @s cc *= $3 main
scoreboard players operation @s agi *= $3 main
scoreboard players operation @s maxeng *= $3 main
scoreboard players operation @s damage *= $3 main
scoreboard players operation @s defence *= $3 main

scoreboard players operation @s maxhp /= $2 main
scoreboard players operation @s maxmp /= $2 main
scoreboard players operation @s mr /= $2 main
scoreboard players operation @s physicaldef /= $2 main
scoreboard players operation @s physicaldmg /= $2 main
scoreboard players operation @s magicdef /= $2 main
scoreboard players operation @s magicdmg /= $2 main
scoreboard players operation @s meleedef /= $2 main
scoreboard players operation @s rangedef /= $2 main
scoreboard players operation @s speed /= $2 main
scoreboard players operation @s vit /= $2 main
scoreboard players operation @s cc /= $2 main
scoreboard players operation @s agi /= $2 main
scoreboard players operation @s maxeng /= $2 main
scoreboard players operation @s damage /= $2 main
scoreboard players operation @s defence /= $2 main