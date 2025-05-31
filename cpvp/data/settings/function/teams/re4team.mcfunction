tag @a[tag=player] remove teamed
team leave @a
scoreboard players set $teamset settings 0
function settings:teams/4team2
scoreboard players set $teamrule settings 3
scoreboard players add @a[team=red] teamscore 1
scoreboard players add @a[team=blue] teamscore 2
scoreboard players add @a[team=green] teamscore 3
scoreboard players add @a[team=yellow] teamscore 4
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1.5 1