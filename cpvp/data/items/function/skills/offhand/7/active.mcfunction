scoreboard players operation @s mp -= @s mpcost
scoreboard players set @s offhand7 0
execute at @s run playsound block.trial_spawner.ominous_activate player @a[distance=..15] ~ ~ ~ 1 2 0
execute at @s run playsound entity.wind_charge.wind_burst player @a[distance=..15] ~ ~ ~ 1 0.5 0
execute at @s run function items:skills/offhand/7/particle2
execute as @e[distance=..7,tag=playing] positioned ~-7 ~-2 ~-7 if entity @s[dx=13,dy=3,dz=13] unless score @s teamscore = @a[tag=offhand7tmp2,limit=1] teamscore run function items:skills/offhand/7/hit

scoreboard players set $ct main 140
function api:ct/offhand