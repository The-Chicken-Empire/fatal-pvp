scoreboard players add $kansentmp tmp 1
scoreboard players set $kansenreset tmp 0
execute as @a if score @s teamscore = $kansentmp tmp run scoreboard players set $kansenreset tmp 1
execute if score $kansenreset tmp matches 1 run return run function settings:teams/kansenloop
scoreboard players reset $kansenreset

scoreboard players operation @s teamscore = $kansentmp tmp