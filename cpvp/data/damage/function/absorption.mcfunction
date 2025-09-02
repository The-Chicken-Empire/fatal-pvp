scoreboard players operation @s absorption -= @s damagepoint
execute if score @s absorption matches 0.. run scoreboard players set @s damagepoint 0
execute if score @s absorption matches ..-1 run scoreboard players set @s damagepoint 0
execute if score @s absorption matches ..-1 run scoreboard players operation @s damagepoint -= @s absorption
execute if score @s absorption matches ..-1 run scoreboard players set @s absorption 0
