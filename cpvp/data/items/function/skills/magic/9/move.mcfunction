execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=1,dy=1,dz=1,tag=playing] unless score @s teamscore = @e[tag=magic9tmp3,limit=1] teamscore run return run function items:skills/magic/9/hit
execute at @s run tp @s ^ ^ ^0.1
scoreboard players remove @s counting2 1
scoreboard players remove @s counting 1
execute unless score @s counting matches 1.. run kill @s
execute if score @s counting2 matches 1.. run function items:skills/magic/9/move