tag @s add perk11tmp

scoreboard players reset @s perk11

execute at @s run playsound entity.elder_guardian.hurt hostile @a ~ ~ ~ 1 0.5 0
execute at @s run playsound entity.elder_guardian.hurt hostile @a ~ ~ ~ 1 0.5 0
execute at @s run playsound entity.elder_guardian.hurt hostile @a ~ ~ ~ 1 0.8 0
execute at @s run playsound entity.elder_guardian.hurt hostile @a ~ ~ ~ 1 0.8 0

execute as @e[tag=playing] unless score @s teamscore = @a[tag=perk11tmp,limit=1] teamscore at @s run function items:skills/perk/11/hit

particle soul_fire_flame ~ ~ ~ 1 0 0 0.2 0 normal @a
particle soul_fire_flame ~ ~ ~ 0 0 1 0.2 0 normal @a
particle soul_fire_flame ~ ~ ~ 1 0 1 0.2 0 normal @a
particle soul_fire_flame ~ ~ ~ -1 0 0 0.2 0 normal @a
particle soul_fire_flame ~ ~ ~ 0 0 -1 0.2 0 normal @a
particle soul_fire_flame ~ ~ ~ -1 0 -1 0.2 0 normal @a
particle soul_fire_flame ~ ~ ~ 1 0 -1 0.2 0 normal @a
particle soul_fire_flame ~ ~ ~ -1 0 1 0.2 0 normal @a
particle soul_fire_flame ~ ~ ~ 2 0 1 0.2 0 normal @a
particle soul_fire_flame ~ ~ ~ 1 0 2 0.2 0 normal @a
particle soul_fire_flame ~ ~ ~ -2 0 1 0.2 0 normal @a
particle soul_fire_flame ~ ~ ~ 1 0 -2 0.2 0 normal @a
particle soul_fire_flame ~ ~ ~ 2 0 -1 0.2 0 normal @a
particle soul_fire_flame ~ ~ ~ -1 0 2 0.2 0 normal @a
particle soul_fire_flame ~ ~ ~ -2 0 -1 0.2 0 normal @a
particle soul_fire_flame ~ ~ ~ -1 0 -2 0.2 0 normal @a

particle soul_fire_flame ~ ~ ~ 1 0 0 0.4 0 normal @a
particle soul_fire_flame ~ ~ ~ 0 0 1 0.4 0 normal @a
particle soul_fire_flame ~ ~ ~ 1 0 1 0.4 0 normal @a
particle soul_fire_flame ~ ~ ~ -1 0 0 0.4 0 normal @a
particle soul_fire_flame ~ ~ ~ 0 0 -1 0.4 0 normal @a
particle soul_fire_flame ~ ~ ~ -1 0 -1 0.4 0 normal @a
particle soul_fire_flame ~ ~ ~ 1 0 -1 0.4 0 normal @a
particle soul_fire_flame ~ ~ ~ -1 0 1 0.4 0 normal @a
particle soul_fire_flame ~ ~ ~ 2 0 1 0.4 0 normal @a
particle soul_fire_flame ~ ~ ~ 1 0 2 0.4 0 normal @a
particle soul_fire_flame ~ ~ ~ -2 0 1 0.4 0 normal @a
particle soul_fire_flame ~ ~ ~ 1 0 -2 0.4 0 normal @a
particle soul_fire_flame ~ ~ ~ 2 0 -1 0.4 0 normal @a
particle soul_fire_flame ~ ~ ~ -1 0 2 0.4 0 normal @a
particle soul_fire_flame ~ ~ ~ -2 0 -1 0.4 0 normal @a
particle soul_fire_flame ~ ~ ~ -1 0 -2 0.4 0 normal @a

tag @s remove perk11tmp