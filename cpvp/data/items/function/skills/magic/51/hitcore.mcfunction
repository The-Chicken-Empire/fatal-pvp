tag @s add magic51hitcore

execute at @s as @a[distance=..8,tag=playing,tag=!magic51hitcore] if score @s teamscore = @e[tag=magic51hitcore,limit=1] teamscore run function items:skills/magic/51/hit

execute at @s run playsound entity.strider.death hostile @s ~ ~ ~ 1 2 1

tag @s remove magic51hitcore

execute as @e[tag=magic51tmp2] run kill @s