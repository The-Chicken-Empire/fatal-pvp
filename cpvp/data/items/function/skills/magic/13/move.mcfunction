tag @s add magic13tmp5

scoreboard players set @s magic13-4 20
execute at @s positioned ^ ^ ^0.2 positioned ~-0.05 ~-0.05 ~-0.05 as @a[gamemode=!spectator,dx=1,dy=1,dz=1] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=1,dy=1,dz=1] unless score @s teamscore = @e[tag=magic13tmp2,limit=1] ownerteam run return run function items:skills/magic/13/hit
execute at @s positioned ^ ^ ^0.2 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=#main:non_player,dx=1,dy=1,dz=1] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=1,dy=1,dz=1] unless score @s ownerteam = @e[tag=magic13tmp2,limit=1] ownerteam run return run function items:skills/magic/13/hit
execute at @s unless block ^ ^ ^0.2 #main:air run particle glow ~ ~ ~ 0.2 0.2 0.2 0.5 8 normal
execute at @s unless block ^ ^ ^0.2 #main:air run return run kill @s
function items:skills/magic/13/move2

tag @s remove magic13tmp5