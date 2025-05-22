tag @s remove alive
gamemode spectator @s
execute if score $teamrule settings matches 1.. run function system:teamend
execute if score $teamrule settings matches 0 run function system:batorowaend