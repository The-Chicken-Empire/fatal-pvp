tag @a[tag=player] remove teamed
team leave @a
scoreboard players set $teamset settings 0
function settings:teams/2team2
scoreboard players set $teamrule settings 1
scoreboard players add @a[team=red] teamscore 1
scoreboard players add @a[team=blue] teamscore 2
tellraw @a [{"color":"white","text":"チームルールが"},{"color":"yellow","text":"2チーム"},{"color":"white","text":"に設定されました"}]