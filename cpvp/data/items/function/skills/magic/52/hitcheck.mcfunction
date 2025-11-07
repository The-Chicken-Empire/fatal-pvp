execute at @s run playsound entity.zombie.attack_wooden_door block @a ~ ~ ~ 1 0.7 0
execute at @s run playsound entity.zombie.attack_wooden_door block @a ~ ~ ~ 1 0.7 0

execute as @e[tag=magic52id1] if score @s target = @e[tag=magic52tmp2,limit=1] markerid at @s positioned ~-1 ~-1 ~-1 as @e[tag=playing,dx=1,dy=1,dz=1] unless score @s teamscore = @e[tag=magic52tmp2,limit=1] teamscore run tag @s add magic52hit
execute as @e[tag=magic52id2] if score @s target = @e[tag=magic52tmp2,limit=1] markerid at @s positioned ~-0.75 ~-1 ~-0.75 as @e[tag=playing,dx=0.5,dy=1,dz=0.5] unless score @s teamscore = @e[tag=magic52tmp2,limit=1] teamscore run tag @s add magic52hit
execute as @e[tag=magic52id3] if score @s target = @e[tag=magic52tmp2,limit=1] markerid at @s positioned ~-0.5 ~-1 ~-0.5 as @e[tag=playing,dx=0,dy=1,dz=0] unless score @s teamscore = @e[tag=magic52tmp2,limit=1] teamscore run tag @s add magic52hit

execute as @e[tag=magic52hit] run function items:skills/magic/52/hit

tag @e remove magic52hit