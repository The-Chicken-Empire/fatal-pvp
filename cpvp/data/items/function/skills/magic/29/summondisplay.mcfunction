tp @s ^ ^ ^0.4
execute unless block ~ ~ ~ #main:air run return run kill @s

summon block_display ~ ~-0.5 ~ {Tags:["skillmarker","m29display"],block_state:{Name:"minecraft:firefly_bush"}}
playsound minecraft:block.grass.break block @a ~ ~ ~ 2 0.5
scoreboard players operation @e[tag=m29display,tag=!tagged,limit=1] owner = @e[tag=m29marker1.tmp2,limit=1] owner
scoreboard players operation @e[tag=m29display,tag=!tagged,limit=1] teamscore = @e[tag=m29marker1.tmp2,limit=1] teamscore
execute at @s run tag @e[tag=m29display,tag=!tagged,limit=1,distance=..1] add tagged

execute at @s run tp ^ ^ ^0.4
execute at @s unless block ~ ~ ~ #main:air run return run kill @s
