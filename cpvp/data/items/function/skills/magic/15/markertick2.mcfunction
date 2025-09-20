tag @s add magic15tmp5

execute if score @s skills matches 4 run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[3f,3f,3f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}
execute if score @s skills matches 25 run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}

execute if score @s skills matches 20 run playsound item.mace.smash_ground_heavy block @a ~ ~ ~ 1 2 0
execute if score @s skills matches 20 run particle dust{color:3604587,scale:1.5} ~ ~ ~ 1.5 1.5 1.5 0.2 30
execute if score @s skills matches 20 positioned ~-1.5 ~-1.5 ~-1.5 as @e[tag=playing,dx=2,dy=2,dz=2] unless score @s teamscore = @e[tag=magic15tmp5,limit=1] teamscore run function items:skills/magic/15/hit
execute if score @s skills matches 37 run kill @s
tag @s remove magic15tmp5