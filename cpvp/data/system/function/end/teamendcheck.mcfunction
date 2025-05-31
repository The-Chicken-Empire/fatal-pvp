scoreboard players set $alives main 0
execute as @a[tag=player,tag=alive,team=red,limit=1] run scoreboard players add $alives main 1
execute as @a[tag=player,tag=alive,team=blue,limit=1] run scoreboard players add $alives main 1
execute as @a[tag=player,tag=alive,team=green,limit=1] run scoreboard players add $alives main 1
execute as @a[tag=player,tag=alive,team=yellow,limit=1] run scoreboard players add $alives main 1
execute if score $alives main matches ..1 run function system:end/gameend