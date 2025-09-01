scoreboard players operation @s mp -= @s mpcost
scoreboard players set @s offhand7 0
execute at @s run playsound block.trial_spawner.ominous_activate player @a ~ ~ ~ 1 2 1
execute at @s run playsound entity.wind_charge.wind_burst player @a ~ ~ ~ 1 0.5 1
execute at @s run function items:skills/offhand/7/particle2
execute as @e[distance=..7,tag=playing] positioned ~-7 ~-2 ~-7 if entity @s[dx=14,dy=4,dz=14] unless score @s teamscore = @a[tag=offhand7tmp2,limit=1] teamscore run function items:skills/offhand/7/hit

function system:cooltime/general/set_ct_offhand {cooltime:140}