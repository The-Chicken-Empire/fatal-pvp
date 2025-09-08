execute at @s positioned ~-0.01 ~-0.01 ~-0.01 as @e[dx=1,dy=1,dz=1,tag=playing] positioned ~-0.98 ~-0.98 ~-0.98 if entity @s[dx=1,dy=1,dz=1] unless score @s teamscore = @a[tag=magic22tmp,limit=1] teamscore run function items:skills/magic/22/hit

execute at @s unless block ~ ~ ~ #main:air run kill @s

scoreboard players remove @s counting 1
execute if score @s counting matches ..0 run kill @s

execute if score @s counting matches 1.. at @s run tp @s ^ ^ ^0.1
execute if score @s counting matches 1.. run function items:skills/magic/22/check