tag @s add magic36owner
execute as @e[tag=magic36unready] if score @s owner = @a[tag=magic36owner,limit=1] playerdata run tag @s add magic36tmp
execute unless entity @e[tag=magic36tmp] at @s run function items:skills/magic/36/s1/use
execute if entity @e[tag=magic36tmp,scores={counter=20..}] at @s run function items:skills/magic/36/s2/
tag @s remove magic36owner
tag @e[tag=magic36tmp] remove magic36tmp
