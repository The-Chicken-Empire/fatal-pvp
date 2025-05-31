team join solo @a[tag=player]
tellraw @a [{"color":"white","text":"チームルールが"},{"color":"dark_purple","text":"バトルロワイアル"},{"color":"white","text":"に設定されました"}]
scoreboard players set $dummy teamscore 0
scoreboard players set $teamrule settings 0
execute as @a[tag=player] run function settings:teams/batorowa2
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1.5 1