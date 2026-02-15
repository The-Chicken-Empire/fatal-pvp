execute at @s run playsound ui.button.click block @s ~ ~ ~ 1 0.5 1
execute if entity @s[tag=!kansen] run tag @s add kansen2
execute if entity @s[tag=kansen] run tag @s add player2

tag @s remove kansen
tag @s remove player

execute if entity @s[tag=kansen2] run tag @s add kansen
execute if entity @s[tag=player2] run tag @s add player
tag @s remove kansen2
tag @s remove player2
execute if entity @s[tag=player] run tellraw @p {"color":"white","text":"プレイヤーになりました"}
execute if entity @s[tag=kansen] run tellraw @p {"color":"white","text":"観戦者になりました"}
execute if entity @s[tag=kansen] run team join kansen
execute if entity @s[tag=player] run team leave @s
execute if entity @s[tag=player] if score $teammode main matches 0 run scoreboard players set $kansentmp tmp 0
execute if entity @s[tag=player] if score $teammode main matches 0 run function settings:teams/kansenloop
