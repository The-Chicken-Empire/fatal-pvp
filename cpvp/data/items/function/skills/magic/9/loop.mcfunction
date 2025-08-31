execute at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=1,dy=1,dz=1,tag=playing,tag=magic9tmp6] run kill @s
scoreboard players remove @s counting 1
execute at @s run particle dust{color:4391041,scale:0.8} ~ ~ ~ 0 0 0 0 1
execute at @s run tp @s ^ ^ ^0.1
execute if score @s counting matches 1.. run function items:skills/magic/9/loop