playsound entity.turtle.egg_break neutral @a ~ ~ ~ 0.5 1.6
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
tag @s add tmp
execute positioned ~-0.5 ~-0.3 ~-0.5 as @e[tag=playing,dx=0] unless score @s teamscore = @e[tag=tmp,tag=magic14item,limit=1] teamscore run function items:skills/magic/14/hit
execute at @s summon marker run function items:skills/magic/14/bulletsummoned
kill @s