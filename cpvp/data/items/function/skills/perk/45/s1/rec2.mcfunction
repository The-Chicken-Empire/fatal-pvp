execute run tp @s ^ ^ ^0.1
scoreboard players remove #counter counter 1
execute at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0,tag=perk45this,limit=1] run return run scoreboard players set #flagcounter counter 1
execute at @s unless block ~ ~ ~ #main:air run return fail
execute if score #counter counter matches 1.. at @s if block ~ ~ ~ #main:air run function items:skills/perk/45/s1/rec2