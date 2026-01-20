tag @s add skillmarker
tag @s add magic6
scoreboard players operation @s owner = @a[tag=magic6player,limit=1] playerdata
scoreboard players operation @s teamscore = @a[tag=magic6player,limit=1] teamscore
execute at @s rotated as @a[tag=magic6player] run tp @s ~ ~ ~ ~ ~
execute at @s run tp ^ ^ ^10
execute at @s run particle soul_fire_flame ~ ~ ~ 0 0 0 0.3 10 force

execute at @s positioned ~0 ~0 ~0 as @e[tag=playing,dx=0] unless score @s teamscore = @e[tag=magic6,limit=1] teamscore positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add magic6victim
execute at @s run playsound item.flintandsteel.use block @a ~ ~ ~ 1 1 0
execute at @s run playsound item.flintandsteel.use block @s ~ ~ ~ 1 1 0
execute as @e[tag=magic6victim] run function items:skills/magic/6/hit
tag @e remove magic6victim
kill @s