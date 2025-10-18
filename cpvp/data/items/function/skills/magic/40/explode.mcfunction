execute as @a if score @s playerdata = @e[tag=magic40tmp3,limit=1] owner run tag @s add magic40atker
execute at @s run playsound entity.firework_rocket.blast ambient @a ~ ~ ~ 1 0.8 0
execute at @s run particle happy_villager ~ ~0.3 ~ 2 1.6 2 0 180 normal
execute at @s run particle white_smoke ~ ~0.5 ~ 0 0 0 0.5 25 normal

execute as @e[distance=..6,tag=playing] unless score @s teamscore = @a[tag=magic40atker,limit=1] teamscore run function items:skills/magic/40/hit



tag @a[tag=magic40atker] remove magic40atker