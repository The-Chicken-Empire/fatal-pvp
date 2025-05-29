tag @s remove alive
gamemode spectator @s
function system:phase/phase3/alivecount
execute if score $teamrule settings matches 1.. run function system:end/teamendcheck
execute if score $teamrule settings matches 0 run function system:end/batorowaendcheck