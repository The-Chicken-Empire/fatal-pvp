tag @s add magic23tmp7

execute at @s if block ~ ~-1.1 ~ #main:air run tp @s ~ ~-0.1 ~


execute at @s positioned ~-0.25 ~-0.5 ~-0.25 as @e[tag=playing,dx=0,dy=1] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=1] unless score @s teamscore = @e[tag=magic23tmp7,limit=1] teamscore run function items:skills/magic/23/sfhit

execute if score @s skills matches 130 run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0f,2f,0f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}
execute if score @s skills matches 140.. run kill @s
tag @s remove magic23tmp7