scoreboard players reset $red teamscount
scoreboard players reset $blue teamscount
scoreboard players reset $green teamscount
scoreboard players reset $yellow teamscount

execute as @a[tag=player,team=red] run scoreboard players add $red teamscount 1
execute as @a[tag=player,team=blue] run scoreboard players add $blue teamscount 1
execute as @a[tag=player,team=green] run scoreboard players add $green teamscount 1
execute as @a[tag=player,team=yellow] run scoreboard players add $yellow teamscount 1

scoreboard players display name $red teamscount {"color":"red","text":red}
scoreboard players display name $blue teamscount {"color":"blue","text":blue}
scoreboard players display name $green teamscount {"color":"green","text":green}
scoreboard players display name $yellow teamscount {"color":"yellow","text":yellow}