scoreboard players operation @s absorption -= @s damage
execute if score @s absorption matches 0.. run scoreboard players set @s damage 0
execute if score @s absorption matches ..-1 run scoreboard players set @s damage 0
execute if score @s absorption matches ..-1 run scoreboard players operation @s damage -= @s absorption
execute if score @s absorption matches ..-1 run scoreboard players set @s absorption 0
