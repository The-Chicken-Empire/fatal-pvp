scoreboard players add @s counter 1
scoreboard players add @s counter2 1
tag @s add w13tmp
execute at @s run tp @s ^ ^ ^2
execute at @s run function items:skills/weapon/13/s2/particle
execute if score @s counter2 matches 2.. at @s positioned ~-2 ~-0.5 ~-2 as @e[tag=playing,dx=3,dy=0,dz=3] unless score @s teamscore = @e[tag=w13tmp,limit=1] ownerteam at @s run function items:skills/weapon/13/s2/hit








tag @s remove w13tmp












execute if score @s counter matches 10.. run kill
execute at @s unless block ~ ~ ~ #main:air run kill

