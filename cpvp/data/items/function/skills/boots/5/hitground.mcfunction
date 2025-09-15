#scoreboard players operation $tmp2 tmp = @e[tag=boots5tmp2,limit=1] skills
#scoreboard players remove $tmp2 tmp 20

execute store result score $tmp tmp run data get entity @s Pos.[1]
scoreboard players operation @s boots5 -= $tmp tmp
scoreboard players reset $tmp tmp



particle explosion ~ ~0.5 ~ 1.2 0.2 1.2 0.1 20
playsound entity.generic.explode block @a[distance=..10] ~ ~ ~ 1 1 0
execute if score @s boots5 matches 10.. run playsound entity.generic.explode block @a[distance=..10] ~ ~ ~ 1 0.5 0
execute if score @s boots5 matches 10.. run particle ash ~ ~ ~ 0 0 0 0.2 10
execute if score @s boots5 matches 15.. run playsound entity.generic.explode block @a[distance=..10] ~ ~ ~ 1 0 0
execute if score @s boots5 matches 15.. run particle flame ~ ~ ~ 0 0 0 0.2 15

tag @s add boots5tmp3

execute at @s as @e[distance=..5,tag=playing] at @a[tag=boots5tmp3,limit=1] positioned ~-5 ~-0.5 ~-5 if entity @s[dx=10,dy=1,dz=10] unless score @s teamscore = @a[tag=boots5tmp3,limit=1] teamscore run function items:skills/boots/5/hit

tag @s remove boots5tmp3

scoreboard players reset @s boots5
attribute @s jump_strength modifier remove boots5
attribute @s gravity modifier remove boots5
kill @e[tag=boots5tmp2]