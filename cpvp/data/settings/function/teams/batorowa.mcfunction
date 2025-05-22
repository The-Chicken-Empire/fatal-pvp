team join solo @a[tag=player]
tellraw @a [{"color":"white","text":"チームルールが"},{"color":"dark_purple","text":"バトルロワイアル"},{"color":"white","text":"に設定されました"}]
scoreboard players set $dummy teamscore 0
execute as @a[tag=player] run function settings:teams/batorowa2