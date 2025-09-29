execute as @e[tag=perk31.mk3] if score @s owner = @e[tag=perk31.skillacting.tmp,limit=1] playerdata run tag @s add perk31.mk3.trigger
execute rotated as @s run tp @s @e[tag=perk31.mk3.trigger,sort=nearest,limit=1]

execute at @s as @e[tag=playing,distance=..3] run function items:skills/perk/31/hit
execute at @s run particle dust{color:[1,0,0],scale:4} ~ ~ ~ 2 2 2 1 300 force
execute at @s run playsound item.mace.smash_ground_heavy player @a ~ ~ ~ 5 0.6
kill @e[tag=perk31.mk3,sort=nearest,limit=1]
kill @s