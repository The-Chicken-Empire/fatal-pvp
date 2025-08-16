scoreboard players set $tmp tmp 0

#hit
execute at @s positioned ^ ^ ^0.4 positioned ~-0.02 ~-0.02 ~-0.02 as @a[gamemode=!spectator,dx=1,dy=1,dz=1] positioned ~-0.96 ~-0.96 ~-0.96 if entity @s[dx=1,dy=1,dz=1] unless score @s teamscore = @e[tag=cp3tmp5,limit=1] ownerteam run function items:skills/chestplate/3/hit
execute at @s positioned ^ ^ ^0.4 positioned ~-0.02 ~-0.02 ~-0.02 as @e[type=!player,dx=1,dy=1,dz=1] positioned ~-0.96 ~-0.96 ~-0.96 if entity @s unless score @s[dx=1,dy=1,dz=1] ownerteam = @e[tag=cp3tmp5,limit=1] ownerteam run function items:skills/chestplate/3/hit

execute at @s unless block ^ ^ ^0.4 #main:air run scoreboard players set $tmp tmp 1
execute if score $tmp tmp matches 1.. run particle glow ~ ~ ~ 0 0 0 1 5 normal
execute if score $tmp tmp matches 1.. run return run kill @s

scoreboard players remove @s counting 1
scoreboard players remove @s counting2 1
execute if score @s counting2 matches ..0 at @s run particle soul_fire_flame ~ ~ ~ 0.0 0.0 0.0 0 1 normal
execute if score @s counting2 matches ..0 at @s run scoreboard players set @s counting2 5

execute at @s run tp @s ^ ^ ^0.1
execute if score @s counting matches 1.. run function items:skills/chestplate/3/loop