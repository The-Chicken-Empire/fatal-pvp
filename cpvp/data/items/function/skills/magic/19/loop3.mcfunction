execute at @s run tp @s ^ ^ ^0.1
scoreboard players remove @s counting 1

scoreboard players reset $tmpm19 tmp
scoreboard players operation $tmpm19 tmp = @s counting
scoreboard players operation $tmpm19 tmp %= $3 main
execute if score $tmpm19 tmp matches 0 at @s run particle dust_color_transition{from_color:3175167,to_color:10566911,scale:1} ~ ~ ~ 0.25 0.25 0.25 1 1
execute if score $tmpm19 tmp matches 0 at @s run particle dust_color_transition{to_color:3175167,from_color:10566911,scale:1} ~ ~ ~ 0.25 0.25 0.25 1 1
scoreboard players reset $tmpm19 tmp

execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=playing,dx=0] unless score @s teamscore = @e[tag=magic19coretmp,limit=1] teamscore run tag @s add magic19hit

execute if score @s counting matches 1.. run function items:skills/magic/19/loop3