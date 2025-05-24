#maxhp
execute store result score $dummy maxhp run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.maxhp
scoreboard players operation @s maxhp += $dummy maxhp
#maxmp
execute store result score $dummy maxmp run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.maxmp
scoreboard players operation @s maxmp += $dummy maxmp
#mr
execute store result score $dummy mr run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.mr
scoreboard players operation @s mr += $dummy mr
#physicaldef
execute store result score $dummy physicaldef run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.physicaldef
scoreboard players operation @s physicaldef += $dummy physicaldef
#magicdef
execute store result score $dummy magicdef run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.magicdef
scoreboard players operation @s magicdef += $dummy magicdef
#meleedef
execute store result score $dummy meleedef run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.meleedef
scoreboard players operation @s meleedef += $dummy meleedef
#rangeef
execute store result score $dummy rangedef run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.rangedef
scoreboard players operation @s rangedef += $dummy rangedef
#speed
execute store result score $dummy speed run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.speed
scoreboard players operation @s speed += $dummy speed
#vit
execute store result score $dummy vit run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.vit
scoreboard players operation @s vit += $dummy vit
#physicaldmg
execute store result score $dummy physicaldmg run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.physicaldmg
scoreboard players operation @s physicaldmg += $dummy physicaldmg
#magicdmg
execute store result score $dummy magicdmg run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.magicdmg
scoreboard players operation @s magicdmg += $dummy magicdmg
#meleedmg
execute store result score $dummy meleedmg run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.meleedmg
scoreboard players operation @s meleedmg += $dummy meleedmg
#rangedmg
execute store result score $dummy rangedmg run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.rangemg
scoreboard players operation @s rangedmg += $dummy rangedmg
#cc
execute store result score $dummy cc run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.cc
scoreboard players operation @s cc += $dummy cc
#agi
execute store result score $dummy agi run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.agi
scoreboard players operation @s agi += $dummy agi
#maxeng
execute store result score $dummy maxeng run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.maxeng
scoreboard players operation @s maxeng += $dummy maxeng
