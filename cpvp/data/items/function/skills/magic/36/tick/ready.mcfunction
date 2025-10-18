tag @s add magic36this
execute as @a if score @s playerdata = @e[tag=magic36this,limit=1] owner run tag @s add magic36owner



execute at @s positioned ~-2 ~-2 ~-2 as @e[tag=playing,dx=3,dy=3,dz=3] run tag @s add magic36hit

execute as @e[tag=magic36hit] unless score @s teamscore = @a[tag=magic36owner,limit=1] teamscore at @s run function items:skills/magic/36/tick/hit1
execute if entity @a[tag=magic36owner,tag=cp17activated,limit=1] as @e[tag=magic36hit] unless score @s teamscore = @a[tag=magic36owner,limit=1] teamscore at @s run function items:skills/magic/36/tick/hit2
execute if entity @a[tag=magic36owner,tag=!cp17activated,limit=1] as @e[tag=magic36hit] if score @s teamscore = @a[tag=magic36owner,limit=1] teamscore at @s run function items:skills/magic/36/tick/heal




execute if entity @e[tag=magic36hit] run scoreboard players set @s counter3 4
tag @e[tag=magic36hit] remove magic36hit







tag @s remove magic36this
tag @a[tag=magic36owner] remove magic36owner