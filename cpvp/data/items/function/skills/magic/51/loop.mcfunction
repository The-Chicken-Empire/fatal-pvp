scoreboard players remove @s counting 1
scoreboard players remove @s counting2 1


execute at @s positioned ~-0.3 ~-0.3 ~-0.3 as @e[tag=playing] positioned ~-0.4 ~-0.4 ~-0.4 if entity @s unless score @s teamscore = @e[tag=magic51tmp2,limit=1] teamscore run function items:skills/magic/51/hitcore

execute at @s run particle dust_color_transition{from_color:8651007,scale:0.7,to_color:2490455} ~ ~ ~ 0 0 0 0 1 normal
execute at @s unless block ~ ~ ~ #main:air run kill @s
execute at @s run tp @s ^ ^ ^0.1


execute if score @s counting matches ..0 run kill @s
execute if score @s counting2 matches 1.. run function items:skills/magic/51/loop