execute if score $teamset settings matches 0 run team join red @s
execute if score $teamset settings matches 0 run scoreboard players set @s teams 0
execute if score $teamset settings matches 1 run team join blue @s
execute if score $teamset settings matches 1 run scoreboard players set @s teams 1
execute if score $teamset settings matches 2 run team join green @s
execute if score $teamset settings matches 2 run scoreboard players set @s teams 2
execute if score $teamset settings matches 3 run team join yellow @s
execute if score $teamset settings matches 3 run scoreboard players set @s teams 3
scoreboard players add $teamset settings 1
execute if score $teamset settings matches 4 run scoreboard players set $teamset settings 0
tellraw @a {"color":"white","text":"チームを振り分けました"}