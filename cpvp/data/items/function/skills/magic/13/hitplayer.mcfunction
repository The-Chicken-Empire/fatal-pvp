tag @s add magic13marked

execute as @e[tag=magic13tmp2] run function items:skills/magic/13/playermark

scoreboard players set @s damagetaken 30
tag @s add physicaldamage
tag @s add rangedamage
scoreboard players operation @s attackerdata = @e[tag=magic13tmp2,limit=1] owner
function damage:atkercheck

tag @s remove magic13marked