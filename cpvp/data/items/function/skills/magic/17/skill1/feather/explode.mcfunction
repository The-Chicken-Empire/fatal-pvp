particle dust{color:[1.0,1.0,0.0],scale:1} ~ ~ ~ 1 1 1 1 100
playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 0.25 0

tag @s add cp.tmp
execute at @s positioned ~-2 ~-2 ~-2 as @e[tag=playing,dx=3,dy=3,dz=3] unless score @s teamscore = @e[tag=cp.tmp,limit=1] ownerteam run function items:skills/magic/17/skill1/feather/hit
tag @s remove cp.tmp
kill