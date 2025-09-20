tag @s remove magic32dashing

execute at @s run playsound item.firecharge.use block @a[distance=..10] ~ ~ ~ 0.8 1 0.8
execute at @s run playsound entity.firework_rocket.blast block @a[distance=..10] ~ ~ ~ 1 1.2 1
execute at @s run playsound entity.firework_rocket.blast block @a[distance=..10] ~ ~ ~ 1 1.2 1
execute at @s run particle flame ~ ~ ~ 1 1.5 1 0.05 40 normal
execute at @s positioned ~-1.5 ~-1 ~-1.5 as @e[tag=playing,dx=2,dy=2,dz=2] unless score @s teamscore = @a[tag=magic32tmp,limit=1] teamscore run function items:skills/magic/32/hit

effect clear @s speed
attribute @s fall_damage_multiplier modifier remove magic32

execute as @e[tag=magic32dash] if score @s target = @a[tag=magic32tmp,limit=1] playerdata run kill @s
tag @s remove magic32tmp