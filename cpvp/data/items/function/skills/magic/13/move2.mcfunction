execute at @s run tp @s ^ ^ ^0.1
scoreboard players set $tmp tmp 0
execute at @s positioned ^ ^ ^0.2 positioned ~-0.1 ~-0.1 ~-0.1 as @e[tag=playing,dx=0] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0] unless score @s teamscore = @e[tag=magic13tmp5,limit=1] ownerteam run return run function items:skills/magic/13/hit
execute if score $tmp tmp matches 1.. run return fail
execute at @s unless block ^ ^ ^0.2 #main:air run particle glow ~ ~ ~ 0.2 0.2 0.2 0.5 8 normal
execute at @s unless block ^ ^ ^0.2 #main:air run return run kill @s
scoreboard players remove @s magic13-4 1
execute if score @s magic13-4 matches 1.. run function items:skills/magic/13/move2