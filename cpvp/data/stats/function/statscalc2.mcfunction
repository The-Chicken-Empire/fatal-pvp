#maxhp
execute store result score $dummy maxhp run data get storage cpvp:stats $dummy.maxhp
scoreboard players operation @s maxhp += $dummy maxhp
#maxmp
execute store result score $dummy maxmp run data get storage cpvp:stats $dummy.maxmp
scoreboard players operation @s maxmp += $dummy maxmp
#mr
execute store result score $dummy mr run data get storage cpvp:stats $dummy.mr
scoreboard players operation @s mr += $dummy mr
#physicaldef
execute store result score $dummy defence run data get storage cpvp:stats $dummy.defence
scoreboard players operation @s defence += $dummy defence
#physicaldef
execute store result score $dummy physicaldef run data get storage cpvp:stats $dummy.physicaldef
scoreboard players operation @s physicaldef += $dummy physicaldef
#magicdef
execute store result score $dummy magicdef run data get storage cpvp:stats $dummy.magicdef
scoreboard players operation @s magicdef += $dummy magicdef
#meleedef
execute store result score $dummy meleedef run data get storage cpvp:stats $dummy.meleedef
scoreboard players operation @s meleedef += $dummy meleedef
#rangeef
execute store result score $dummy rangedef run data get storage cpvp:stats $dummy.rangedef
scoreboard players operation @s rangedef += $dummy rangedef
#speed
execute store result score $dummy speed run data get storage cpvp:stats $dummy.speed
scoreboard players operation @s speed += $dummy speed
#vit
execute store result score $dummy vit run data get storage cpvp:stats $dummy.vit
scoreboard players operation @s vit += $dummy vit
#damage
execute store result score $dummy damage run data get storage cpvp:stats $dummy.damage
scoreboard players operation @s damage += $dummy damage
#physicaldmg
execute store result score $dummy physicaldmg run data get storage cpvp:stats $dummy.physicaldmg
scoreboard players operation @s physicaldmg += $dummy physicaldmg
#magicdmg
execute store result score $dummy magicdmg run data get storage cpvp:stats $dummy.magicdmg
scoreboard players operation @s magicdmg += $dummy magicdmg
#meleedmg
execute store result score $dummy meleedmg run data get storage cpvp:stats $dummy.meleedmg
scoreboard players operation @s meleedmg += $dummy meleedmg
#rangedmg
execute store result score $dummy rangedmg run data get storage cpvp:stats $dummy.rangedmg
scoreboard players operation @s rangedmg += $dummy rangedmg
#cc
execute store result score $dummy cc run data get storage cpvp:stats $dummy.cc
scoreboard players operation @s cc += $dummy cc
#agi
execute store result score $dummy agi run data get storage cpvp:stats $dummy.agi
scoreboard players operation @s agi += $dummy agi
#maxeng
execute store result score $dummy maxeng run data get storage cpvp:stats $dummy.maxeng
scoreboard players operation @s maxeng += $dummy maxeng
#bonusattackspeed
execute store result score $dummy bonusattackspeed run data get storage cpvp:stats $dummy.bonusattackspeed
scoreboard players operation @s bonusattackspeed += $dummy bonusattackspeed