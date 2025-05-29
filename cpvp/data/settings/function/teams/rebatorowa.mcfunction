team join solo @a[tag=player]
scoreboard players set $dummy teamscore 0
scoreboard players set $teamrule settings 0
execute as @a[tag=player] run function settings:teams/batorowa2
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1.5 1