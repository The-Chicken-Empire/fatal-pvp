tag @s add magic22tmp2
execute as @e[tag=magic22hittmp,limit=1] run function items:skills/magic/22/debuff
tag @s remove magic22tmp2
scoreboard players set $ct main 320
function api:ct/mainhand