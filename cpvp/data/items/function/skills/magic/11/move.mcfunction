execute at @s run tp @s ^ ^ ^0.1

#hit
execute at @s positioned ~-0.25 ~-0.25 ~-0.25 as @a[dx=1,dy=1,dz=1,gamemode=!spectator] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=1,dy=1,dz=1] unless score @s teamscore = @e[tag=magic11tmp3,limit=1] ownerteam run function items:skills/magic/11/hit
execute at @s positioned ~-0.25 ~-0.25 ~-0.25 as @e[type=#main:non_player,dx=1,dy=1,dz=1] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=1,dy=1,dz=1] unless score @s ownerteam = @e[tag=magic11tmp3,limit=1] ownerteam run function items:skills/magic/11/hit
#loop
scoreboard players remove @s magic11 1
execute unless block ~ ~ ~ #air run return run kill @s
execute if score @s magic11 matches 1.. run function items:skills/magic/11/move