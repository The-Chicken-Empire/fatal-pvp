execute at @s run playsound block.trial_spawner.ominous_activate player @a[distance=..15] ~ ~ ~ 1 0 0
execute at @s run playsound item.mace.smash_ground_heavy player @a[distance=..15] ~ ~ ~ 1 0.5 0
execute at @s run function items:skills/offhand/7/particle4
execute as @e[distance=..10,tag=playing] positioned ~-10 ~-2 ~-10 if entity @s[dx=20,dy=4,dz=20] unless score @s teamscore = @e[tag=offhand7tmp5,limit=1] teamscore run function items:skills/offhand/7/hit2