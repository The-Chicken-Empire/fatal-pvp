scoreboard players set $alives main 0
execute as @a[tag=player,tag=alive,team=solo] run scoreboard players add $alives main 1
execute if score $alives main matches ..1 run function system:end/gameend