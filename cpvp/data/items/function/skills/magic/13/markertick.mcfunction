tag @s add magic13tmp2
scoreboard players remove @s magic13-2 1
scoreboard players set @s magic13 15
execute at @s positioned ^ ^ ^0.4 positioned ~-0.2 ~-0.2 ~-0.2 as @e[tag=playing,dx=0] positioned ~-0.6 ~-0.6 ~-0.6 if entity @s[dx=0] unless score @s teamscore = @e[tag=magic13tmp2,limit=1] ownerteam run return run function items:skills/magic/13/hitplayer
execute at @s unless block ^ ^ ^0.4 #main:air run return run function items:skills/magic/13/hitblock
execute if score @s magic13 matches 1.. run function items:skills/magic/13/marker1loop

execute if score @s magic13-2 matches ..0 run function items:skills/magic/13/hitblock
tag @s remove magic13tmp2