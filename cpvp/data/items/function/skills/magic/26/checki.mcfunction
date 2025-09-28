tag @s add magic26ivictim
#damage ct
scoreboard players set $tmp tmp 0
execute as @e[type=marker,tag=magic26ict] if score @s owner = @e[tag=magic26itmp,limit=1] markerid if score @s target = @e[tag=magic26ivictim,limit=1] entitydata run scoreboard players set $tmp tmp 1
execute if score $tmp tmp matches 1 run return run tag @s remove magic26ivictim

function items:skills/magic/26/hiti
tag @s remove magic26ivictim