#maxhp
execute store result score $dummy maxhp run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.maxhp
scoreboard players operation @s maxhp += $dummy maxhp
data remove storage cpvp:stats $dummy
#maxmp
execute store result score $dummy maxmp run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.maxmp
scoreboard players operation @s maxmp += $dummy maxmp
data remove storage cpvp:stats $dummy
#mr
execute store result score $dummy mr run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.mr
scoreboard players operation @s mr += $dummy mr
data remove storage cpvp:stats $dummy
#normaldef
execute store result score $dummy normaldef run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.normaldef
scoreboard players operation @s normaldef += $dummy normaldef
data remove storage cpvp:stats $dummy
#magicdef
execute store result score $dummy magicdef run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.magicdef
scoreboard players operation @s magicdef += $dummy magicdef
data remove storage cpvp:stats $dummy
#meleedef
execute store result score $dummy meleedef run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.meleedef
scoreboard players operation @s meleedef += $dummy meleedef
data remove storage cpvp:stats $dummy
#rangeef
execute store result score $dummy rangedef run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.rangedef
scoreboard players operation @s rangedef += $dummy rangedef
data remove storage cpvp:stats $dummy
#speed
execute store result score $dummy speed run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.speed
scoreboard players operation @s speed += $dummy speed
data remove storage cpvp:stats $dummy
#vit
execute store result score $dummy vit run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.vit
scoreboard players operation @s vit += $dummy vit
data remove storage cpvp:stats $dummy
#normaldmg
execute store result score $dummy normaldmg run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.normaldmg
scoreboard players operation @s normaldmg += $dummy normaldmg
data remove storage cpvp:stats $dummy
#magicdmg
execute store result score $dummy magicdmg run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.magicdmg
scoreboard players operation @s magicdmg += $dummy magicdmg
data remove storage cpvp:stats $dummy
#meleedmg
execute store result score $dummy meleedmg run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.meleedmg
scoreboard players operation @s meleedmg += $dummy meleedmg
data remove storage cpvp:stats $dummy
#rangedmg
execute store result score $dummy rangedmg run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.rangemg
scoreboard players operation @s rangedmg += $dummy rangedmg
data remove storage cpvp:stats $dummy
#cc
execute store result score $dummy cc run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.cc
scoreboard players operation @s cc += $dummy cc
data remove storage cpvp:stats $dummy
#agi
execute store result score $dummy agi run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.agi
scoreboard players operation @s agi += $dummy agi
data remove storage cpvp:stats $dummy
#maxeng
execute store result score $dummy maxeng run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.stats.maxeng
scoreboard players operation @s maxeng += $dummy maxeng
data remove storage cpvp:stats $dummy

#maxeng
execute store result score $dummy maxeng run data get storage cpvp:stats $dummy.components.minecraft:custom_data.cpvp.itemcost
scoreboard players operation @s itemcost += $dummy itemcost
data remove storage cpvp:stats $dummy
