tag @s add m29display.tmp
execute if score @s skills matches ..3 at @s run tp @s ~ ~0.17 ~
execute at @s positioned ~-0.5 ~-0.2 ~-0.5 if entity @e[tag=playing,dx=0] as @e[tag=playing,dx=0] unless score @s teamscore = @e[limit=1,tag=m29display.tmp] teamscore unless score @s magic29hitct matches 1.. run function items:skills/magic/29/hit
execute if score @s skills matches 47.. at @s run tp @s ~ ~-0.16 ~
execute if score @s skills matches 50.. run kill @s
tag @s remove m29display.tmp