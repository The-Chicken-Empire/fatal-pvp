
execute unless block ^ ^ ^0.1 #main:air at @s run return run function items:skills/magic/17/skill1/mine/set
execute if block ^ ^ ^0.1 #main:air run tp @s ^ ^ ^0.1
execute at @s run particle witch ~ ~ ~ 0 0 0 0 1
execute at @s positioned ~-0.1 ~-0.1 ~-0.1 as @e[tag=playing,dx=0,dy=0,dz=0] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0,dy=0,dz=0] unless score @s teamscore = @e[tag=cp.tmp,limit=1] ownerteam run return run function items:skills/magic/17/skill1/bullet/hit
scoreboard players remove @s counter2 1
execute if score @s counter2 matches 1.. at @s run function items:skills/magic/17/skill1/bullet/tp