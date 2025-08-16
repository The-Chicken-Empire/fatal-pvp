execute at @s run tp @s ^ ^ ^0.1
execute at @s positioned ^ ^ ^0.4 positioned ~-0.1 ~-0.1 ~-0.1 as @a[gamemode=!spectator,dx=1,dy=1,dz=1] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=1,dy=1,dz=1] unless score @s teamscore = @e[tag=magic13tmp2,limit=1] ownerteam run return run function items:skills/magic/13/hitplayer
execute at @s unless block ^ ^ ^0.4 #main:air run return run function items:skills/magic/13/hitblock
scoreboard players remove @s magic13 1
execute if score @s magic13 matches 1.. run function items:skills/magic/13/marker1loop