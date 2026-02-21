scoreboard players reset $count playercount
scoreboard players reset $pcount playercount
execute as @a[tag=player] run scoreboard players add $count playercount 1
scoreboard players display name $count playercount {"color":"red","text":"参加人数"}
execute as @a run scoreboard players add $pcount playercount 1
scoreboard players display name $pcount playercount {"color":"yellow","text":"人数"}