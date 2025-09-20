
execute at @s positioned ~-0.01 ~-0.01 ~-0.01 as @e[tag=playing,dx=0] positioned ~-0.98 ~-0.98 ~-0.98 if entity @s[dx=0] unless score @s teamscore = @a[tag=magic31tmp,limit=1] teamscore run tag @s add magic31victimtmp
execute at @s unless block ~ ~ ~ #main:air run scoreboard players set @s counting 0
execute at @s unless block ~ ~ ~ #main:air run scoreboard players set @s counting2 0
scoreboard players remove @s counting 1
scoreboard players remove @s counting2 1
execute at @s run tp @s ^ ^ ^0.1
execute if score @s counting2 matches 0 at @s run particle dripping_lava ~ ~ ~ 0 0 0 1 1 normal
execute if score @s counting2 matches 0 run scoreboard players set @s counting2 5
execute if score @s counting matches 1.. run function items:skills/magic/31/loop

execute if score @s counting matches 0 run kill @s