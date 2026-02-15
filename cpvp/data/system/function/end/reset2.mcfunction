scoreboard players set $phase main 0
execute if score $teamrule settings matches 0 run scoreboard objectives setdisplay sidebar playercount
execute if score $teamrule settings matches 1.. run scoreboard objectives setdisplay sidebar teamscount