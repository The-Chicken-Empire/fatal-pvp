execute store result score @s maxhp run attribute @s max_health base get 10
execute if entity @s[tag=combatdummy] run scoreboard players set @s maxhp 1000
scoreboard players operation @s hp = @s maxhp
execute store result score @s speed run attribute @s movement_speed base get 100
execute store result score @s physicaldmg run attribute @s attack_damage base get 10
execute store result score @s magicdmg run attribute @s attack_damage base get 10
execute store result score @s meleedmg run attribute @s attack_damage base get 10
execute store result score @s rangedmg run attribute @s attack_damage base get 10
scoreboard players set @s physicaldef 0
scoreboard players set @s magicdef 0
scoreboard players set @s meleedef 0
scoreboard players set @s rangedef 0
scoreboard players set @s absorption 0
execute if entity @s[tag=combatdummy] run attribute @s max_health base set 1000
execute if entity @s[tag=combatdummy] run data modify entity @s Health set value 1000