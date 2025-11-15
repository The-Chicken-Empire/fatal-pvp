
scoreboard players set $mr main 100
tag @s add healer
function api:mr/
scoreboard players operation #counter counter = @e[tag=victim,limit=1] maxhp
scoreboard players operation #counter counter *= $2 main
scoreboard players operation #counter counter /= $9 main
execute if score #counter counter >= @e[tag=victim,limit=1] hp run scoreboard players operation @e[tag=victim,limit=1,tag=!specialdamagetmp] damagetaken *= $2 main
scoreboard players reset #counter