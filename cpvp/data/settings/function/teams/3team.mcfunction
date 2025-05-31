tag @a[tag=player] remove teamed
team leave @a
scoreboard players set $teamset settings 0
function settings:teams/3team2
scoreboard players set $teamrule settings 2
scoreboard players add @a[team=red] teamscore 1
scoreboard players add @a[team=blue] teamscore 2
scoreboard players add @a[team=green] teamscore 3
tellraw @a [{"color":"white","text":"チームルールが"},{"color":"yellow","text":"3チーム"},{"color":"white","text":"に設定されました"}]
tellraw @a {"color":"white","text":"チームを振り分けました"}
execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1.5 1