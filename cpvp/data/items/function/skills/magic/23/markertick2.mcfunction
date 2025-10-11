tag @s add magic23tmp5

execute if score @s skills matches 20.. at @s if block ~ ~-4.1 ~ #main:air run tp @s ~ ~-0.1 ~

execute if score @s skills matches ..16 if entity @s[tag=!magic23sp] at @s run particle flame ~ ~-4 ~ 0 10 0 0.1 0 normal
execute if score @s skills matches ..16 if entity @s[tag=magic23sp] at @s run particle soul_fire_flame ~ ~-4 ~ 0 10 0 0.1 0 normal

execute if score @s skills matches 20 run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[2f,8f,2f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}
execute if score @s skills matches 20 at @s run particle lava ~ ~-3 ~ 0.3 0.3 0.3 0 25 normal
execute if score @s skills matches 20 at @s run playsound item.firecharge.use block @a[distance=..12] ~ ~ ~ 1 0.8 0
execute if score @s skills matches 20 at @s run playsound entity.iron_golem.death hostile @a[distance=..12] ~ ~ ~ 1 0.5 0
execute if score @s skills matches 20 if entity @s[tag=magic23sp] at @s summon marker run function items:skills/magic/23/summonsfc

execute if score @s skills matches 20.. at @s positioned ~-1 ~-4 ~-1 as @e[tag=playing,dx=1,dy=6,dz=1] unless score @s teamscore = @e[tag=magic23tmp5,limit=1] teamscore run function items:skills/magic/23/pillerhit
 
execute if score @s skills matches 90 run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0f,8f,0f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}
execute if score @s skills matches 100.. run kill @s

tag @s remove magic23tmp5