bossbar set gametimer visible false
execute if score $autoteam settings matches 1 run function system:end/autoteam
execute if score $autostart settings matches 1.. run function system:end/autostart
execute if score $autostart settings matches 0 run scoreboard players set $phase main 0