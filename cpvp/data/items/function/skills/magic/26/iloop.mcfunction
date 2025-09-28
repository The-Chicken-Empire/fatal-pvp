scoreboard players remove @s counting 1

execute at @s positioned ~-0.35 ~-0.35 ~-0.35 as @e[tag=playing,dx=0] positioned ~-0.3 ~-0.3 ~-0.3 if entity @s[dx=0] unless score @s teamscore = @e[tag=magic26itmp,limit=1] teamscore run function items:skills/magic/26/checki
execute at @s unless block ^ ^ ^0.05 #main:air run return fail

execute at @s run tp @s ^ ^ ^0.05
execute if score @s counting matches 1.. run function items:skills/magic/26/iloop