tag @s add weapon6tmp4
scoreboard players operation @s owner = @e[tag=weapon6tmp2,limit=1] owner
scoreboard players operation @s teamscore = @e[tag=weapon6tmp2,limit=1] teamscore

scoreboard players set @s counting 100
execute at @s run tp @s @a[tag=weapon6tmp3,limit=1]
execute at @s rotated as @a[tag=weapon6tmp3,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s run tp @s ~ ~1 ~

function items:skills/weapon/6/rush