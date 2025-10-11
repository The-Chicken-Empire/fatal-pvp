tag @s add magic26fvictim
#damage ct
scoreboard players set $tmp tmp 0
execute as @e[type=marker,tag=magic26fct] if score @s owner = @e[tag=magic26ftmp,limit=1] markerid if score @s target = @e[tag=magic26fvictim,limit=1] entitydata run scoreboard players set $tmp tmp 1
execute if score $tmp tmp matches 1 run return run tag @s remove magic26fvictim

function items:skills/magic/26/hitf
tag @s remove magic26fvictim