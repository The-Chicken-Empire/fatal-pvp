scoreboard players remove @s counting 1

execute at @s positioned ~-0.35 ~-0.35 ~-0.35 as @e[tag=playing,dx=0] positioned ~-0.3 ~-0.3 ~-0.3 if entity @s[dx=0] unless score @s teamscore = @e[tag=magic26ftmp,limit=1] teamscore run function items:skills/magic/26/checkf

execute as @a if score @s playerdata = @e[tag=magic26ftmp,limit=1] owner run tag @s add magic26ftmp2

execute at @s facing entity @a[tag=magic26ftmp2,limit=1] eyes run tp @s ~ ~ ~ ~ ~

execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=playing,dx=0] positioned ~-0.4 ~ ~-0.4 if entity @s[dx=0] if score @s playerdata = @e[tag=magic26ftmp,limit=1] owner run kill @e[tag=magic26ftmp]

tag @a remove magic26ftmp2

execute at @s unless block ^ ^ ^0.15 #main:air run kill @s
execute at @s run tp @s ^ ^ ^0.15

execute if score @s counting matches 1.. run function items:skills/magic/26/iloop